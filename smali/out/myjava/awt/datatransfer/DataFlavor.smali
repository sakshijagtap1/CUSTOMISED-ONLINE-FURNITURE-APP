.class public Lmyjava/awt/datatransfer/DataFlavor;
.super Ljava/lang/Object;
.source "DataFlavor.java"

# interfaces
.implements Ljava/io/Externalizable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final javaFileListFlavor:Lmyjava/awt/datatransfer/DataFlavor;

.field public static final javaJVMLocalObjectMimeType:Ljava/lang/String; = "application/x-java-jvm-local-objectref"

.field public static final javaRemoteObjectMimeType:Ljava/lang/String; = "application/x-java-remote-object"

.field public static final javaSerializedObjectMimeType:Ljava/lang/String; = "application/x-java-serialized-object"

.field public static final plainTextFlavor:Lmyjava/awt/datatransfer/DataFlavor;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static plainUnicodeFlavor:Lmyjava/awt/datatransfer/DataFlavor; = null

.field private static final serialVersionUID:J = 0x741da5db78a37333L

.field private static final sortedTextFlavors:[Ljava/lang/String;

.field public static final stringFlavor:Lmyjava/awt/datatransfer/DataFlavor;


# instance fields
.field private humanPresentableName:Ljava/lang/String;

.field private mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

.field private representationClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 41
    new-instance v0, Lmyjava/awt/datatransfer/DataFlavor;

    const-string v1, "text/plain; charset=unicode; class=java.io.InputStream"

    .line 42
    const-string v2, "Plain Text"

    .line 41
    invoke-direct {v0, v1, v2}, Lmyjava/awt/datatransfer/DataFlavor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    sput-object v0, Lmyjava/awt/datatransfer/DataFlavor;->plainTextFlavor:Lmyjava/awt/datatransfer/DataFlavor;

    .line 45
    new-instance v0, Lmyjava/awt/datatransfer/DataFlavor;

    const-string v1, "application/x-java-serialized-object; class=java.lang.String"

    .line 46
    const-string v2, "Unicode String"

    .line 45
    invoke-direct {v0, v1, v2}, Lmyjava/awt/datatransfer/DataFlavor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    sput-object v0, Lmyjava/awt/datatransfer/DataFlavor;->stringFlavor:Lmyjava/awt/datatransfer/DataFlavor;

    .line 53
    new-instance v0, Lmyjava/awt/datatransfer/DataFlavor;

    const-string v1, "application/x-java-file-list; class=java.util.List"

    .line 54
    const-string v2, "application/x-java-file-list"

    .line 53
    invoke-direct {v0, v1, v2}, Lmyjava/awt/datatransfer/DataFlavor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    sput-object v0, Lmyjava/awt/datatransfer/DataFlavor;->javaFileListFlavor:Lmyjava/awt/datatransfer/DataFlavor;

    .line 65
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 66
    const-string v2, "text/sgml"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 67
    const-string v2, "text/xml"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 68
    const-string v2, "text/html"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 69
    const-string v2, "text/rtf"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 70
    const-string v2, "text/enriched"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 71
    const-string v2, "text/richtext"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 72
    const-string v2, "text/uri-list"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 73
    const-string v2, "text/tab-separated-values"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 74
    const-string v2, "text/t140"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 75
    const-string v2, "text/rfc822-headers"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 76
    const-string v2, "text/parityfec"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 77
    const-string v2, "text/directory"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 78
    const-string v2, "text/css"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 79
    const-string v2, "text/calendar"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 80
    const-string v2, "application/x-java-serialized-object"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 81
    const-string v2, "text/plain"

    aput-object v2, v0, v1

    .line 65
    sput-object v0, Lmyjava/awt/datatransfer/DataFlavor;->sortedTextFlavors:[Ljava/lang/String;

    .line 84
    const/4 v0, 0x0

    sput-object v0, Lmyjava/awt/datatransfer/DataFlavor;->plainUnicodeFlavor:Lmyjava/awt/datatransfer/DataFlavor;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    .line 134
    iput-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->humanPresentableName:Ljava/lang/String;

    .line 135
    iput-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    .line 136
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 6
    .param p2, "humanPresentableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 138
    .local p1, "representationClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    new-instance v0, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    const-string v1, "application"

    const-string v2, "x-java-serialized-object"

    invoke-direct {v0, v1, v2}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    .line 141
    if-eqz p2, :cond_20

    .line 142
    iput-object p2, p0, Lmyjava/awt/datatransfer/DataFlavor;->humanPresentableName:Ljava/lang/String;

    .line 147
    :goto_12
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    const-string v1, "class"

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iput-object p1, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    .line 149
    return-void

    .line 144
    :cond_20
    const-string v0, "application/x-java-serialized-object"

    iput-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->humanPresentableName:Ljava/lang/String;

    goto :goto_12
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    invoke-direct {p0, p1, v0, v0}, Lmyjava/awt/datatransfer/DataFlavor;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 162
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "humanPresentableName"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    const/4 v1, 0x0

    :try_start_4
    invoke-direct {p0, p1, p2, v1}, Lmyjava/awt/datatransfer/DataFlavor;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_7} :catch_8

    .line 158
    return-void

    .line 154
    :catch_8
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "awt.16C"

    iget-object v3, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    const-string v4, "class"

    invoke-virtual {v3, v4}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/harmony/awt/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .registers 4
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "humanPresentableName"    # Ljava/lang/String;
    .param p3, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    invoke-direct {p0, p1, p2, p3}, Lmyjava/awt/datatransfer/DataFlavor;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 168
    return-void
.end method

.method private static fetchTextFlavors(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .param p1, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmyjava/awt/datatransfer/DataFlavor;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lmyjava/awt/datatransfer/DataFlavor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 685
    .local p0, "availableFlavors":Ljava/util/List;, "Ljava/util/List<Lmyjava/awt/datatransfer/DataFlavor;>;"
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 687
    .local v2, "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lmyjava/awt/datatransfer/DataFlavor;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lmyjava/awt/datatransfer/DataFlavor;>;"
    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_17

    .line 702
    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_16

    const/4 v2, 0x0

    .end local v2    # "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lmyjava/awt/datatransfer/DataFlavor;>;"
    :cond_16
    return-object v2

    .line 688
    .restart local v2    # "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lmyjava/awt/datatransfer/DataFlavor;>;"
    :cond_17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmyjava/awt/datatransfer/DataFlavor;

    .line 690
    .local v0, "flavor":Lmyjava/awt/datatransfer/DataFlavor;
    invoke-virtual {v0}, Lmyjava/awt/datatransfer/DataFlavor;->isFlavorTextType()Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 691
    iget-object v3, v0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    invoke-virtual {v3}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->getFullType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 692
    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    .line 693
    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 695
    :cond_38
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_9

    .line 698
    :cond_3c
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_9
.end method

.method private getCharset()Ljava/lang/String;
    .registers 4

    .prologue
    .line 199
    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    if-eqz v1, :cond_a

    invoke-direct {p0}, Lmyjava/awt/datatransfer/DataFlavor;->isCharsetRedundant()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 200
    :cond_a
    const-string v0, ""

    .line 211
    :cond_c
    :goto_c
    return-object v0

    .line 202
    :cond_d
    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    const-string v2, "charset"

    invoke-virtual {v1, v2}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "charset":Ljava/lang/String;
    invoke-direct {p0}, Lmyjava/awt/datatransfer/DataFlavor;->isCharsetRequired()Z

    move-result v1

    if-eqz v1, :cond_2c

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2c

    .line 205
    :cond_23
    invoke-static {}, Lorg/apache/harmony/awt/datatransfer/DTK;->getDTK()Lorg/apache/harmony/awt/datatransfer/DTK;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/harmony/awt/datatransfer/DTK;->getDefaultCharset()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 207
    :cond_2c
    if-nez v0, :cond_c

    .line 208
    const-string v0, ""

    goto :goto_c
.end method

.method private static getFlavors(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmyjava/awt/datatransfer/DataFlavor;",
            ">;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/List",
            "<",
            "Lmyjava/awt/datatransfer/DataFlavor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 656
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lmyjava/awt/datatransfer/DataFlavor;>;"
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 658
    .local v1, "sublist":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lmyjava/awt/datatransfer/DataFlavor;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_17

    .line 664
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 p0, 0x0

    .end local p0    # "list":Ljava/util/List;, "Ljava/util/List<Lmyjava/awt/datatransfer/DataFlavor;>;"
    :cond_16
    return-object p0

    .line 658
    .restart local p0    # "list":Ljava/util/List;, "Ljava/util/List<Lmyjava/awt/datatransfer/DataFlavor;>;"
    :cond_17
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmyjava/awt/datatransfer/DataFlavor;

    .line 659
    .local v0, "flavor":Lmyjava/awt/datatransfer/DataFlavor;
    iget-object v3, v0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 660
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_9
.end method

.method private static getFlavors(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .param p1, "charset"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmyjava/awt/datatransfer/DataFlavor;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lmyjava/awt/datatransfer/DataFlavor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 617
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lmyjava/awt/datatransfer/DataFlavor;>;"
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 619
    .local v3, "sublist":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lmyjava/awt/datatransfer/DataFlavor;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lmyjava/awt/datatransfer/DataFlavor;>;"
    :cond_9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_17

    .line 633
    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_16

    const/4 p0, 0x0

    .end local p0    # "list":Ljava/util/List;, "Ljava/util/List<Lmyjava/awt/datatransfer/DataFlavor;>;"
    :cond_16
    return-object p0

    .line 620
    .restart local p0    # "list":Ljava/util/List;, "Ljava/util/List<Lmyjava/awt/datatransfer/DataFlavor;>;"
    :cond_17
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmyjava/awt/datatransfer/DataFlavor;

    .line 622
    .local v1, "flavor":Lmyjava/awt/datatransfer/DataFlavor;
    invoke-direct {v1}, Lmyjava/awt/datatransfer/DataFlavor;->getCharset()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmyjava/awt/datatransfer/DataFlavor;->isCharsetSupported(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 623
    array-length v5, p1

    const/4 v4, 0x0

    :goto_29
    if-ge v4, v5, :cond_9

    aget-object v0, p1, v4

    .line 624
    .local v0, "element":Ljava/lang/String;
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-direct {v1}, Lmyjava/awt/datatransfer/DataFlavor;->getCharset()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_42

    .line 625
    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 623
    :cond_42
    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    .line 629
    .end local v0    # "element":Ljava/lang/String;
    :cond_45
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_9
.end method

.method private getKeyInfo()Ljava/lang/String;
    .registers 4

    .prologue
    .line 440
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    invoke-virtual {v2}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->getFullType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ";class="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 442
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    invoke-virtual {v1}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->getPrimaryType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "text"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-direct {p0}, Lmyjava/awt/datatransfer/DataFlavor;->isUnicodeFlavor()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 446
    .end local v0    # "key":Ljava/lang/String;
    :cond_37
    :goto_37
    return-object v0

    .restart local v0    # "key":Ljava/lang/String;
    :cond_38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ";charset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lmyjava/awt/datatransfer/DataFlavor;->getCharset()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_37
.end method

.method public static final getTextPlainUnicodeFlavor()Lmyjava/awt/datatransfer/DataFlavor;
    .registers 3

    .prologue
    .line 91
    sget-object v0, Lmyjava/awt/datatransfer/DataFlavor;->plainUnicodeFlavor:Lmyjava/awt/datatransfer/DataFlavor;

    if-nez v0, :cond_2a

    .line 92
    new-instance v0, Lmyjava/awt/datatransfer/DataFlavor;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "text/plain; charset="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-static {}, Lorg/apache/harmony/awt/datatransfer/DTK;->getDTK()Lorg/apache/harmony/awt/datatransfer/DTK;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/harmony/awt/datatransfer/DTK;->getDefaultCharset()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 94
    const-string v2, "; class=java.io.InputStream"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 95
    const-string v2, "Plain Text"

    .line 92
    invoke-direct {v0, v1, v2}, Lmyjava/awt/datatransfer/DataFlavor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lmyjava/awt/datatransfer/DataFlavor;->plainUnicodeFlavor:Lmyjava/awt/datatransfer/DataFlavor;

    .line 98
    :cond_2a
    sget-object v0, Lmyjava/awt/datatransfer/DataFlavor;->plainUnicodeFlavor:Lmyjava/awt/datatransfer/DataFlavor;

    return-object v0
.end method

.method private init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .registers 8
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "humanPresentableName"    # Ljava/lang/String;
    .param p3, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 176
    :try_start_0
    invoke-static {p1}, Lmyjava/awt/datatransfer/MimeTypeProcessor;->parse(Ljava/lang/String;)Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    move-result-object v2

    iput-object v2, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_6} :catch_26

    .line 182
    if-eqz p2, :cond_33

    .line 183
    iput-object p2, p0, Lmyjava/awt/datatransfer/DataFlavor;->humanPresentableName:Ljava/lang/String;

    .line 188
    :goto_a
    iget-object v2, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    const-string v3, "class"

    invoke-virtual {v2, v3}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "className":Ljava/lang/String;
    if-nez v0, :cond_1d

    .line 190
    const-string v0, "java.io.InputStream"

    .line 191
    iget-object v2, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    const-string v3, "class"

    invoke-virtual {v2, v3, v0}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_1d
    if-nez p3, :cond_59

    .line 194
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 193
    :goto_23
    iput-object v2, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    .line 196
    return-void

    .line 177
    .end local v0    # "className":Ljava/lang/String;
    :catch_26
    move-exception v1

    .line 179
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "awt.16D"

    invoke-static {v3, p1}, Lorg/apache/harmony/awt/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 185
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_33
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    invoke-virtual {v3}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->getPrimaryType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    invoke-virtual {v3}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->getSubType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmyjava/awt/datatransfer/DataFlavor;->humanPresentableName:Ljava/lang/String;

    goto :goto_a

    .line 195
    .restart local v0    # "className":Ljava/lang/String;
    :cond_59
    invoke-virtual {p3, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    goto :goto_23
.end method

.method private isByteCodeFlavor()Z
    .registers 3

    .prologue
    .line 714
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    if-eqz v0, :cond_24

    .line 715
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    const-class v1, Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 716
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    const-class v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 717
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    const-class v1, [B

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    :cond_22
    const/4 v0, 0x1

    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    .line 714
    goto :goto_23
.end method

.method private isCharsetRedundant()Z
    .registers 3

    .prologue
    .line 231
    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    invoke-virtual {v1}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->getFullType()Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "type":Ljava/lang/String;
    const-string v1, "text/rtf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 234
    const-string v1, "text/tab-separated-values"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 235
    const-string v1, "text/t140"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 236
    const-string v1, "text/rfc822-headers"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 237
    const-string v1, "text/parityfec"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    const/4 v1, 0x0

    :goto_2f
    return v1

    :cond_30
    const/4 v1, 0x1

    .line 233
    goto :goto_2f
.end method

.method private isCharsetRequired()Z
    .registers 3

    .prologue
    .line 215
    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    invoke-virtual {v1}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->getFullType()Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "type":Ljava/lang/String;
    const-string v1, "text/sgml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_60

    .line 218
    const-string v1, "text/xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_60

    .line 219
    const-string v1, "text/html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_60

    .line 220
    const-string v1, "text/enriched"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_60

    .line 221
    const-string v1, "text/richtext"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_60

    .line 222
    const-string v1, "text/uri-list"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_60

    .line 223
    const-string v1, "text/directory"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_60

    .line 224
    const-string v1, "text/css"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_60

    .line 225
    const-string v1, "text/calendar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_60

    .line 226
    const-string v1, "application/x-java-serialized-object"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_60

    .line 227
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_60

    const/4 v1, 0x0

    :goto_5f
    return v1

    :cond_60
    const/4 v1, 0x1

    .line 217
    goto :goto_5f
.end method

.method private static isCharsetSupported(Ljava/lang/String;)Z
    .registers 3
    .param p0, "charset"    # Ljava/lang/String;

    .prologue
    .line 126
    :try_start_0
    invoke-static {p0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    .line 128
    :goto_4
    return v1

    .line 127
    :catch_5
    move-exception v0

    .line 128
    .local v0, "e":Ljava/nio/charset/IllegalCharsetNameException;
    const/4 v1, 0x0

    goto :goto_4
.end method

.method private isUnicodeFlavor()Z
    .registers 3

    .prologue
    .line 706
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    if-eqz v0, :cond_2e

    .line 707
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    const-class v1, Ljava/io/Reader;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 708
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 709
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    const-class v1, Ljava/nio/CharBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 710
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    const-class v1, [C

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    :cond_2c
    const/4 v0, 0x1

    :goto_2d
    return v0

    :cond_2e
    const/4 v0, 0x0

    .line 706
    goto :goto_2d
.end method

.method private static selectBestByAlphabet(Ljava/util/List;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmyjava/awt/datatransfer/DataFlavor;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lmyjava/awt/datatransfer/DataFlavor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 599
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lmyjava/awt/datatransfer/DataFlavor;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    new-array v1, v4, [Ljava/lang/String;

    .line 600
    .local v1, "charsets":[Ljava/lang/String;
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 602
    .local v0, "best":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lmyjava/awt/datatransfer/DataFlavor;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    array-length v4, v1

    if-lt v3, v4, :cond_26

    .line 605
    sget-object v4, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-static {v1, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 607
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_18
    :goto_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_35

    .line 613
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_25

    const/4 v0, 0x0

    .end local v0    # "best":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lmyjava/awt/datatransfer/DataFlavor;>;"
    :cond_25
    return-object v0

    .line 603
    .restart local v0    # "best":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lmyjava/awt/datatransfer/DataFlavor;>;"
    :cond_26
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmyjava/awt/datatransfer/DataFlavor;

    invoke-direct {v4}, Lmyjava/awt/datatransfer/DataFlavor;->getCharset()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 602
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 607
    :cond_35
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmyjava/awt/datatransfer/DataFlavor;

    .line 608
    .local v2, "flavor":Lmyjava/awt/datatransfer/DataFlavor;
    const/4 v5, 0x0

    aget-object v5, v1, v5

    invoke-direct {v2}, Lmyjava/awt/datatransfer/DataFlavor;->getCharset()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 609
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_18
.end method

.method private static selectBestByCharset(Ljava/util/List;)Lmyjava/awt/datatransfer/DataFlavor;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmyjava/awt/datatransfer/DataFlavor;",
            ">;)",
            "Lmyjava/awt/datatransfer/DataFlavor;"
        }
    .end annotation

    .prologue
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lmyjava/awt/datatransfer/DataFlavor;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 577
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "UTF-16"

    aput-object v2, v1, v4

    const-string v2, "UTF-8"

    aput-object v2, v1, v5

    const/4 v2, 0x2

    const-string v3, "UTF-16BE"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "UTF-16LE"

    aput-object v3, v1, v2

    invoke-static {p0, v1}, Lmyjava/awt/datatransfer/DataFlavor;->getFlavors(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 578
    .local v0, "best":Ljava/util/List;, "Ljava/util/List<Lmyjava/awt/datatransfer/DataFlavor;>;"
    if-nez v0, :cond_3f

    .line 579
    new-array v1, v5, [Ljava/lang/String;

    invoke-static {}, Lorg/apache/harmony/awt/datatransfer/DTK;->getDTK()Lorg/apache/harmony/awt/datatransfer/DTK;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/harmony/awt/datatransfer/DTK;->getDefaultCharset()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p0, v1}, Lmyjava/awt/datatransfer/DataFlavor;->getFlavors(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 580
    if-nez v0, :cond_3f

    .line 581
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "US-ASCII"

    aput-object v2, v1, v4

    invoke-static {p0, v1}, Lmyjava/awt/datatransfer/DataFlavor;->getFlavors(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 582
    if-nez v0, :cond_3f

    .line 583
    invoke-static {p0}, Lmyjava/awt/datatransfer/DataFlavor;->selectBestByAlphabet(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 588
    :cond_3f
    if-eqz v0, :cond_53

    .line 589
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v5, :cond_4e

    .line 590
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmyjava/awt/datatransfer/DataFlavor;

    .line 595
    :goto_4d
    return-object v1

    .line 592
    :cond_4e
    invoke-static {v0}, Lmyjava/awt/datatransfer/DataFlavor;->selectBestFlavorWOCharset(Ljava/util/List;)Lmyjava/awt/datatransfer/DataFlavor;

    move-result-object v1

    goto :goto_4d

    .line 595
    :cond_53
    const/4 v1, 0x0

    goto :goto_4d
.end method

.method private static selectBestFlavorWCharset(Ljava/util/List;)Lmyjava/awt/datatransfer/DataFlavor;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmyjava/awt/datatransfer/DataFlavor;",
            ">;)",
            "Lmyjava/awt/datatransfer/DataFlavor;"
        }
    .end annotation

    .prologue
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lmyjava/awt/datatransfer/DataFlavor;>;"
    const/4 v2, 0x0

    .line 554
    const-class v1, Ljava/io/Reader;

    invoke-static {p0, v1}, Lmyjava/awt/datatransfer/DataFlavor;->getFlavors(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 555
    .local v0, "best":Ljava/util/List;, "Ljava/util/List<Lmyjava/awt/datatransfer/DataFlavor;>;"
    if-eqz v0, :cond_10

    .line 556
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmyjava/awt/datatransfer/DataFlavor;

    .line 571
    :goto_f
    return-object v1

    .line 558
    :cond_10
    const-class v1, Ljava/lang/String;

    invoke-static {p0, v1}, Lmyjava/awt/datatransfer/DataFlavor;->getFlavors(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 559
    if-eqz v0, :cond_1f

    .line 560
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmyjava/awt/datatransfer/DataFlavor;

    goto :goto_f

    .line 562
    :cond_1f
    const-class v1, Ljava/nio/CharBuffer;

    invoke-static {p0, v1}, Lmyjava/awt/datatransfer/DataFlavor;->getFlavors(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 563
    if-eqz v0, :cond_2e

    .line 564
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmyjava/awt/datatransfer/DataFlavor;

    goto :goto_f

    .line 566
    :cond_2e
    const-class v1, [C

    invoke-static {p0, v1}, Lmyjava/awt/datatransfer/DataFlavor;->getFlavors(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 567
    if-eqz v0, :cond_3d

    .line 568
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmyjava/awt/datatransfer/DataFlavor;

    goto :goto_f

    .line 571
    :cond_3d
    invoke-static {p0}, Lmyjava/awt/datatransfer/DataFlavor;->selectBestByCharset(Ljava/util/List;)Lmyjava/awt/datatransfer/DataFlavor;

    move-result-object v1

    goto :goto_f
.end method

.method private static selectBestFlavorWOCharset(Ljava/util/List;)Lmyjava/awt/datatransfer/DataFlavor;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmyjava/awt/datatransfer/DataFlavor;",
            ">;)",
            "Lmyjava/awt/datatransfer/DataFlavor;"
        }
    .end annotation

    .prologue
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lmyjava/awt/datatransfer/DataFlavor;>;"
    const/4 v2, 0x0

    .line 639
    const-class v1, Ljava/io/InputStream;

    invoke-static {p0, v1}, Lmyjava/awt/datatransfer/DataFlavor;->getFlavors(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 640
    .local v0, "best":Ljava/util/List;, "Ljava/util/List<Lmyjava/awt/datatransfer/DataFlavor;>;"
    if-eqz v0, :cond_10

    .line 641
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmyjava/awt/datatransfer/DataFlavor;

    .line 652
    :goto_f
    return-object v1

    .line 643
    :cond_10
    const-class v1, Ljava/nio/ByteBuffer;

    invoke-static {p0, v1}, Lmyjava/awt/datatransfer/DataFlavor;->getFlavors(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 644
    if-eqz v0, :cond_1f

    .line 645
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmyjava/awt/datatransfer/DataFlavor;

    goto :goto_f

    .line 647
    :cond_1f
    const-class v1, [B

    invoke-static {p0, v1}, Lmyjava/awt/datatransfer/DataFlavor;->getFlavors(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 648
    if-eqz v0, :cond_2e

    .line 649
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmyjava/awt/datatransfer/DataFlavor;

    goto :goto_f

    .line 652
    :cond_2e
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmyjava/awt/datatransfer/DataFlavor;

    goto :goto_f
.end method

.method public static final selectBestTextFlavor([Lmyjava/awt/datatransfer/DataFlavor;)Lmyjava/awt/datatransfer/DataFlavor;
    .registers 7
    .param p0, "availableFlavors"    # [Lmyjava/awt/datatransfer/DataFlavor;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 529
    if-nez p0, :cond_5

    .line 548
    :cond_4
    :goto_4
    return-object v2

    .line 533
    :cond_5
    new-instance v3, Ljava/util/LinkedList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    invoke-static {v3}, Lmyjava/awt/datatransfer/DataFlavor;->sortTextFlavorsByType(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 535
    .local v1, "sorted":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lmyjava/awt/datatransfer/DataFlavor;>;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 539
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 541
    .local v0, "bestSorted":Ljava/util/List;, "Ljava/util/List<Lmyjava/awt/datatransfer/DataFlavor;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2c

    .line 542
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmyjava/awt/datatransfer/DataFlavor;

    goto :goto_4

    .line 545
    :cond_2c
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmyjava/awt/datatransfer/DataFlavor;

    invoke-direct {v2}, Lmyjava/awt/datatransfer/DataFlavor;->getCharset()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_41

    .line 546
    invoke-static {v0}, Lmyjava/awt/datatransfer/DataFlavor;->selectBestFlavorWOCharset(Ljava/util/List;)Lmyjava/awt/datatransfer/DataFlavor;

    move-result-object v2

    goto :goto_4

    .line 548
    :cond_41
    invoke-static {v0}, Lmyjava/awt/datatransfer/DataFlavor;->selectBestFlavorWCharset(Ljava/util/List;)Lmyjava/awt/datatransfer/DataFlavor;

    move-result-object v2

    goto :goto_4
.end method

.method private static sortTextFlavorsByType(Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmyjava/awt/datatransfer/DataFlavor;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lmyjava/awt/datatransfer/DataFlavor;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 668
    .local p0, "availableFlavors":Ljava/util/List;, "Ljava/util/List<Lmyjava/awt/datatransfer/DataFlavor;>;"
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 670
    .local v1, "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/util/List<Lmyjava/awt/datatransfer/DataFlavor;>;>;"
    sget-object v4, Lmyjava/awt/datatransfer/DataFlavor;->sortedTextFlavors:[Ljava/lang/String;

    array-length v5, v4

    const/4 v3, 0x0

    :goto_9
    if-lt v3, v5, :cond_15

    .line 677
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_14

    .line 678
    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 681
    :cond_14
    return-object v1

    .line 670
    :cond_15
    aget-object v0, v4, v3

    .line 671
    .local v0, "element":Ljava/lang/String;
    invoke-static {p0, v0}, Lmyjava/awt/datatransfer/DataFlavor;->fetchTextFlavors(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 673
    .local v2, "subList":Ljava/util/List;, "Ljava/util/List<Lmyjava/awt/datatransfer/DataFlavor;>;"
    if-eqz v2, :cond_20

    .line 674
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 670
    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_9
.end method

.method protected static final tryToLoadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .registers 6
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "fallback"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 105
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v3

    .line 119
    :goto_4
    return-object v3

    .line 106
    :catch_5
    move-exception v1

    .line 108
    .local v1, "e0":Ljava/lang/ClassNotFoundException;
    :try_start_6
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_d} :catch_f

    move-result-object v3

    goto :goto_4

    .line 109
    :catch_f
    move-exception v2

    .line 110
    .local v2, "e1":Ljava/lang/ClassNotFoundException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 112
    .local v0, "contextLoader":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_20

    .line 114
    :try_start_1a
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1a .. :try_end_1d} :catch_1f

    move-result-object v3

    goto :goto_4

    .line 115
    :catch_1f
    move-exception v3

    .line 119
    :cond_20
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    goto :goto_4
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 357
    new-instance v0, Lmyjava/awt/datatransfer/DataFlavor;

    invoke-direct {v0}, Lmyjava/awt/datatransfer/DataFlavor;-><init>()V

    .line 359
    .local v0, "clone":Lmyjava/awt/datatransfer/DataFlavor;
    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->humanPresentableName:Ljava/lang/String;

    iput-object v1, v0, Lmyjava/awt/datatransfer/DataFlavor;->humanPresentableName:Ljava/lang/String;

    .line 360
    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    iput-object v1, v0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    .line 361
    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    if-eqz v1, :cond_1c

    .line 362
    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    invoke-virtual {v1}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->clone()Ljava/lang/Object;

    move-result-object v1

    .line 361
    check-cast v1, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    :goto_19
    iput-object v1, v0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    .line 364
    return-object v0

    .line 362
    :cond_1c
    const/4 v1, 0x0

    goto :goto_19
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 386
    if-eqz p1, :cond_6

    instance-of v0, p1, Lmyjava/awt/datatransfer/DataFlavor;

    if-nez v0, :cond_8

    .line 387
    :cond_6
    const/4 v0, 0x0

    .line 389
    .end local p1    # "o":Ljava/lang/Object;
    :goto_7
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_8
    check-cast p1, Lmyjava/awt/datatransfer/DataFlavor;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lmyjava/awt/datatransfer/DataFlavor;->equals(Lmyjava/awt/datatransfer/DataFlavor;)Z

    move-result v0

    goto :goto_7
.end method

.method public equals(Ljava/lang/String;)Z
    .registers 3
    .param p1, "s"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 423
    if-nez p1, :cond_4

    .line 424
    const/4 v0, 0x0

    .line 427
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0, p1}, Lmyjava/awt/datatransfer/DataFlavor;->isMimeTypeEqual(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3
.end method

.method public equals(Lmyjava/awt/datatransfer/DataFlavor;)Z
    .registers 8
    .param p1, "that"    # Lmyjava/awt/datatransfer/DataFlavor;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 393
    if-ne p1, p0, :cond_5

    .line 417
    :cond_4
    :goto_4
    return v2

    .line 396
    :cond_5
    if-nez p1, :cond_9

    move v2, v3

    .line 397
    goto :goto_4

    .line 399
    :cond_9
    iget-object v4, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    if-nez v4, :cond_13

    .line 400
    iget-object v4, p1, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    if-eqz v4, :cond_4

    move v2, v3

    goto :goto_4

    .line 402
    :cond_13
    iget-object v4, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    iget-object v5, p1, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    invoke-virtual {v4, v5}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->equals(Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 403
    iget-object v4, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    iget-object v5, p1, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_29

    :cond_27
    move v2, v3

    .line 405
    goto :goto_4

    .line 407
    :cond_29
    iget-object v3, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    invoke-virtual {v3}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->getPrimaryType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "text"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0}, Lmyjava/awt/datatransfer/DataFlavor;->isUnicodeFlavor()Z

    move-result v3

    if-nez v3, :cond_4

    .line 411
    invoke-direct {p0}, Lmyjava/awt/datatransfer/DataFlavor;->getCharset()Ljava/lang/String;

    move-result-object v0

    .line 412
    .local v0, "charset1":Ljava/lang/String;
    invoke-direct {p1}, Lmyjava/awt/datatransfer/DataFlavor;->getCharset()Ljava/lang/String;

    move-result-object v1

    .line 414
    .local v1, "charset2":Ljava/lang/String;
    invoke-static {v0}, Lmyjava/awt/datatransfer/DataFlavor;->isCharsetSupported(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-static {v1}, Lmyjava/awt/datatransfer/DataFlavor;->isCharsetSupported(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_56

    .line 415
    :cond_51
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    goto :goto_4

    .line 417
    :cond_56
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_4
.end method

.method public final getDefaultRepresentationClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 278
    const-class v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public final getDefaultRepresentationClassAsString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 282
    invoke-virtual {p0}, Lmyjava/awt/datatransfer/DataFlavor;->getDefaultRepresentationClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHumanPresentableName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 266
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->humanPresentableName:Ljava/lang/String;

    return-object v0
.end method

.method getMimeInfo()Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;
    .registers 2

    .prologue
    .line 241
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 253
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    invoke-static {v0}, Lmyjava/awt/datatransfer/MimeTypeProcessor;->assemble(Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;)Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "paramName"    # Ljava/lang/String;

    .prologue
    .line 257
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, "lowerName":Ljava/lang/String;
    const-string v1, "humanpresentablename"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 260
    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->humanPresentableName:Ljava/lang/String;

    .line 262
    :goto_e
    return-object v1

    :cond_f
    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    invoke-virtual {v1, v0}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    :cond_1a
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public getPrimaryType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 245
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    invoke-virtual {v0}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->getPrimaryType()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getReaderForText(Lmyjava/awt/datatransfer/Transferable;)Ljava/io/Reader;
    .registers 8
    .param p1, "transferable"    # Lmyjava/awt/datatransfer/Transferable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyjava/awt/datatransfer/UnsupportedFlavorException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 488
    invoke-interface {p1, p0}, Lmyjava/awt/datatransfer/Transferable;->getTransferData(Lmyjava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;

    move-result-object v1

    .line 490
    .local v1, "data":Ljava/lang/Object;
    if-nez v1, :cond_12

    .line 492
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "awt.16E"

    invoke-static {v5}, Lorg/apache/harmony/awt/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 495
    :cond_12
    instance-of v4, v1, Ljava/io/Reader;

    if-eqz v4, :cond_1d

    move-object v2, v1

    .line 496
    check-cast v2, Ljava/io/Reader;

    .line 497
    .local v2, "reader":Ljava/io/Reader;
    invoke-virtual {v2}, Ljava/io/Reader;->reset()V

    .line 524
    .end local v1    # "data":Ljava/lang/Object;
    .end local v2    # "reader":Ljava/io/Reader;
    :goto_1c
    return-object v2

    .line 499
    .restart local v1    # "data":Ljava/lang/Object;
    :cond_1d
    instance-of v4, v1, Ljava/lang/String;

    if-eqz v4, :cond_29

    .line 500
    new-instance v2, Ljava/io/StringReader;

    check-cast v1, Ljava/lang/String;

    .end local v1    # "data":Ljava/lang/Object;
    invoke-direct {v2, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    goto :goto_1c

    .line 501
    .restart local v1    # "data":Ljava/lang/Object;
    :cond_29
    instance-of v4, v1, Ljava/nio/CharBuffer;

    if-eqz v4, :cond_39

    .line 502
    new-instance v2, Ljava/io/CharArrayReader;

    check-cast v1, Ljava/nio/CharBuffer;

    .end local v1    # "data":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/CharArrayReader;-><init>([C)V

    goto :goto_1c

    .line 503
    .restart local v1    # "data":Ljava/lang/Object;
    :cond_39
    instance-of v4, v1, [C

    if-eqz v4, :cond_45

    .line 504
    new-instance v2, Ljava/io/CharArrayReader;

    check-cast v1, [C

    .end local v1    # "data":Ljava/lang/Object;
    invoke-direct {v2, v1}, Ljava/io/CharArrayReader;-><init>([C)V

    goto :goto_1c

    .line 506
    .restart local v1    # "data":Ljava/lang/Object;
    :cond_45
    invoke-direct {p0}, Lmyjava/awt/datatransfer/DataFlavor;->getCharset()Ljava/lang/String;

    move-result-object v0

    .line 509
    .local v0, "charset":Ljava/lang/String;
    instance-of v4, v1, Ljava/io/InputStream;

    if-eqz v4, :cond_5f

    move-object v3, v1

    .line 510
    check-cast v3, Ljava/io/InputStream;

    .line 511
    .local v3, "stream":Ljava/io/InputStream;
    invoke-virtual {v3}, Ljava/io/InputStream;->reset()V

    .line 521
    .end local v1    # "data":Ljava/lang/Object;
    :goto_53
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_87

    .line 522
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    goto :goto_1c

    .line 512
    .end local v3    # "stream":Ljava/io/InputStream;
    .restart local v1    # "data":Ljava/lang/Object;
    :cond_5f
    instance-of v4, v1, Ljava/nio/ByteBuffer;

    if-eqz v4, :cond_6f

    .line 513
    new-instance v3, Ljava/io/ByteArrayInputStream;

    check-cast v1, Ljava/nio/ByteBuffer;

    .end local v1    # "data":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .restart local v3    # "stream":Ljava/io/InputStream;
    goto :goto_53

    .line 514
    .end local v3    # "stream":Ljava/io/InputStream;
    .restart local v1    # "data":Ljava/lang/Object;
    :cond_6f
    instance-of v4, v1, [B

    if-eqz v4, :cond_7b

    .line 515
    new-instance v3, Ljava/io/ByteArrayInputStream;

    check-cast v1, [B

    .end local v1    # "data":Ljava/lang/Object;
    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .restart local v3    # "stream":Ljava/io/InputStream;
    goto :goto_53

    .line 518
    .end local v3    # "stream":Ljava/io/InputStream;
    .restart local v1    # "data":Ljava/lang/Object;
    :cond_7b
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "awt.16F"

    invoke-static {v5}, Lorg/apache/harmony/awt/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 524
    .end local v1    # "data":Ljava/lang/Object;
    .restart local v3    # "stream":Ljava/io/InputStream;
    :cond_87
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_1c
.end method

.method public getRepresentationClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 274
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getSubType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 249
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    invoke-virtual {v0}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->getSubType()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 436
    invoke-direct {p0}, Lmyjava/awt/datatransfer/DataFlavor;->getKeyInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isFlavorJavaFileListType()Z
    .registers 3

    .prologue
    .line 460
    const-class v0, Ljava/util/List;

    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 461
    sget-object v0, Lmyjava/awt/datatransfer/DataFlavor;->javaFileListFlavor:Lmyjava/awt/datatransfer/DataFlavor;

    invoke-virtual {p0, v0}, Lmyjava/awt/datatransfer/DataFlavor;->isMimeTypeEqual(Lmyjava/awt/datatransfer/DataFlavor;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    .line 460
    goto :goto_13
.end method

.method public isFlavorRemoteObjectType()Z
    .registers 2

    .prologue
    .line 455
    const-string v0, "application/x-java-remote-object"

    invoke-virtual {p0, v0}, Lmyjava/awt/datatransfer/DataFlavor;->isMimeTypeEqual(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 456
    invoke-virtual {p0}, Lmyjava/awt/datatransfer/DataFlavor;->isRepresentationClassRemote()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    .line 455
    goto :goto_f
.end method

.method public isFlavorSerializedObjectType()Z
    .registers 2

    .prologue
    .line 450
    invoke-virtual {p0}, Lmyjava/awt/datatransfer/DataFlavor;->isMimeTypeSerializedObject()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 451
    invoke-virtual {p0}, Lmyjava/awt/datatransfer/DataFlavor;->isRepresentationClassSerializable()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    .line 450
    goto :goto_d
.end method

.method public isFlavorTextType()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 465
    sget-object v2, Lmyjava/awt/datatransfer/DataFlavor;->stringFlavor:Lmyjava/awt/datatransfer/DataFlavor;

    invoke-virtual {p0, v2}, Lmyjava/awt/datatransfer/DataFlavor;->equals(Lmyjava/awt/datatransfer/DataFlavor;)Z

    move-result v2

    if-nez v2, :cond_11

    sget-object v2, Lmyjava/awt/datatransfer/DataFlavor;->plainTextFlavor:Lmyjava/awt/datatransfer/DataFlavor;

    invoke-virtual {p0, v2}, Lmyjava/awt/datatransfer/DataFlavor;->equals(Lmyjava/awt/datatransfer/DataFlavor;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 482
    :cond_11
    :goto_11
    return v1

    .line 468
    :cond_12
    iget-object v2, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    if-eqz v2, :cond_26

    iget-object v2, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    invoke-virtual {v2}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->getPrimaryType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 469
    const/4 v1, 0x0

    goto :goto_11

    .line 472
    :cond_26
    invoke-direct {p0}, Lmyjava/awt/datatransfer/DataFlavor;->getCharset()Ljava/lang/String;

    move-result-object v0

    .line 474
    .local v0, "charset":Ljava/lang/String;
    invoke-direct {p0}, Lmyjava/awt/datatransfer/DataFlavor;->isByteCodeFlavor()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 475
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_11

    .line 476
    invoke-static {v0}, Lmyjava/awt/datatransfer/DataFlavor;->isCharsetSupported(Ljava/lang/String;)Z

    move-result v1

    goto :goto_11

    .line 482
    :cond_3b
    invoke-direct {p0}, Lmyjava/awt/datatransfer/DataFlavor;->isUnicodeFlavor()Z

    move-result v1

    goto :goto_11
.end method

.method public isMimeTypeEqual(Ljava/lang/String;)Z
    .registers 5
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 334
    :try_start_0
    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    invoke-static {p1}, Lmyjava/awt/datatransfer/MimeTypeProcessor;->parse(Ljava/lang/String;)Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->equals(Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;)Z
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    .line 336
    :goto_a
    return v1

    .line 335
    :catch_b
    move-exception v0

    .line 336
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public final isMimeTypeEqual(Lmyjava/awt/datatransfer/DataFlavor;)Z
    .registers 4
    .param p1, "dataFlavor"    # Lmyjava/awt/datatransfer/DataFlavor;

    .prologue
    .line 328
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    iget-object v1, p1, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    invoke-virtual {v0, v1}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->equals(Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;)Z

    move-result v0

    :goto_c
    return v0

    .line 329
    :cond_d
    iget-object v0, p1, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    if-nez v0, :cond_13

    const/4 v0, 0x1

    goto :goto_c

    :cond_13
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public isMimeTypeSerializedObject()Z
    .registers 2

    .prologue
    .line 381
    const-string v0, "application/x-java-serialized-object"

    invoke-virtual {p0, v0}, Lmyjava/awt/datatransfer/DataFlavor;->isMimeTypeEqual(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isRepresentationClassByteBuffer()Z
    .registers 3

    .prologue
    .line 308
    const-class v0, Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isRepresentationClassCharBuffer()Z
    .registers 3

    .prologue
    .line 304
    const-class v0, Ljava/nio/CharBuffer;

    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isRepresentationClassInputStream()Z
    .registers 3

    .prologue
    .line 300
    const-class v0, Ljava/io/InputStream;

    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isRepresentationClassReader()Z
    .registers 3

    .prologue
    .line 296
    const-class v0, Ljava/io/Reader;

    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isRepresentationClassRemote()Z
    .registers 2

    .prologue
    .line 292
    const/4 v0, 0x0

    return v0
.end method

.method public isRepresentationClassSerializable()Z
    .registers 3

    .prologue
    .line 286
    const-class v0, Ljava/io/Serializable;

    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public match(Lmyjava/awt/datatransfer/DataFlavor;)Z
    .registers 3
    .param p1, "that"    # Lmyjava/awt/datatransfer/DataFlavor;

    .prologue
    .line 431
    invoke-virtual {p0, p1}, Lmyjava/awt/datatransfer/DataFlavor;->equals(Lmyjava/awt/datatransfer/DataFlavor;)Z

    move-result v0

    return v0
.end method

.method protected normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p1, "mimeType"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 324
    return-object p1
.end method

.method protected normalizeMimeTypeParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "parameterValue"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 316
    return-object p2
.end method

.method public declared-synchronized readExternal(Ljava/io/ObjectInput;)V
    .registers 4
    .param p1, "is"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 348
    monitor-enter p0

    :try_start_1
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->humanPresentableName:Ljava/lang/String;

    .line 349
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    iput-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    .line 351
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    if-eqz v0, :cond_25

    .line 352
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    const-string v1, "class"

    invoke-virtual {v0, v1}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 351
    :goto_21
    iput-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_27

    .line 353
    monitor-exit p0

    return-void

    .line 352
    :cond_25
    const/4 v0, 0x0

    goto :goto_21

    .line 348
    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setHumanPresentableName(Ljava/lang/String;)V
    .registers 2
    .param p1, "humanPresentableName"    # Ljava/lang/String;

    .prologue
    .line 270
    iput-object p1, p0, Lmyjava/awt/datatransfer/DataFlavor;->humanPresentableName:Ljava/lang/String;

    .line 271
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 376
    const-string v1, "[MimeType=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lmyjava/awt/datatransfer/DataFlavor;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 377
    const-string v1, ");humanPresentableName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->humanPresentableName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 375
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized writeExternal(Ljava/io/ObjectOutput;)V
    .registers 3
    .param p1, "os"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 341
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->humanPresentableName:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 342
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 343
    monitor-exit p0

    return-void

    .line 341
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method
