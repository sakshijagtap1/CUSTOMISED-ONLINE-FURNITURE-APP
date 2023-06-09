.class public Lcom/sun/mail/pop3/POP3Store;
.super Ljavax/mail/Store;
.source "POP3Store.java"


# instance fields
.field private defaultPort:I

.field disableTop:Z

.field forgetTopHeaders:Z

.field private host:Ljava/lang/String;

.field private isSSL:Z

.field messageConstructor:Ljava/lang/reflect/Constructor;

.field private name:Ljava/lang/String;

.field private passwd:Ljava/lang/String;

.field private port:Lcom/sun/mail/pop3/Protocol;

.field private portNum:I

.field private portOwner:Lcom/sun/mail/pop3/POP3Folder;

.field rsetBeforeQuit:Z

.field private user:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V
    .registers 9
    .param p1, "session"    # Ljavax/mail/Session;
    .param p2, "url"    # Ljavax/mail/URLName;

    .prologue
    .line 78
    const-string v3, "pop3"

    const/16 v4, 0x6e

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/sun/mail/pop3/POP3Store;-><init>(Ljavax/mail/Session;Ljavax/mail/URLName;Ljava/lang/String;IZ)V

    .line 79
    return-void
.end method

.method public constructor <init>(Ljavax/mail/Session;Ljavax/mail/URLName;Ljava/lang/String;IZ)V
    .registers 16
    .param p1, "session"    # Ljavax/mail/Session;
    .param p2, "url"    # Ljavax/mail/URLName;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "defaultPort"    # I
    .param p5, "isSSL"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 83
    invoke-direct {p0, p1, p2}, Ljavax/mail/Store;-><init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V

    .line 62
    const-string v6, "pop3"

    iput-object v6, p0, Lcom/sun/mail/pop3/POP3Store;->name:Ljava/lang/String;

    .line 63
    const/16 v6, 0x6e

    iput v6, p0, Lcom/sun/mail/pop3/POP3Store;->defaultPort:I

    .line 64
    iput-boolean v8, p0, Lcom/sun/mail/pop3/POP3Store;->isSSL:Z

    .line 66
    iput-object v7, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    .line 67
    iput-object v7, p0, Lcom/sun/mail/pop3/POP3Store;->portOwner:Lcom/sun/mail/pop3/POP3Folder;

    .line 68
    iput-object v7, p0, Lcom/sun/mail/pop3/POP3Store;->host:Ljava/lang/String;

    .line 69
    const/4 v6, -0x1

    iput v6, p0, Lcom/sun/mail/pop3/POP3Store;->portNum:I

    .line 70
    iput-object v7, p0, Lcom/sun/mail/pop3/POP3Store;->user:Ljava/lang/String;

    .line 71
    iput-object v7, p0, Lcom/sun/mail/pop3/POP3Store;->passwd:Ljava/lang/String;

    .line 72
    iput-boolean v8, p0, Lcom/sun/mail/pop3/POP3Store;->rsetBeforeQuit:Z

    .line 73
    iput-boolean v8, p0, Lcom/sun/mail/pop3/POP3Store;->disableTop:Z

    .line 74
    iput-boolean v8, p0, Lcom/sun/mail/pop3/POP3Store;->forgetTopHeaders:Z

    .line 75
    iput-object v7, p0, Lcom/sun/mail/pop3/POP3Store;->messageConstructor:Ljava/lang/reflect/Constructor;

    .line 84
    if-eqz p2, :cond_2b

    .line 85
    invoke-virtual {p2}, Ljavax/mail/URLName;->getProtocol()Ljava/lang/String;

    move-result-object p3

    .line 86
    :cond_2b
    iput-object p3, p0, Lcom/sun/mail/pop3/POP3Store;->name:Ljava/lang/String;

    .line 87
    iput p4, p0, Lcom/sun/mail/pop3/POP3Store;->defaultPort:I

    .line 88
    iput-boolean p5, p0, Lcom/sun/mail/pop3/POP3Store;->isSSL:Z

    .line 90
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "mail."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".rsetbeforequit"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 91
    .local v5, "s":Ljava/lang/String;
    if-eqz v5, :cond_56

    const-string v6, "true"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_56

    .line 92
    iput-boolean v9, p0, Lcom/sun/mail/pop3/POP3Store;->rsetBeforeQuit:Z

    .line 94
    :cond_56
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "mail."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".disabletop"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 95
    if-eqz v5, :cond_7b

    const-string v6, "true"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7b

    .line 96
    iput-boolean v9, p0, Lcom/sun/mail/pop3/POP3Store;->disableTop:Z

    .line 98
    :cond_7b
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "mail."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".forgettopheaders"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 99
    if-eqz v5, :cond_a0

    const-string v6, "true"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a0

    .line 100
    iput-boolean v9, p0, Lcom/sun/mail/pop3/POP3Store;->forgetTopHeaders:Z

    .line 102
    :cond_a0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "mail."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".message.class"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 103
    if-eqz v5, :cond_f7

    .line 104
    invoke-virtual {p1}, Ljavax/mail/Session;->getDebug()Z

    move-result v6

    if-eqz v6, :cond_d7

    .line 105
    invoke-virtual {p1}, Ljavax/mail/Session;->getDebugOut()Ljava/io/PrintStream;

    move-result-object v6

    .line 106
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "DEBUG: POP3 message class: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 105
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 108
    :cond_d7
    :try_start_d7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_de} :catch_fe

    move-result-object v1

    .line 111
    .local v1, "cl":Ljava/lang/ClassLoader;
    const/4 v4, 0x0

    .line 116
    .local v4, "messageClass":Ljava/lang/Class;
    :try_start_e0
    invoke-virtual {v1, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_e3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e0 .. :try_end_e3} :catch_f8
    .catch Ljava/lang/Exception; {:try_start_e0 .. :try_end_e3} :catch_fe

    move-result-object v4

    .line 124
    :goto_e4
    const/4 v6, 0x2

    :try_start_e5
    new-array v0, v6, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljavax/mail/Folder;

    aput-object v7, v0, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v0, v6

    .line 125
    .local v0, "c":[Ljava/lang/Class;
    invoke-virtual {v4, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    iput-object v6, p0, Lcom/sun/mail/pop3/POP3Store;->messageConstructor:Ljava/lang/reflect/Constructor;

    .line 132
    .end local v0    # "c":[Ljava/lang/Class;
    .end local v1    # "cl":Ljava/lang/ClassLoader;
    .end local v4    # "messageClass":Ljava/lang/Class;
    :cond_f7
    :goto_f7
    return-void

    .line 117
    .restart local v1    # "cl":Ljava/lang/ClassLoader;
    .restart local v4    # "messageClass":Ljava/lang/Class;
    :catch_f8
    move-exception v3

    .line 121
    .local v3, "ex1":Ljava/lang/ClassNotFoundException;
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_fc
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_fc} :catch_fe

    move-result-object v4

    goto :goto_e4

    .line 126
    .end local v1    # "cl":Ljava/lang/ClassLoader;
    .end local v3    # "ex1":Ljava/lang/ClassNotFoundException;
    .end local v4    # "messageClass":Ljava/lang/Class;
    :catch_fe
    move-exception v2

    .line 127
    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {p1}, Ljavax/mail/Session;->getDebug()Z

    move-result v6

    if-eqz v6, :cond_f7

    .line 128
    invoke-virtual {p1}, Ljavax/mail/Session;->getDebugOut()Ljava/io/PrintStream;

    move-result-object v6

    .line 129
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "DEBUG: failed to load POP3 message class: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 128
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_f7
.end method

.method private checkConnected()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 291
    invoke-super {p0}, Ljavax/mail/Store;->isConnected()Z

    move-result v0

    if-nez v0, :cond_e

    .line 292
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "Not connected"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_e
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 254
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    if-eqz v0, :cond_a

    .line 255
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {v0}, Lcom/sun/mail/pop3/Protocol;->quit()Z
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_a} :catch_12
    .catchall {:try_start_1 .. :try_end_a} :catchall_1d

    .line 258
    :cond_a
    const/4 v0, 0x0

    :try_start_b
    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    .line 261
    invoke-super {p0}, Ljavax/mail/Store;->close()V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_1a

    .line 263
    :goto_10
    monitor-exit p0

    return-void

    .line 256
    :catch_12
    move-exception v0

    .line 258
    const/4 v0, 0x0

    :try_start_14
    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    .line 261
    invoke-super {p0}, Ljavax/mail/Store;->close()V
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_1a

    goto :goto_10

    .line 254
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0

    .line 257
    :catchall_1d
    move-exception v0

    .line 258
    const/4 v1, 0x0

    :try_start_1f
    iput-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    .line 261
    invoke-super {p0}, Ljavax/mail/Store;->close()V

    .line 262
    throw v0
    :try_end_25
    .catchall {:try_start_1f .. :try_end_25} :catchall_1a
.end method

.method declared-synchronized closePort(Lcom/sun/mail/pop3/POP3Folder;)V
    .registers 3
    .param p1, "owner"    # Lcom/sun/mail/pop3/POP3Folder;

    .prologue
    .line 246
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->portOwner:Lcom/sun/mail/pop3/POP3Folder;

    if-ne v0, p1, :cond_b

    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    .line 248
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->portOwner:Lcom/sun/mail/pop3/POP3Folder;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 250
    :cond_b
    monitor-exit p0

    return-void

    .line 246
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 284
    invoke-super {p0}, Ljavax/mail/Store;->finalize()V

    .line 286
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    if-eqz v0, :cond_a

    .line 287
    invoke-virtual {p0}, Lcom/sun/mail/pop3/POP3Store;->close()V

    .line 288
    :cond_a
    return-void
.end method

.method public getDefaultFolder()Ljavax/mail/Folder;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 266
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Store;->checkConnected()V

    .line 267
    new-instance v0, Lcom/sun/mail/pop3/DefaultFolder;

    invoke-direct {v0, p0}, Lcom/sun/mail/pop3/DefaultFolder;-><init>(Lcom/sun/mail/pop3/POP3Store;)V

    return-object v0
.end method

.method public getFolder(Ljava/lang/String;)Ljavax/mail/Folder;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 274
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Store;->checkConnected()V

    .line 275
    new-instance v0, Lcom/sun/mail/pop3/POP3Folder;

    invoke-direct {v0, p0, p1}, Lcom/sun/mail/pop3/POP3Folder;-><init>(Lcom/sun/mail/pop3/POP3Store;Ljava/lang/String;)V

    return-object v0
.end method

.method public getFolder(Ljavax/mail/URLName;)Ljavax/mail/Folder;
    .registers 4
    .param p1, "url"    # Ljavax/mail/URLName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 279
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Store;->checkConnected()V

    .line 280
    new-instance v0, Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {p1}, Ljavax/mail/URLName;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sun/mail/pop3/POP3Folder;-><init>(Lcom/sun/mail/pop3/POP3Store;Ljava/lang/String;)V

    return-object v0
.end method

.method declared-synchronized getPort(Lcom/sun/mail/pop3/POP3Folder;)Lcom/sun/mail/pop3/Protocol;
    .registers 11
    .param p1, "owner"    # Lcom/sun/mail/pop3/POP3Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->portOwner:Lcom/sun/mail/pop3/POP3Folder;

    if-nez v1, :cond_f

    .line 209
    iput-object p1, p0, Lcom/sun/mail/pop3/POP3Store;->portOwner:Lcom/sun/mail/pop3/POP3Folder;

    .line 210
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_51

    .line 242
    :cond_d
    :goto_d
    monitor-exit p0

    return-object v0

    .line 214
    :cond_f
    :try_start_f
    new-instance v0, Lcom/sun/mail/pop3/Protocol;

    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->host:Ljava/lang/String;

    iget v2, p0, Lcom/sun/mail/pop3/POP3Store;->portNum:I

    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Store;->session:Ljavax/mail/Session;

    invoke-virtual {v3}, Ljavax/mail/Session;->getDebug()Z

    move-result v3

    .line 215
    iget-object v4, p0, Lcom/sun/mail/pop3/POP3Store;->session:Ljavax/mail/Session;

    invoke-virtual {v4}, Ljavax/mail/Session;->getDebugOut()Ljava/io/PrintStream;

    move-result-object v4

    iget-object v5, p0, Lcom/sun/mail/pop3/POP3Store;->session:Ljavax/mail/Session;

    invoke-virtual {v5}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "mail."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sun/mail/pop3/POP3Store;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 216
    iget-boolean v7, p0, Lcom/sun/mail/pop3/POP3Store;->isSSL:Z

    .line 214
    invoke-direct/range {v0 .. v7}, Lcom/sun/mail/pop3/Protocol;-><init>(Ljava/lang/String;IZLjava/io/PrintStream;Ljava/util/Properties;Ljava/lang/String;Z)V

    .line 218
    .local v0, "p":Lcom/sun/mail/pop3/Protocol;
    const/4 v8, 0x0

    .line 219
    .local v8, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->user:Ljava/lang/String;

    iget-object v2, p0, Lcom/sun/mail/pop3/POP3Store;->passwd:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sun/mail/pop3/Protocol;->login(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_45
    .catchall {:try_start_f .. :try_end_45} :catchall_51

    move-result-object v8

    if-eqz v8, :cond_54

    .line 221
    :try_start_48
    invoke-virtual {v0}, Lcom/sun/mail/pop3/Protocol;->quit()Z
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_65
    .catchall {:try_start_48 .. :try_end_4b} :catchall_67

    .line 224
    :goto_4b
    :try_start_4b
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1, v8}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_51
    .catchall {:try_start_4b .. :try_end_51} :catchall_51

    .line 208
    .end local v0    # "p":Lcom/sun/mail/pop3/Protocol;
    .end local v8    # "msg":Ljava/lang/String;
    :catchall_51
    move-exception v1

    monitor-exit p0

    throw v1

    .line 236
    .restart local v0    # "p":Lcom/sun/mail/pop3/Protocol;
    .restart local v8    # "msg":Ljava/lang/String;
    :cond_54
    :try_start_54
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    if-nez v1, :cond_5e

    if-eqz p1, :cond_5e

    .line 237
    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    .line 238
    iput-object p1, p0, Lcom/sun/mail/pop3/POP3Store;->portOwner:Lcom/sun/mail/pop3/POP3Folder;

    .line 240
    :cond_5e
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->portOwner:Lcom/sun/mail/pop3/POP3Folder;

    if-nez v1, :cond_d

    .line 241
    iput-object p1, p0, Lcom/sun/mail/pop3/POP3Store;->portOwner:Lcom/sun/mail/pop3/POP3Folder;
    :try_end_64
    .catchall {:try_start_54 .. :try_end_64} :catchall_51

    goto :goto_d

    .line 222
    :catch_65
    move-exception v1

    goto :goto_4b

    :catchall_67
    move-exception v1

    goto :goto_4b
.end method

.method public declared-synchronized isConnected()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 180
    monitor-enter p0

    :try_start_2
    invoke-super {p0}, Ljavax/mail/Store;->isConnected()Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_28

    move-result v2

    if-nez v2, :cond_a

    .line 198
    :goto_8
    monitor-exit p0

    return v1

    .line 184
    :cond_a
    :try_start_a
    monitor-enter p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_28

    .line 186
    :try_start_b
    iget-object v2, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    if-nez v2, :cond_19

    .line 187
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sun/mail/pop3/POP3Store;->getPort(Lcom/sun/mail/pop3/POP3Folder;)Lcom/sun/mail/pop3/Protocol;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_16} :catch_1f
    .catchall {:try_start_b .. :try_end_16} :catchall_25

    .line 190
    :goto_16
    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_25

    const/4 v1, 0x1

    goto :goto_8

    .line 189
    :cond_19
    :try_start_19
    iget-object v2, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {v2}, Lcom/sun/mail/pop3/Protocol;->noop()Z
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1e} :catch_1f
    .catchall {:try_start_19 .. :try_end_1e} :catchall_25

    goto :goto_16

    .line 191
    :catch_1f
    move-exception v0

    .line 194
    .local v0, "ioex":Ljava/io/IOException;
    :try_start_20
    invoke-super {p0}, Ljavax/mail/Store;->close()V
    :try_end_23
    .catch Ljavax/mail/MessagingException; {:try_start_20 .. :try_end_23} :catch_2b
    .catchall {:try_start_20 .. :try_end_23} :catchall_2d

    .line 198
    :goto_23
    :try_start_23
    monitor-exit p0

    goto :goto_8

    .line 184
    .end local v0    # "ioex":Ljava/io/IOException;
    :catchall_25
    move-exception v1

    monitor-exit p0
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_25

    :try_start_27
    throw v1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_28

    .line 180
    :catchall_28
    move-exception v1

    monitor-exit p0

    throw v1

    .line 195
    .restart local v0    # "ioex":Ljava/io/IOException;
    :catch_2b
    move-exception v2

    goto :goto_23

    :catchall_2d
    move-exception v2

    goto :goto_23
.end method

.method protected declared-synchronized protocolConnect(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .registers 12
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "portNum"    # I
    .param p3, "user"    # Ljava/lang/String;
    .param p4, "passwd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 138
    monitor-enter p0

    if-eqz p1, :cond_8

    if-eqz p4, :cond_8

    if-nez p3, :cond_b

    .line 139
    :cond_8
    const/4 v3, 0x0

    .line 164
    :goto_9
    monitor-exit p0

    return v3

    .line 143
    :cond_b
    if-ne p2, v6, :cond_30

    .line 144
    :try_start_d
    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Store;->session:Ljavax/mail/Session;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mail."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sun/mail/pop3/POP3Store;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".port"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 145
    .local v2, "portstring":Ljava/lang/String;
    if-eqz v2, :cond_30

    .line 146
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 149
    .end local v2    # "portstring":Ljava/lang/String;
    :cond_30
    if-ne p2, v6, :cond_34

    .line 150
    iget p2, p0, Lcom/sun/mail/pop3/POP3Store;->defaultPort:I

    .line 152
    :cond_34
    iput-object p1, p0, Lcom/sun/mail/pop3/POP3Store;->host:Ljava/lang/String;

    .line 153
    iput p2, p0, Lcom/sun/mail/pop3/POP3Store;->portNum:I

    .line 154
    iput-object p3, p0, Lcom/sun/mail/pop3/POP3Store;->user:Ljava/lang/String;

    .line 155
    iput-object p4, p0, Lcom/sun/mail/pop3/POP3Store;->passwd:Ljava/lang/String;
    :try_end_3c
    .catchall {:try_start_d .. :try_end_3c} :catchall_50

    .line 157
    const/4 v3, 0x0

    :try_start_3d
    invoke-virtual {p0, v3}, Lcom/sun/mail/pop3/POP3Store;->getPort(Lcom/sun/mail/pop3/POP3Folder;)Lcom/sun/mail/pop3/Protocol;

    move-result-object v3

    iput-object v3, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;
    :try_end_43
    .catch Ljava/io/EOFException; {:try_start_3d .. :try_end_43} :catch_45
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_43} :catch_53
    .catchall {:try_start_3d .. :try_end_43} :catchall_50

    .line 164
    const/4 v3, 0x1

    goto :goto_9

    .line 158
    :catch_45
    move-exception v0

    .line 159
    .local v0, "eex":Ljava/io/EOFException;
    :try_start_46
    new-instance v3, Ljavax/mail/AuthenticationFailedException;

    invoke-virtual {v0}, Ljava/io/EOFException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_50
    .catchall {:try_start_46 .. :try_end_50} :catchall_50

    .line 138
    .end local v0    # "eex":Ljava/io/EOFException;
    :catchall_50
    move-exception v3

    monitor-exit p0

    throw v3

    .line 160
    :catch_53
    move-exception v1

    .line 161
    .local v1, "ioex":Ljava/io/IOException;
    :try_start_54
    new-instance v3, Ljavax/mail/MessagingException;

    const-string v4, "Connect failed"

    invoke-direct {v3, v4, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
    :try_end_5c
    .catchall {:try_start_54 .. :try_end_5c} :catchall_50
.end method
