.class public Ljavax/activation/MimetypesFileTypeMap;
.super Ljavax/activation/FileTypeMap;
.source "MimetypesFileTypeMap.java"


# static fields
.field private static final PROG:I

.field private static defDB:Lcom/sun/activation/registries/MimeTypeFile;

.field private static defaultType:Ljava/lang/String;


# instance fields
.field private DB:[Lcom/sun/activation/registries/MimeTypeFile;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 89
    const/4 v0, 0x0

    sput-object v0, Ljavax/activation/MimetypesFileTypeMap;->defDB:Lcom/sun/activation/registries/MimeTypeFile;

    .line 93
    const-string v0, "application/octet-stream"

    sput-object v0, Ljavax/activation/MimetypesFileTypeMap;->defaultType:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public constructor <init>()V
    .registers 8

    .prologue
    .line 98
    invoke-direct {p0}, Ljavax/activation/FileTypeMap;-><init>()V

    .line 99
    new-instance v0, Ljava/util/Vector;

    const/4 v5, 0x5

    invoke-direct {v0, v5}, Ljava/util/Vector;-><init>(I)V

    .line 100
    .local v0, "dbv":Ljava/util/Vector;
    const/4 v1, 0x0

    .line 101
    .local v1, "mf":Lcom/sun/activation/registries/MimeTypeFile;
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 103
    const-string v5, "MimetypesFileTypeMap: load HOME"

    invoke-static {v5}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 105
    :try_start_13
    const-string v5, "user.home"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 107
    .local v4, "user_home":Ljava/lang/String;
    if-eqz v4, :cond_3d

    .line 108
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".mime.types"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, "path":Ljava/lang/String;
    invoke-direct {p0, v2}, Ljavax/activation/MimetypesFileTypeMap;->loadFile(Ljava/lang/String;)Lcom/sun/activation/registries/MimeTypeFile;

    move-result-object v1

    .line 110
    if-eqz v1, :cond_3d

    .line 111
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_3d
    .catch Ljava/lang/SecurityException; {:try_start_13 .. :try_end_3d} :catch_b1

    .line 115
    .end local v2    # "path":Ljava/lang/String;
    .end local v4    # "user_home":Ljava/lang/String;
    :cond_3d
    :goto_3d
    const-string v5, "MimetypesFileTypeMap: load SYS"

    invoke-static {v5}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 118
    :try_start_42
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "java.home"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "lib"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "mime.types"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 118
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 120
    .local v3, "system_mimetypes":Ljava/lang/String;
    invoke-direct {p0, v3}, Ljavax/activation/MimetypesFileTypeMap;->loadFile(Ljava/lang/String;)Lcom/sun/activation/registries/MimeTypeFile;

    move-result-object v1

    .line 121
    if-eqz v1, :cond_76

    .line 122
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_76
    .catch Ljava/lang/SecurityException; {:try_start_42 .. :try_end_76} :catch_af

    .line 125
    .end local v3    # "system_mimetypes":Ljava/lang/String;
    :cond_76
    :goto_76
    const-string v5, "MimetypesFileTypeMap: load JAR"

    invoke-static {v5}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 127
    const-string v5, "mime.types"

    invoke-direct {p0, v0, v5}, Ljavax/activation/MimetypesFileTypeMap;->loadAllResources(Ljava/util/Vector;Ljava/lang/String;)V

    .line 129
    const-string v5, "MimetypesFileTypeMap: load DEF"

    invoke-static {v5}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 130
    const-class v6, Ljavax/activation/MimetypesFileTypeMap;

    monitor-enter v6

    .line 132
    :try_start_88
    sget-object v5, Ljavax/activation/MimetypesFileTypeMap;->defDB:Lcom/sun/activation/registries/MimeTypeFile;

    if-nez v5, :cond_94

    .line 133
    const-string v5, "/mimetypes.default"

    invoke-direct {p0, v5}, Ljavax/activation/MimetypesFileTypeMap;->loadResource(Ljava/lang/String;)Lcom/sun/activation/registries/MimeTypeFile;

    move-result-object v5

    sput-object v5, Ljavax/activation/MimetypesFileTypeMap;->defDB:Lcom/sun/activation/registries/MimeTypeFile;

    .line 130
    :cond_94
    monitor-exit v6
    :try_end_95
    .catchall {:try_start_88 .. :try_end_95} :catchall_ac

    .line 136
    sget-object v5, Ljavax/activation/MimetypesFileTypeMap;->defDB:Lcom/sun/activation/registries/MimeTypeFile;

    if-eqz v5, :cond_9e

    .line 137
    sget-object v5, Ljavax/activation/MimetypesFileTypeMap;->defDB:Lcom/sun/activation/registries/MimeTypeFile;

    invoke-virtual {v0, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 139
    :cond_9e
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v5

    new-array v5, v5, [Lcom/sun/activation/registries/MimeTypeFile;

    iput-object v5, p0, Ljavax/activation/MimetypesFileTypeMap;->DB:[Lcom/sun/activation/registries/MimeTypeFile;

    .line 140
    iget-object v5, p0, Ljavax/activation/MimetypesFileTypeMap;->DB:[Lcom/sun/activation/registries/MimeTypeFile;

    invoke-virtual {v0, v5}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 141
    return-void

    .line 130
    :catchall_ac
    move-exception v5

    :try_start_ad
    monitor-exit v6
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_ac

    throw v5

    .line 123
    :catch_af
    move-exception v5

    goto :goto_76

    .line 113
    :catch_b1
    move-exception v5

    goto :goto_3d
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 5
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 277
    invoke-direct {p0}, Ljavax/activation/MimetypesFileTypeMap;-><init>()V

    .line 279
    :try_start_3
    iget-object v0, p0, Ljavax/activation/MimetypesFileTypeMap;->DB:[Lcom/sun/activation/registries/MimeTypeFile;

    const/4 v1, 0x0

    new-instance v2, Lcom/sun/activation/registries/MimeTypeFile;

    invoke-direct {v2, p1}, Lcom/sun/activation/registries/MimeTypeFile;-><init>(Ljava/io/InputStream;)V

    aput-object v2, v0, v1
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_d} :catch_e

    .line 283
    :goto_d
    return-void

    .line 280
    :catch_e
    move-exception v0

    goto :goto_d
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "mimeTypeFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 266
    invoke-direct {p0}, Ljavax/activation/MimetypesFileTypeMap;-><init>()V

    .line 267
    iget-object v0, p0, Ljavax/activation/MimetypesFileTypeMap;->DB:[Lcom/sun/activation/registries/MimeTypeFile;

    const/4 v1, 0x0

    new-instance v2, Lcom/sun/activation/registries/MimeTypeFile;

    invoke-direct {v2, p1}, Lcom/sun/activation/registries/MimeTypeFile;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 268
    return-void
.end method

.method private loadAllResources(Ljava/util/Vector;Ljava/lang/String;)V
    .registers 15
    .param p1, "v"    # Ljava/util/Vector;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 180
    const/4 v0, 0x0

    .line 183
    .local v0, "anyLoaded":Z
    const/4 v1, 0x0

    .line 185
    .local v1, "cld":Ljava/lang/ClassLoader;
    :try_start_2
    invoke-static {}, Ljavax/activation/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 186
    if-nez v1, :cond_10

    .line 187
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 188
    :cond_10
    if-eqz v1, :cond_47

    .line 189
    invoke-static {v1, p2}, Ljavax/activation/SecuritySupport;->getResources(Ljava/lang/ClassLoader;Ljava/lang/String;)[Ljava/net/URL;

    move-result-object v9

    .line 192
    .local v9, "urls":[Ljava/net/URL;
    :goto_16
    if-eqz v9, :cond_27

    .line 193
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v10

    if-eqz v10, :cond_23

    .line 194
    const-string v10, "MimetypesFileTypeMap: getResources"

    invoke-static {v10}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 195
    :cond_23
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_24
    array-length v10, v9
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_25} :catch_f8

    if-lt v4, v10, :cond_4c

    .line 237
    .end local v4    # "i":I
    .end local v9    # "urls":[Ljava/net/URL;
    :cond_27
    :goto_27
    if-nez v0, :cond_46

    .line 238
    const-string v10, "MimetypesFileTypeMap: !anyLoaded"

    invoke-static {v10}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 239
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "/"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Ljavax/activation/MimetypesFileTypeMap;->loadResource(Ljava/lang/String;)Lcom/sun/activation/registries/MimeTypeFile;

    move-result-object v6

    .line 240
    .local v6, "mf":Lcom/sun/activation/registries/MimeTypeFile;
    if-eqz v6, :cond_46

    .line 241
    invoke-virtual {p1, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 243
    .end local v6    # "mf":Lcom/sun/activation/registries/MimeTypeFile;
    :cond_46
    return-void

    .line 191
    :cond_47
    :try_start_47
    invoke-static {p2}, Ljavax/activation/SecuritySupport;->getSystemResources(Ljava/lang/String;)[Ljava/net/URL;

    move-result-object v9

    .restart local v9    # "urls":[Ljava/net/URL;
    goto :goto_16

    .line 196
    .restart local v4    # "i":I
    :cond_4c
    aget-object v8, v9, v4

    .line 197
    .local v8, "url":Ljava/net/URL;
    const/4 v2, 0x0

    .line 198
    .local v2, "clis":Ljava/io/InputStream;
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v10

    if-eqz v10, :cond_67

    .line 199
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "MimetypesFileTypeMap: URL "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_67} :catch_f8

    .line 201
    :cond_67
    :try_start_67
    invoke-static {v8}, Ljavax/activation/SecuritySupport;->openStream(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object v2

    .line 202
    if-eqz v2, :cond_96

    .line 203
    new-instance v10, Lcom/sun/activation/registries/MimeTypeFile;

    invoke-direct {v10, v2}, Lcom/sun/activation/registries/MimeTypeFile;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p1, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 204
    const/4 v0, 0x1

    .line 205
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v10

    if-eqz v10, :cond_8e

    .line 206
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "MimetypesFileTypeMap: successfully loaded mime types from URL: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 206
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_8e} :catch_af
    .catch Ljava/lang/SecurityException; {:try_start_67 .. :try_end_8e} :catch_d0
    .catchall {:try_start_67 .. :try_end_8e} :catchall_f1

    .line 225
    :cond_8e
    :goto_8e
    if-eqz v2, :cond_93

    .line 226
    :try_start_90
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_93} :catch_115
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_93} :catch_f8

    .line 195
    :cond_93
    :goto_93
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .line 210
    :cond_96
    :try_start_96
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v10

    if-eqz v10, :cond_8e

    .line 211
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "MimetypesFileTypeMap: not loading mime types from URL: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 211
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_ae} :catch_af
    .catch Ljava/lang/SecurityException; {:try_start_96 .. :try_end_ae} :catch_d0
    .catchall {:try_start_96 .. :try_end_ae} :catchall_f1

    goto :goto_8e

    .line 215
    :catch_af
    move-exception v5

    .line 216
    .local v5, "ioex":Ljava/io/IOException;
    :try_start_b0
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v10

    if-eqz v10, :cond_c8

    .line 217
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "MimetypesFileTypeMap: can\'t load "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 217
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v5}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c8
    .catchall {:try_start_b0 .. :try_end_c8} :catchall_f1

    .line 225
    :cond_c8
    if-eqz v2, :cond_93

    .line 226
    :try_start_ca
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_cd
    .catch Ljava/io/IOException; {:try_start_ca .. :try_end_cd} :catch_ce
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_cd} :catch_f8

    goto :goto_93

    .line 227
    :catch_ce
    move-exception v10

    goto :goto_93

    .line 219
    .end local v5    # "ioex":Ljava/io/IOException;
    :catch_d0
    move-exception v7

    .line 220
    .local v7, "sex":Ljava/lang/SecurityException;
    :try_start_d1
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v10

    if-eqz v10, :cond_e9

    .line 221
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "MimetypesFileTypeMap: can\'t load "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 221
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v7}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_e9
    .catchall {:try_start_d1 .. :try_end_e9} :catchall_f1

    .line 225
    :cond_e9
    if-eqz v2, :cond_93

    .line 226
    :try_start_eb
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_ee
    .catch Ljava/io/IOException; {:try_start_eb .. :try_end_ee} :catch_ef
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_ee} :catch_f8

    goto :goto_93

    .line 227
    :catch_ef
    move-exception v10

    goto :goto_93

    .line 223
    .end local v7    # "sex":Ljava/lang/SecurityException;
    :catchall_f1
    move-exception v10

    .line 225
    if-eqz v2, :cond_f7

    .line 226
    :try_start_f4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_f7
    .catch Ljava/io/IOException; {:try_start_f4 .. :try_end_f7} :catch_113
    .catch Ljava/lang/Exception; {:try_start_f4 .. :try_end_f7} :catch_f8

    .line 228
    :cond_f7
    :goto_f7
    :try_start_f7
    throw v10
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_f7 .. :try_end_f8} :catch_f8

    .line 231
    .end local v2    # "clis":Ljava/io/InputStream;
    .end local v4    # "i":I
    .end local v8    # "url":Ljava/net/URL;
    .end local v9    # "urls":[Ljava/net/URL;
    :catch_f8
    move-exception v3

    .line 232
    .local v3, "ex":Ljava/lang/Exception;
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v10

    if-eqz v10, :cond_27

    .line 233
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "MimetypesFileTypeMap: can\'t load "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v3}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 227
    .end local v3    # "ex":Ljava/lang/Exception;
    .restart local v2    # "clis":Ljava/io/InputStream;
    .restart local v4    # "i":I
    .restart local v8    # "url":Ljava/net/URL;
    .restart local v9    # "urls":[Ljava/net/URL;
    :catch_113
    move-exception v11

    goto :goto_f7

    :catch_115
    move-exception v10

    goto/16 :goto_93
.end method

.method private loadFile(Ljava/lang/String;)Lcom/sun/activation/registries/MimeTypeFile;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 249
    const/4 v0, 0x0

    .line 252
    .local v0, "mtf":Lcom/sun/activation/registries/MimeTypeFile;
    :try_start_1
    new-instance v1, Lcom/sun/activation/registries/MimeTypeFile;

    invoke-direct {v1, p1}, Lcom/sun/activation/registries/MimeTypeFile;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_8

    .end local v0    # "mtf":Lcom/sun/activation/registries/MimeTypeFile;
    .local v1, "mtf":Lcom/sun/activation/registries/MimeTypeFile;
    move-object v0, v1

    .line 256
    .end local v1    # "mtf":Lcom/sun/activation/registries/MimeTypeFile;
    .restart local v0    # "mtf":Lcom/sun/activation/registries/MimeTypeFile;
    :goto_7
    return-object v0

    .line 253
    :catch_8
    move-exception v2

    goto :goto_7
.end method

.method private loadResource(Ljava/lang/String;)Lcom/sun/activation/registries/MimeTypeFile;
    .registers 8
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 147
    const/4 v0, 0x0

    .line 149
    .local v0, "clis":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, p1}, Ljavax/activation/SecuritySupport;->getResourceAsStream(Ljava/lang/Class;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 150
    if-eqz v0, :cond_2e

    .line 151
    new-instance v2, Lcom/sun/activation/registries/MimeTypeFile;

    invoke-direct {v2, v0}, Lcom/sun/activation/registries/MimeTypeFile;-><init>(Ljava/io/InputStream;)V

    .line 152
    .local v2, "mf":Lcom/sun/activation/registries/MimeTypeFile;
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 153
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "MimetypesFileTypeMap: successfully loaded mime types file: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 153
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_28} :catch_4d
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_28} :catch_6e
    .catchall {:try_start_1 .. :try_end_28} :catchall_8f

    .line 169
    :cond_28
    if-eqz v0, :cond_2d

    .line 170
    :try_start_2a
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_96

    .line 173
    .end local v2    # "mf":Lcom/sun/activation/registries/MimeTypeFile;
    :cond_2d
    :goto_2d
    return-object v2

    .line 157
    :cond_2e
    :try_start_2e
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_46

    .line 158
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "MimetypesFileTypeMap: not loading mime types file: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 158
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_46} :catch_4d
    .catch Ljava/lang/SecurityException; {:try_start_2e .. :try_end_46} :catch_6e
    .catchall {:try_start_2e .. :try_end_46} :catchall_8f

    .line 169
    :cond_46
    if-eqz v0, :cond_4b

    .line 170
    :try_start_48
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_9a

    .line 173
    :cond_4b
    :goto_4b
    const/4 v2, 0x0

    goto :goto_2d

    .line 161
    :catch_4d
    move-exception v1

    .line 162
    .local v1, "e":Ljava/io/IOException;
    :try_start_4e
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_66

    .line 163
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "MimetypesFileTypeMap: can\'t load "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_66
    .catchall {:try_start_4e .. :try_end_66} :catchall_8f

    .line 169
    :cond_66
    if-eqz v0, :cond_4b

    .line 170
    :try_start_68
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_6c

    goto :goto_4b

    .line 171
    :catch_6c
    move-exception v4

    goto :goto_4b

    .line 164
    .end local v1    # "e":Ljava/io/IOException;
    :catch_6e
    move-exception v3

    .line 165
    .local v3, "sex":Ljava/lang/SecurityException;
    :try_start_6f
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_87

    .line 166
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "MimetypesFileTypeMap: can\'t load "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_87
    .catchall {:try_start_6f .. :try_end_87} :catchall_8f

    .line 169
    :cond_87
    if-eqz v0, :cond_4b

    .line 170
    :try_start_89
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8c} :catch_8d

    goto :goto_4b

    .line 171
    :catch_8d
    move-exception v4

    goto :goto_4b

    .line 167
    .end local v3    # "sex":Ljava/lang/SecurityException;
    :catchall_8f
    move-exception v4

    .line 169
    if-eqz v0, :cond_95

    .line 170
    :try_start_92
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_95} :catch_98

    .line 172
    :cond_95
    :goto_95
    throw v4

    .line 171
    .restart local v2    # "mf":Lcom/sun/activation/registries/MimeTypeFile;
    :catch_96
    move-exception v4

    goto :goto_2d

    .end local v2    # "mf":Lcom/sun/activation/registries/MimeTypeFile;
    :catch_98
    move-exception v5

    goto :goto_95

    :catch_9a
    move-exception v4

    goto :goto_4b
.end method


# virtual methods
.method public declared-synchronized addMimeTypes(Ljava/lang/String;)V
    .registers 5
    .param p1, "mime_types"    # Ljava/lang/String;

    .prologue
    .line 292
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljavax/activation/MimetypesFileTypeMap;->DB:[Lcom/sun/activation/registries/MimeTypeFile;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez v0, :cond_12

    .line 293
    iget-object v0, p0, Ljavax/activation/MimetypesFileTypeMap;->DB:[Lcom/sun/activation/registries/MimeTypeFile;

    const/4 v1, 0x0

    new-instance v2, Lcom/sun/activation/registries/MimeTypeFile;

    invoke-direct {v2}, Lcom/sun/activation/registries/MimeTypeFile;-><init>()V

    aput-object v2, v0, v1

    .line 295
    :cond_12
    iget-object v0, p0, Ljavax/activation/MimetypesFileTypeMap;->DB:[Lcom/sun/activation/registries/MimeTypeFile;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/sun/activation/registries/MimeTypeFile;->appendToRegistry(Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    .line 296
    monitor-exit p0

    return-void

    .line 292
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getContentType(Ljava/io/File;)Ljava/lang/String;
    .registers 3
    .param p1, "f"    # Ljava/io/File;

    .prologue
    .line 307
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/activation/MimetypesFileTypeMap;->getContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getContentType(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 320
    monitor-enter p0

    :try_start_1
    const-string v4, "."

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 322
    .local v0, "dot_pos":I
    if-gez v0, :cond_d

    .line 323
    sget-object v3, Ljavax/activation/MimetypesFileTypeMap;->defaultType:Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_39

    .line 336
    :goto_b
    monitor-exit p0

    return-object v3

    .line 325
    :cond_d
    add-int/lit8 v4, v0, 0x1

    :try_start_f
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 326
    .local v1, "file_ext":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1c

    .line 327
    sget-object v3, Ljavax/activation/MimetypesFileTypeMap;->defaultType:Ljava/lang/String;

    goto :goto_b

    .line 329
    :cond_1c
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1d
    iget-object v4, p0, Ljavax/activation/MimetypesFileTypeMap;->DB:[Lcom/sun/activation/registries/MimeTypeFile;

    array-length v4, v4

    if-lt v2, v4, :cond_25

    .line 336
    sget-object v3, Ljavax/activation/MimetypesFileTypeMap;->defaultType:Ljava/lang/String;

    goto :goto_b

    .line 330
    :cond_25
    iget-object v4, p0, Ljavax/activation/MimetypesFileTypeMap;->DB:[Lcom/sun/activation/registries/MimeTypeFile;

    aget-object v4, v4, v2

    if-nez v4, :cond_2e

    .line 329
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 332
    :cond_2e
    iget-object v4, p0, Ljavax/activation/MimetypesFileTypeMap;->DB:[Lcom/sun/activation/registries/MimeTypeFile;

    aget-object v4, v4, v2

    invoke-virtual {v4, v1}, Lcom/sun/activation/registries/MimeTypeFile;->getMIMETypeString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_35
    .catchall {:try_start_f .. :try_end_35} :catchall_39

    move-result-object v3

    .line 333
    .local v3, "result":Ljava/lang/String;
    if-eqz v3, :cond_2b

    goto :goto_b

    .line 320
    .end local v0    # "dot_pos":I
    .end local v1    # "file_ext":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "result":Ljava/lang/String;
    :catchall_39
    move-exception v4

    monitor-exit p0

    throw v4
.end method
