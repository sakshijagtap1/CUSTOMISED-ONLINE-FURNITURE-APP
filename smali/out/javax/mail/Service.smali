.class public abstract Ljavax/mail/Service;
.super Ljava/lang/Object;
.source "Service.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/mail/Service$TerminatorEvent;
    }
.end annotation


# instance fields
.field private connected:Z

.field private connectionListeners:Ljava/util/Vector;

.field protected debug:Z

.field private q:Ljavax/mail/EventQueue;

.field private qLock:Ljava/lang/Object;

.field protected session:Ljavax/mail/Session;

.field protected url:Ljavax/mail/URLName;


# direct methods
.method protected constructor <init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V
    .registers 5
    .param p1, "session"    # Ljavax/mail/Session;
    .param p2, "urlname"    # Ljavax/mail/URLName;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object v1, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    .line 78
    iput-boolean v0, p0, Ljavax/mail/Service;->debug:Z

    .line 80
    iput-boolean v0, p0, Ljavax/mail/Service;->connected:Z

    .line 81
    iput-object v1, p0, Ljavax/mail/Service;->connectionListeners:Ljava/util/Vector;

    .line 555
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljavax/mail/Service;->qLock:Ljava/lang/Object;

    .line 90
    iput-object p1, p0, Ljavax/mail/Service;->session:Ljavax/mail/Session;

    .line 91
    iput-object p2, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    .line 92
    invoke-virtual {p1}, Ljavax/mail/Session;->getDebug()Z

    move-result v0

    iput-boolean v0, p0, Ljavax/mail/Service;->debug:Z

    .line 93
    return-void
.end method

.method private terminateQueue()V
    .registers 5

    .prologue
    .line 594
    iget-object v2, p0, Ljavax/mail/Service;->qLock:Ljava/lang/Object;

    monitor-enter v2

    .line 595
    :try_start_3
    iget-object v1, p0, Ljavax/mail/Service;->q:Ljavax/mail/EventQueue;

    if-eqz v1, :cond_1d

    .line 596
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 597
    .local v0, "dummyListeners":Ljava/util/Vector;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    .line 598
    iget-object v1, p0, Ljavax/mail/Service;->q:Ljavax/mail/EventQueue;

    new-instance v3, Ljavax/mail/Service$TerminatorEvent;

    invoke-direct {v3}, Ljavax/mail/Service$TerminatorEvent;-><init>()V

    invoke-virtual {v1, v3, v0}, Ljavax/mail/EventQueue;->enqueue(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    .line 599
    const/4 v1, 0x0

    iput-object v1, p0, Ljavax/mail/Service;->q:Ljavax/mail/EventQueue;

    .line 594
    .end local v0    # "dummyListeners":Ljava/util/Vector;
    :cond_1d
    monitor-exit v2

    .line 602
    return-void

    .line 594
    :catchall_1f
    move-exception v1

    monitor-exit v2
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method


# virtual methods
.method public declared-synchronized addConnectionListener(Ljavax/mail/event/ConnectionListener;)V
    .registers 3
    .param p1, "l"    # Ljavax/mail/event/ConnectionListener;

    .prologue
    .line 483
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljavax/mail/Service;->connectionListeners:Ljava/util/Vector;

    if-nez v0, :cond_c

    .line 484
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljavax/mail/Service;->connectionListeners:Ljava/util/Vector;

    .line 485
    :cond_c
    iget-object v0, p0, Ljavax/mail/Service;->connectionListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 486
    monitor-exit p0

    return-void

    .line 483
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 425
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0}, Ljavax/mail/Service;->setConnected(Z)V

    .line 426
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljavax/mail/Service;->notifyConnectionListeners(I)V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    .line 427
    monitor-exit p0

    return-void

    .line 425
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public connect()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 118
    invoke-virtual {p0, v0, v0, v0}, Ljavax/mail/Service;->connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public declared-synchronized connect(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 28
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "user"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 210
    monitor-enter p0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Ljavax/mail/Service;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 211
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "already connected"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_f

    .line 210
    :catchall_f
    move-exception v2

    monitor-exit p0

    throw v2

    .line 214
    :cond_12
    const/16 v17, 0x0

    .line 215
    .local v17, "connected":Z
    const/16 v21, 0x0

    .line 216
    .local v21, "save":Z
    const/4 v3, 0x0

    .line 217
    .local v3, "protocol":Ljava/lang/String;
    const/4 v6, 0x0

    .line 222
    .local v6, "file":Ljava/lang/String;
    :try_start_18
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    if-eqz v2, :cond_59

    .line 223
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v2}, Ljavax/mail/URLName;->getProtocol()Ljava/lang/String;

    move-result-object v3

    .line 224
    if-nez p1, :cond_30

    .line 225
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v2}, Ljavax/mail/URLName;->getHost()Ljava/lang/String;

    move-result-object p1

    .line 226
    :cond_30
    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_3d

    .line 227
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v2}, Ljavax/mail/URLName;->getPort()I

    move-result p2

    .line 229
    :cond_3d
    if-nez p3, :cond_117

    .line 230
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v2}, Ljavax/mail/URLName;->getUsername()Ljava/lang/String;

    move-result-object p3

    .line 231
    if-nez p4, :cond_51

    .line 232
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v2}, Ljavax/mail/URLName;->getPassword()Ljava/lang/String;

    move-result-object p4

    .line 239
    :cond_51
    :goto_51
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v2}, Ljavax/mail/URLName;->getFile()Ljava/lang/String;

    move-result-object v6

    .line 243
    :cond_59
    if-eqz v3, :cond_99

    .line 244
    if-nez p1, :cond_7a

    .line 245
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavax/mail/Service;->session:Ljavax/mail/Session;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mail."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".host"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 246
    :cond_7a
    if-nez p3, :cond_99

    .line 247
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavax/mail/Service;->session:Ljavax/mail/Session;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mail."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".user"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 251
    :cond_99
    if-nez p1, :cond_a5

    .line 252
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavax/mail/Service;->session:Ljavax/mail/Session;

    const-string v4, "mail.host"

    invoke-virtual {v2, v4}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 254
    :cond_a5
    if-nez p3, :cond_b1

    .line 255
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavax/mail/Service;->session:Ljavax/mail/Session;

    const-string v4, "mail.user"

    invoke-virtual {v2, v4}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_b0
    .catchall {:try_start_18 .. :try_end_b0} :catchall_f

    move-result-object p3

    .line 258
    :cond_b1
    if-nez p3, :cond_b9

    .line 260
    :try_start_b3
    const-string v2, "user.name"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_b8
    .catch Ljava/lang/SecurityException; {:try_start_b3 .. :try_end_b8} :catch_133
    .catchall {:try_start_b3 .. :try_end_b8} :catchall_f

    move-result-object p3

    .line 268
    :cond_b9
    :goto_b9
    if-nez p4, :cond_ea

    :try_start_bb
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    if-eqz v2, :cond_ea

    .line 270
    new-instance v2, Ljavax/mail/URLName;

    const/4 v8, 0x0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v7, p3

    invoke-direct/range {v2 .. v8}, Ljavax/mail/URLName;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljavax/mail/Service;->setURLName(Ljavax/mail/URLName;)V

    .line 271
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavax/mail/Service;->session:Ljavax/mail/Session;

    invoke-virtual/range {p0 .. p0}, Ljavax/mail/Service;->getURLName()Ljavax/mail/URLName;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljavax/mail/Session;->getPasswordAuthentication(Ljavax/mail/URLName;)Ljavax/mail/PasswordAuthentication;

    move-result-object v20

    .line 272
    .local v20, "pw":Ljavax/mail/PasswordAuthentication;
    if-eqz v20, :cond_15a

    .line 273
    if-nez p3, :cond_149

    .line 274
    invoke-virtual/range {v20 .. v20}, Ljavax/mail/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object p3

    .line 275
    invoke-virtual/range {v20 .. v20}, Ljavax/mail/PasswordAuthentication;->getPassword()Ljava/lang/String;
    :try_end_e9
    .catchall {:try_start_bb .. :try_end_e9} :catchall_f

    move-result-object p4

    .line 286
    .end local v20    # "pw":Ljavax/mail/PasswordAuthentication;
    :cond_ea
    :goto_ea
    const/16 v16, 0x0

    .line 288
    .local v16, "authEx":Ljavax/mail/AuthenticationFailedException;
    :try_start_ec
    invoke-virtual/range {p0 .. p4}, Ljavax/mail/Service;->protocolConnect(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_ef
    .catch Ljavax/mail/AuthenticationFailedException; {:try_start_ec .. :try_end_ef} :catch_15d
    .catchall {:try_start_ec .. :try_end_ef} :catchall_f

    move-result v17

    .line 294
    :goto_f0
    if-nez v17, :cond_112

    .line 297
    :try_start_f2
    invoke-static/range {p1 .. p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_f5
    .catch Ljava/net/UnknownHostException; {:try_start_f2 .. :try_end_f5} :catch_161
    .catchall {:try_start_f2 .. :try_end_f5} :catchall_f

    move-result-object v8

    .line 301
    .local v8, "addr":Ljava/net/InetAddress;
    :goto_f6
    :try_start_f6
    move-object/from16 v0, p0

    iget-object v7, v0, Ljavax/mail/Service;->session:Ljavax/mail/Session;

    .line 304
    const/4 v11, 0x0

    move/from16 v9, p2

    move-object v10, v3

    move-object/from16 v12, p3

    .line 301
    invoke-virtual/range {v7 .. v12}, Ljavax/mail/Session;->requestPasswordAuthentication(Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/mail/PasswordAuthentication;

    move-result-object v20

    .line 305
    .restart local v20    # "pw":Ljavax/mail/PasswordAuthentication;
    if-eqz v20, :cond_112

    .line 306
    invoke-virtual/range {v20 .. v20}, Ljavax/mail/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object p3

    .line 307
    invoke-virtual/range {v20 .. v20}, Ljavax/mail/PasswordAuthentication;->getPassword()Ljava/lang/String;

    move-result-object p4

    .line 310
    invoke-virtual/range {p0 .. p4}, Ljavax/mail/Service;->protocolConnect(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v17

    .line 315
    .end local v8    # "addr":Ljava/net/InetAddress;
    .end local v20    # "pw":Ljavax/mail/PasswordAuthentication;
    :cond_112
    if-nez v17, :cond_16a

    .line 316
    if-eqz v16, :cond_164

    .line 317
    throw v16

    .line 234
    .end local v16    # "authEx":Ljavax/mail/AuthenticationFailedException;
    :cond_117
    if-nez p4, :cond_51

    move-object/from16 v0, p0

    iget-object v2, v0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v2}, Ljavax/mail/URLName;->getUsername()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 236
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v2}, Ljavax/mail/URLName;->getPassword()Ljava/lang/String;

    move-result-object p4

    goto/16 :goto_51

    .line 261
    :catch_133
    move-exception v22

    .line 262
    .local v22, "sex":Ljava/lang/SecurityException;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Ljavax/mail/Service;->debug:Z

    if-eqz v2, :cond_b9

    .line 263
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavax/mail/Service;->session:Ljavax/mail/Session;

    invoke-virtual {v2}, Ljavax/mail/Session;->getDebugOut()Ljava/io/PrintStream;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/SecurityException;->printStackTrace(Ljava/io/PrintStream;)V

    goto/16 :goto_b9

    .line 276
    .end local v22    # "sex":Ljava/lang/SecurityException;
    .restart local v20    # "pw":Ljavax/mail/PasswordAuthentication;
    :cond_149
    invoke-virtual/range {v20 .. v20}, Ljavax/mail/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ea

    .line 277
    invoke-virtual/range {v20 .. v20}, Ljavax/mail/PasswordAuthentication;->getPassword()Ljava/lang/String;

    move-result-object p4

    goto :goto_ea

    .line 280
    :cond_15a
    const/16 v21, 0x1

    goto :goto_ea

    .line 289
    .end local v20    # "pw":Ljavax/mail/PasswordAuthentication;
    .restart local v16    # "authEx":Ljavax/mail/AuthenticationFailedException;
    :catch_15d
    move-exception v19

    .line 290
    .local v19, "ex":Ljavax/mail/AuthenticationFailedException;
    move-object/from16 v16, v19

    goto :goto_f0

    .line 298
    .end local v19    # "ex":Ljavax/mail/AuthenticationFailedException;
    :catch_161
    move-exception v18

    .line 299
    .local v18, "e":Ljava/net/UnknownHostException;
    const/4 v8, 0x0

    .restart local v8    # "addr":Ljava/net/InetAddress;
    goto :goto_f6

    .line 319
    .end local v8    # "addr":Ljava/net/InetAddress;
    .end local v18    # "e":Ljava/net/UnknownHostException;
    :cond_164
    new-instance v2, Ljavax/mail/AuthenticationFailedException;

    invoke-direct {v2}, Ljavax/mail/AuthenticationFailedException;-><init>()V

    throw v2

    .line 322
    :cond_16a
    new-instance v9, Ljavax/mail/URLName;

    move-object v10, v3

    move-object/from16 v11, p1

    move/from16 v12, p2

    move-object v13, v6

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    invoke-direct/range {v9 .. v15}, Ljavax/mail/URLName;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljavax/mail/Service;->setURLName(Ljavax/mail/URLName;)V

    .line 324
    if-eqz v21, :cond_194

    .line 325
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavax/mail/Service;->session:Ljavax/mail/Session;

    invoke-virtual/range {p0 .. p0}, Ljavax/mail/Service;->getURLName()Ljavax/mail/URLName;

    move-result-object v4

    .line 326
    new-instance v5, Ljavax/mail/PasswordAuthentication;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v5, v0, v1}, Ljavax/mail/PasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    invoke-virtual {v2, v4, v5}, Ljavax/mail/Session;->setPasswordAuthentication(Ljavax/mail/URLName;Ljavax/mail/PasswordAuthentication;)V

    .line 329
    :cond_194
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljavax/mail/Service;->setConnected(Z)V

    .line 332
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljavax/mail/Service;->notifyConnectionListeners(I)V
    :try_end_1a0
    .catchall {:try_start_f6 .. :try_end_1a0} :catchall_f

    .line 333
    monitor-exit p0

    return-void
.end method

.method public connect(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 189
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Ljavax/mail/Service;->connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method public connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "user"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 169
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2, p3}, Ljavax/mail/Service;->connect(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 608
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 609
    invoke-direct {p0}, Ljavax/mail/Service;->terminateQueue()V

    .line 610
    return-void
.end method

.method public declared-synchronized getURLName()Ljavax/mail/URLName;
    .registers 8

    .prologue
    .line 444
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    if-eqz v0, :cond_36

    iget-object v0, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v0}, Ljavax/mail/URLName;->getPassword()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_15

    iget-object v0, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v0}, Ljavax/mail/URLName;->getFile()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 445
    :cond_15
    new-instance v0, Ljavax/mail/URLName;

    iget-object v1, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v1}, Ljavax/mail/URLName;->getProtocol()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v2}, Ljavax/mail/URLName;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 446
    iget-object v3, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v3}, Ljavax/mail/URLName;->getPort()I

    move-result v3

    const/4 v4, 0x0

    .line 447
    iget-object v5, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v5}, Ljavax/mail/URLName;->getUsername()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 445
    invoke-direct/range {v0 .. v6}, Ljavax/mail/URLName;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_39

    .line 449
    :goto_34
    monitor-exit p0

    return-object v0

    :cond_36
    :try_start_36
    iget-object v0, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;
    :try_end_38
    .catchall {:try_start_36 .. :try_end_38} :catchall_39

    goto :goto_34

    .line 444
    :catchall_39
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isConnected()Z
    .registers 2

    .prologue
    .line 385
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Ljavax/mail/Service;->connected:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized notifyConnectionListeners(I)V
    .registers 4
    .param p1, "type"    # I

    .prologue
    .line 513
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Ljavax/mail/Service;->connectionListeners:Ljava/util/Vector;

    if-eqz v1, :cond_f

    .line 514
    new-instance v0, Ljavax/mail/event/ConnectionEvent;

    invoke-direct {v0, p0, p1}, Ljavax/mail/event/ConnectionEvent;-><init>(Ljava/lang/Object;I)V

    .line 515
    .local v0, "e":Ljavax/mail/event/ConnectionEvent;
    iget-object v1, p0, Ljavax/mail/Service;->connectionListeners:Ljava/util/Vector;

    invoke-virtual {p0, v0, v1}, Ljavax/mail/Service;->queueEvent(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    .line 528
    .end local v0    # "e":Ljavax/mail/event/ConnectionEvent;
    :cond_f
    const/4 v1, 0x3

    if-ne p1, v1, :cond_15

    .line 529
    invoke-direct {p0}, Ljavax/mail/Service;->terminateQueue()V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 530
    :cond_15
    monitor-exit p0

    return-void

    .line 513
    :catchall_17
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected protocolConnect(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "user"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 369
    const/4 v0, 0x0

    return v0
.end method

.method protected queueEvent(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V
    .registers 6
    .param p1, "event"    # Ljavax/mail/event/MailEvent;
    .param p2, "vector"    # Ljava/util/Vector;

    .prologue
    .line 562
    iget-object v2, p0, Ljavax/mail/Service;->qLock:Ljava/lang/Object;

    monitor-enter v2

    .line 563
    :try_start_3
    iget-object v1, p0, Ljavax/mail/Service;->q:Ljavax/mail/EventQueue;

    if-nez v1, :cond_e

    .line 564
    new-instance v1, Ljavax/mail/EventQueue;

    invoke-direct {v1}, Ljavax/mail/EventQueue;-><init>()V

    iput-object v1, p0, Ljavax/mail/Service;->q:Ljavax/mail/EventQueue;

    .line 562
    :cond_e
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_1b

    .line 575
    invoke-virtual {p2}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    .line 576
    .local v0, "v":Ljava/util/Vector;
    iget-object v1, p0, Ljavax/mail/Service;->q:Ljavax/mail/EventQueue;

    invoke-virtual {v1, p1, v0}, Ljavax/mail/EventQueue;->enqueue(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    .line 577
    return-void

    .line 562
    .end local v0    # "v":Ljava/util/Vector;
    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public declared-synchronized removeConnectionListener(Ljavax/mail/event/ConnectionListener;)V
    .registers 3
    .param p1, "l"    # Ljavax/mail/event/ConnectionListener;

    .prologue
    .line 498
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljavax/mail/Service;->connectionListeners:Ljava/util/Vector;

    if-eqz v0, :cond_a

    .line 499
    iget-object v0, p0, Ljavax/mail/Service;->connectionListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 500
    :cond_a
    monitor-exit p0

    return-void

    .line 498
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized setConnected(Z)V
    .registers 3
    .param p1, "connected"    # Z

    .prologue
    .line 402
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Ljavax/mail/Service;->connected:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 403
    monitor-exit p0

    return-void

    .line 402
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized setURLName(Ljavax/mail/URLName;)V
    .registers 3
    .param p1, "url"    # Ljavax/mail/URLName;

    .prologue
    .line 470
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 471
    monitor-exit p0

    return-void

    .line 470
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 537
    invoke-virtual {p0}, Ljavax/mail/Service;->getURLName()Ljavax/mail/URLName;

    move-result-object v0

    .line 538
    .local v0, "url":Ljavax/mail/URLName;
    if-eqz v0, :cond_b

    .line 539
    invoke-virtual {v0}, Ljavax/mail/URLName;->toString()Ljava/lang/String;

    move-result-object v1

    .line 541
    :goto_a
    return-object v1

    :cond_b
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_a
.end method
