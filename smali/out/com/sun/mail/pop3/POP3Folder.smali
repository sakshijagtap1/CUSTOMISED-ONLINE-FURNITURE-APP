.class public Lcom/sun/mail/pop3/POP3Folder;
.super Ljavax/mail/Folder;
.source "POP3Folder.java"


# instance fields
.field private doneUidl:Z

.field private exists:Z

.field private message_cache:Ljava/util/Vector;

.field private name:Ljava/lang/String;

.field private opened:Z

.field private port:Lcom/sun/mail/pop3/Protocol;

.field private size:I

.field private total:I


# direct methods
.method constructor <init>(Lcom/sun/mail/pop3/POP3Store;Ljava/lang/String;)V
    .registers 4
    .param p1, "store"    # Lcom/sun/mail/pop3/POP3Store;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1}, Ljavax/mail/Folder;-><init>(Ljavax/mail/Store;)V

    .line 72
    iput-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->exists:Z

    .line 73
    iput-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->opened:Z

    .line 75
    iput-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->doneUidl:Z

    .line 79
    iput-object p2, p0, Lcom/sun/mail/pop3/POP3Folder;->name:Ljava/lang/String;

    .line 80
    const-string v0, "INBOX"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->exists:Z

    .line 82
    :cond_17
    return-void
.end method


# virtual methods
.method public appendMessages([Ljavax/mail/Message;)V
    .registers 4
    .param p1, "msgs"    # [Ljavax/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 341
    new-instance v0, Ljavax/mail/MethodNotSupportedException;

    const-string v1, "Append not supported"

    invoke-direct {v0, v1}, Ljavax/mail/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method checkClosed()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 517
    iget-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->opened:Z

    if-eqz v0, :cond_c

    .line 518
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Folder is Open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 519
    :cond_c
    return-void
.end method

.method checkOpen()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 511
    iget-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->opened:Z

    if-nez v0, :cond_c

    .line 512
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Folder is not Open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 513
    :cond_c
    return-void
.end method

.method checkReadable()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 523
    iget-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->opened:Z

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/sun/mail/pop3/POP3Folder;->mode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    iget v0, p0, Lcom/sun/mail/pop3/POP3Folder;->mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 524
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Folder is not Readable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 525
    :cond_16
    return-void
.end method

.method checkWritable()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 529
    iget-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->opened:Z

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/sun/mail/pop3/POP3Folder;->mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_11

    .line 530
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Folder is not Writable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 531
    :cond_11
    return-void
.end method

.method public declared-synchronized close(Z)V
    .registers 7
    .param p1, "expunge"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 227
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/pop3/POP3Folder;->checkOpen()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_77

    .line 239
    :try_start_4
    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Ljavax/mail/Store;

    check-cast v3, Lcom/sun/mail/pop3/POP3Store;

    iget-boolean v3, v3, Lcom/sun/mail/pop3/POP3Store;->rsetBeforeQuit:Z

    if-eqz v3, :cond_11

    .line 240
    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {v3}, Lcom/sun/mail/pop3/Protocol;->rset()Z

    .line 241
    :cond_11
    if-eqz p1, :cond_21

    iget v3, p0, Lcom/sun/mail/pop3/POP3Folder;->mode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_21

    .line 244
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_19
    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Folder;->message_cache:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v0, v3, :cond_3c

    .line 258
    .end local v0    # "i":I
    :cond_21
    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {v3}, Lcom/sun/mail/pop3/Protocol;->quit()Z
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_26} :catch_61
    .catchall {:try_start_4 .. :try_end_26} :catchall_7a

    .line 262
    const/4 v3, 0x0

    :try_start_27
    iput-object v3, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    .line 263
    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Ljavax/mail/Store;

    check-cast v3, Lcom/sun/mail/pop3/POP3Store;

    invoke-virtual {v3, p0}, Lcom/sun/mail/pop3/POP3Store;->closePort(Lcom/sun/mail/pop3/POP3Folder;)V

    .line 264
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sun/mail/pop3/POP3Folder;->message_cache:Ljava/util/Vector;

    .line 265
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sun/mail/pop3/POP3Folder;->opened:Z

    .line 266
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/sun/mail/pop3/POP3Folder;->notifyConnectionListeners(I)V
    :try_end_3a
    .catchall {:try_start_27 .. :try_end_3a} :catchall_77

    .line 268
    :goto_3a
    monitor-exit p0

    return-void

    .line 245
    .restart local v0    # "i":I
    :cond_3c
    :try_start_3c
    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Folder;->message_cache:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/mail/pop3/POP3Message;

    .local v2, "m":Lcom/sun/mail/pop3/POP3Message;
    if-eqz v2, :cond_55

    .line 246
    sget-object v3, Ljavax/mail/Flags$Flag;->DELETED:Ljavax/mail/Flags$Flag;

    invoke-virtual {v2, v3}, Lcom/sun/mail/pop3/POP3Message;->isSet(Ljavax/mail/Flags$Flag;)Z
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_4b} :catch_61
    .catchall {:try_start_3c .. :try_end_4b} :catchall_7a

    move-result v3

    if-eqz v3, :cond_55

    .line 248
    :try_start_4e
    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Lcom/sun/mail/pop3/Protocol;->dele(I)Z
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_55} :catch_58
    .catchall {:try_start_4e .. :try_end_55} :catchall_7a

    .line 244
    :cond_55
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 249
    :catch_58
    move-exception v1

    .line 250
    .local v1, "ioex":Ljava/io/IOException;
    :try_start_59
    new-instance v3, Ljavax/mail/MessagingException;

    .line 251
    const-string v4, "Exception deleting messages during close"

    .line 250
    invoke-direct {v3, v4, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_61} :catch_61
    .catchall {:try_start_59 .. :try_end_61} :catchall_7a

    .line 259
    .end local v0    # "i":I
    .end local v1    # "ioex":Ljava/io/IOException;
    .end local v2    # "m":Lcom/sun/mail/pop3/POP3Message;
    :catch_61
    move-exception v3

    .line 262
    const/4 v3, 0x0

    :try_start_63
    iput-object v3, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    .line 263
    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Ljavax/mail/Store;

    check-cast v3, Lcom/sun/mail/pop3/POP3Store;

    invoke-virtual {v3, p0}, Lcom/sun/mail/pop3/POP3Store;->closePort(Lcom/sun/mail/pop3/POP3Folder;)V

    .line 264
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sun/mail/pop3/POP3Folder;->message_cache:Ljava/util/Vector;

    .line 265
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sun/mail/pop3/POP3Folder;->opened:Z

    .line 266
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/sun/mail/pop3/POP3Folder;->notifyConnectionListeners(I)V
    :try_end_76
    .catchall {:try_start_63 .. :try_end_76} :catchall_77

    goto :goto_3a

    .line 227
    :catchall_77
    move-exception v3

    monitor-exit p0

    throw v3

    .line 261
    :catchall_7a
    move-exception v3

    move-object v4, v3

    .line 262
    const/4 v3, 0x0

    :try_start_7d
    iput-object v3, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    .line 263
    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Ljavax/mail/Store;

    check-cast v3, Lcom/sun/mail/pop3/POP3Store;

    invoke-virtual {v3, p0}, Lcom/sun/mail/pop3/POP3Store;->closePort(Lcom/sun/mail/pop3/POP3Folder;)V

    .line 264
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sun/mail/pop3/POP3Folder;->message_cache:Ljava/util/Vector;

    .line 265
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sun/mail/pop3/POP3Folder;->opened:Z

    .line 266
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/sun/mail/pop3/POP3Folder;->notifyConnectionListeners(I)V

    .line 267
    throw v4
    :try_end_91
    .catchall {:try_start_7d .. :try_end_91} :catchall_77
.end method

.method public create(I)Z
    .registers 3
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method protected createMessage(Ljavax/mail/Folder;I)Lcom/sun/mail/pop3/POP3Message;
    .registers 9
    .param p1, "f"    # Ljavax/mail/Folder;
    .param p2, "msgno"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 319
    const/4 v2, 0x0

    .line 320
    .local v2, "m":Lcom/sun/mail/pop3/POP3Message;
    iget-object v4, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Ljavax/mail/Store;

    check-cast v4, Lcom/sun/mail/pop3/POP3Store;

    iget-object v1, v4, Lcom/sun/mail/pop3/POP3Store;->messageConstructor:Ljava/lang/reflect/Constructor;

    .line 321
    .local v1, "cons":Ljava/lang/reflect/Constructor;
    if-eqz v1, :cond_1f

    .line 323
    const/4 v4, 0x2

    :try_start_a
    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    .line 324
    .local v3, "o":[Ljava/lang/Object;
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/sun/mail/pop3/POP3Message;

    move-object v2, v0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1f} :catch_27

    .line 329
    .end local v3    # "o":[Ljava/lang/Object;
    :cond_1f
    :goto_1f
    if-nez v2, :cond_26

    .line 330
    new-instance v2, Lcom/sun/mail/pop3/POP3Message;

    .end local v2    # "m":Lcom/sun/mail/pop3/POP3Message;
    invoke-direct {v2, p0, p2}, Lcom/sun/mail/pop3/POP3Message;-><init>(Ljavax/mail/Folder;I)V

    .line 331
    .restart local v2    # "m":Lcom/sun/mail/pop3/POP3Message;
    :cond_26
    return-object v2

    .line 325
    :catch_27
    move-exception v4

    goto :goto_1f
.end method

.method public delete(Z)Z
    .registers 4
    .param p1, "recurse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 172
    new-instance v0, Ljavax/mail/MethodNotSupportedException;

    const-string v1, "delete"

    invoke-direct {v0, v1}, Ljavax/mail/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public exists()Z
    .registers 2

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->exists:Z

    return v0
.end method

.method public expunge()[Ljavax/mail/Message;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 354
    new-instance v0, Ljavax/mail/MethodNotSupportedException;

    const-string v1, "Expunge not supported"

    invoke-direct {v0, v1}, Ljavax/mail/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized fetch([Ljavax/mail/Message;Ljavax/mail/FetchProfile;)V
    .registers 11
    .param p1, "msgs"    # [Ljavax/mail/Message;
    .param p2, "fp"    # Ljavax/mail/FetchProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 368
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/pop3/POP3Folder;->checkReadable()V

    .line 369
    iget-boolean v6, p0, Lcom/sun/mail/pop3/POP3Folder;->doneUidl:Z

    if-nez v6, :cond_44

    sget-object v6, Ljavax/mail/UIDFolder$FetchProfileItem;->UID:Ljavax/mail/UIDFolder$FetchProfileItem;

    invoke-virtual {p2, v6}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v6

    if-eqz v6, :cond_44

    .line 378
    iget-object v6, p0, Lcom/sun/mail/pop3/POP3Folder;->message_cache:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    new-array v5, v6, [Ljava/lang/String;
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_31

    .line 380
    .local v5, "uids":[Ljava/lang/String;
    :try_start_18
    iget-object v6, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {v6, v5}, Lcom/sun/mail/pop3/Protocol;->uidl([Ljava/lang/String;)Z
    :try_end_1d
    .catch Ljava/io/EOFException; {:try_start_18 .. :try_end_1d} :catch_22
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1d} :catch_34
    .catchall {:try_start_18 .. :try_end_1d} :catchall_31

    move-result v6

    if-nez v6, :cond_3d

    .line 409
    .end local v5    # "uids":[Ljava/lang/String;
    :cond_20
    monitor-exit p0

    return-void

    .line 382
    .restart local v5    # "uids":[Ljava/lang/String;
    :catch_22
    move-exception v0

    .line 383
    .local v0, "eex":Ljava/io/EOFException;
    const/4 v6, 0x0

    :try_start_24
    invoke-virtual {p0, v6}, Lcom/sun/mail/pop3/POP3Folder;->close(Z)V

    .line 384
    new-instance v6, Ljavax/mail/FolderClosedException;

    invoke-virtual {v0}, Ljava/io/EOFException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v6
    :try_end_31
    .catchall {:try_start_24 .. :try_end_31} :catchall_31

    .line 368
    .end local v0    # "eex":Ljava/io/EOFException;
    .end local v5    # "uids":[Ljava/lang/String;
    :catchall_31
    move-exception v6

    monitor-exit p0

    throw v6

    .line 385
    .restart local v5    # "uids":[Ljava/lang/String;
    :catch_34
    move-exception v1

    .line 386
    .local v1, "ex":Ljava/io/IOException;
    :try_start_35
    new-instance v6, Ljavax/mail/MessagingException;

    const-string v7, "error getting UIDL"

    invoke-direct {v6, v7, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6

    .line 388
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_3d
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3e
    array-length v6, v5

    if-lt v2, v6, :cond_5f

    .line 394
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/sun/mail/pop3/POP3Folder;->doneUidl:Z

    .line 396
    .end local v2    # "i":I
    .end local v5    # "uids":[Ljava/lang/String;
    :cond_44
    sget-object v6, Ljavax/mail/FetchProfile$Item;->ENVELOPE:Ljavax/mail/FetchProfile$Item;

    invoke-virtual {p2, v6}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 397
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4d
    array-length v6, p1
    :try_end_4e
    .catchall {:try_start_35 .. :try_end_4e} :catchall_31

    if-ge v2, v6, :cond_20

    .line 399
    :try_start_50
    aget-object v4, p1, v2

    check-cast v4, Lcom/sun/mail/pop3/POP3Message;

    .line 401
    .local v4, "msg":Lcom/sun/mail/pop3/POP3Message;
    const-string v6, ""

    invoke-virtual {v4, v6}, Lcom/sun/mail/pop3/POP3Message;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    .line 403
    invoke-virtual {v4}, Lcom/sun/mail/pop3/POP3Message;->getSize()I
    :try_end_5c
    .catch Ljavax/mail/MessageRemovedException; {:try_start_50 .. :try_end_5c} :catch_73
    .catchall {:try_start_50 .. :try_end_5c} :catchall_31

    .line 397
    .end local v4    # "msg":Lcom/sun/mail/pop3/POP3Message;
    :goto_5c
    add-int/lit8 v2, v2, 0x1

    goto :goto_4d

    .line 389
    .restart local v5    # "uids":[Ljava/lang/String;
    :cond_5f
    :try_start_5f
    aget-object v6, v5, v2

    if-nez v6, :cond_66

    .line 388
    :goto_63
    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    .line 391
    :cond_66
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v6}, Lcom/sun/mail/pop3/POP3Folder;->getMessage(I)Ljavax/mail/Message;

    move-result-object v3

    check-cast v3, Lcom/sun/mail/pop3/POP3Message;

    .line 392
    .local v3, "m":Lcom/sun/mail/pop3/POP3Message;
    aget-object v6, v5, v2

    iput-object v6, v3, Lcom/sun/mail/pop3/POP3Message;->uid:Ljava/lang/String;
    :try_end_72
    .catchall {:try_start_5f .. :try_end_72} :catchall_31

    goto :goto_63

    .line 404
    .end local v3    # "m":Lcom/sun/mail/pop3/POP3Message;
    .end local v5    # "uids":[Ljava/lang/String;
    :catch_73
    move-exception v6

    goto :goto_5c
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 505
    invoke-super {p0}, Ljavax/mail/Folder;->finalize()V

    .line 506
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sun/mail/pop3/POP3Folder;->close(Z)V

    .line 507
    return-void
.end method

.method public getFolder(Ljava/lang/String;)Ljavax/mail/Folder;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 161
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "not a directory"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFullName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->name:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getMessage(I)Ljavax/mail/Message;
    .registers 5
    .param p1, "msgno"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 305
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/pop3/POP3Folder;->checkOpen()V

    .line 310
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Folder;->message_cache:Ljava/util/Vector;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/mail/pop3/POP3Message;

    .local v0, "m":Lcom/sun/mail/pop3/POP3Message;
    if-nez v0, :cond_1b

    .line 311
    invoke-virtual {p0, p0, p1}, Lcom/sun/mail/pop3/POP3Folder;->createMessage(Ljavax/mail/Folder;I)Lcom/sun/mail/pop3/POP3Message;

    move-result-object v0

    .line 312
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Folder;->message_cache:Ljava/util/Vector;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v0, v2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    .line 314
    :cond_1b
    monitor-exit p0

    return-object v0

    .line 305
    .end local v0    # "m":Lcom/sun/mail/pop3/POP3Message;
    :catchall_1d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getMessageCount()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 297
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->opened:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_e

    if-nez v0, :cond_8

    .line 298
    const/4 v0, -0x1

    .line 300
    :goto_6
    monitor-exit p0

    return v0

    .line 299
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Lcom/sun/mail/pop3/POP3Folder;->checkReadable()V

    .line 300
    iget v0, p0, Lcom/sun/mail/pop3/POP3Folder;->total:I
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_e

    goto :goto_6

    .line 297
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Ljavax/mail/Folder;
    .registers 3

    .prologue
    .line 93
    new-instance v1, Lcom/sun/mail/pop3/DefaultFolder;

    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/pop3/POP3Store;

    invoke-direct {v1, v0}, Lcom/sun/mail/pop3/DefaultFolder;-><init>(Lcom/sun/mail/pop3/POP3Store;)V

    return-object v1
.end method

.method public getPermanentFlags()Ljavax/mail/Flags;
    .registers 2

    .prologue
    .line 288
    new-instance v0, Ljavax/mail/Flags;

    invoke-direct {v0}, Ljavax/mail/Flags;-><init>()V

    return-object v0
.end method

.method getProtocol()Lcom/sun/mail/pop3/Protocol;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 539
    invoke-virtual {p0}, Lcom/sun/mail/pop3/POP3Folder;->checkOpen()V

    .line 540
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    return-object v0
.end method

.method public getSeparator()C
    .registers 2

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized getSize()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 441
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/pop3/POP3Folder;->checkOpen()V

    .line 442
    iget v0, p0, Lcom/sun/mail/pop3/POP3Folder;->size:I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return v0

    .line 441
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSizes()[I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 455
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/pop3/POP3Folder;->checkOpen()V

    .line 456
    iget v8, p0, Lcom/sun/mail/pop3/POP3Folder;->total:I

    new-array v6, v8, [I
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_64

    .line 457
    .local v6, "sizes":[I
    const/4 v0, 0x0

    .line 458
    .local v0, "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 460
    .local v2, "lis":Lcom/sun/mail/util/LineInputStream;
    :try_start_a
    iget-object v8, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {v8}, Lcom/sun/mail/pop3/Protocol;->list()Ljava/io/InputStream;

    move-result-object v0

    .line 461
    new-instance v3, Lcom/sun/mail/util/LineInputStream;

    invoke-direct {v3, v0}, Lcom/sun/mail/util/LineInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_15} :catch_4a
    .catchall {:try_start_a .. :try_end_15} :catchall_58

    .line 463
    .end local v2    # "lis":Lcom/sun/mail/util/LineInputStream;
    .local v3, "lis":Lcom/sun/mail/util/LineInputStream;
    :cond_15
    :goto_15
    :try_start_15
    invoke-virtual {v3}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_75
    .catchall {:try_start_15 .. :try_end_18} :catchall_72

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    if-nez v1, :cond_28

    .line 477
    if-eqz v3, :cond_20

    .line 478
    :try_start_1d
    invoke-virtual {v3}, Lcom/sun/mail/util/LineInputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_70
    .catchall {:try_start_1d .. :try_end_20} :catchall_64

    .line 481
    :cond_20
    :goto_20
    if-eqz v0, :cond_78

    .line 482
    :try_start_22
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_67
    .catchall {:try_start_22 .. :try_end_25} :catchall_64

    move-object v2, v3

    .line 485
    .end local v1    # "line":Ljava/lang/String;
    .end local v3    # "lis":Lcom/sun/mail/util/LineInputStream;
    .restart local v2    # "lis":Lcom/sun/mail/util/LineInputStream;
    :cond_26
    :goto_26
    monitor-exit p0

    return-object v6

    .line 465
    .end local v2    # "lis":Lcom/sun/mail/util/LineInputStream;
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v3    # "lis":Lcom/sun/mail/util/LineInputStream;
    :cond_28
    :try_start_28
    new-instance v7, Ljava/util/StringTokenizer;

    invoke-direct {v7, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 466
    .local v7, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 467
    .local v4, "msgnum":I
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 468
    .local v5, "size":I
    if-lez v4, :cond_15

    iget v8, p0, Lcom/sun/mail/pop3/POP3Folder;->total:I

    if-gt v4, v8, :cond_15

    .line 469
    add-int/lit8 v8, v4, -0x1

    aput v5, v6, v8
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_47} :catch_48
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_47} :catch_75
    .catchall {:try_start_28 .. :try_end_47} :catchall_72

    goto :goto_15

    .line 470
    .end local v4    # "msgnum":I
    .end local v5    # "size":I
    .end local v7    # "st":Ljava/util/StringTokenizer;
    :catch_48
    move-exception v8

    goto :goto_15

    .line 473
    .end local v1    # "line":Ljava/lang/String;
    .end local v3    # "lis":Lcom/sun/mail/util/LineInputStream;
    .restart local v2    # "lis":Lcom/sun/mail/util/LineInputStream;
    :catch_4a
    move-exception v8

    .line 477
    :goto_4b
    if-eqz v2, :cond_50

    .line 478
    :try_start_4d
    invoke-virtual {v2}, Lcom/sun/mail/util/LineInputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_6a
    .catchall {:try_start_4d .. :try_end_50} :catchall_64

    .line 481
    :cond_50
    :goto_50
    if-eqz v0, :cond_26

    .line 482
    :try_start_52
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_56
    .catchall {:try_start_52 .. :try_end_55} :catchall_64

    goto :goto_26

    .line 483
    :catch_56
    move-exception v8

    goto :goto_26

    .line 475
    :catchall_58
    move-exception v8

    .line 477
    :goto_59
    if-eqz v2, :cond_5e

    .line 478
    :try_start_5b
    invoke-virtual {v2}, Lcom/sun/mail/util/LineInputStream;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_6c
    .catchall {:try_start_5b .. :try_end_5e} :catchall_64

    .line 481
    :cond_5e
    :goto_5e
    if-eqz v0, :cond_63

    .line 482
    :try_start_60
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_6e
    .catchall {:try_start_60 .. :try_end_63} :catchall_64

    .line 484
    :cond_63
    :goto_63
    :try_start_63
    throw v8
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_64

    .line 455
    .end local v0    # "is":Ljava/io/InputStream;
    .end local v2    # "lis":Lcom/sun/mail/util/LineInputStream;
    .end local v6    # "sizes":[I
    :catchall_64
    move-exception v8

    monitor-exit p0

    throw v8

    .line 483
    .restart local v0    # "is":Ljava/io/InputStream;
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v3    # "lis":Lcom/sun/mail/util/LineInputStream;
    .restart local v6    # "sizes":[I
    :catch_67
    move-exception v8

    move-object v2, v3

    .end local v3    # "lis":Lcom/sun/mail/util/LineInputStream;
    .restart local v2    # "lis":Lcom/sun/mail/util/LineInputStream;
    goto :goto_26

    .line 479
    .end local v1    # "line":Ljava/lang/String;
    :catch_6a
    move-exception v8

    goto :goto_50

    :catch_6c
    move-exception v9

    goto :goto_5e

    .line 483
    :catch_6e
    move-exception v9

    goto :goto_63

    .line 479
    .end local v2    # "lis":Lcom/sun/mail/util/LineInputStream;
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v3    # "lis":Lcom/sun/mail/util/LineInputStream;
    :catch_70
    move-exception v8

    goto :goto_20

    .line 475
    .end local v1    # "line":Ljava/lang/String;
    :catchall_72
    move-exception v8

    move-object v2, v3

    .end local v3    # "lis":Lcom/sun/mail/util/LineInputStream;
    .restart local v2    # "lis":Lcom/sun/mail/util/LineInputStream;
    goto :goto_59

    .line 473
    .end local v2    # "lis":Lcom/sun/mail/util/LineInputStream;
    .restart local v3    # "lis":Lcom/sun/mail/util/LineInputStream;
    :catch_75
    move-exception v8

    move-object v2, v3

    .end local v3    # "lis":Lcom/sun/mail/util/LineInputStream;
    .restart local v2    # "lis":Lcom/sun/mail/util/LineInputStream;
    goto :goto_4b

    .end local v2    # "lis":Lcom/sun/mail/util/LineInputStream;
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v3    # "lis":Lcom/sun/mail/util/LineInputStream;
    :cond_78
    move-object v2, v3

    .end local v3    # "lis":Lcom/sun/mail/util/LineInputStream;
    .restart local v2    # "lis":Lcom/sun/mail/util/LineInputStream;
    goto :goto_26
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 131
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized getUID(Ljavax/mail/Message;)Ljava/lang/String;
    .registers 8
    .param p1, "msg"    # Ljavax/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 419
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/pop3/POP3Folder;->checkOpen()V

    .line 420
    move-object v0, p1

    check-cast v0, Lcom/sun/mail/pop3/POP3Message;

    move-object v3, v0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_2d

    .line 422
    .local v3, "m":Lcom/sun/mail/pop3/POP3Message;
    :try_start_8
    iget-object v4, v3, Lcom/sun/mail/pop3/POP3Message;->uid:Ljava/lang/String;

    const-string v5, "UNKNOWN"

    if-ne v4, v5, :cond_1a

    .line 423
    iget-object v4, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {v3}, Lcom/sun/mail/pop3/POP3Message;->getMessageNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sun/mail/pop3/Protocol;->uidl(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/mail/pop3/POP3Message;->uid:Ljava/lang/String;

    .line 424
    :cond_1a
    iget-object v4, v3, Lcom/sun/mail/pop3/POP3Message;->uid:Ljava/lang/String;
    :try_end_1c
    .catch Ljava/io/EOFException; {:try_start_8 .. :try_end_1c} :catch_1e
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_1c} :catch_30
    .catchall {:try_start_8 .. :try_end_1c} :catchall_2d

    monitor-exit p0

    return-object v4

    .line 425
    :catch_1e
    move-exception v1

    .line 426
    .local v1, "eex":Ljava/io/EOFException;
    const/4 v4, 0x0

    :try_start_20
    invoke-virtual {p0, v4}, Lcom/sun/mail/pop3/POP3Folder;->close(Z)V

    .line 427
    new-instance v4, Ljavax/mail/FolderClosedException;

    invoke-virtual {v1}, Ljava/io/EOFException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v4
    :try_end_2d
    .catchall {:try_start_20 .. :try_end_2d} :catchall_2d

    .line 419
    .end local v1    # "eex":Ljava/io/EOFException;
    .end local v3    # "m":Lcom/sun/mail/pop3/POP3Message;
    :catchall_2d
    move-exception v4

    monitor-exit p0

    throw v4

    .line 428
    .restart local v3    # "m":Lcom/sun/mail/pop3/POP3Message;
    :catch_30
    move-exception v2

    .line 429
    .local v2, "ex":Ljava/io/IOException;
    :try_start_31
    new-instance v4, Ljavax/mail/MessagingException;

    const-string v5, "error getting UIDL"

    invoke-direct {v4, v5, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_2d
.end method

.method public hasNewMessages()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public isOpen()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 271
    iget-boolean v1, p0, Lcom/sun/mail/pop3/POP3Folder;->opened:Z

    if-nez v1, :cond_6

    .line 278
    :goto_5
    return v0

    .line 273
    :cond_6
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Ljavax/mail/Store;

    invoke-virtual {v1}, Ljavax/mail/Store;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 274
    const/4 v0, 0x1

    goto :goto_5

    .line 276
    :cond_10
    const/4 v1, 0x0

    :try_start_11
    invoke-virtual {p0, v1}, Lcom/sun/mail/pop3/POP3Folder;->close(Z)V
    :try_end_14
    .catch Ljavax/mail/MessagingException; {:try_start_11 .. :try_end_14} :catch_15

    goto :goto_5

    .line 277
    :catch_15
    move-exception v1

    goto :goto_5
.end method

.method public list(Ljava/lang/String;)[Ljavax/mail/Folder;
    .registers 4
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 113
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "not a directory"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized listCommand()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 497
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/pop3/POP3Folder;->checkOpen()V

    .line 498
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {v0}, Lcom/sun/mail/pop3/Protocol;->list()Ljava/io/InputStream;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 497
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected notifyMessageChangedListeners(ILjavax/mail/Message;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "m"    # Ljavax/mail/Message;

    .prologue
    .line 547
    invoke-super {p0, p1, p2}, Ljavax/mail/Folder;->notifyMessageChangedListeners(ILjavax/mail/Message;)V

    .line 548
    return-void
.end method

.method public declared-synchronized open(I)V
    .registers 6
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 194
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/pop3/POP3Folder;->checkClosed()V

    .line 195
    iget-boolean v2, p0, Lcom/sun/mail/pop3/POP3Folder;->exists:Z

    if-nez v2, :cond_13

    .line 196
    new-instance v2, Ljavax/mail/FolderNotFoundException;

    const-string v3, "folder is not INBOX"

    invoke-direct {v2, p0, v3}, Ljavax/mail/FolderNotFoundException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_10

    .line 194
    :catchall_10
    move-exception v2

    monitor-exit p0

    throw v2

    .line 199
    :cond_13
    :try_start_13
    iget-object v2, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Ljavax/mail/Store;

    check-cast v2, Lcom/sun/mail/pop3/POP3Store;

    invoke-virtual {v2, p0}, Lcom/sun/mail/pop3/POP3Store;->getPort(Lcom/sun/mail/pop3/POP3Folder;)Lcom/sun/mail/pop3/Protocol;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    .line 200
    iget-object v2, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {v2}, Lcom/sun/mail/pop3/Protocol;->stat()Lcom/sun/mail/pop3/Status;

    move-result-object v1

    .line 201
    .local v1, "s":Lcom/sun/mail/pop3/Status;
    iget v2, v1, Lcom/sun/mail/pop3/Status;->total:I

    iput v2, p0, Lcom/sun/mail/pop3/POP3Folder;->total:I

    .line 202
    iget v2, v1, Lcom/sun/mail/pop3/Status;->size:I

    iput v2, p0, Lcom/sun/mail/pop3/POP3Folder;->size:I

    .line 203
    iput p1, p0, Lcom/sun/mail/pop3/POP3Folder;->mode:I

    .line 204
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sun/mail/pop3/POP3Folder;->opened:Z
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_30} :catch_49
    .catchall {:try_start_13 .. :try_end_30} :catchall_10

    .line 219
    :try_start_30
    new-instance v2, Ljava/util/Vector;

    iget v3, p0, Lcom/sun/mail/pop3/POP3Folder;->total:I

    invoke-direct {v2, v3}, Ljava/util/Vector;-><init>(I)V

    iput-object v2, p0, Lcom/sun/mail/pop3/POP3Folder;->message_cache:Ljava/util/Vector;

    .line 220
    iget-object v2, p0, Lcom/sun/mail/pop3/POP3Folder;->message_cache:Ljava/util/Vector;

    iget v3, p0, Lcom/sun/mail/pop3/POP3Folder;->total:I

    invoke-virtual {v2, v3}, Ljava/util/Vector;->setSize(I)V

    .line 221
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sun/mail/pop3/POP3Folder;->doneUidl:Z

    .line 223
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sun/mail/pop3/POP3Folder;->notifyConnectionListeners(I)V
    :try_end_47
    .catchall {:try_start_30 .. :try_end_47} :catchall_10

    .line 224
    monitor-exit p0

    return-void

    .line 205
    .end local v1    # "s":Lcom/sun/mail/pop3/Status;
    :catch_49
    move-exception v0

    .line 207
    .local v0, "ioex":Ljava/io/IOException;
    :try_start_4a
    iget-object v2, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    if-eqz v2, :cond_53

    .line 208
    iget-object v2, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {v2}, Lcom/sun/mail/pop3/Protocol;->quit()Z
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_53} :catch_65
    .catchall {:try_start_4a .. :try_end_53} :catchall_71

    .line 212
    :cond_53
    const/4 v2, 0x0

    :try_start_54
    iput-object v2, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    .line 213
    iget-object v2, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Ljavax/mail/Store;

    check-cast v2, Lcom/sun/mail/pop3/POP3Store;

    invoke-virtual {v2, p0}, Lcom/sun/mail/pop3/POP3Store;->closePort(Lcom/sun/mail/pop3/POP3Folder;)V

    .line 215
    :goto_5d
    new-instance v2, Ljavax/mail/MessagingException;

    const-string v3, "Open failed"

    invoke-direct {v2, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 209
    :catch_65
    move-exception v2

    .line 212
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    .line 213
    iget-object v2, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Ljavax/mail/Store;

    check-cast v2, Lcom/sun/mail/pop3/POP3Store;

    invoke-virtual {v2, p0}, Lcom/sun/mail/pop3/POP3Store;->closePort(Lcom/sun/mail/pop3/POP3Folder;)V

    goto :goto_5d

    .line 211
    :catchall_71
    move-exception v2

    move-object v3, v2

    .line 212
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    .line 213
    iget-object v2, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Ljavax/mail/Store;

    check-cast v2, Lcom/sun/mail/pop3/POP3Store;

    invoke-virtual {v2, p0}, Lcom/sun/mail/pop3/POP3Store;->closePort(Lcom/sun/mail/pop3/POP3Folder;)V

    .line 214
    throw v3
    :try_end_7e
    .catchall {:try_start_54 .. :try_end_7e} :catchall_10
.end method

.method public renameTo(Ljavax/mail/Folder;)Z
    .registers 4
    .param p1, "f"    # Ljavax/mail/Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 182
    new-instance v0, Ljavax/mail/MethodNotSupportedException;

    const-string v1, "renameTo"

    invoke-direct {v0, v1}, Ljavax/mail/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
