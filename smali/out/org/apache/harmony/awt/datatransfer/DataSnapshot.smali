.class public Lorg/apache/harmony/awt/datatransfer/DataSnapshot;
.super Ljava/lang/Object;
.source "DataSnapshot.java"

# interfaces
.implements Lorg/apache/harmony/awt/datatransfer/DataProvider;


# instance fields
.field private final fileList:[Ljava/lang/String;

.field private final html:Ljava/lang/String;

.field private final nativeFormats:[Ljava/lang/String;

.field private final rawBitmap:Lorg/apache/harmony/awt/datatransfer/RawBitmap;

.field private final serializedObjects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;[B>;"
        }
    .end annotation
.end field

.field private final text:Ljava/lang/String;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/harmony/awt/datatransfer/DataProvider;)V
    .registers 7
    .param p1, "data"    # Lorg/apache/harmony/awt/datatransfer/DataProvider;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-interface {p1}, Lorg/apache/harmony/awt/datatransfer/DataProvider;->getNativeFormats()[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/harmony/awt/datatransfer/DataSnapshot;->nativeFormats:[Ljava/lang/String;

    .line 51
    invoke-interface {p1}, Lorg/apache/harmony/awt/datatransfer/DataProvider;->getText()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/harmony/awt/datatransfer/DataSnapshot;->text:Ljava/lang/String;

    .line 52
    invoke-interface {p1}, Lorg/apache/harmony/awt/datatransfer/DataProvider;->getFileList()[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/harmony/awt/datatransfer/DataSnapshot;->fileList:[Ljava/lang/String;

    .line 53
    invoke-interface {p1}, Lorg/apache/harmony/awt/datatransfer/DataProvider;->getURL()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/harmony/awt/datatransfer/DataSnapshot;->url:Ljava/lang/String;

    .line 54
    invoke-interface {p1}, Lorg/apache/harmony/awt/datatransfer/DataProvider;->getHTML()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/harmony/awt/datatransfer/DataSnapshot;->html:Ljava/lang/String;

    .line 55
    invoke-interface {p1}, Lorg/apache/harmony/awt/datatransfer/DataProvider;->getRawBitmap()Lorg/apache/harmony/awt/datatransfer/RawBitmap;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/harmony/awt/datatransfer/DataSnapshot;->rawBitmap:Lorg/apache/harmony/awt/datatransfer/RawBitmap;

    .line 57
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static {v4}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/harmony/awt/datatransfer/DataSnapshot;->serializedObjects:Ljava/util/Map;

    .line 59
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_33
    iget-object v4, p0, Lorg/apache/harmony/awt/datatransfer/DataSnapshot;->nativeFormats:[Ljava/lang/String;

    array-length v4, v4

    if-lt v3, v4, :cond_39

    .line 73
    return-void

    .line 60
    :cond_39
    const/4 v2, 0x0

    .line 62
    .local v2, "df":Ljava/awt/datatransfer/DataFlavor;
    :try_start_3a
    iget-object v4, p0, Lorg/apache/harmony/awt/datatransfer/DataSnapshot;->nativeFormats:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-static {v4}, Ljava/awt/datatransfer/SystemFlavorMap;->decodeDataFlavor(Ljava/lang/String;)Ljava/awt/datatransfer/DataFlavor;
    :try_end_41
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3a .. :try_end_41} :catch_56

    move-result-object v2

    .line 64
    :goto_42
    if-eqz v2, :cond_53

    .line 65
    invoke-virtual {v2}, Ljava/awt/datatransfer/DataFlavor;->getRepresentationClass()Ljava/lang/Class;

    move-result-object v1

    .line 66
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {p1, v1}, Lorg/apache/harmony/awt/datatransfer/DataProvider;->getSerializedObject(Ljava/lang/Class;)[B

    move-result-object v0

    .line 67
    .local v0, "bytes":[B
    if-eqz v0, :cond_53

    .line 68
    iget-object v4, p0, Lorg/apache/harmony/awt/datatransfer/DataSnapshot;->serializedObjects:Ljava/util/Map;

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .end local v0    # "bytes":[B
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_53
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    .line 63
    :catch_56
    move-exception v4

    goto :goto_42
.end method


# virtual methods
.method public getFileList()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataSnapshot;->fileList:[Ljava/lang/String;

    return-object v0
.end method

.method public getHTML()Ljava/lang/String;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataSnapshot;->html:Ljava/lang/String;

    return-object v0
.end method

.method public getNativeFormats()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataSnapshot;->nativeFormats:[Ljava/lang/String;

    return-object v0
.end method

.method public getRawBitmap()Lorg/apache/harmony/awt/datatransfer/RawBitmap;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataSnapshot;->rawBitmap:Lorg/apache/harmony/awt/datatransfer/RawBitmap;

    return-object v0
.end method

.method public getRawBitmapBuffer16()[S
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataSnapshot;->rawBitmap:Lorg/apache/harmony/awt/datatransfer/RawBitmap;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataSnapshot;->rawBitmap:Lorg/apache/harmony/awt/datatransfer/RawBitmap;

    iget-object v0, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->buffer:Ljava/lang/Object;

    instance-of v0, v0, [S

    if-eqz v0, :cond_13

    .line 133
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataSnapshot;->rawBitmap:Lorg/apache/harmony/awt/datatransfer/RawBitmap;

    iget-object v0, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->buffer:Ljava/lang/Object;

    check-cast v0, [S

    .line 132
    :goto_12
    return-object v0

    .line 133
    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getRawBitmapBuffer32()[I
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataSnapshot;->rawBitmap:Lorg/apache/harmony/awt/datatransfer/RawBitmap;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataSnapshot;->rawBitmap:Lorg/apache/harmony/awt/datatransfer/RawBitmap;

    iget-object v0, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->buffer:Ljava/lang/Object;

    instance-of v0, v0, [I

    if-eqz v0, :cond_13

    .line 138
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataSnapshot;->rawBitmap:Lorg/apache/harmony/awt/datatransfer/RawBitmap;

    iget-object v0, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->buffer:Ljava/lang/Object;

    check-cast v0, [I

    .line 137
    :goto_12
    return-object v0

    .line 138
    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getRawBitmapBuffer8()[B
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataSnapshot;->rawBitmap:Lorg/apache/harmony/awt/datatransfer/RawBitmap;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataSnapshot;->rawBitmap:Lorg/apache/harmony/awt/datatransfer/RawBitmap;

    iget-object v0, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->buffer:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-eqz v0, :cond_13

    .line 128
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataSnapshot;->rawBitmap:Lorg/apache/harmony/awt/datatransfer/RawBitmap;

    iget-object v0, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->buffer:Ljava/lang/Object;

    check-cast v0, [B

    .line 127
    :goto_12
    return-object v0

    .line 128
    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getRawBitmapHeader()[I
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataSnapshot;->rawBitmap:Lorg/apache/harmony/awt/datatransfer/RawBitmap;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataSnapshot;->rawBitmap:Lorg/apache/harmony/awt/datatransfer/RawBitmap;

    invoke-virtual {v0}, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->getHeader()[I

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getSerializedObject(Ljava/lang/Class;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[B"
        }
    .end annotation

    .prologue
    .line 142
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataSnapshot;->serializedObjects:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getSerializedObject(Ljava/lang/String;)[B
    .registers 5
    .param p1, "nativeFormat"    # Ljava/lang/String;

    .prologue
    .line 147
    :try_start_0
    invoke-static {p1}, Ljava/awt/datatransfer/SystemFlavorMap;->decodeDataFlavor(Ljava/lang/String;)Ljava/awt/datatransfer/DataFlavor;

    move-result-object v0

    .line 148
    .local v0, "df":Ljava/awt/datatransfer/DataFlavor;
    invoke-virtual {v0}, Ljava/awt/datatransfer/DataFlavor;->getRepresentationClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/harmony/awt/datatransfer/DataSnapshot;->getSerializedObject(Ljava/lang/Class;)[B
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v2

    .line 150
    .end local v0    # "df":Ljava/awt/datatransfer/DataFlavor;
    :goto_c
    return-object v2

    .line 149
    :catch_d
    move-exception v1

    .line 150
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_c
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataSnapshot;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataSnapshot;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isNativeFormatAvailable(Ljava/lang/String;)Z
    .registers 7
    .param p1, "nativeFormat"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 76
    if-nez p1, :cond_5

    .line 98
    :cond_4
    :goto_4
    return v2

    .line 79
    :cond_5
    const-string v4, "text/plain"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 80
    iget-object v4, p0, Lorg/apache/harmony/awt/datatransfer/DataSnapshot;->text:Ljava/lang/String;

    if-eqz v4, :cond_4

    move v2, v3

    goto :goto_4

    .line 82
    :cond_13
    const-string v4, "application/x-java-file-list"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 83
    iget-object v4, p0, Lorg/apache/harmony/awt/datatransfer/DataSnapshot;->fileList:[Ljava/lang/String;

    if-eqz v4, :cond_4

    move v2, v3

    goto :goto_4

    .line 85
    :cond_21
    const-string v4, "application/x-java-url"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 86
    iget-object v4, p0, Lorg/apache/harmony/awt/datatransfer/DataSnapshot;->url:Ljava/lang/String;

    if-eqz v4, :cond_4

    move v2, v3

    goto :goto_4

    .line 88
    :cond_2f
    const-string v4, "text/html"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 89
    iget-object v4, p0, Lorg/apache/harmony/awt/datatransfer/DataSnapshot;->html:Ljava/lang/String;

    if-eqz v4, :cond_4

    move v2, v3

    goto :goto_4

    .line 91
    :cond_3d
    const-string v4, "image/x-java-image"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 92
    iget-object v4, p0, Lorg/apache/harmony/awt/datatransfer/DataSnapshot;->rawBitmap:Lorg/apache/harmony/awt/datatransfer/RawBitmap;

    if-eqz v4, :cond_4

    move v2, v3

    goto :goto_4

    .line 95
    :cond_4b
    :try_start_4b
    invoke-static {p1}, Ljava/awt/datatransfer/SystemFlavorMap;->decodeDataFlavor(Ljava/lang/String;)Ljava/awt/datatransfer/DataFlavor;

    move-result-object v0

    .line 96
    .local v0, "df":Ljava/awt/datatransfer/DataFlavor;
    iget-object v3, p0, Lorg/apache/harmony/awt/datatransfer/DataSnapshot;->serializedObjects:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/awt/datatransfer/DataFlavor;->getRepresentationClass()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_58} :catch_5a

    move-result v2

    goto :goto_4

    .line 97
    .end local v0    # "df":Ljava/awt/datatransfer/DataFlavor;
    :catch_5a
    move-exception v1

    .line 98
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_4
.end method
