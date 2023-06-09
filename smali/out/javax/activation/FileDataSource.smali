.class public Ljavax/activation/FileDataSource;
.super Ljava/lang/Object;
.source "FileDataSource.java"

# interfaces
.implements Ljavax/activation/DataSource;


# instance fields
.field private _file:Ljava/io/File;

.field private typeMap:Ljavax/activation/FileTypeMap;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 3
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object v0, p0, Ljavax/activation/FileDataSource;->_file:Ljava/io/File;

    .line 76
    iput-object v0, p0, Ljavax/activation/FileDataSource;->typeMap:Ljavax/activation/FileTypeMap;

    .line 86
    iput-object p1, p0, Ljavax/activation/FileDataSource;->_file:Ljava/io/File;

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 98
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljavax/activation/FileDataSource;-><init>(Ljava/io/File;)V

    .line 99
    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .registers 3

    .prologue
    .line 138
    iget-object v0, p0, Ljavax/activation/FileDataSource;->typeMap:Ljavax/activation/FileTypeMap;

    if-nez v0, :cond_f

    .line 139
    invoke-static {}, Ljavax/activation/FileTypeMap;->getDefaultFileTypeMap()Ljavax/activation/FileTypeMap;

    move-result-object v0

    iget-object v1, p0, Ljavax/activation/FileDataSource;->_file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljavax/activation/FileTypeMap;->getContentType(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 141
    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Ljavax/activation/FileDataSource;->typeMap:Ljavax/activation/FileTypeMap;

    iget-object v1, p0, Ljavax/activation/FileDataSource;->_file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljavax/activation/FileTypeMap;->getContentType(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public getFile()Ljava/io/File;
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Ljavax/activation/FileDataSource;->_file:Ljava/io/File;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Ljavax/activation/FileDataSource;->_file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Ljavax/activation/FileDataSource;->_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Ljavax/activation/FileDataSource;->_file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public setFileTypeMap(Ljavax/activation/FileTypeMap;)V
    .registers 2
    .param p1, "map"    # Ljavax/activation/FileTypeMap;

    .prologue
    .line 169
    iput-object p1, p0, Ljavax/activation/FileDataSource;->typeMap:Ljavax/activation/FileTypeMap;

    .line 170
    return-void
.end method
