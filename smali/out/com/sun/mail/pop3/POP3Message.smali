.class public Lcom/sun/mail/pop3/POP3Message;
.super Ljavax/mail/internet/MimeMessage;
.source "POP3Message.java"


# static fields
.field static final UNKNOWN:Ljava/lang/String; = "UNKNOWN"


# instance fields
.field private folder:Lcom/sun/mail/pop3/POP3Folder;

.field private hdrSize:I

.field private msgSize:I

.field uid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljavax/mail/Folder;I)V
    .registers 4
    .param p1, "folder"    # Ljavax/mail/Folder;
    .param p2, "msgno"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 73
    invoke-direct {p0, p1, p2}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Folder;I)V

    .line 67
    iput v0, p0, Lcom/sun/mail/pop3/POP3Message;->hdrSize:I

    .line 68
    iput v0, p0, Lcom/sun/mail/pop3/POP3Message;->msgSize:I

    .line 69
    const-string v0, "UNKNOWN"

    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->uid:Ljava/lang/String;

    .line 74
    check-cast p1, Lcom/sun/mail/pop3/POP3Folder;

    .end local p1    # "folder":Ljavax/mail/Folder;
    iput-object p1, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    .line 75
    return-void
.end method

.method private loadHeaders()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 459
    :try_start_1
    monitor-enter p0
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_2} :catch_30
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_2} :catch_50

    .line 460
    :try_start_2
    iget-object v4, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    if-eqz v4, :cond_8

    .line 461
    monitor-exit p0

    .line 481
    :goto_7
    return-void

    .line 462
    :cond_8
    const/4 v3, 0x0

    .line 463
    .local v3, "hdrs":Ljava/io/InputStream;
    iget-object v4, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {v4}, Lcom/sun/mail/pop3/POP3Folder;->getStore()Ljavax/mail/Store;

    move-result-object v4

    check-cast v4, Lcom/sun/mail/pop3/POP3Store;

    iget-boolean v4, v4, Lcom/sun/mail/pop3/POP3Store;->disableTop:Z

    if-nez v4, :cond_24

    .line 464
    iget-object v4, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {v4}, Lcom/sun/mail/pop3/POP3Folder;->getProtocol()Lcom/sun/mail/pop3/Protocol;

    move-result-object v4

    iget v5, p0, Lcom/sun/mail/pop3/POP3Message;->msgnum:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/sun/mail/pop3/Protocol;->top(II)Ljava/io/InputStream;

    move-result-object v3

    if-nez v3, :cond_42

    .line 468
    :cond_24
    invoke-virtual {p0}, Lcom/sun/mail/pop3/POP3Message;->getContentStream()Ljava/io/InputStream;

    move-result-object v0

    .line 469
    .local v0, "cs":Ljava/io/InputStream;
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 459
    .end local v0    # "cs":Ljava/io/InputStream;
    :goto_2b
    monitor-exit p0

    goto :goto_7

    .end local v3    # "hdrs":Ljava/io/InputStream;
    :catchall_2d
    move-exception v4

    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_2 .. :try_end_2f} :catchall_2d

    :try_start_2f
    throw v4
    :try_end_30
    .catch Ljava/io/EOFException; {:try_start_2f .. :try_end_30} :catch_30
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_30} :catch_50

    .line 475
    :catch_30
    move-exception v1

    .line 476
    .local v1, "eex":Ljava/io/EOFException;
    iget-object v4, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {v4, v7}, Lcom/sun/mail/pop3/POP3Folder;->close(Z)V

    .line 477
    new-instance v4, Ljavax/mail/FolderClosedException;

    iget-object v5, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {v1}, Ljava/io/EOFException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v4

    .line 471
    .end local v1    # "eex":Ljava/io/EOFException;
    .restart local v3    # "hdrs":Ljava/io/InputStream;
    :cond_42
    :try_start_42
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v4

    iput v4, p0, Lcom/sun/mail/pop3/POP3Message;->hdrSize:I

    .line 472
    new-instance v4, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v4, v3}, Ljavax/mail/internet/InternetHeaders;-><init>(Ljava/io/InputStream;)V

    iput-object v4, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;
    :try_end_4f
    .catchall {:try_start_42 .. :try_end_4f} :catchall_2d

    goto :goto_2b

    .line 478
    .end local v3    # "hdrs":Ljava/io/InputStream;
    :catch_50
    move-exception v2

    .line 479
    .local v2, "ex":Ljava/io/IOException;
    new-instance v4, Ljavax/mail/MessagingException;

    const-string v5, "error loading POP3 headers"

    invoke-direct {v4, v5, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 324
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "POP3 messages are read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addHeaderLine(Ljava/lang/String;)V
    .registers 4
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 397
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "POP3 messages are read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAllHeaderLines()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 408
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    if-nez v0, :cond_7

    .line 409
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Message;->loadHeaders()V

    .line 410
    :cond_7
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0}, Ljavax/mail/internet/InternetHeaders;->getAllHeaderLines()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getAllHeaders()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 355
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    if-nez v0, :cond_7

    .line 356
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Message;->loadHeaders()V

    .line 357
    :cond_7
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0}, Ljavax/mail/internet/InternetHeaders;->getAllHeaders()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method protected getContentStream()Ljava/io/InputStream;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/16 v13, 0xa

    const/4 v9, 0x0

    .line 143
    :try_start_3
    monitor-enter p0
    :try_end_4
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_4} :catch_2b
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_4} :catch_ae

    .line 144
    :try_start_4
    iget-object v8, p0, Lcom/sun/mail/pop3/POP3Message;->contentStream:Ljava/io/InputStream;

    if-nez v8, :cond_6e

    .line 145
    iget-object v8, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {v8}, Lcom/sun/mail/pop3/POP3Folder;->getProtocol()Lcom/sun/mail/pop3/Protocol;

    move-result-object v10

    iget v11, p0, Lcom/sun/mail/pop3/POP3Message;->msgnum:I

    .line 146
    iget v8, p0, Lcom/sun/mail/pop3/POP3Message;->msgSize:I

    if-lez v8, :cond_3d

    iget v8, p0, Lcom/sun/mail/pop3/POP3Message;->msgSize:I

    iget v12, p0, Lcom/sun/mail/pop3/POP3Message;->hdrSize:I

    add-int/2addr v8, v12

    .line 145
    :goto_19
    invoke-virtual {v10, v11, v8}, Lcom/sun/mail/pop3/Protocol;->retr(II)Ljava/io/InputStream;

    move-result-object v7

    .line 147
    .local v7, "rawcontent":Ljava/io/InputStream;
    if-nez v7, :cond_3f

    .line 148
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/sun/mail/pop3/POP3Message;->expunged:Z

    .line 149
    new-instance v8, Ljavax/mail/MessageRemovedException;

    invoke-direct {v8}, Ljavax/mail/MessageRemovedException;-><init>()V

    throw v8

    .line 143
    .end local v7    # "rawcontent":Ljava/io/InputStream;
    :catchall_28
    move-exception v8

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_4 .. :try_end_2a} :catchall_28

    :try_start_2a
    throw v8
    :try_end_2b
    .catch Ljava/io/EOFException; {:try_start_2a .. :try_end_2b} :catch_2b
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2b} :catch_ae

    .line 207
    :catch_2b
    move-exception v3

    .line 208
    .local v3, "eex":Ljava/io/EOFException;
    iget-object v8, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {v8, v9}, Lcom/sun/mail/pop3/POP3Folder;->close(Z)V

    .line 209
    new-instance v8, Ljavax/mail/FolderClosedException;

    iget-object v9, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {v3}, Ljava/io/EOFException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v8

    .end local v3    # "eex":Ljava/io/EOFException;
    :cond_3d
    move v8, v9

    .line 146
    goto :goto_19

    .line 151
    .restart local v7    # "rawcontent":Ljava/io/InputStream;
    :cond_3f
    :try_start_3f
    iget-object v8, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    if-eqz v8, :cond_4f

    .line 152
    iget-object v8, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {v8}, Lcom/sun/mail/pop3/POP3Folder;->getStore()Ljavax/mail/Store;

    move-result-object v8

    check-cast v8, Lcom/sun/mail/pop3/POP3Store;

    iget-boolean v8, v8, Lcom/sun/mail/pop3/POP3Store;->forgetTopHeaders:Z

    if-eqz v8, :cond_74

    .line 153
    :cond_4f
    new-instance v8, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v8, v7}, Ljavax/mail/internet/InternetHeaders;-><init>(Ljava/io/InputStream;)V

    iput-object v8, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    .line 155
    move-object v0, v7

    check-cast v0, Ljavax/mail/internet/SharedInputStream;

    move-object v8, v0

    invoke-interface {v8}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v10

    long-to-int v8, v10

    .line 154
    iput v8, p0, Lcom/sun/mail/pop3/POP3Message;->hdrSize:I

    .line 203
    :goto_61
    check-cast v7, Ljavax/mail/internet/SharedInputStream;

    .end local v7    # "rawcontent":Ljava/io/InputStream;
    iget v8, p0, Lcom/sun/mail/pop3/POP3Message;->hdrSize:I

    int-to-long v10, v8

    const-wide/16 v12, -0x1

    invoke-interface {v7, v10, v11, v12, v13}, Ljavax/mail/internet/SharedInputStream;->newStream(JJ)Ljava/io/InputStream;

    move-result-object v8

    .line 202
    iput-object v8, p0, Lcom/sun/mail/pop3/POP3Message;->contentStream:Ljava/io/InputStream;

    .line 143
    :cond_6e
    monitor-exit p0
    :try_end_6f
    .catchall {:try_start_3f .. :try_end_6f} :catchall_28

    .line 213
    invoke-super {p0}, Ljavax/mail/internet/MimeMessage;->getContentStream()Ljava/io/InputStream;

    move-result-object v8

    return-object v8

    .line 169
    .restart local v7    # "rawcontent":Ljava/io/InputStream;
    :cond_74
    const/4 v6, 0x0

    .line 171
    .local v6, "offset":I
    :cond_75
    const/4 v5, 0x0

    .line 173
    .local v5, "len":I
    :goto_76
    :try_start_76
    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v2

    .local v2, "c1":I
    if-gez v2, :cond_8e

    .line 192
    :cond_7c
    :goto_7c
    invoke-virtual {v7}, Ljava/io/InputStream;->available()I

    move-result v8

    if-nez v8, :cond_ab

    .line 200
    :goto_82
    move-object v0, v7

    check-cast v0, Ljavax/mail/internet/SharedInputStream;

    move-object v8, v0

    invoke-interface {v8}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v10

    long-to-int v8, v10

    .line 199
    iput v8, p0, Lcom/sun/mail/pop3/POP3Message;->hdrSize:I

    goto :goto_61

    .line 174
    :cond_8e
    if-eq v2, v13, :cond_7c

    .line 176
    const/16 v8, 0xd

    if-ne v2, v8, :cond_a8

    .line 178
    invoke-virtual {v7}, Ljava/io/InputStream;->available()I

    move-result v8

    if-lez v8, :cond_7c

    .line 179
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/io/InputStream;->mark(I)V

    .line 180
    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v8

    if-eq v8, v13, :cond_7c

    .line 181
    invoke-virtual {v7}, Ljava/io/InputStream;->reset()V
    :try_end_a7
    .catchall {:try_start_76 .. :try_end_a7} :catchall_28

    goto :goto_7c

    .line 187
    :cond_a8
    add-int/lit8 v5, v5, 0x1

    goto :goto_76

    .line 196
    :cond_ab
    if-nez v5, :cond_75

    goto :goto_82

    .line 210
    .end local v2    # "c1":I
    .end local v5    # "len":I
    .end local v6    # "offset":I
    .end local v7    # "rawcontent":Ljava/io/InputStream;
    :catch_ae
    move-exception v4

    .line 211
    .local v4, "ex":Ljava/io/IOException;
    new-instance v8, Ljavax/mail/MessagingException;

    const-string v9, "error fetching POP3 content"

    invoke-direct {v8, v9, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v8
.end method

.method public getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "delimiter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 286
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    if-nez v0, :cond_7

    .line 287
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Message;->loadHeaders()V

    .line 288
    :cond_7
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1, p2}, Ljavax/mail/internet/InternetHeaders;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 267
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    if-nez v0, :cond_7

    .line 268
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Message;->loadHeaders()V

    .line 269
    :cond_7
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 3
    .param p1, "names"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 422
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    if-nez v0, :cond_7

    .line 423
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Message;->loadHeaders()V

    .line 424
    :cond_7
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->getMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 3
    .param p1, "names"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 368
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    if-nez v0, :cond_7

    .line 369
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Message;->loadHeaders()V

    .line 370
    :cond_7
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->getMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getNonMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 3
    .param p1, "names"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 436
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    if-nez v0, :cond_7

    .line 437
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Message;->loadHeaders()V

    .line 438
    :cond_7
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->getNonMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getNonMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 3
    .param p1, "names"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 381
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    if-nez v0, :cond_7

    .line 382
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Message;->loadHeaders()V

    .line 383
    :cond_7
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->getNonMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 105
    :try_start_0
    monitor-enter p0
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_1} :catch_27
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1} :catch_4c

    .line 106
    :try_start_1
    iget v2, p0, Lcom/sun/mail/pop3/POP3Message;->msgSize:I

    if-ltz v2, :cond_9

    .line 107
    iget v2, p0, Lcom/sun/mail/pop3/POP3Message;->msgSize:I

    monitor-exit p0

    .line 124
    :goto_8
    return v2

    .line 108
    :cond_9
    iget v2, p0, Lcom/sun/mail/pop3/POP3Message;->msgSize:I

    if-gez v2, :cond_20

    .line 117
    iget-object v2, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    if-nez v2, :cond_14

    .line 118
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Message;->loadHeaders()V

    .line 119
    :cond_14
    iget-object v2, p0, Lcom/sun/mail/pop3/POP3Message;->contentStream:Ljava/io/InputStream;

    if-eqz v2, :cond_3a

    .line 120
    iget-object v2, p0, Lcom/sun/mail/pop3/POP3Message;->contentStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v2

    iput v2, p0, Lcom/sun/mail/pop3/POP3Message;->msgSize:I

    .line 124
    :cond_20
    :goto_20
    iget v2, p0, Lcom/sun/mail/pop3/POP3Message;->msgSize:I

    monitor-exit p0

    goto :goto_8

    .line 105
    :catchall_24
    move-exception v2

    monitor-exit p0
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_24

    :try_start_26
    throw v2
    :try_end_27
    .catch Ljava/io/EOFException; {:try_start_26 .. :try_end_27} :catch_27
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_27} :catch_4c

    .line 126
    :catch_27
    move-exception v0

    .line 127
    .local v0, "eex":Ljava/io/EOFException;
    iget-object v2, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sun/mail/pop3/POP3Folder;->close(Z)V

    .line 128
    new-instance v2, Ljavax/mail/FolderClosedException;

    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {v0}, Ljava/io/EOFException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2

    .line 122
    .end local v0    # "eex":Ljava/io/EOFException;
    :cond_3a
    :try_start_3a
    iget-object v2, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {v2}, Lcom/sun/mail/pop3/POP3Folder;->getProtocol()Lcom/sun/mail/pop3/Protocol;

    move-result-object v2

    iget v3, p0, Lcom/sun/mail/pop3/POP3Message;->msgnum:I

    invoke-virtual {v2, v3}, Lcom/sun/mail/pop3/Protocol;->list(I)I

    move-result v2

    iget v3, p0, Lcom/sun/mail/pop3/POP3Message;->hdrSize:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/sun/mail/pop3/POP3Message;->msgSize:I
    :try_end_4b
    .catchall {:try_start_3a .. :try_end_4b} :catchall_24

    goto :goto_20

    .line 129
    :catch_4c
    move-exception v1

    .line 130
    .local v1, "ex":Ljava/io/IOException;
    new-instance v2, Ljavax/mail/MessagingException;

    const-string v3, "error getting size"

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method public declared-synchronized invalidate(Z)V
    .registers 3
    .param p1, "invalidateHeaders"    # Z

    .prologue
    .line 225
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->content:[B

    .line 226
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->contentStream:Ljava/io/InputStream;

    .line 227
    const/4 v0, -0x1

    iput v0, p0, Lcom/sun/mail/pop3/POP3Message;->msgSize:I

    .line 228
    if-eqz p1, :cond_12

    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    .line 230
    const/4 v0, -0x1

    iput v0, p0, Lcom/sun/mail/pop3/POP3Message;->hdrSize:I
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_14

    .line 232
    :cond_12
    monitor-exit p0

    return-void

    .line 225
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeHeader(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 339
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "POP3 messages are read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public saveChanges()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 450
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "POP3 messages are read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFlags(Ljavax/mail/Flags;Z)V
    .registers 6
    .param p1, "newFlags"    # Ljavax/mail/Flags;
    .param p2, "set"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 85
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Message;->flags:Ljavax/mail/Flags;

    invoke-virtual {v1}, Ljavax/mail/Flags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/Flags;

    .line 86
    .local v0, "oldFlags":Ljavax/mail/Flags;
    invoke-super {p0, p1, p2}, Ljavax/mail/internet/MimeMessage;->setFlags(Ljavax/mail/Flags;Z)V

    .line 87
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Message;->flags:Ljavax/mail/Flags;

    invoke-virtual {v1, v0}, Ljavax/mail/Flags;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 88
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    .line 89
    const/4 v2, 0x1

    .line 88
    invoke-virtual {v1, v2, p0}, Lcom/sun/mail/pop3/POP3Folder;->notifyMessageChangedListeners(ILjavax/mail/Message;)V

    .line 90
    :cond_19
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 306
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "POP3 messages are read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public top(I)Ljava/io/InputStream;
    .registers 7
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 244
    :try_start_0
    monitor-enter p0
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_1} :catch_12
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1} :catch_25

    .line 245
    :try_start_1
    iget-object v2, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {v2}, Lcom/sun/mail/pop3/POP3Folder;->getProtocol()Lcom/sun/mail/pop3/Protocol;

    move-result-object v2

    iget v3, p0, Lcom/sun/mail/pop3/POP3Message;->msgnum:I

    invoke-virtual {v2, v3, p1}, Lcom/sun/mail/pop3/Protocol;->top(II)Ljava/io/InputStream;

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 244
    :catchall_f
    move-exception v2

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    :try_start_11
    throw v2
    :try_end_12
    .catch Ljava/io/EOFException; {:try_start_11 .. :try_end_12} :catch_12
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_12} :catch_25

    .line 247
    :catch_12
    move-exception v0

    .line 248
    .local v0, "eex":Ljava/io/EOFException;
    iget-object v2, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sun/mail/pop3/POP3Folder;->close(Z)V

    .line 249
    new-instance v2, Ljavax/mail/FolderClosedException;

    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {v0}, Ljava/io/EOFException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2

    .line 250
    .end local v0    # "eex":Ljava/io/EOFException;
    :catch_25
    move-exception v1

    .line 251
    .local v1, "ex":Ljava/io/IOException;
    new-instance v2, Ljavax/mail/MessagingException;

    const-string v3, "error getting size"

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method
