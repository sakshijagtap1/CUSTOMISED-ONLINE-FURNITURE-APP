.class public Lcom/sun/mail/imap/IMAPStore;
.super Ljavax/mail/Store;
.source "IMAPStore.java"

# interfaces
.implements Ljavax/mail/QuotaAwareStore;
.implements Lcom/sun/mail/iap/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/mail/imap/IMAPStore$ConnectionPool;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final RESPONSE:I = 0x3e8


# instance fields
.field private appendBufferSize:I

.field private authorizationID:Ljava/lang/String;

.field private blksize:I

.field private volatile connected:Z

.field private defaultPort:I

.field private disableAuthLogin:Z

.field private disableAuthPlain:Z

.field private enableImapEvents:Z

.field private enableSASL:Z

.field private enableStartTLS:Z

.field private forcePasswordRefresh:Z

.field private host:Ljava/lang/String;

.field private isSSL:Z

.field private minIdleTime:I

.field private name:Ljava/lang/String;

.field private namespaces:Lcom/sun/mail/imap/protocol/Namespaces;

.field private out:Ljava/io/PrintStream;

.field private password:Ljava/lang/String;

.field private pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

.field private port:I

.field private proxyAuthUser:Ljava/lang/String;

.field private saslMechanisms:[Ljava/lang/String;

.field private saslRealm:Ljava/lang/String;

.field private statusCacheTimeout:I

.field private user:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 133
    const-class v0, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/sun/mail/imap/IMAPStore;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V
    .registers 9
    .param p1, "session"    # Ljavax/mail/Session;
    .param p2, "url"    # Ljavax/mail/URLName;

    .prologue
    .line 279
    const-string v3, "imap"

    const/16 v4, 0x8f

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/sun/mail/imap/IMAPStore;-><init>(Ljavax/mail/Session;Ljavax/mail/URLName;Ljava/lang/String;IZ)V

    .line 280
    return-void
.end method

.method protected constructor <init>(Ljavax/mail/Session;Ljavax/mail/URLName;Ljava/lang/String;IZ)V
    .registers 20
    .param p1, "session"    # Ljavax/mail/Session;
    .param p2, "url"    # Ljavax/mail/URLName;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "defaultPort"    # I
    .param p5, "isSSL"    # Z

    .prologue
    .line 287
    invoke-direct/range {p0 .. p2}, Ljavax/mail/Store;-><init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V

    .line 143
    const-string v9, "imap"

    iput-object v9, p0, Lcom/sun/mail/imap/IMAPStore;->name:Ljava/lang/String;

    .line 144
    const/16 v9, 0x8f

    iput v9, p0, Lcom/sun/mail/imap/IMAPStore;->defaultPort:I

    .line 145
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sun/mail/imap/IMAPStore;->isSSL:Z

    .line 147
    const/4 v9, -0x1

    iput v9, p0, Lcom/sun/mail/imap/IMAPStore;->port:I

    .line 148
    const/16 v9, 0x4000

    iput v9, p0, Lcom/sun/mail/imap/IMAPStore;->blksize:I

    .line 152
    const/16 v9, 0x3e8

    iput v9, p0, Lcom/sun/mail/imap/IMAPStore;->statusCacheTimeout:I

    .line 154
    const/4 v9, -0x1

    iput v9, p0, Lcom/sun/mail/imap/IMAPStore;->appendBufferSize:I

    .line 156
    const/16 v9, 0xa

    iput v9, p0, Lcom/sun/mail/imap/IMAPStore;->minIdleTime:I

    .line 168
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sun/mail/imap/IMAPStore;->disableAuthLogin:Z

    .line 169
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sun/mail/imap/IMAPStore;->disableAuthPlain:Z

    .line 170
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sun/mail/imap/IMAPStore;->enableStartTLS:Z

    .line 171
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sun/mail/imap/IMAPStore;->enableSASL:Z

    .line 173
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sun/mail/imap/IMAPStore;->forcePasswordRefresh:Z

    .line 175
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sun/mail/imap/IMAPStore;->enableImapEvents:Z

    .line 183
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sun/mail/imap/IMAPStore;->connected:Z

    .line 271
    new-instance v9, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-direct {v9}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;-><init>()V

    iput-object v9, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    .line 288
    if-eqz p2, :cond_42

    .line 289
    invoke-virtual/range {p2 .. p2}, Ljavax/mail/URLName;->getProtocol()Ljava/lang/String;

    move-result-object p3

    .line 290
    :cond_42
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->name:Ljava/lang/String;

    .line 291
    move/from16 v0, p4

    iput v0, p0, Lcom/sun/mail/imap/IMAPStore;->defaultPort:I

    .line 292
    move/from16 v0, p5

    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->isSSL:Z

    .line 294
    iget-object v9, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$0(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;J)V

    .line 296
    invoke-virtual {p1}, Ljavax/mail/Session;->getDebug()Z

    move-result v9

    iput-boolean v9, p0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    .line 297
    invoke-virtual {p1}, Ljavax/mail/Session;->getDebugOut()Ljava/io/PrintStream;

    move-result-object v9

    iput-object v9, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    .line 298
    iget-object v9, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    if-nez v9, :cond_6b

    .line 299
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v9, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    .line 302
    :cond_6b
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "mail."

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".connectionpool.debug"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 301
    invoke-virtual {p1, v9}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 304
    .local v4, "s":Ljava/lang/String;
    if-eqz v4, :cond_96

    const-string v9, "true"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_96

    .line 305
    iget-object v9, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$1(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;Z)V

    .line 307
    :cond_96
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "mail."

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".partialfetch"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 309
    if-eqz v4, :cond_4d7

    const-string v9, "false"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4d7

    .line 311
    const/4 v9, -0x1

    iput v9, p0, Lcom/sun/mail/imap/IMAPStore;->blksize:I

    .line 312
    iget-boolean v9, p0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    if-eqz v9, :cond_c9

    .line 313
    iget-object v9, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    const-string v10, "DEBUG: mail.imap.partialfetch: false"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 323
    :cond_c9
    :goto_c9
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "mail."

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".statuscachetimeout"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 324
    if-eqz v4, :cond_106

    .line 325
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/sun/mail/imap/IMAPStore;->statusCacheTimeout:I

    .line 326
    iget-boolean v9, p0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    if-eqz v9, :cond_106

    .line 327
    iget-object v9, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "DEBUG: mail.imap.statuscachetimeout: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 328
    iget v11, p0, Lcom/sun/mail/imap/IMAPStore;->statusCacheTimeout:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 327
    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 330
    :cond_106
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "mail."

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".appendbuffersize"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 331
    if-eqz v4, :cond_143

    .line 332
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/sun/mail/imap/IMAPStore;->appendBufferSize:I

    .line 333
    iget-boolean v9, p0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    if-eqz v9, :cond_143

    .line 334
    iget-object v9, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "DEBUG: mail.imap.appendbuffersize: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 335
    iget v11, p0, Lcom/sun/mail/imap/IMAPStore;->appendBufferSize:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 334
    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 337
    :cond_143
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "mail."

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".minidletime"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 338
    if-eqz v4, :cond_180

    .line 339
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/sun/mail/imap/IMAPStore;->minIdleTime:I

    .line 340
    iget-boolean v9, p0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    if-eqz v9, :cond_180

    .line 341
    iget-object v9, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "DEBUG: mail.imap.minidletime: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, p0, Lcom/sun/mail/imap/IMAPStore;->minIdleTime:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 345
    :cond_180
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "mail."

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".connectionpoolsize"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 346
    if-eqz v4, :cond_1ca

    .line 348
    :try_start_19d
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 349
    .local v6, "size":I
    if-lez v6, :cond_1a8

    .line 350
    iget-object v9, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v9, v6}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$2(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;I)V
    :try_end_1a8
    .catch Ljava/lang/NumberFormatException; {:try_start_19d .. :try_end_1a8} :catch_52b

    .line 353
    .end local v6    # "size":I
    :cond_1a8
    :goto_1a8
    iget-object v9, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v9}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$3(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z

    move-result v9

    if-eqz v9, :cond_1ca

    .line 354
    iget-object v9, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "DEBUG: mail.imap.connectionpoolsize: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 355
    iget-object v11, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v11}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$4(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 354
    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 360
    :cond_1ca
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "mail."

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".connectionpooltimeout"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 361
    if-eqz v4, :cond_215

    .line 363
    :try_start_1e7
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 364
    .local v2, "connectionPoolTimeout":I
    if-lez v2, :cond_1f3

    .line 365
    iget-object v9, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    int-to-long v10, v2

    invoke-static {v9, v10, v11}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$5(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;J)V
    :try_end_1f3
    .catch Ljava/lang/NumberFormatException; {:try_start_1e7 .. :try_end_1f3} :catch_528

    .line 368
    .end local v2    # "connectionPoolTimeout":I
    :cond_1f3
    :goto_1f3
    iget-object v9, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v9}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$3(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z

    move-result v9

    if-eqz v9, :cond_215

    .line 369
    iget-object v9, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "DEBUG: mail.imap.connectionpooltimeout: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 370
    iget-object v11, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v11}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$6(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 369
    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 374
    :cond_215
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "mail."

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".servertimeout"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 375
    if-eqz v4, :cond_260

    .line 377
    :try_start_232
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 378
    .local v5, "serverTimeout":I
    if-lez v5, :cond_23e

    .line 379
    iget-object v9, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    int-to-long v10, v5

    invoke-static {v9, v10, v11}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$7(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;J)V
    :try_end_23e
    .catch Ljava/lang/NumberFormatException; {:try_start_232 .. :try_end_23e} :catch_525

    .line 382
    .end local v5    # "serverTimeout":I
    :cond_23e
    :goto_23e
    iget-object v9, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v9}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$3(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z

    move-result v9

    if-eqz v9, :cond_260

    .line 383
    iget-object v9, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "DEBUG: mail.imap.servertimeout: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 384
    iget-object v11, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v11}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$8(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 383
    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 389
    :cond_260
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "mail."

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".separatestoreconnection"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 390
    if-eqz v4, :cond_29a

    const-string v9, "true"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_29a

    .line 391
    iget-object v9, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v9}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$3(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z

    move-result v9

    if-eqz v9, :cond_294

    .line 392
    iget-object v9, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    const-string v10, "DEBUG: dedicate a store connection"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 393
    :cond_294
    iget-object v9, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$9(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;Z)V

    .line 397
    :cond_29a
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "mail."

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".proxyauth.user"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 398
    if-eqz v4, :cond_2d3

    .line 399
    iput-object v4, p0, Lcom/sun/mail/imap/IMAPStore;->proxyAuthUser:Ljava/lang/String;

    .line 400
    iget-boolean v9, p0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    if-eqz v9, :cond_2d3

    .line 401
    iget-object v9, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "DEBUG: mail.imap.proxyauth.user: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 402
    iget-object v11, p0, Lcom/sun/mail/imap/IMAPStore;->proxyAuthUser:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 401
    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 406
    :cond_2d3
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "mail."

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".auth.login.disable"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 407
    if-eqz v4, :cond_306

    const-string v9, "true"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_306

    .line 408
    iget-boolean v9, p0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    if-eqz v9, :cond_303

    .line 409
    iget-object v9, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    const-string v10, "DEBUG: disable AUTH=LOGIN"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 410
    :cond_303
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/sun/mail/imap/IMAPStore;->disableAuthLogin:Z

    .line 414
    :cond_306
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "mail."

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".auth.plain.disable"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 415
    if-eqz v4, :cond_339

    const-string v9, "true"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_339

    .line 416
    iget-boolean v9, p0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    if-eqz v9, :cond_336

    .line 417
    iget-object v9, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    const-string v10, "DEBUG: disable AUTH=PLAIN"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 418
    :cond_336
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/sun/mail/imap/IMAPStore;->disableAuthPlain:Z

    .line 422
    :cond_339
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "mail."

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".starttls.enable"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 423
    if-eqz v4, :cond_36c

    const-string v9, "true"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_36c

    .line 424
    iget-boolean v9, p0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    if-eqz v9, :cond_369

    .line 425
    iget-object v9, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    const-string v10, "DEBUG: enable STARTTLS"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 426
    :cond_369
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/sun/mail/imap/IMAPStore;->enableStartTLS:Z

    .line 430
    :cond_36c
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "mail."

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".sasl.enable"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 431
    if-eqz v4, :cond_39f

    const-string v9, "true"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_39f

    .line 432
    iget-boolean v9, p0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    if-eqz v9, :cond_39c

    .line 433
    iget-object v9, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    const-string v10, "DEBUG: enable SASL"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 434
    :cond_39c
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/sun/mail/imap/IMAPStore;->enableSASL:Z

    .line 438
    :cond_39f
    iget-boolean v9, p0, Lcom/sun/mail/imap/IMAPStore;->enableSASL:Z

    if-eqz v9, :cond_3fe

    .line 439
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "mail."

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".sasl.mechanisms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 440
    if-eqz v4, :cond_3fe

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_3fe

    .line 441
    iget-boolean v9, p0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    if-eqz v9, :cond_3de

    .line 442
    iget-object v9, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "DEBUG: SASL mechanisms allowed: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 443
    :cond_3de
    new-instance v8, Ljava/util/Vector;

    const/4 v9, 0x5

    invoke-direct {v8, v9}, Ljava/util/Vector;-><init>(I)V

    .line 444
    .local v8, "v":Ljava/util/Vector;
    new-instance v7, Ljava/util/StringTokenizer;

    const-string v9, " ,"

    invoke-direct {v7, v4, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    .local v7, "st":Ljava/util/StringTokenizer;
    :cond_3eb
    :goto_3eb
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v9

    if-nez v9, :cond_516

    .line 450
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/sun/mail/imap/IMAPStore;->saslMechanisms:[Ljava/lang/String;

    .line 451
    iget-object v9, p0, Lcom/sun/mail/imap/IMAPStore;->saslMechanisms:[Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 456
    .end local v7    # "st":Ljava/util/StringTokenizer;
    .end local v8    # "v":Ljava/util/Vector;
    :cond_3fe
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "mail."

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".sasl.authorizationid"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 457
    if-eqz v4, :cond_437

    .line 458
    iput-object v4, p0, Lcom/sun/mail/imap/IMAPStore;->authorizationID:Ljava/lang/String;

    .line 459
    iget-boolean v9, p0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    if-eqz v9, :cond_437

    .line 460
    iget-object v9, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "DEBUG: mail.imap.sasl.authorizationid: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 461
    iget-object v11, p0, Lcom/sun/mail/imap/IMAPStore;->authorizationID:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 460
    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 465
    :cond_437
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "mail."

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".sasl.realm"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 466
    if-eqz v4, :cond_470

    .line 467
    iput-object v4, p0, Lcom/sun/mail/imap/IMAPStore;->saslRealm:Ljava/lang/String;

    .line 468
    iget-boolean v9, p0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    if-eqz v9, :cond_470

    .line 469
    iget-object v9, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "DEBUG: mail.imap.sasl.realm: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/sun/mail/imap/IMAPStore;->saslRealm:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 473
    :cond_470
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "mail."

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".forcepasswordrefresh"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 474
    if-eqz v4, :cond_4a3

    const-string v9, "true"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4a3

    .line 475
    iget-boolean v9, p0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    if-eqz v9, :cond_4a0

    .line 476
    iget-object v9, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    const-string v10, "DEBUG: enable forcePasswordRefresh"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 477
    :cond_4a0
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/sun/mail/imap/IMAPStore;->forcePasswordRefresh:Z

    .line 481
    :cond_4a3
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "mail."

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".enableimapevents"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 482
    if-eqz v4, :cond_4d6

    const-string v9, "true"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4d6

    .line 483
    iget-boolean v9, p0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    if-eqz v9, :cond_4d3

    .line 484
    iget-object v9, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    const-string v10, "DEBUG: enable IMAP events"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 485
    :cond_4d3
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/sun/mail/imap/IMAPStore;->enableImapEvents:Z

    .line 487
    :cond_4d6
    return-void

    .line 315
    :cond_4d7
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "mail."

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".fetchsize"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4fa

    .line 318
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/sun/mail/imap/IMAPStore;->blksize:I

    .line 319
    :cond_4fa
    iget-boolean v9, p0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    if-eqz v9, :cond_c9

    .line 320
    iget-object v9, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "DEBUG: mail.imap.fetchsize: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, p0, Lcom/sun/mail/imap/IMAPStore;->blksize:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_c9

    .line 446
    .restart local v7    # "st":Ljava/util/StringTokenizer;
    .restart local v8    # "v":Ljava/util/Vector;
    :cond_516
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 447
    .local v3, "m":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_3eb

    .line 448
    invoke-virtual {v8, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_3eb

    .line 380
    .end local v3    # "m":Ljava/lang/String;
    .end local v7    # "st":Ljava/util/StringTokenizer;
    .end local v8    # "v":Ljava/util/Vector;
    :catch_525
    move-exception v9

    goto/16 :goto_23e

    .line 366
    :catch_528
    move-exception v9

    goto/16 :goto_1f3

    .line 351
    :catch_52b
    move-exception v9

    goto/16 :goto_1a8
.end method

.method private checkConnected()V
    .registers 3

    .prologue
    .line 1490
    sget-boolean v0, Lcom/sun/mail/imap/IMAPStore;->$assertionsDisabled:Z

    if-nez v0, :cond_10

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1491
    :cond_10
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->connected:Z

    if-nez v0, :cond_20

    .line 1492
    const/4 v0, 0x0

    invoke-super {p0, v0}, Ljavax/mail/Store;->setConnected(Z)V

    .line 1493
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1495
    :cond_20
    return-void
.end method

.method private cleanup()V
    .registers 2

    .prologue
    .line 1234
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPStore;->cleanup(Z)V

    .line 1235
    return-void
.end method

.method private cleanup(Z)V
    .registers 11
    .param p1, "force"    # Z

    .prologue
    const/4 v8, 0x0

    .line 1246
    iget-boolean v5, p0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    if-eqz v5, :cond_19

    .line 1247
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "DEBUG: IMAPStore cleanup, force "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1249
    :cond_19
    const/4 v2, 0x0

    .line 1250
    .local v2, "foldersCopy":Ljava/util/Vector;
    const/4 v0, 0x1

    .line 1262
    .local v0, "done":Z
    :cond_1b
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v6

    .line 1263
    :try_start_1e
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v5}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$13(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v5

    if-eqz v5, :cond_4f

    .line 1264
    const/4 v0, 0x0

    .line 1265
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v5}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$13(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v2

    .line 1266
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$14(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;Ljava/util/Vector;)V

    .line 1262
    :goto_33
    monitor-exit v6
    :try_end_34
    .catchall {:try_start_1e .. :try_end_34} :catchall_51

    .line 1271
    if-eqz v0, :cond_54

    .line 1300
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v6

    .line 1301
    :try_start_39
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/IMAPStore;->emptyConnectionPool(Z)V

    .line 1300
    monitor-exit v6
    :try_end_3d
    .catchall {:try_start_39 .. :try_end_3d} :catchall_86

    .line 1304
    iput-boolean v8, p0, Lcom/sun/mail/imap/IMAPStore;->connected:Z

    .line 1305
    const/4 v5, 0x3

    invoke-virtual {p0, v5}, Lcom/sun/mail/imap/IMAPStore;->notifyConnectionListeners(I)V

    .line 1306
    iget-boolean v5, p0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    if-eqz v5, :cond_4e

    .line 1307
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    const-string v6, "DEBUG: IMAPStore cleanup done"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1308
    :cond_4e
    return-void

    .line 1268
    :cond_4f
    const/4 v0, 0x1

    goto :goto_33

    .line 1262
    :catchall_51
    move-exception v5

    :try_start_52
    monitor-exit v6
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    throw v5

    .line 1275
    :cond_54
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    .local v3, "fsize":I
    :goto_59
    if-ge v4, v3, :cond_1b

    .line 1276
    invoke-virtual {v2, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/mail/imap/IMAPFolder;

    .line 1279
    .local v1, "f":Lcom/sun/mail/imap/IMAPFolder;
    if-eqz p1, :cond_74

    .line 1280
    :try_start_63
    iget-boolean v5, p0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    if-eqz v5, :cond_6e

    .line 1281
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    const-string v6, "DEBUG: force folder to close"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1285
    :cond_6e
    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPFolder;->forceClose()V

    .line 1275
    :goto_71
    add-int/lit8 v4, v4, 0x1

    goto :goto_59

    .line 1287
    :cond_74
    iget-boolean v5, p0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    if-eqz v5, :cond_7f

    .line 1288
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    const-string v6, "DEBUG: close folder"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1289
    :cond_7f
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/sun/mail/imap/IMAPFolder;->close(Z)V
    :try_end_83
    .catch Ljavax/mail/MessagingException; {:try_start_63 .. :try_end_83} :catch_84
    .catch Ljava/lang/IllegalStateException; {:try_start_63 .. :try_end_83} :catch_89

    goto :goto_71

    .line 1291
    :catch_84
    move-exception v5

    goto :goto_71

    .line 1300
    .end local v1    # "f":Lcom/sun/mail/imap/IMAPFolder;
    .end local v3    # "fsize":I
    .end local v4    # "i":I
    :catchall_86
    move-exception v5

    :try_start_87
    monitor-exit v6
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_86

    throw v5

    .line 1293
    .restart local v1    # "f":Lcom/sun/mail/imap/IMAPFolder;
    .restart local v3    # "fsize":I
    .restart local v4    # "i":I
    :catch_89
    move-exception v5

    goto :goto_71
.end method

.method private emptyConnectionPool(Z)V
    .registers 6
    .param p1, "force"    # Z

    .prologue
    .line 979
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v3

    .line 980
    :try_start_3
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$10(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 981
    .local v0, "index":I
    :goto_f
    if-gez v0, :cond_2b

    .line 993
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$10(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->removeAllElements()V

    .line 979
    monitor-exit v3
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_48

    .line 996
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$3(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 997
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    const-string v3, "DEBUG: removed all authenticated connections"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 998
    :cond_2a
    return-void

    .line 984
    :cond_2b
    :try_start_2b
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$10(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/mail/imap/protocol/IMAPProtocol;

    .line 985
    .local v1, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    invoke-virtual {v1, p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->removeResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    .line 986
    if-eqz p1, :cond_42

    .line 987
    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V

    .line 981
    .end local v1    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :goto_3f
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    .line 989
    .restart local v1    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :cond_42
    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logout()V
    :try_end_45
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2b .. :try_end_45} :catch_46
    .catchall {:try_start_2b .. :try_end_45} :catchall_48

    goto :goto_3f

    .line 990
    .end local v1    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catch_46
    move-exception v2

    goto :goto_3f

    .line 979
    .end local v0    # "index":I
    :catchall_48
    move-exception v2

    :try_start_49
    monitor-exit v3
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw v2
.end method

.method private declared-synchronized getNamespaces()Lcom/sun/mail/imap/protocol/Namespaces;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1374
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->checkConnected()V

    .line 1376
    const/4 v1, 0x0

    .line 1378
    .local v1, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->namespaces:Lcom/sun/mail/imap/protocol/Namespaces;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_29

    if-nez v3, :cond_1b

    .line 1380
    :try_start_9
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPStore;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    .line 1381
    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->namespace()Lcom/sun/mail/imap/protocol/Namespaces;

    move-result-object v3

    iput-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->namespaces:Lcom/sun/mail/imap/protocol/Namespaces;
    :try_end_13
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_9 .. :try_end_13} :catch_1f
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_9 .. :try_end_13} :catch_2c
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_9 .. :try_end_13} :catch_41
    .catchall {:try_start_9 .. :try_end_13} :catchall_37

    .line 1389
    :try_start_13
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1390
    if-nez v1, :cond_1b

    .line 1392
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->cleanup()V

    .line 1396
    :cond_1b
    :goto_1b
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->namespaces:Lcom/sun/mail/imap/protocol/Namespaces;
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_29

    monitor-exit p0

    return-object v3

    .line 1382
    :catch_1f
    move-exception v3

    .line 1389
    :try_start_20
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1390
    if-nez v1, :cond_1b

    .line 1392
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->cleanup()V
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_29

    goto :goto_1b

    .line 1374
    .end local v1    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catchall_29
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1384
    .restart local v1    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catch_2c
    move-exception v0

    .line 1385
    .local v0, "cex":Lcom/sun/mail/iap/ConnectionException;
    :try_start_2d
    new-instance v3, Ljavax/mail/StoreClosedException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V

    throw v3
    :try_end_37
    .catchall {:try_start_2d .. :try_end_37} :catchall_37

    .line 1388
    .end local v0    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catchall_37
    move-exception v3

    .line 1389
    :try_start_38
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1390
    if-nez v1, :cond_40

    .line 1392
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->cleanup()V

    .line 1394
    :cond_40
    throw v3
    :try_end_41
    .catchall {:try_start_38 .. :try_end_41} :catchall_29

    .line 1386
    :catch_41
    move-exception v2

    .line 1387
    .local v2, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_42
    new-instance v3, Ljavax/mail/MessagingException;

    invoke-virtual {v2}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_37
.end method

.method private login(Lcom/sun/mail/imap/protocol/IMAPProtocol;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "p"    # Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .param p2, "u"    # Ljava/lang/String;
    .param p3, "pw"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 582
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->enableStartTLS:Z

    if-eqz v0, :cond_12

    const-string v0, "STARTTLS"

    invoke-virtual {p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 583
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->startTLS()V

    .line 585
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->capability()V

    .line 587
    :cond_12
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 636
    :cond_18
    :goto_18
    return-void

    .line 595
    :cond_19
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getCapabilities()Ljava/util/Map;

    move-result-object v0

    const-string v1, "__PRELOGIN__"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->authorizationID:Ljava/lang/String;

    if-eqz v0, :cond_55

    .line 598
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->authorizationID:Ljava/lang/String;

    .line 604
    .local v3, "authzid":Ljava/lang/String;
    :goto_2a
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->enableSASL:Z

    if-eqz v0, :cond_38

    .line 605
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->saslMechanisms:[Ljava/lang/String;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->saslRealm:Ljava/lang/String;

    move-object v0, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->sasllogin([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    :cond_38
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 619
    :goto_3e
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->proxyAuthUser:Ljava/lang/String;

    if-eqz v0, :cond_47

    .line 620
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->proxyAuthUser:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->proxyauth(Ljava/lang/String;)V

    .line 626
    :cond_47
    const-string v0, "__PRELOGIN__"

    invoke-virtual {p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 628
    :try_start_4f
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->capability()V
    :try_end_52
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_4f .. :try_end_52} :catch_53
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4f .. :try_end_52} :catch_9a

    goto :goto_18

    .line 629
    :catch_53
    move-exception v6

    .line 630
    .local v6, "cex":Lcom/sun/mail/iap/ConnectionException;
    throw v6

    .line 599
    .end local v3    # "authzid":Ljava/lang/String;
    .end local v6    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :cond_55
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->proxyAuthUser:Ljava/lang/String;

    if-eqz v0, :cond_5c

    .line 600
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->proxyAuthUser:Ljava/lang/String;

    .restart local v3    # "authzid":Ljava/lang/String;
    goto :goto_2a

    .line 602
    .end local v3    # "authzid":Ljava/lang/String;
    :cond_5c
    move-object v3, p2

    .restart local v3    # "authzid":Ljava/lang/String;
    goto :goto_2a

    .line 609
    :cond_5e
    const-string v0, "AUTH=PLAIN"

    invoke-virtual {p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6e

    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->disableAuthPlain:Z

    if-nez v0, :cond_6e

    .line 610
    invoke-virtual {p1, v3, p2, p3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authplain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e

    .line 611
    :cond_6e
    const-string v0, "AUTH-LOGIN"

    invoke-virtual {p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7e

    .line 612
    const-string v0, "AUTH=LOGIN"

    invoke-virtual {p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_86

    :cond_7e
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->disableAuthLogin:Z

    if-nez v0, :cond_86

    .line 613
    invoke-virtual {p1, p2, p3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authlogin(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e

    .line 614
    :cond_86
    const-string v0, "LOGINDISABLED"

    invoke-virtual {p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_92

    .line 615
    invoke-virtual {p1, p2, p3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->login(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e

    .line 617
    :cond_92
    new-instance v0, Lcom/sun/mail/iap/ProtocolException;

    const-string v1, "No login methods supported!"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 632
    :catch_9a
    move-exception v0

    goto/16 :goto_18
.end method

.method private namespaceToFolders([Lcom/sun/mail/imap/protocol/Namespaces$Namespace;Ljava/lang/String;)[Ljavax/mail/Folder;
    .registers 11
    .param p1, "ns"    # [Lcom/sun/mail/imap/protocol/Namespaces$Namespace;
    .param p2, "user"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1401
    array-length v4, p1

    new-array v0, v4, [Ljavax/mail/Folder;

    .line 1402
    .local v0, "fa":[Ljavax/mail/Folder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    array-length v4, v0

    if-lt v1, v4, :cond_9

    .line 1415
    return-object v0

    .line 1403
    :cond_9
    aget-object v4, p1, v1

    iget-object v3, v4, Lcom/sun/mail/imap/protocol/Namespaces$Namespace;->prefix:Ljava/lang/String;

    .line 1404
    .local v3, "name":Ljava/lang/String;
    if-nez p2, :cond_38

    .line 1406
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 1407
    .local v2, "len":I
    if-lez v2, :cond_27

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aget-object v6, p1, v1

    iget-char v6, v6, Lcom/sun/mail/imap/protocol/Namespaces$Namespace;->delimiter:C

    if-ne v4, v6, :cond_27

    .line 1408
    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1413
    .end local v2    # "len":I
    :cond_27
    :goto_27
    new-instance v6, Lcom/sun/mail/imap/IMAPFolder;

    aget-object v4, p1, v1

    iget-char v7, v4, Lcom/sun/mail/imap/protocol/Namespaces$Namespace;->delimiter:C

    if-nez p2, :cond_4a

    const/4 v4, 0x1

    :goto_30
    invoke-direct {v6, v3, v7, p0, v4}, Lcom/sun/mail/imap/IMAPFolder;-><init>(Ljava/lang/String;CLcom/sun/mail/imap/IMAPStore;Z)V

    aput-object v6, v0, v1

    .line 1402
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1411
    :cond_38
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_27

    :cond_4a
    move v4, v5

    .line 1413
    goto :goto_30
.end method

.method private timeoutConnections()V
    .registers 11

    .prologue
    .line 1005
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v3

    .line 1009
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$16(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 1010
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$17(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-lez v2, :cond_7d

    .line 1011
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$10(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_7d

    .line 1013
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$3(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z

    move-result v2

    if-eqz v2, :cond_66

    .line 1014
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DEBUG: checking for connections to prune: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1016
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v5, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v5}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$16(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1014
    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1017
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DEBUG: clientTimeoutInterval: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1018
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v5}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$6(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1017
    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1026
    :cond_66
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$10(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 1027
    .local v0, "index":I
    :goto_72
    if-gtz v0, :cond_7f

    .line 1052
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$0(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;J)V

    .line 1005
    .end local v0    # "index":I
    :cond_7d
    monitor-exit v3

    .line 1055
    return-void

    .line 1028
    .restart local v0    # "index":I
    :cond_7f
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$10(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v2

    .line 1029
    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/mail/imap/protocol/IMAPProtocol;

    .line 1030
    .local v1, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$3(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z

    move-result v2

    if-eqz v2, :cond_b0

    .line 1031
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DEBUG: protocol last used: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1032
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getTimestamp()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1031
    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1034
    :cond_b0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getTimestamp()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 1035
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$6(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-lez v2, :cond_e8

    .line 1037
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$3(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z

    move-result v2

    if-eqz v2, :cond_d9

    .line 1038
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    const-string v4, "DEBUG: authenticated connection timed out"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1040
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    const-string v4, "DEBUG: logging out the connection"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1044
    :cond_d9
    invoke-virtual {v1, p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->removeResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    .line 1045
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$10(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/Vector;->removeElementAt(I)V
    :try_end_e5
    .catchall {:try_start_3 .. :try_end_e5} :catchall_eb

    .line 1048
    :try_start_e5
    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logout()V
    :try_end_e8
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_e5 .. :try_end_e8} :catch_ee
    .catchall {:try_start_e5 .. :try_end_e8} :catchall_eb

    .line 1027
    :cond_e8
    :goto_e8
    add-int/lit8 v0, v0, -0x1

    goto :goto_72

    .line 1005
    .end local v0    # "index":I
    .end local v1    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catchall_eb
    move-exception v2

    :try_start_ec
    monitor-exit v3
    :try_end_ed
    .catchall {:try_start_ec .. :try_end_ed} :catchall_eb

    throw v2

    .line 1049
    .restart local v0    # "index":I
    .restart local v1    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catch_ee
    move-exception v2

    goto :goto_e8
.end method

.method private waitIfIdle()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1640
    sget-boolean v0, Lcom/sun/mail/imap/IMAPStore;->$assertionsDisabled:Z

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1642
    :cond_12
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$19(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2a

    .line 1643
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$21(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->idleAbort()V

    .line 1644
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$20(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;I)V

    .line 1648
    :cond_2a
    :try_start_2a
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2f
    .catch Ljava/lang/InterruptedException; {:try_start_2a .. :try_end_2f} :catch_38

    .line 1641
    :cond_2f
    :goto_2f
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$19(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)I

    move-result v0

    if-nez v0, :cond_12

    .line 1651
    return-void

    .line 1649
    :catch_38
    move-exception v0

    goto :goto_2f
.end method


# virtual methods
.method allowReadOnlySelect()Z
    .registers 5

    .prologue
    .line 887
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->session:Ljavax/mail/Session;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mail."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 888
    const-string v3, ".allowreadonlyselect"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 887
    invoke-virtual {v1, v2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 889
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_29

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    const/4 v1, 0x1

    :goto_28
    return v1

    :cond_29
    const/4 v1, 0x0

    goto :goto_28
.end method

.method public declared-synchronized close()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1165
    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Ljavax/mail/Store;->isConnected()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_30

    move-result v3

    if-nez v3, :cond_9

    .line 1225
    :goto_7
    monitor-exit p0

    return-void

    .line 1168
    :cond_9
    const/4 v2, 0x0

    .line 1171
    .local v2, "protocol":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :try_start_a
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v4
    :try_end_d
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_a .. :try_end_d} :catch_36
    .catchall {:try_start_a .. :try_end_d} :catchall_44

    .line 1174
    :try_start_d
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$10(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    .line 1171
    .local v0, "isEmpty":Z
    monitor-exit v4
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_33

    .line 1185
    if-eqz v0, :cond_49

    .line 1186
    :try_start_1a
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$3(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 1187
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    const-string v4, "DEBUG: close() - no connections "

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1188
    :cond_29
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->cleanup()V
    :try_end_2c
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1a .. :try_end_2c} :catch_36
    .catchall {:try_start_1a .. :try_end_2c} :catchall_44

    .line 1223
    :try_start_2c
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_30

    goto :goto_7

    .line 1165
    .end local v0    # "isEmpty":Z
    .end local v2    # "protocol":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catchall_30
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1171
    .restart local v2    # "protocol":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catchall_33
    move-exception v3

    :try_start_34
    monitor-exit v4
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    :try_start_35
    throw v3
    :try_end_36
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_35 .. :try_end_36} :catch_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_44

    .line 1218
    :catch_36
    move-exception v1

    .line 1220
    .local v1, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_37
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->cleanup()V

    .line 1221
    new-instance v3, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
    :try_end_44
    .catchall {:try_start_37 .. :try_end_44} :catchall_44

    .line 1222
    .end local v1    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catchall_44
    move-exception v3

    .line 1223
    :try_start_45
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1224
    throw v3
    :try_end_49
    .catchall {:try_start_45 .. :try_end_49} :catchall_30

    .line 1192
    .restart local v0    # "isEmpty":Z
    :cond_49
    :try_start_49
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPStore;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v2

    .line 1199
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v4
    :try_end_50
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_49 .. :try_end_50} :catch_36
    .catchall {:try_start_49 .. :try_end_50} :catchall_44

    .line 1200
    :try_start_50
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$10(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 1199
    monitor-exit v4
    :try_end_5a
    .catchall {:try_start_50 .. :try_end_5a} :catchall_61

    .line 1217
    :try_start_5a
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logout()V
    :try_end_5d
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_5a .. :try_end_5d} :catch_36
    .catchall {:try_start_5a .. :try_end_5d} :catchall_44

    .line 1223
    :try_start_5d
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_30

    goto :goto_7

    .line 1199
    :catchall_61
    move-exception v3

    :try_start_62
    monitor-exit v4
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    :try_start_63
    throw v3
    :try_end_64
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_63 .. :try_end_64} :catch_36
    .catchall {:try_start_63 .. :try_end_64} :catchall_44
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1228
    invoke-super {p0}, Ljavax/mail/Store;->finalize()V

    .line 1229
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPStore;->close()V

    .line 1230
    return-void
.end method

.method getAppendBufferSize()I
    .registers 2

    .prologue
    .line 1082
    iget v0, p0, Lcom/sun/mail/imap/IMAPStore;->appendBufferSize:I

    return v0
.end method

.method getConnectionPoolDebug()Z
    .registers 2

    .prologue
    .line 903
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$3(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized getDefaultFolder()Ljavax/mail/Folder;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1315
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->checkConnected()V

    .line 1316
    new-instance v0, Lcom/sun/mail/imap/DefaultFolder;

    invoke-direct {v0, p0}, Lcom/sun/mail/imap/DefaultFolder;-><init>(Lcom/sun/mail/imap/IMAPStore;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    .line 1315
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getFetchBlockSize()I
    .registers 2

    .prologue
    .line 1061
    iget v0, p0, Lcom/sun/mail/imap/IMAPStore;->blksize:I

    return v0
.end method

.method public declared-synchronized getFolder(Ljava/lang/String;)Ljavax/mail/Folder;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1324
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->checkConnected()V

    .line 1325
    new-instance v0, Lcom/sun/mail/imap/IMAPFolder;

    const v1, 0xffff

    invoke-direct {v0, p1, v1, p0}, Lcom/sun/mail/imap/IMAPFolder;-><init>(Ljava/lang/String;CLcom/sun/mail/imap/IMAPStore;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-object v0

    .line 1324
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFolder(Ljavax/mail/URLName;)Ljavax/mail/Folder;
    .registers 5
    .param p1, "url"    # Ljavax/mail/URLName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1333
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->checkConnected()V

    .line 1334
    new-instance v0, Lcom/sun/mail/imap/IMAPFolder;

    invoke-virtual {p1}, Ljavax/mail/URLName;->getFile()Ljava/lang/String;

    move-result-object v1

    .line 1335
    const v2, 0xffff

    .line 1334
    invoke-direct {v0, v1, v2, p0}, Lcom/sun/mail/imap/IMAPFolder;-><init>(Ljava/lang/String;CLcom/sun/mail/imap/IMAPStore;)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-object v0

    .line 1333
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getMinIdleTime()I
    .registers 2

    .prologue
    .line 1089
    iget v0, p0, Lcom/sun/mail/imap/IMAPStore;->minIdleTime:I

    return v0
.end method

.method public getPersonalNamespaces()[Ljavax/mail/Folder;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1344
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->getNamespaces()Lcom/sun/mail/imap/protocol/Namespaces;

    move-result-object v0

    .line 1345
    .local v0, "ns":Lcom/sun/mail/imap/protocol/Namespaces;
    if-eqz v0, :cond_a

    iget-object v1, v0, Lcom/sun/mail/imap/protocol/Namespaces;->personal:[Lcom/sun/mail/imap/protocol/Namespaces$Namespace;

    if-nez v1, :cond_f

    .line 1346
    :cond_a
    invoke-super {p0}, Ljavax/mail/Store;->getPersonalNamespaces()[Ljavax/mail/Folder;

    move-result-object v1

    .line 1347
    :goto_e
    return-object v1

    :cond_f
    iget-object v1, v0, Lcom/sun/mail/imap/protocol/Namespaces;->personal:[Lcom/sun/mail/imap/protocol/Namespaces$Namespace;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sun/mail/imap/IMAPStore;->namespaceToFolders([Lcom/sun/mail/imap/protocol/Namespaces$Namespace;Ljava/lang/String;)[Ljavax/mail/Folder;

    move-result-object v1

    goto :goto_e
.end method

.method getProtocol(Lcom/sun/mail/imap/IMAPFolder;)Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .registers 22
    .param p1, "folder"    # Lcom/sun/mail/imap/IMAPFolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 678
    const/4 v4, 0x0

    .local v4, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    move-object/from16 v16, v4

    .line 681
    .end local v4    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .local v16, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :goto_3
    if-eqz v16, :cond_6

    .line 788
    return-object v16

    .line 689
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 693
    :try_start_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$10(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3e

    .line 694
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$10(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_d6

    .line 695
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$11(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z

    move-result v2

    if-nez v2, :cond_3e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$12(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z

    move-result v2

    if-eqz v2, :cond_d6

    .line 697
    :cond_3e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    if-eqz v2, :cond_4d

    .line 698
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    const-string v5, "DEBUG: no connections in the pool, creating a new one"

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_4d
    .catchall {:try_start_d .. :try_end_4d} :catchall_174

    .line 709
    :cond_4d
    :try_start_4d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sun/mail/imap/IMAPStore;->forcePasswordRefresh:Z
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_51} :catch_cc
    .catchall {:try_start_4d .. :try_end_51} :catchall_174

    if-eqz v2, :cond_82

    .line 712
    :try_start_53
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/mail/imap/IMAPStore;->host:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_5a
    .catch Ljava/net/UnknownHostException; {:try_start_53 .. :try_end_5a} :catch_c9
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_5a} :catch_cc
    .catchall {:try_start_53 .. :try_end_5a} :catchall_174

    move-result-object v3

    .line 717
    .local v3, "addr":Ljava/net/InetAddress;
    :goto_5b
    :try_start_5b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/mail/imap/IMAPStore;->session:Ljavax/mail/Session;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sun/mail/imap/IMAPStore;->port:I

    .line 718
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sun/mail/imap/IMAPStore;->name:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sun/mail/imap/IMAPStore;->user:Ljava/lang/String;

    .line 717
    invoke-virtual/range {v2 .. v7}, Ljavax/mail/Session;->requestPasswordAuthentication(Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/mail/PasswordAuthentication;

    move-result-object v17

    .line 719
    .local v17, "pa":Ljavax/mail/PasswordAuthentication;
    if-eqz v17, :cond_82

    .line 720
    invoke-virtual/range {v17 .. v17}, Ljavax/mail/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sun/mail/imap/IMAPStore;->user:Ljava/lang/String;

    .line 721
    invoke-virtual/range {v17 .. v17}, Ljavax/mail/PasswordAuthentication;->getPassword()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sun/mail/imap/IMAPStore;->password:Ljava/lang/String;

    .line 725
    .end local v3    # "addr":Ljava/net/InetAddress;
    .end local v17    # "pa":Ljavax/mail/PasswordAuthentication;
    :cond_82
    new-instance v4, Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sun/mail/imap/IMAPStore;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sun/mail/imap/IMAPStore;->host:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sun/mail/imap/IMAPStore;->port:I

    .line 726
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/mail/imap/IMAPStore;->session:Ljavax/mail/Session;

    invoke-virtual {v2}, Ljavax/mail/Session;->getDebug()Z

    move-result v8

    .line 727
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/mail/imap/IMAPStore;->session:Ljavax/mail/Session;

    invoke-virtual {v2}, Ljavax/mail/Session;->getDebugOut()Ljava/io/PrintStream;

    move-result-object v9

    .line 728
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/mail/imap/IMAPStore;->session:Ljavax/mail/Session;

    invoke-virtual {v2}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v10

    .line 729
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sun/mail/imap/IMAPStore;->isSSL:Z

    .line 725
    invoke-direct/range {v4 .. v11}, Lcom/sun/mail/imap/protocol/IMAPProtocol;-><init>(Ljava/lang/String;Ljava/lang/String;IZLjava/io/PrintStream;Ljava/util/Properties;Z)V
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_af} :catch_cc
    .catchall {:try_start_5b .. :try_end_af} :catchall_174

    .line 732
    .end local v16    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v4    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :try_start_af
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/mail/imap/IMAPStore;->user:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sun/mail/imap/IMAPStore;->password:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2, v5}, Lcom/sun/mail/imap/IMAPStore;->login(Lcom/sun/mail/imap/protocol/IMAPProtocol;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_bc} :catch_17b
    .catchall {:try_start_af .. :try_end_bc} :catchall_c6

    .line 741
    :goto_bc
    if-nez v4, :cond_135

    .line 742
    :try_start_be
    new-instance v2, Ljavax/mail/MessagingException;

    const-string v5, "connection failure"

    invoke-direct {v2, v5}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 689
    :catchall_c6
    move-exception v2

    :goto_c7
    monitor-exit v19
    :try_end_c8
    .catchall {:try_start_be .. :try_end_c8} :catchall_c6

    throw v2

    .line 713
    .end local v4    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v16    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catch_c9
    move-exception v12

    .line 714
    .local v12, "e":Ljava/net/UnknownHostException;
    const/4 v3, 0x0

    .restart local v3    # "addr":Ljava/net/InetAddress;
    goto :goto_5b

    .line 733
    .end local v3    # "addr":Ljava/net/InetAddress;
    .end local v12    # "e":Ljava/net/UnknownHostException;
    :catch_cc
    move-exception v13

    move-object/from16 v4, v16

    .line 734
    .end local v16    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v4    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .local v13, "ex1":Ljava/lang/Exception;
    :goto_cf
    if-eqz v4, :cond_d4

    .line 736
    :try_start_d1
    invoke-virtual {v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_d4} :catch_171
    .catchall {:try_start_d1 .. :try_end_d4} :catchall_c6

    .line 738
    :cond_d4
    :goto_d4
    const/4 v4, 0x0

    goto :goto_bc

    .line 744
    .end local v4    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v13    # "ex1":Ljava/lang/Exception;
    .restart local v16    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :cond_d6
    :try_start_d6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    if-eqz v2, :cond_fe

    .line 745
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DEBUG: connection available -- size: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 746
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v6}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$10(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 745
    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 749
    :cond_fe
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$10(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :try_end_10c
    .catchall {:try_start_d6 .. :try_end_10c} :catchall_174

    .line 750
    .end local v16    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v4    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :try_start_10c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$10(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 753
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getTimestamp()J

    move-result-wide v8

    sub-long v14, v6, v8

    .line 754
    .local v14, "lastUsed":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$8(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)J
    :try_end_128
    .catchall {:try_start_10c .. :try_end_128} :catchall_c6

    move-result-wide v6

    cmp-long v2, v14, v6

    if-lez v2, :cond_130

    .line 758
    :try_start_12d
    invoke-virtual {v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noop()V
    :try_end_130
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_12d .. :try_end_130} :catch_162
    .catchall {:try_start_12d .. :try_end_130} :catchall_c6

    .line 772
    :cond_130
    :try_start_130
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->removeResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    .line 776
    .end local v14    # "lastUsed":J
    :cond_135
    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/imap/IMAPStore;->timeoutConnections()V

    .line 779
    if-eqz p1, :cond_15d

    .line 780
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$13(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v2

    if-nez v2, :cond_150

    .line 781
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    invoke-static {v2, v5}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$14(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;Ljava/util/Vector;)V

    .line 782
    :cond_150
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$13(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 689
    :cond_15d
    monitor-exit v19
    :try_end_15e
    .catchall {:try_start_130 .. :try_end_15e} :catchall_c6

    move-object/from16 v16, v4

    .end local v4    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v16    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    goto/16 :goto_3

    .line 759
    .end local v16    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v4    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v14    # "lastUsed":J
    :catch_162
    move-exception v18

    .line 761
    .local v18, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_163
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->removeResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    .line 762
    invoke-virtual {v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V
    :try_end_16b
    .catchall {:try_start_163 .. :try_end_16b} :catchall_179

    .line 765
    :goto_16b
    const/4 v4, 0x0

    .line 766
    :try_start_16c
    monitor-exit v19
    :try_end_16d
    .catchall {:try_start_16c .. :try_end_16d} :catchall_c6

    move-object/from16 v16, v4

    .end local v4    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v16    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    goto/16 :goto_3

    .line 737
    .end local v14    # "lastUsed":J
    .end local v16    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v18    # "pex":Lcom/sun/mail/iap/ProtocolException;
    .restart local v4    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v13    # "ex1":Ljava/lang/Exception;
    :catch_171
    move-exception v2

    goto/16 :goto_d4

    .line 689
    .end local v4    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v13    # "ex1":Ljava/lang/Exception;
    .restart local v16    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catchall_174
    move-exception v2

    move-object/from16 v4, v16

    .end local v16    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v4    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    goto/16 :goto_c7

    .restart local v14    # "lastUsed":J
    .restart local v18    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catchall_179
    move-exception v2

    goto :goto_16b

    .line 733
    .end local v14    # "lastUsed":J
    .end local v18    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catch_17b
    move-exception v13

    goto/16 :goto_cf
.end method

.method public declared-synchronized getQuota(Ljava/lang/String;)[Ljavax/mail/Quota;
    .registers 9
    .param p1, "root"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1436
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->checkConnected()V

    .line 1437
    const/4 v4, 0x0

    check-cast v4, [Ljavax/mail/Quota;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_2d

    .line 1439
    .local v4, "qa":[Ljavax/mail/Quota;
    const/4 v2, 0x0

    .line 1441
    .local v2, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :try_start_8
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPStore;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v2

    .line 1442
    invoke-virtual {v2, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getQuotaRoot(Ljava/lang/String;)[Ljavax/mail/Quota;
    :try_end_f
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_8 .. :try_end_f} :catch_1a
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_8 .. :try_end_f} :catch_30
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_8 .. :try_end_f} :catch_3b
    .catchall {:try_start_8 .. :try_end_f} :catchall_23

    move-result-object v4

    .line 1450
    :try_start_10
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1451
    if-nez v2, :cond_18

    .line 1453
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->cleanup()V
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_2d

    .line 1456
    :cond_18
    monitor-exit p0

    return-object v4

    .line 1443
    :catch_1a
    move-exception v0

    .line 1444
    .local v0, "bex":Lcom/sun/mail/iap/BadCommandException;
    :try_start_1b
    new-instance v5, Ljavax/mail/MessagingException;

    const-string v6, "QUOTA not supported"

    invoke-direct {v5, v6, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5
    :try_end_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_23

    .line 1449
    .end local v0    # "bex":Lcom/sun/mail/iap/BadCommandException;
    :catchall_23
    move-exception v5

    .line 1450
    :try_start_24
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1451
    if-nez v2, :cond_2c

    .line 1453
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->cleanup()V

    .line 1455
    :cond_2c
    throw v5
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_2d

    .line 1436
    .end local v2    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v4    # "qa":[Ljavax/mail/Quota;
    :catchall_2d
    move-exception v5

    monitor-exit p0

    throw v5

    .line 1445
    .restart local v2    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v4    # "qa":[Ljavax/mail/Quota;
    :catch_30
    move-exception v1

    .line 1446
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    :try_start_31
    new-instance v5, Ljavax/mail/StoreClosedException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V

    throw v5

    .line 1447
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catch_3b
    move-exception v3

    .line 1448
    .local v3, "pex":Lcom/sun/mail/iap/ProtocolException;
    new-instance v5, Ljavax/mail/MessagingException;

    invoke-virtual {v3}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5
    :try_end_46
    .catchall {:try_start_31 .. :try_end_46} :catchall_23
.end method

.method getSession()Ljavax/mail/Session;
    .registers 2

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->session:Ljavax/mail/Session;

    return-object v0
.end method

.method public getSharedNamespaces()[Ljavax/mail/Folder;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1367
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->getNamespaces()Lcom/sun/mail/imap/protocol/Namespaces;

    move-result-object v0

    .line 1368
    .local v0, "ns":Lcom/sun/mail/imap/protocol/Namespaces;
    if-eqz v0, :cond_a

    iget-object v1, v0, Lcom/sun/mail/imap/protocol/Namespaces;->shared:[Lcom/sun/mail/imap/protocol/Namespaces$Namespace;

    if-nez v1, :cond_f

    .line 1369
    :cond_a
    invoke-super {p0}, Ljavax/mail/Store;->getSharedNamespaces()[Ljavax/mail/Folder;

    move-result-object v1

    .line 1370
    :goto_e
    return-object v1

    :cond_f
    iget-object v1, v0, Lcom/sun/mail/imap/protocol/Namespaces;->shared:[Lcom/sun/mail/imap/protocol/Namespaces$Namespace;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sun/mail/imap/IMAPStore;->namespaceToFolders([Lcom/sun/mail/imap/protocol/Namespaces$Namespace;Ljava/lang/String;)[Ljavax/mail/Folder;

    move-result-object v1

    goto :goto_e
.end method

.method getStatusCacheTimeout()I
    .registers 2

    .prologue
    .line 1075
    iget v0, p0, Lcom/sun/mail/imap/IMAPStore;->statusCacheTimeout:I

    return v0
.end method

.method getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 814
    const/4 v0, 0x0

    .local v0, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    move-object v9, v0

    .line 816
    .end local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .local v9, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :goto_2
    if-eqz v9, :cond_5

    .line 878
    return-object v9

    .line 817
    :cond_5
    iget-object v10, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v10

    .line 818
    :try_start_8
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->waitIfIdle()V

    .line 822
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v1}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$10(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_82

    .line 823
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v1}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$3(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 824
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    const-string v2, "DEBUG: getStoreProtocol() - no connections in the pool, creating a new one"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_cd

    .line 828
    :cond_26
    :try_start_26
    new-instance v0, Lcom/sun/mail/imap/protocol/IMAPProtocol;

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->host:Ljava/lang/String;

    iget v3, p0, Lcom/sun/mail/imap/IMAPStore;->port:I

    .line 829
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPStore;->session:Ljavax/mail/Session;

    invoke-virtual {v4}, Ljavax/mail/Session;->getDebug()Z

    move-result v4

    .line 830
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPStore;->session:Ljavax/mail/Session;

    invoke-virtual {v5}, Ljavax/mail/Session;->getDebugOut()Ljava/io/PrintStream;

    move-result-object v5

    .line 831
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPStore;->session:Ljavax/mail/Session;

    invoke-virtual {v6}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v6

    .line 832
    iget-boolean v7, p0, Lcom/sun/mail/imap/IMAPStore;->isSSL:Z

    .line 828
    invoke-direct/range {v0 .. v7}, Lcom/sun/mail/imap/protocol/IMAPProtocol;-><init>(Ljava/lang/String;Ljava/lang/String;IZLjava/io/PrintStream;Ljava/util/Properties;Z)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_45} :catch_59
    .catchall {:try_start_26 .. :try_end_45} :catchall_cd

    .line 835
    .end local v9    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :try_start_45
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->user:Ljava/lang/String;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->password:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/sun/mail/imap/IMAPStore;->login(Lcom/sun/mail/imap/protocol/IMAPProtocol;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_4c} :catch_d2
    .catchall {:try_start_45 .. :try_end_4c} :catchall_56

    .line 844
    :goto_4c
    if-nez v0, :cond_62

    .line 845
    :try_start_4e
    new-instance v1, Lcom/sun/mail/iap/ConnectionException;

    .line 846
    const-string v2, "failed to create new store connection"

    .line 845
    invoke-direct {v1, v2}, Lcom/sun/mail/iap/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 817
    :catchall_56
    move-exception v1

    :goto_57
    monitor-exit v10
    :try_end_58
    .catchall {:try_start_4e .. :try_end_58} :catchall_56

    throw v1

    .line 836
    .end local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v9    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catch_59
    move-exception v8

    move-object v0, v9

    .line 837
    .end local v9    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .local v8, "ex1":Ljava/lang/Exception;
    :goto_5b
    if-eqz v0, :cond_60

    .line 839
    :try_start_5d
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logout()V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_60} :catch_cb
    .catchall {:try_start_5d .. :try_end_60} :catchall_56

    .line 841
    :cond_60
    :goto_60
    const/4 v0, 0x0

    goto :goto_4c

    .line 848
    .end local v8    # "ex1":Ljava/lang/Exception;
    :cond_62
    :try_start_62
    invoke-virtual {v0, p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->addResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    .line 849
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v1}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$10(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 860
    :goto_6e
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v1}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$12(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z
    :try_end_73
    .catchall {:try_start_62 .. :try_end_73} :catchall_56

    move-result v1

    if-eqz v1, :cond_b5

    .line 864
    const/4 v0, 0x0

    .line 865
    :try_start_77
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_7c
    .catch Ljava/lang/InterruptedException; {:try_start_77 .. :try_end_7c} :catch_d0
    .catchall {:try_start_77 .. :try_end_7c} :catchall_56

    .line 875
    :cond_7c
    :goto_7c
    :try_start_7c
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->timeoutConnections()V

    .line 817
    monitor-exit v10
    :try_end_80
    .catchall {:try_start_7c .. :try_end_80} :catchall_56

    move-object v9, v0

    .end local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v9    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    goto :goto_2

    .line 853
    :cond_82
    :try_start_82
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v1}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$3(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z

    move-result v1

    if-eqz v1, :cond_a8

    .line 854
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DEBUG: getStoreProtocol() - connection available -- size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 856
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$10(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 854
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 857
    :cond_a8
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v1}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$10(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :try_end_b4
    .catchall {:try_start_82 .. :try_end_b4} :catchall_cd

    .end local v9    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    goto :goto_6e

    .line 868
    :cond_b5
    :try_start_b5
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$15(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;Z)V

    .line 870
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v1}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$3(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 871
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    const-string v2, "DEBUG: getStoreProtocol() -- storeConnectionInUse"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_ca
    .catchall {:try_start_b5 .. :try_end_ca} :catchall_56

    goto :goto_7c

    .line 840
    .restart local v8    # "ex1":Ljava/lang/Exception;
    :catch_cb
    move-exception v1

    goto :goto_60

    .line 817
    .end local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v8    # "ex1":Ljava/lang/Exception;
    .restart local v9    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catchall_cd
    move-exception v1

    move-object v0, v9

    .end local v9    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    goto :goto_57

    .line 866
    :catch_d0
    move-exception v1

    goto :goto_7c

    .line 836
    :catch_d2
    move-exception v8

    goto :goto_5b
.end method

.method public getUserNamespaces(Ljava/lang/String;)[Ljavax/mail/Folder;
    .registers 4
    .param p1, "user"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1356
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->getNamespaces()Lcom/sun/mail/imap/protocol/Namespaces;

    move-result-object v0

    .line 1357
    .local v0, "ns":Lcom/sun/mail/imap/protocol/Namespaces;
    if-eqz v0, :cond_a

    iget-object v1, v0, Lcom/sun/mail/imap/protocol/Namespaces;->otherUsers:[Lcom/sun/mail/imap/protocol/Namespaces$Namespace;

    if-nez v1, :cond_f

    .line 1358
    :cond_a
    invoke-super {p0, p1}, Ljavax/mail/Store;->getUserNamespaces(Ljava/lang/String;)[Ljavax/mail/Folder;

    move-result-object v1

    .line 1359
    :goto_e
    return-object v1

    :cond_f
    iget-object v1, v0, Lcom/sun/mail/imap/protocol/Namespaces;->otherUsers:[Lcom/sun/mail/imap/protocol/Namespaces$Namespace;

    invoke-direct {p0, v1, p1}, Lcom/sun/mail/imap/IMAPStore;->namespaceToFolders([Lcom/sun/mail/imap/protocol/Namespaces$Namespace;Ljava/lang/String;)[Ljavax/mail/Folder;

    move-result-object v1

    goto :goto_e
.end method

.method public handleResponse(Lcom/sun/mail/iap/Response;)V
    .registers 4
    .param p1, "r"    # Lcom/sun/mail/iap/Response;

    .prologue
    .line 1502
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isNO()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isBAD()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isBYE()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1503
    :cond_18
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPStore;->handleResponseCode(Lcom/sun/mail/iap/Response;)V

    .line 1504
    :cond_1b
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isBYE()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 1505
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    if-eqz v0, :cond_2c

    .line 1506
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    const-string v1, "DEBUG: IMAPStore connection dead"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1508
    :cond_2c
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->connected:Z

    if-eqz v0, :cond_37

    .line 1509
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isSynthetic()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPStore;->cleanup(Z)V

    .line 1512
    :cond_37
    return-void
.end method

.method handleResponseCode(Lcom/sun/mail/iap/Response;)V
    .registers 7
    .param p1, "r"    # Lcom/sun/mail/iap/Response;

    .prologue
    .line 1658
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->getRest()Ljava/lang/String;

    move-result-object v2

    .line 1659
    .local v2, "s":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1660
    .local v1, "isAlert":Z
    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 1661
    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1663
    .local v0, "i":I
    if-lez v0, :cond_25

    const/4 v3, 0x0

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "[ALERT]"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 1664
    const/4 v1, 0x1

    .line 1666
    :cond_25
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1668
    .end local v0    # "i":I
    :cond_2f
    if-eqz v1, :cond_36

    .line 1669
    const/4 v3, 0x1

    invoke-virtual {p0, v3, v2}, Lcom/sun/mail/imap/IMAPStore;->notifyStoreListeners(ILjava/lang/String;)V

    .line 1675
    :cond_35
    :goto_35
    return-void

    .line 1670
    :cond_36
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isUnTagged()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_35

    .line 1674
    const/4 v3, 0x2

    invoke-virtual {p0, v3, v2}, Lcom/sun/mail/imap/IMAPStore;->notifyStoreListeners(ILjava/lang/String;)V

    goto :goto_35
.end method

.method public declared-synchronized hasCapability(Ljava/lang/String;)Z
    .registers 6
    .param p1, "capability"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1100
    monitor-enter p0

    const/4 v0, 0x0

    .line 1102
    .local v0, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :try_start_2
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPStore;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v0

    .line 1103
    invoke-virtual {v0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z
    :try_end_9
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_9} :catch_f
    .catchall {:try_start_2 .. :try_end_9} :catchall_1f

    move-result v2

    .line 1111
    :try_start_a
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_24

    .line 1103
    monitor-exit p0

    return v2

    .line 1104
    :catch_f
    move-exception v1

    .line 1105
    .local v1, "pex":Lcom/sun/mail/iap/ProtocolException;
    if-nez v0, :cond_15

    .line 1107
    :try_start_12
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->cleanup()V

    .line 1109
    :cond_15
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_1f

    .line 1110
    .end local v1    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catchall_1f
    move-exception v2

    .line 1111
    :try_start_20
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1112
    throw v2
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_24

    .line 1100
    :catchall_24
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method hasSeparateStoreConnection()Z
    .registers 2

    .prologue
    .line 896
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$11(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z

    move-result v0

    return v0
.end method

.method public idle()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1551
    const/4 v3, 0x0

    .line 1554
    .local v3, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    sget-boolean v6, Lcom/sun/mail/imap/IMAPStore;->$assertionsDisabled:Z

    if-nez v6, :cond_13

    iget-object v6, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v6}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 1555
    :cond_13
    monitor-enter p0

    .line 1556
    :try_start_14
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->checkConnected()V

    .line 1555
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_6e

    .line 1559
    :try_start_18
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v7
    :try_end_1b
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_18 .. :try_end_1b} :catch_90
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_18 .. :try_end_1b} :catch_c3
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_18 .. :try_end_1b} :catch_d1
    .catchall {:try_start_18 .. :try_end_1b} :catchall_99

    .line 1560
    :try_start_1b
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPStore;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v3

    .line 1561
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v6}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$19(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)I

    move-result v6

    if-nez v6, :cond_71

    .line 1562
    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->idleStart()V

    .line 1563
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    const/4 v8, 0x1

    invoke-static {v6, v8}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$20(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;I)V

    .line 1574
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v6, v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$18(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1559
    monitor-exit v7
    :try_end_36
    .catchall {:try_start_1b .. :try_end_36} :catchall_8d

    .line 1591
    :cond_36
    :goto_36
    :try_start_36
    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->readIdleResponse()Lcom/sun/mail/iap/Response;

    move-result-object v5

    .line 1592
    .local v5, "r":Lcom/sun/mail/iap/Response;
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v7
    :try_end_3d
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_36 .. :try_end_3d} :catch_90
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_36 .. :try_end_3d} :catch_c3
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_36 .. :try_end_3d} :catch_d1
    .catchall {:try_start_36 .. :try_end_3d} :catchall_99

    .line 1593
    if-eqz v5, :cond_45

    :try_start_3f
    invoke-virtual {v3, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->processIdleResponse(Lcom/sun/mail/iap/Response;)Z

    move-result v6

    if-nez v6, :cond_ad

    .line 1594
    :cond_45
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    const/4 v8, 0x0

    invoke-static {v6, v8}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$20(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;I)V

    .line 1595
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 1596
    monitor-exit v7
    :try_end_51
    .catchall {:try_start_3f .. :try_end_51} :catchall_ce

    .line 1609
    :try_start_51
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPStore;->getMinIdleTime()I
    :try_end_54
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_51 .. :try_end_54} :catch_90
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_51 .. :try_end_54} :catch_c3
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_51 .. :try_end_54} :catch_d1
    .catchall {:try_start_51 .. :try_end_54} :catchall_99

    move-result v2

    .line 1610
    .local v2, "minidle":I
    if-lez v2, :cond_5b

    .line 1612
    int-to-long v6, v2

    :try_start_58
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5b
    .catch Ljava/lang/InterruptedException; {:try_start_58 .. :try_end_5b} :catch_e2
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_58 .. :try_end_5b} :catch_90
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_58 .. :try_end_5b} :catch_c3
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_58 .. :try_end_5b} :catch_d1
    .catchall {:try_start_58 .. :try_end_5b} :catchall_99

    .line 1623
    :cond_5b
    :goto_5b
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v7

    .line 1624
    :try_start_5e
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    const/4 v8, 0x0

    invoke-static {v6, v8}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$18(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1623
    monitor-exit v7
    :try_end_65
    .catchall {:try_start_5e .. :try_end_65} :catchall_df

    .line 1626
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1627
    if-nez v3, :cond_6d

    .line 1629
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->cleanup()V

    .line 1632
    .end local v2    # "minidle":I
    .end local v5    # "r":Lcom/sun/mail/iap/Response;
    :cond_6d
    :goto_6d
    return-void

    .line 1555
    :catchall_6e
    move-exception v6

    :try_start_6f
    monitor-exit p0
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    throw v6

    .line 1570
    :cond_71
    :try_start_71
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_76
    .catch Ljava/lang/InterruptedException; {:try_start_71 .. :try_end_76} :catch_e5
    .catchall {:try_start_71 .. :try_end_76} :catchall_8d

    .line 1572
    :goto_76
    :try_start_76
    monitor-exit v7
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_8d

    .line 1623
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v7

    .line 1624
    :try_start_7a
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    const/4 v8, 0x0

    invoke-static {v6, v8}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$18(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1623
    monitor-exit v7
    :try_end_81
    .catchall {:try_start_7a .. :try_end_81} :catchall_8a

    .line 1626
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1627
    if-nez v3, :cond_6d

    .line 1629
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->cleanup()V

    goto :goto_6d

    .line 1623
    :catchall_8a
    move-exception v6

    :try_start_8b
    monitor-exit v7
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_8a

    throw v6

    .line 1559
    :catchall_8d
    move-exception v6

    :try_start_8e
    monitor-exit v7
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8d

    :try_start_8f
    throw v6
    :try_end_90
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_8f .. :try_end_90} :catch_90
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_8f .. :try_end_90} :catch_c3
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_8f .. :try_end_90} :catch_d1
    .catchall {:try_start_8f .. :try_end_90} :catchall_99

    .line 1616
    :catch_90
    move-exception v0

    .line 1617
    .local v0, "bex":Lcom/sun/mail/iap/BadCommandException;
    :try_start_91
    new-instance v6, Ljavax/mail/MessagingException;

    const-string v7, "IDLE not supported"

    invoke-direct {v6, v7, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6
    :try_end_99
    .catchall {:try_start_91 .. :try_end_99} :catchall_99

    .line 1622
    .end local v0    # "bex":Lcom/sun/mail/iap/BadCommandException;
    :catchall_99
    move-exception v6

    .line 1623
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v7

    .line 1624
    :try_start_9d
    iget-object v8, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$18(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1623
    monitor-exit v7
    :try_end_a4
    .catchall {:try_start_9d .. :try_end_a4} :catchall_dc

    .line 1626
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1627
    if-nez v3, :cond_ac

    .line 1629
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->cleanup()V

    .line 1631
    :cond_ac
    throw v6

    .line 1592
    .restart local v5    # "r":Lcom/sun/mail/iap/Response;
    :cond_ad
    :try_start_ad
    monitor-exit v7
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_ce

    .line 1599
    :try_start_ae
    iget-boolean v6, p0, Lcom/sun/mail/imap/IMAPStore;->enableImapEvents:Z

    if-eqz v6, :cond_36

    invoke-virtual {v5}, Lcom/sun/mail/iap/Response;->isUnTagged()Z

    move-result v6

    if-eqz v6, :cond_36

    .line 1600
    const/16 v6, 0x3e8

    invoke-virtual {v5}, Lcom/sun/mail/iap/Response;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/sun/mail/imap/IMAPStore;->notifyStoreListeners(ILjava/lang/String;)V
    :try_end_c1
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_ae .. :try_end_c1} :catch_90
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_ae .. :try_end_c1} :catch_c3
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_ae .. :try_end_c1} :catch_d1
    .catchall {:try_start_ae .. :try_end_c1} :catchall_99

    goto/16 :goto_36

    .line 1618
    .end local v5    # "r":Lcom/sun/mail/iap/Response;
    :catch_c3
    move-exception v1

    .line 1619
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    :try_start_c4
    new-instance v6, Ljavax/mail/StoreClosedException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V

    throw v6
    :try_end_ce
    .catchall {:try_start_c4 .. :try_end_ce} :catchall_99

    .line 1592
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    .restart local v5    # "r":Lcom/sun/mail/iap/Response;
    :catchall_ce
    move-exception v6

    :try_start_cf
    monitor-exit v7
    :try_end_d0
    .catchall {:try_start_cf .. :try_end_d0} :catchall_ce

    :try_start_d0
    throw v6
    :try_end_d1
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_d0 .. :try_end_d1} :catch_90
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_d0 .. :try_end_d1} :catch_c3
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_d0 .. :try_end_d1} :catch_d1
    .catchall {:try_start_d0 .. :try_end_d1} :catchall_99

    .line 1620
    .end local v5    # "r":Lcom/sun/mail/iap/Response;
    :catch_d1
    move-exception v4

    .line 1621
    .local v4, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_d2
    new-instance v6, Ljavax/mail/MessagingException;

    invoke-virtual {v4}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6
    :try_end_dc
    .catchall {:try_start_d2 .. :try_end_dc} :catchall_99

    .line 1623
    .end local v4    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catchall_dc
    move-exception v6

    :try_start_dd
    monitor-exit v7
    :try_end_de
    .catchall {:try_start_dd .. :try_end_de} :catchall_dc

    throw v6

    .restart local v2    # "minidle":I
    .restart local v5    # "r":Lcom/sun/mail/iap/Response;
    :catchall_df
    move-exception v6

    :try_start_e0
    monitor-exit v7
    :try_end_e1
    .catchall {:try_start_e0 .. :try_end_e1} :catchall_df

    throw v6

    .line 1613
    :catch_e2
    move-exception v6

    goto/16 :goto_5b

    .line 1571
    .end local v2    # "minidle":I
    .end local v5    # "r":Lcom/sun/mail/iap/Response;
    :catch_e5
    move-exception v6

    goto :goto_76
.end method

.method public declared-synchronized isConnected()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 1120
    monitor-enter p0

    :try_start_2
    iget-boolean v3, p0, Lcom/sun/mail/imap/IMAPStore;->connected:Z

    if-nez v3, :cond_c

    .line 1123
    const/4 v3, 0x0

    invoke-super {p0, v3}, Ljavax/mail/Store;->setConnected(Z)V
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_26

    .line 1158
    :goto_a
    monitor-exit p0

    return v2

    .line 1143
    :cond_c
    const/4 v0, 0x0

    .line 1145
    .local v0, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :try_start_d
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPStore;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v0

    .line 1146
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noop()V
    :try_end_14
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_d .. :try_end_14} :catch_1c
    .catchall {:try_start_d .. :try_end_14} :catchall_29

    .line 1154
    :try_start_14
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1158
    :goto_17
    invoke-super {p0}, Ljavax/mail/Store;->isConnected()Z
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_26

    move-result v2

    goto :goto_a

    .line 1147
    :catch_1c
    move-exception v1

    .line 1148
    .local v1, "pex":Lcom/sun/mail/iap/ProtocolException;
    if-nez v0, :cond_22

    .line 1150
    :try_start_1f
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->cleanup()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_29

    .line 1154
    :cond_22
    :try_start_22
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_26

    goto :goto_17

    .line 1120
    .end local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v1    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catchall_26
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1153
    .restart local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catchall_29
    move-exception v2

    .line 1154
    :try_start_2a
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1155
    throw v2
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_26
.end method

.method isConnectionPoolFull()Z
    .registers 5

    .prologue
    .line 911
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v1

    .line 912
    :try_start_3
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$3(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 913
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DEBUG: current size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 914
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$10(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 915
    const-string v3, "   pool size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$4(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 913
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 917
    :cond_39
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$10(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$4(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)I

    move-result v2

    if-lt v0, v2, :cond_4e

    const/4 v0, 0x1

    :goto_4c
    monitor-exit v1

    return v0

    :cond_4e
    const/4 v0, 0x0

    goto :goto_4c

    .line 911
    :catchall_50
    move-exception v0

    monitor-exit v1
    :try_end_52
    .catchall {:try_start_3 .. :try_end_52} :catchall_50

    throw v0
.end method

.method protected declared-synchronized protocolConnect(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .registers 22
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "pport"    # I
    .param p3, "user"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 503
    monitor-enter p0

    const/16 v16, 0x0

    .line 506
    .local v16, "protocol":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    if-eqz p1, :cond_9

    if-eqz p4, :cond_9

    if-nez p3, :cond_49

    .line 507
    :cond_9
    :try_start_9
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    if-eqz v4, :cond_41

    .line 508
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "DEBUG: protocolConnect returning false, host="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 509
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 510
    const-string v6, ", user="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 511
    const-string v6, ", password="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p4, :cond_46

    .line 512
    const-string v4, "<non-null>"

    :goto_36
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 508
    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_41
    .catchall {:try_start_9 .. :try_end_41} :catchall_138

    .line 513
    :cond_41
    const/4 v4, 0x0

    move-object/from16 v3, v16

    .line 575
    .end local v16    # "protocol":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .local v3, "protocol":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :goto_44
    monitor-exit p0

    return v4

    .line 512
    .end local v3    # "protocol":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v16    # "protocol":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :cond_46
    :try_start_46
    const-string v4, "<null>"

    goto :goto_36

    .line 517
    :cond_49
    const/4 v4, -0x1

    move/from16 v0, p2

    if-eq v0, v4, :cond_10b

    .line 518
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sun/mail/imap/IMAPStore;->port:I

    .line 527
    :cond_54
    :goto_54
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sun/mail/imap/IMAPStore;->port:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_63

    .line 528
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sun/mail/imap/IMAPStore;->defaultPort:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sun/mail/imap/IMAPStore;->port:I
    :try_end_63
    .catchall {:try_start_46 .. :try_end_63} :catchall_138

    .line 533
    :cond_63
    :try_start_63
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v5
    :try_end_68
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_63 .. :try_end_68} :catch_140
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_63 .. :try_end_68} :catch_15e
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_68} :catch_16b
    .catchall {:try_start_63 .. :try_end_68} :catchall_138

    .line 534
    :try_start_68
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v4}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$10(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->isEmpty()Z

    move-result v14

    .line 533
    .local v14, "poolEmpty":Z
    monitor-exit v5
    :try_end_75
    .catchall {:try_start_68 .. :try_end_75} :catchall_13d

    .line 537
    if-eqz v14, :cond_17c

    .line 538
    :try_start_77
    new-instance v3, Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/mail/imap/IMAPStore;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sun/mail/imap/IMAPStore;->port:I

    .line 539
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sun/mail/imap/IMAPStore;->session:Ljavax/mail/Session;

    invoke-virtual {v5}, Ljavax/mail/Session;->getDebug()Z

    move-result v7

    .line 540
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sun/mail/imap/IMAPStore;->session:Ljavax/mail/Session;

    invoke-virtual {v5}, Ljavax/mail/Session;->getDebugOut()Ljava/io/PrintStream;

    move-result-object v8

    .line 541
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sun/mail/imap/IMAPStore;->session:Ljavax/mail/Session;

    invoke-virtual {v5}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v9

    .line 542
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/sun/mail/imap/IMAPStore;->isSSL:Z

    move-object/from16 v5, p1

    .line 538
    invoke-direct/range {v3 .. v10}, Lcom/sun/mail/imap/protocol/IMAPProtocol;-><init>(Ljava/lang/String;Ljava/lang/String;IZLjava/io/PrintStream;Ljava/util/Properties;Z)V
    :try_end_a2
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_77 .. :try_end_a2} :catch_140
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_77 .. :try_end_a2} :catch_15e
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_a2} :catch_16b
    .catchall {:try_start_77 .. :try_end_a2} :catchall_138

    .line 544
    .end local v16    # "protocol":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v3    # "protocol":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :try_start_a2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    if-eqz v4, :cond_d2

    .line 545
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DEBUG: protocolConnect login, host="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 546
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 547
    const-string v6, ", user="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 548
    const-string v6, ", password=<non-null>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 545
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 549
    :cond_d2
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v0, v3, v1, v2}, Lcom/sun/mail/imap/IMAPStore;->login(Lcom/sun/mail/imap/protocol/IMAPProtocol;Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->addResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    .line 553
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sun/mail/imap/IMAPStore;->host:Ljava/lang/String;

    .line 554
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sun/mail/imap/IMAPStore;->user:Ljava/lang/String;

    .line 555
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sun/mail/imap/IMAPStore;->password:Ljava/lang/String;

    .line 557
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v5
    :try_end_f7
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_a2 .. :try_end_f7} :catch_15c
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_a2 .. :try_end_f7} :catch_17a
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_f7} :catch_178
    .catchall {:try_start_a2 .. :try_end_f7} :catchall_157

    .line 558
    :try_start_f7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v4}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$10(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 557
    monitor-exit v5
    :try_end_103
    .catchall {:try_start_f7 .. :try_end_103} :catchall_159

    .line 574
    :goto_103
    const/4 v4, 0x1

    :try_start_104
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sun/mail/imap/IMAPStore;->connected:Z
    :try_end_108
    .catchall {:try_start_104 .. :try_end_108} :catchall_157

    .line 575
    const/4 v4, 0x1

    goto/16 :goto_44

    .line 520
    .end local v3    # "protocol":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v14    # "poolEmpty":Z
    .restart local v16    # "protocol":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :cond_10b
    :try_start_10b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/mail/imap/IMAPStore;->session:Ljavax/mail/Session;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "mail."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sun/mail/imap/IMAPStore;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".port"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 521
    .local v15, "portstring":Ljava/lang/String;
    if-eqz v15, :cond_54

    .line 522
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sun/mail/imap/IMAPStore;->port:I
    :try_end_136
    .catchall {:try_start_10b .. :try_end_136} :catchall_138

    goto/16 :goto_54

    .line 503
    .end local v15    # "portstring":Ljava/lang/String;
    :catchall_138
    move-exception v4

    move-object/from16 v3, v16

    .end local v16    # "protocol":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v3    # "protocol":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :goto_13b
    monitor-exit p0

    throw v4

    .line 533
    .end local v3    # "protocol":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v16    # "protocol":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catchall_13d
    move-exception v4

    :try_start_13e
    monitor-exit v5
    :try_end_13f
    .catchall {:try_start_13e .. :try_end_13f} :catchall_13d

    :try_start_13f
    throw v4
    :try_end_140
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_13f .. :try_end_140} :catch_140
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_13f .. :try_end_140} :catch_15e
    .catch Ljava/io/IOException; {:try_start_13f .. :try_end_140} :catch_16b
    .catchall {:try_start_13f .. :try_end_140} :catchall_138

    .line 561
    :catch_140
    move-exception v11

    move-object/from16 v3, v16

    .line 563
    .end local v16    # "protocol":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v3    # "protocol":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .local v11, "cex":Lcom/sun/mail/iap/CommandFailedException;
    :goto_143
    if-eqz v3, :cond_148

    .line 564
    :try_start_145
    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V

    .line 565
    :cond_148
    const/4 v3, 0x0

    .line 566
    new-instance v4, Ljavax/mail/AuthenticationFailedException;

    .line 567
    invoke-virtual {v11}, Lcom/sun/mail/iap/CommandFailedException;->getResponse()Lcom/sun/mail/iap/Response;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sun/mail/iap/Response;->getRest()Ljava/lang/String;

    move-result-object v5

    .line 566
    invoke-direct {v4, v5}, Ljavax/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_157
    .catchall {:try_start_145 .. :try_end_157} :catchall_157

    .line 503
    .end local v11    # "cex":Lcom/sun/mail/iap/CommandFailedException;
    :catchall_157
    move-exception v4

    goto :goto_13b

    .line 557
    .restart local v14    # "poolEmpty":Z
    :catchall_159
    move-exception v4

    :try_start_15a
    monitor-exit v5
    :try_end_15b
    .catchall {:try_start_15a .. :try_end_15b} :catchall_159

    :try_start_15b
    throw v4
    :try_end_15c
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_15b .. :try_end_15c} :catch_15c
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_15b .. :try_end_15c} :catch_17a
    .catch Ljava/io/IOException; {:try_start_15b .. :try_end_15c} :catch_178
    .catchall {:try_start_15b .. :try_end_15c} :catchall_157

    .line 561
    :catch_15c
    move-exception v11

    goto :goto_143

    .line 568
    .end local v3    # "protocol":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v14    # "poolEmpty":Z
    .restart local v16    # "protocol":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catch_15e
    move-exception v13

    move-object/from16 v3, v16

    .line 569
    .end local v16    # "protocol":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v3    # "protocol":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .local v13, "pex":Lcom/sun/mail/iap/ProtocolException;
    :goto_161
    :try_start_161
    new-instance v4, Ljavax/mail/MessagingException;

    invoke-virtual {v13}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v13}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 570
    .end local v3    # "protocol":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v13    # "pex":Lcom/sun/mail/iap/ProtocolException;
    .restart local v16    # "protocol":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catch_16b
    move-exception v12

    move-object/from16 v3, v16

    .line 571
    .end local v16    # "protocol":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v3    # "protocol":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .local v12, "ioex":Ljava/io/IOException;
    :goto_16e
    new-instance v4, Ljavax/mail/MessagingException;

    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v12}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4
    :try_end_178
    .catchall {:try_start_161 .. :try_end_178} :catchall_157

    .line 570
    .end local v12    # "ioex":Ljava/io/IOException;
    .restart local v14    # "poolEmpty":Z
    :catch_178
    move-exception v12

    goto :goto_16e

    .line 568
    :catch_17a
    move-exception v13

    goto :goto_161

    .end local v3    # "protocol":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v16    # "protocol":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :cond_17c
    move-object/from16 v3, v16

    .end local v16    # "protocol":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v3    # "protocol":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    goto :goto_103
.end method

.method releaseProtocol(Lcom/sun/mail/imap/IMAPFolder;Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    .registers 7
    .param p1, "folder"    # Lcom/sun/mail/imap/IMAPFolder;
    .param p2, "protocol"    # Lcom/sun/mail/imap/protocol/IMAPProtocol;

    .prologue
    .line 927
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v1

    .line 928
    if-eqz p2, :cond_39

    .line 931
    :try_start_5
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPStore;->isConnectionPoolFull()Z

    move-result v0

    if-nez v0, :cond_4f

    .line 932
    invoke-virtual {p2, p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->addResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    .line 933
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$10(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 935
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    if-eqz v0, :cond_39

    .line 936
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DEBUG: added an Authenticated connection -- size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 938
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$10(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 936
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 949
    :cond_39
    :goto_39
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$13(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_4a

    .line 950
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$13(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 952
    :cond_4a
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->timeoutConnections()V

    .line 927
    monitor-exit v1

    .line 954
    return-void

    .line 940
    :cond_4f
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    if-eqz v0, :cond_5a

    .line 941
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    const-string v2, "DEBUG: pool is full, not adding an Authenticated connection"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_5a
    .catchall {:try_start_5 .. :try_end_5a} :catchall_60

    .line 944
    :cond_5a
    :try_start_5a
    invoke-virtual {p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logout()V
    :try_end_5d
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_5a .. :try_end_5d} :catch_5e
    .catchall {:try_start_5a .. :try_end_5d} :catchall_60

    goto :goto_39

    .line 945
    :catch_5e
    move-exception v0

    goto :goto_39

    .line 927
    :catchall_60
    move-exception v0

    :try_start_61
    monitor-exit v1
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    throw v0
.end method

.method releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    .registers 5
    .param p1, "protocol"    # Lcom/sun/mail/imap/protocol/IMAPProtocol;

    .prologue
    .line 961
    if-nez p1, :cond_3

    .line 972
    :goto_2
    return-void

    .line 963
    :cond_3
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v1

    .line 964
    :try_start_6
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$15(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;Z)V

    .line 965
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 967
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$3(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 968
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->out:Ljava/io/PrintStream;

    const-string v2, "DEBUG: releaseStoreProtocol()"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 970
    :cond_20
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->timeoutConnections()V

    .line 963
    monitor-exit v1

    goto :goto_2

    :catchall_25
    move-exception v0

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_6 .. :try_end_27} :catchall_25

    throw v0
.end method

.method public declared-synchronized setPassword(Ljava/lang/String;)V
    .registers 3
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 668
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/sun/mail/imap/IMAPStore;->password:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 669
    monitor-exit p0

    return-void

    .line 668
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setQuota(Ljavax/mail/Quota;)V
    .registers 8
    .param p1, "quota"    # Ljavax/mail/Quota;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1469
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->checkConnected()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_29

    .line 1470
    const/4 v2, 0x0

    .line 1472
    .local v2, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :try_start_5
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPStore;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v2

    .line 1473
    invoke-virtual {v2, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->setQuota(Ljavax/mail/Quota;)V
    :try_end_c
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_5 .. :try_end_c} :catch_16
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_5 .. :try_end_c} :catch_2c
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_5 .. :try_end_c} :catch_37
    .catchall {:try_start_5 .. :try_end_c} :catchall_1f

    .line 1481
    :try_start_c
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1482
    if-nez v2, :cond_14

    .line 1484
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->cleanup()V
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_29

    .line 1487
    :cond_14
    monitor-exit p0

    return-void

    .line 1474
    :catch_16
    move-exception v0

    .line 1475
    .local v0, "bex":Lcom/sun/mail/iap/BadCommandException;
    :try_start_17
    new-instance v4, Ljavax/mail/MessagingException;

    const-string v5, "QUOTA not supported"

    invoke-direct {v4, v5, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_1f

    .line 1480
    .end local v0    # "bex":Lcom/sun/mail/iap/BadCommandException;
    :catchall_1f
    move-exception v4

    .line 1481
    :try_start_20
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1482
    if-nez v2, :cond_28

    .line 1484
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->cleanup()V

    .line 1486
    :cond_28
    throw v4
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_29

    .line 1469
    .end local v2    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catchall_29
    move-exception v4

    monitor-exit p0

    throw v4

    .line 1476
    .restart local v2    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catch_2c
    move-exception v1

    .line 1477
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    :try_start_2d
    new-instance v4, Ljavax/mail/StoreClosedException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V

    throw v4

    .line 1478
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catch_37
    move-exception v3

    .line 1479
    .local v3, "pex":Lcom/sun/mail/iap/ProtocolException;
    new-instance v4, Ljavax/mail/MessagingException;

    invoke-virtual {v3}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4
    :try_end_42
    .catchall {:try_start_2d .. :try_end_42} :catchall_1f
.end method

.method public declared-synchronized setUsername(Ljava/lang/String;)V
    .registers 3
    .param p1, "user"    # Ljava/lang/String;

    .prologue
    .line 654
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/sun/mail/imap/IMAPStore;->user:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 655
    monitor-exit p0

    return-void

    .line 654
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
