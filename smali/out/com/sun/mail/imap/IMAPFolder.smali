.class public Lcom/sun/mail/imap/IMAPFolder;
.super Ljavax/mail/Folder;
.source "IMAPFolder.java"

# interfaces
.implements Ljavax/mail/UIDFolder;
.implements Lcom/sun/mail/iap/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;,
        Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ABORTING:I = 0x2

.field private static final IDLE:I = 0x1

.field private static final RUNNING:I = 0x0

.field protected static final UNKNOWN_SEPARATOR:C = '\uffff'


# instance fields
.field protected attributes:[Ljava/lang/String;

.field protected availableFlags:Ljavax/mail/Flags;

.field private cachedStatus:Lcom/sun/mail/imap/protocol/Status;

.field private cachedStatusTime:J

.field private connectionPoolDebug:Z

.field private debug:Z

.field private doExpungeNotification:Z

.field protected exists:Z

.field protected fullName:Ljava/lang/String;

.field private idleState:I

.field protected isNamespace:Z

.field protected messageCache:Ljava/util/Vector;

.field protected messageCacheLock:Ljava/lang/Object;

.field protected name:Ljava/lang/String;

.field private opened:Z

.field private out:Ljava/io/PrintStream;

.field protected permanentFlags:Ljavax/mail/Flags;

.field protected protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

.field private realTotal:I

.field private reallyClosed:Z

.field private recent:I

.field protected separator:C

.field private total:I

.field protected type:I

.field protected uidTable:Ljava/util/Hashtable;

.field private uidnext:J

.field private uidvalidity:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 158
    const-class v0, Lcom/sun/mail/imap/IMAPFolder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/sun/mail/imap/IMAPFolder;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected constructor <init>(Lcom/sun/mail/imap/protocol/ListInfo;Lcom/sun/mail/imap/IMAPStore;)V
    .registers 5
    .param p1, "li"    # Lcom/sun/mail/imap/protocol/ListInfo;
    .param p2, "store"    # Lcom/sun/mail/imap/IMAPStore;

    .prologue
    .line 369
    iget-object v0, p1, Lcom/sun/mail/imap/protocol/ListInfo;->name:Ljava/lang/String;

    iget-char v1, p1, Lcom/sun/mail/imap/protocol/ListInfo;->separator:C

    invoke-direct {p0, v0, v1, p2}, Lcom/sun/mail/imap/IMAPFolder;-><init>(Ljava/lang/String;CLcom/sun/mail/imap/IMAPStore;)V

    .line 371
    iget-boolean v0, p1, Lcom/sun/mail/imap/protocol/ListInfo;->hasInferiors:Z

    if-eqz v0, :cond_11

    .line 372
    iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    .line 373
    :cond_11
    iget-boolean v0, p1, Lcom/sun/mail/imap/protocol/ListInfo;->canOpen:Z

    if-eqz v0, :cond_1b

    .line 374
    iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    .line 375
    :cond_1b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    .line 376
    iget-object v0, p1, Lcom/sun/mail/imap/protocol/ListInfo;->attrs:[Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    .line 377
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;CLcom/sun/mail/imap/IMAPStore;)V
    .registers 10
    .param p1, "fullName"    # Ljava/lang/String;
    .param p2, "separator"    # C
    .param p3, "store"    # Lcom/sun/mail/imap/IMAPStore;

    .prologue
    const-wide/16 v2, -0x1

    const/4 v5, 0x1

    const/4 v1, -0x1

    const/4 v4, 0x0

    .line 318
    invoke-direct {p0, p3}, Ljavax/mail/Folder;-><init>(Ljavax/mail/Store;)V

    .line 166
    iput-boolean v4, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    .line 167
    iput-boolean v4, p0, Lcom/sun/mail/imap/IMAPFolder;->isNamespace:Z

    .line 184
    iput-boolean v4, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    .line 196
    iput-boolean v5, p0, Lcom/sun/mail/imap/IMAPFolder;->reallyClosed:Z

    .line 248
    iput v4, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    .line 250
    iput v1, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    .line 252
    iput v1, p0, Lcom/sun/mail/imap/IMAPFolder;->recent:I

    .line 253
    iput v1, p0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I

    .line 255
    iput-wide v2, p0, Lcom/sun/mail/imap/IMAPFolder;->uidvalidity:J

    .line 256
    iput-wide v2, p0, Lcom/sun/mail/imap/IMAPFolder;->uidnext:J

    .line 257
    iput-boolean v5, p0, Lcom/sun/mail/imap/IMAPFolder;->doExpungeNotification:Z

    .line 259
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->cachedStatus:Lcom/sun/mail/imap/protocol/Status;

    .line 260
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sun/mail/imap/IMAPFolder;->cachedStatusTime:J

    .line 262
    iput-boolean v4, p0, Lcom/sun/mail/imap/IMAPFolder;->debug:Z

    .line 319
    if-nez p1, :cond_31

    .line 320
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Folder name is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 321
    :cond_31
    iput-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    .line 322
    iput-char p2, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    .line 323
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    .line 324
    invoke-virtual {p3}, Lcom/sun/mail/imap/IMAPStore;->getSession()Ljavax/mail/Session;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/mail/Session;->getDebug()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->debug:Z

    .line 325
    invoke-virtual {p3}, Lcom/sun/mail/imap/IMAPStore;->getConnectionPoolDebug()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->connectionPoolDebug:Z

    .line 326
    invoke-virtual {p3}, Lcom/sun/mail/imap/IMAPStore;->getSession()Ljavax/mail/Session;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/mail/Session;->getDebugOut()Ljava/io/PrintStream;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->out:Ljava/io/PrintStream;

    .line 327
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->out:Ljava/io/PrintStream;

    if-nez v1, :cond_5e

    .line 328
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->out:Ljava/io/PrintStream;

    .line 341
    :cond_5e
    iput-boolean v4, p0, Lcom/sun/mail/imap/IMAPFolder;->isNamespace:Z

    .line 342
    const v1, 0xffff

    if-eq p2, v1, :cond_83

    if-eqz p2, :cond_83

    .line 343
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 344
    .local v0, "i":I
    if-lez v0, :cond_83

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_83

    .line 345
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    .line 346
    iput-boolean v5, p0, Lcom/sun/mail/imap/IMAPFolder;->isNamespace:Z

    .line 349
    .end local v0    # "i":I
    :cond_83
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;CLcom/sun/mail/imap/IMAPStore;Z)V
    .registers 5
    .param p1, "fullName"    # Ljava/lang/String;
    .param p2, "separator"    # C
    .param p3, "store"    # Lcom/sun/mail/imap/IMAPStore;
    .param p4, "isNamespace"    # Z

    .prologue
    .line 361
    invoke-direct {p0, p1, p2, p3}, Lcom/sun/mail/imap/IMAPFolder;-><init>(Ljava/lang/String;CLcom/sun/mail/imap/IMAPStore;)V

    .line 362
    iput-boolean p4, p0, Lcom/sun/mail/imap/IMAPFolder;->isNamespace:Z

    .line 363
    return-void
.end method

.method static synthetic access$0(Lcom/sun/mail/imap/IMAPFolder;)Lcom/sun/mail/imap/protocol/Status;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1335
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStatus()Lcom/sun/mail/imap/protocol/Status;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/sun/mail/imap/IMAPFolder;)I
    .registers 2

    .prologue
    .line 248
    iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    return v0
.end method

.method static synthetic access$2(Lcom/sun/mail/imap/IMAPFolder;I)V
    .registers 2

    .prologue
    .line 248
    iput p1, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    return-void
.end method

.method private checkClosed()V
    .registers 3

    .prologue
    .line 397
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-eqz v0, :cond_c

    .line 398
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 399
    const-string v1, "This operation is not allowed on an open folder"

    .line 398
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 401
    :cond_c
    return-void
.end method

.method private checkExists()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 387
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    if-nez v0, :cond_25

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->exists()Z

    move-result v0

    if-nez v0, :cond_25

    .line 388
    new-instance v0, Ljavax/mail/FolderNotFoundException;

    .line 389
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 388
    invoke-direct {v0, p0, v1}, Ljavax/mail/FolderNotFoundException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v0

    .line 390
    :cond_25
    return-void
.end method

.method private checkFlags(Ljavax/mail/Flags;)V
    .registers 5
    .param p1, "flags"    # Ljavax/mail/Flags;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 457
    sget-boolean v0, Lcom/sun/mail/imap/IMAPFolder;->$assertionsDisabled:Z

    if-nez v0, :cond_10

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 458
    :cond_10
    iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2c

    .line 459
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 460
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot change flags on READ_ONLY folder: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 459
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 468
    :cond_2c
    return-void
.end method

.method private checkOpened()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/FolderClosedException;
        }
    .end annotation

    .prologue
    .line 408
    sget-boolean v0, Lcom/sun/mail/imap/IMAPFolder;->$assertionsDisabled:Z

    if-nez v0, :cond_10

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 409
    :cond_10
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-nez v0, :cond_28

    .line 410
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->reallyClosed:Z

    if-eqz v0, :cond_20

    .line 411
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 412
    const-string v1, "This operation is not allowed on a closed folder"

    .line 411
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 415
    :cond_20
    new-instance v0, Ljavax/mail/FolderClosedException;

    .line 416
    const-string v1, "Lost folder connection to server"

    .line 415
    invoke-direct {v0, p0, v1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v0

    .line 419
    :cond_28
    return-void
.end method

.method private checkRange(I)V
    .registers 7
    .param p1, "msgno"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 428
    const/4 v2, 0x1

    if-ge p1, v2, :cond_9

    .line 429
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 431
    :cond_9
    iget v2, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    if-gt p1, v2, :cond_e

    .line 450
    :cond_d
    return-void

    .line 437
    :cond_e
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v3

    .line 439
    const/4 v2, 0x0

    :try_start_12
    invoke-direct {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->keepConnectionAlive(Z)V
    :try_end_15
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_12 .. :try_end_15} :catch_20
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_12 .. :try_end_15} :catch_2e
    .catchall {:try_start_12 .. :try_end_15} :catchall_2b

    .line 437
    :try_start_15
    monitor-exit v3
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_2b

    .line 448
    iget v2, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    if-le p1, v2, :cond_d

    .line 449
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 440
    :catch_20
    move-exception v0

    .line 442
    .local v0, "cex":Lcom/sun/mail/iap/ConnectionException;
    :try_start_21
    new-instance v2, Ljavax/mail/FolderClosedException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v4}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2

    .line 437
    .end local v0    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catchall_2b
    move-exception v2

    monitor-exit v3
    :try_end_2d
    .catchall {:try_start_21 .. :try_end_2d} :catchall_2b

    throw v2

    .line 443
    :catch_2e
    move-exception v1

    .line 444
    .local v1, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_2f
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
    :try_end_39
    .catchall {:try_start_2f .. :try_end_39} :catchall_2b
.end method

.method private cleanup(Z)V
    .registers 4
    .param p1, "returnToPool"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1130
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->releaseProtocol(Z)V

    .line 1131
    iput-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    .line 1132
    iput-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Ljava/util/Vector;

    .line 1133
    iput-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    .line 1134
    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    .line 1135
    iput-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    .line 1136
    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    .line 1137
    iput v1, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    .line 1138
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->notifyConnectionListeners(I)V

    .line 1139
    return-void
.end method

.method private close(ZZ)V
    .registers 10
    .param p1, "expunge"    # Z
    .param p2, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1057
    sget-boolean v3, Lcom/sun/mail/imap/IMAPFolder;->$assertionsDisabled:Z

    if-nez v3, :cond_10

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1058
    :cond_10
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1065
    :try_start_13
    iget-boolean v3, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-nez v3, :cond_26

    iget-boolean v3, p0, Lcom/sun/mail/imap/IMAPFolder;->reallyClosed:Z

    if-eqz v3, :cond_26

    .line 1066
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 1067
    const-string v5, "This operation is not allowed on a closed folder"

    .line 1066
    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1058
    :catchall_23
    move-exception v3

    monitor-exit v4
    :try_end_25
    .catchall {:try_start_13 .. :try_end_25} :catchall_23

    throw v3

    .line 1070
    :cond_26
    const/4 v3, 0x1

    :try_start_27
    iput-boolean v3, p0, Lcom/sun/mail/imap/IMAPFolder;->reallyClosed:Z

    .line 1076
    iget-boolean v3, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-nez v3, :cond_2f

    .line 1077
    monitor-exit v4
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_23

    .line 1122
    :goto_2e
    return-void

    .line 1080
    :cond_2f
    :try_start_2f
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->waitIfIdle()V

    .line 1081
    if-eqz p2, :cond_67

    .line 1082
    iget-boolean v3, p0, Lcom/sun/mail/imap/IMAPFolder;->debug:Z

    if-eqz v3, :cond_54

    .line 1083
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DEBUG: forcing folder "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1084
    const-string v6, " to close"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1083
    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1085
    :cond_54
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v3, :cond_5d

    .line 1086
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V
    :try_end_5d
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2f .. :try_end_5d} :catch_8d
    .catchall {:try_start_2f .. :try_end_5d} :catchall_98

    .line 1118
    :cond_5d
    :goto_5d
    :try_start_5d
    iget-boolean v3, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-eqz v3, :cond_65

    .line 1119
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/sun/mail/imap/IMAPFolder;->cleanup(Z)V

    .line 1058
    :cond_65
    monitor-exit v4
    :try_end_66
    .catchall {:try_start_5d .. :try_end_66} :catchall_23

    goto :goto_2e

    .line 1087
    :cond_67
    :try_start_67
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v3, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPStore;->isConnectionPoolFull()Z

    move-result v3

    if-eqz v3, :cond_a2

    .line 1089
    iget-boolean v3, p0, Lcom/sun/mail/imap/IMAPFolder;->debug:Z

    if-eqz v3, :cond_7c

    .line 1090
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->out:Ljava/io/PrintStream;

    const-string v5, "DEBUG: pool is full, not adding an Authenticated connection"

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1094
    :cond_7c
    if-eqz p1, :cond_83

    .line 1095
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->close()V

    .line 1097
    :cond_83
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v3, :cond_5d

    .line 1098
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logout()V
    :try_end_8c
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_67 .. :try_end_8c} :catch_8d
    .catchall {:try_start_67 .. :try_end_8c} :catchall_98

    goto :goto_5d

    .line 1114
    :catch_8d
    move-exception v1

    .line 1115
    .local v1, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_8e
    new-instance v3, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
    :try_end_98
    .catchall {:try_start_8e .. :try_end_98} :catchall_98

    .line 1116
    .end local v1    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catchall_98
    move-exception v3

    .line 1118
    :try_start_99
    iget-boolean v5, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-eqz v5, :cond_a1

    .line 1119
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/sun/mail/imap/IMAPFolder;->cleanup(Z)V

    .line 1120
    :cond_a1
    throw v3
    :try_end_a2
    .catchall {:try_start_99 .. :try_end_a2} :catchall_23

    .line 1103
    :cond_a2
    if-nez p1, :cond_b1

    :try_start_a4
    iget v3, p0, Lcom/sun/mail/imap/IMAPFolder;->mode:I
    :try_end_a6
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_a4 .. :try_end_a6} :catch_8d
    .catchall {:try_start_a4 .. :try_end_a6} :catchall_98

    const/4 v5, 0x2

    if-ne v3, v5, :cond_b1

    .line 1105
    :try_start_a9
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->examine(Ljava/lang/String;)Lcom/sun/mail/imap/protocol/MailboxInfo;
    :try_end_b0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_a9 .. :try_end_b0} :catch_bb
    .catchall {:try_start_a9 .. :try_end_b0} :catchall_98

    move-result-object v0

    .line 1111
    :cond_b1
    :goto_b1
    :try_start_b1
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v3, :cond_5d

    .line 1112
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->close()V

    goto :goto_5d

    .line 1106
    :catch_bb
    move-exception v2

    .line 1107
    .local v2, "pex2":Lcom/sun/mail/iap/ProtocolException;
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v3, :cond_b1

    .line 1108
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V
    :try_end_c5
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_b1 .. :try_end_c5} :catch_8d
    .catchall {:try_start_b1 .. :try_end_c5} :catchall_98

    goto :goto_b1
.end method

.method private declared-synchronized doList(Ljava/lang/String;Z)[Ljavax/mail/Folder;
    .registers 12
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "subscribed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 586
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V

    .line 588
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_f

    .line 589
    const/4 v5, 0x0

    new-array v1, v5, [Ljavax/mail/Folder;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_61

    .line 626
    :cond_d
    :goto_d
    monitor-exit p0

    return-object v1

    .line 591
    :cond_f
    :try_start_f
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getSeparator()C

    move-result v0

    .line 594
    .local v0, "c":C
    new-instance v5, Lcom/sun/mail/imap/IMAPFolder$2;

    invoke-direct {v5, p0, p2, v0, p1}, Lcom/sun/mail/imap/IMAPFolder$2;-><init>(Lcom/sun/mail/imap/IMAPFolder;ZCLjava/lang/String;)V

    .line 593
    invoke-virtual {p0, v5}, Lcom/sun/mail/imap/IMAPFolder;->doCommandIgnoreFailure(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/sun/mail/imap/protocol/ListInfo;

    .line 604
    .local v3, "li":[Lcom/sun/mail/imap/protocol/ListInfo;
    if-nez v3, :cond_24

    .line 605
    const/4 v5, 0x0

    new-array v1, v5, [Ljavax/mail/Folder;

    goto :goto_d

    .line 618
    :cond_24
    const/4 v4, 0x0

    .line 620
    .local v4, "start":I
    array-length v5, v3

    if-lez v5, :cond_47

    const/4 v5, 0x0

    aget-object v5, v3, v5

    iget-object v5, v5, Lcom/sun/mail/imap/protocol/ListInfo;->name:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 621
    const/4 v4, 0x1

    .line 623
    :cond_47
    array-length v5, v3

    sub-int/2addr v5, v4

    new-array v1, v5, [Lcom/sun/mail/imap/IMAPFolder;

    .line 624
    .local v1, "folders":[Lcom/sun/mail/imap/IMAPFolder;
    move v2, v4

    .local v2, "i":I
    :goto_4c
    array-length v5, v3

    if-ge v2, v5, :cond_d

    .line 625
    sub-int v6, v2, v4

    new-instance v7, Lcom/sun/mail/imap/IMAPFolder;

    aget-object v8, v3, v2

    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v5, Lcom/sun/mail/imap/IMAPStore;

    invoke-direct {v7, v8, v5}, Lcom/sun/mail/imap/IMAPFolder;-><init>(Lcom/sun/mail/imap/protocol/ListInfo;Lcom/sun/mail/imap/IMAPStore;)V

    aput-object v7, v1, v6
    :try_end_5e
    .catchall {:try_start_f .. :try_end_5e} :catchall_61

    .line 624
    add-int/lit8 v2, v2, 0x1

    goto :goto_4c

    .line 586
    .end local v0    # "c":C
    .end local v1    # "folders":[Lcom/sun/mail/imap/IMAPFolder;
    .end local v2    # "i":I
    .end local v3    # "li":[Lcom/sun/mail/imap/protocol/ListInfo;
    .end local v4    # "start":I
    :catchall_61
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private findName([Lcom/sun/mail/imap/protocol/ListInfo;Ljava/lang/String;)I
    .registers 5
    .param p1, "li"    # [Lcom/sun/mail/imap/protocol/ListInfo;
    .param p2, "lname"    # Ljava/lang/String;

    .prologue
    .line 557
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-lt v0, v1, :cond_9

    .line 561
    :cond_4
    array-length v1, p1

    if-lt v0, v1, :cond_8

    .line 565
    const/4 v0, 0x0

    .line 567
    :cond_8
    return v0

    .line 558
    :cond_9
    aget-object v1, p1, v0

    iget-object v1, v1, Lcom/sun/mail/imap/protocol/ListInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 557
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 2465
    sget-boolean v0, Lcom/sun/mail/imap/IMAPFolder;->$assertionsDisabled:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2466
    :cond_12
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->waitIfIdle()V

    .line 2467
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    return-object v0
.end method

.method private getStatus()Lcom/sun/mail/imap/protocol/Status;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1336
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v3, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPStore;->getStatusCacheTimeout()I

    move-result v2

    .line 1339
    .local v2, "statusCacheTimeout":I
    if-lez v2, :cond_1d

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->cachedStatus:Lcom/sun/mail/imap/protocol/Status;

    if-eqz v3, :cond_1d

    .line 1340
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/sun/mail/imap/IMAPFolder;->cachedStatusTime:J

    sub-long/2addr v4, v6

    int-to-long v6, v2

    cmp-long v3, v4, v6

    if-gez v3, :cond_1d

    .line 1341
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->cachedStatus:Lcom/sun/mail/imap/protocol/Status;

    .line 1353
    :goto_1c
    return-object v1

    .line 1343
    :cond_1d
    const/4 v0, 0x0

    .line 1346
    .local v0, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :try_start_1e
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v0

    .line 1347
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->status(Ljava/lang/String;[Ljava/lang/String;)Lcom/sun/mail/imap/protocol/Status;

    move-result-object v1

    .line 1349
    .local v1, "s":Lcom/sun/mail/imap/protocol/Status;
    if-lez v2, :cond_33

    .line 1350
    iput-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->cachedStatus:Lcom/sun/mail/imap/protocol/Status;

    .line 1351
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sun/mail/imap/IMAPFolder;->cachedStatusTime:J
    :try_end_33
    .catchall {:try_start_1e .. :try_end_33} :catchall_37

    .line 1355
    :cond_33
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    goto :goto_1c

    .line 1354
    .end local v1    # "s":Lcom/sun/mail/imap/protocol/Status;
    :catchall_37
    move-exception v3

    .line 1355
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1356
    throw v3
.end method

.method private isDirectory()Z
    .registers 2

    .prologue
    .line 2708
    iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private keepConnectionAlive(Z)V
    .registers 10
    .param p1, "keepStoreAlive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x3e8

    .line 2670
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getTimestamp()J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v1, v2, v6

    if-lez v1, :cond_19

    .line 2671
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->waitIfIdle()V

    .line 2672
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noop()V

    .line 2675
    :cond_19
    if-eqz p1, :cond_45

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v1, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPStore;->hasSeparateStoreConnection()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 2676
    const/4 v0, 0x0

    .line 2678
    .local v0, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :try_start_26
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v1, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPStore;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v0

    .line 2679
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getTimestamp()J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v1, v2, v6

    if-lez v1, :cond_3e

    .line 2680
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noop()V
    :try_end_3e
    .catchall {:try_start_26 .. :try_end_3e} :catchall_46

    .line 2682
    :cond_3e
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v1, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v1, v0}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 2685
    .end local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :cond_45
    return-void

    .line 2681
    .restart local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catchall_46
    move-exception v1

    move-object v2, v1

    .line 2682
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v1, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v1, v0}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 2683
    throw v2
.end method

.method private releaseProtocol(Z)V
    .registers 4
    .param p1, "returnToPool"    # Z

    .prologue
    .line 2649
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v0, :cond_14

    .line 2650
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v0, p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->removeResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    .line 2652
    if-eqz p1, :cond_15

    .line 2653
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/imap/IMAPStore;

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v0, p0, v1}, Lcom/sun/mail/imap/IMAPStore;->releaseProtocol(Lcom/sun/mail/imap/IMAPFolder;Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 2657
    :cond_14
    :goto_14
    return-void

    .line 2655
    :cond_15
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/imap/IMAPStore;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/sun/mail/imap/IMAPStore;->releaseProtocol(Lcom/sun/mail/imap/IMAPFolder;Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    goto :goto_14
.end method

.method private setACL(Lcom/sun/mail/imap/ACL;C)V
    .registers 5
    .param p1, "acl"    # Lcom/sun/mail/imap/ACL;
    .param p2, "mod"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2140
    const-string v0, "ACL not supported"

    .line 2141
    new-instance v1, Lcom/sun/mail/imap/IMAPFolder$18;

    invoke-direct {v1, p0, p2, p1}, Lcom/sun/mail/imap/IMAPFolder$18;-><init>(Lcom/sun/mail/imap/IMAPFolder;CLcom/sun/mail/imap/ACL;)V

    .line 2140
    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    .line 2148
    return-void
.end method

.method private declared-synchronized throwClosedException(Lcom/sun/mail/iap/ConnectionException;)V
    .registers 5
    .param p1, "cex"    # Lcom/sun/mail/iap/ConnectionException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/FolderClosedException;,
            Ljavax/mail/StoreClosedException;
        }
    .end annotation

    .prologue
    .line 2449
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lcom/sun/mail/iap/ConnectionException;->getProtocol()Lcom/sun/mail/iap/Protocol;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eq v0, v1, :cond_15

    .line 2450
    :cond_d
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-nez v0, :cond_22

    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->reallyClosed:Z

    if-nez v0, :cond_22

    .line 2451
    :cond_15
    new-instance v0, Ljavax/mail/FolderClosedException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v0
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_1f

    .line 2449
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2453
    :cond_22
    :try_start_22
    new-instance v0, Ljavax/mail/StoreClosedException;

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V

    throw v0
    :try_end_2e
    .catchall {:try_start_22 .. :try_end_2e} :catchall_1f
.end method


# virtual methods
.method public addACL(Lcom/sun/mail/imap/ACL;)V
    .registers 3
    .param p1, "acl"    # Lcom/sun/mail/imap/ACL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2045
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder;->setACL(Lcom/sun/mail/imap/ACL;C)V

    .line 2046
    return-void
.end method

.method public declared-synchronized addMessages([Ljavax/mail/Message;)[Ljavax/mail/Message;
    .registers 10
    .param p1, "msgs"    # [Ljavax/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1490
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 1491
    array-length v4, p1

    new-array v2, v4, [Ljavax/mail/internet/MimeMessage;

    .line 1492
    .local v2, "rmsgs":[Ljavax/mail/Message;
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->appendUIDMessages([Ljavax/mail/Message;)[Lcom/sun/mail/imap/AppendUID;

    move-result-object v3

    .line 1493
    .local v3, "uids":[Lcom/sun/mail/imap/AppendUID;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    array-length v4, v3
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_28

    if-lt v1, v4, :cond_11

    .line 1505
    monitor-exit p0

    return-object v2

    .line 1494
    :cond_11
    :try_start_11
    aget-object v0, v3, v1

    .line 1495
    .local v0, "auid":Lcom/sun/mail/imap/AppendUID;
    if-eqz v0, :cond_25

    .line 1496
    iget-wide v4, v0, Lcom/sun/mail/imap/AppendUID;->uidvalidity:J

    iget-wide v6, p0, Lcom/sun/mail/imap/IMAPFolder;->uidvalidity:J
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_28

    cmp-long v4, v4, v6

    if-nez v4, :cond_25

    .line 1498
    :try_start_1d
    iget-wide v4, v0, Lcom/sun/mail/imap/AppendUID;->uid:J

    invoke-virtual {p0, v4, v5}, Lcom/sun/mail/imap/IMAPFolder;->getMessageByUID(J)Ljavax/mail/Message;

    move-result-object v4

    aput-object v4, v2, v1
    :try_end_25
    .catch Ljavax/mail/MessagingException; {:try_start_1d .. :try_end_25} :catch_2b
    .catchall {:try_start_1d .. :try_end_25} :catchall_28

    .line 1493
    :cond_25
    :goto_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1490
    .end local v0    # "auid":Lcom/sun/mail/imap/AppendUID;
    .end local v1    # "i":I
    .end local v2    # "rmsgs":[Ljavax/mail/Message;
    .end local v3    # "uids":[Lcom/sun/mail/imap/AppendUID;
    :catchall_28
    move-exception v4

    monitor-exit p0

    throw v4

    .line 1499
    .restart local v0    # "auid":Lcom/sun/mail/imap/AppendUID;
    .restart local v1    # "i":I
    .restart local v2    # "rmsgs":[Ljavax/mail/Message;
    .restart local v3    # "uids":[Lcom/sun/mail/imap/AppendUID;
    :catch_2b
    move-exception v4

    goto :goto_25
.end method

.method public addRights(Lcom/sun/mail/imap/ACL;)V
    .registers 3
    .param p1, "acl"    # Lcom/sun/mail/imap/ACL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2077
    const/16 v0, 0x2b

    invoke-direct {p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder;->setACL(Lcom/sun/mail/imap/ACL;C)V

    .line 2078
    return-void
.end method

.method public declared-synchronized appendMessages([Ljavax/mail/Message;)V
    .registers 13
    .param p1, "msgs"    # [Ljavax/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1375
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V

    .line 1382
    iget-object v9, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v9, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v9}, Lcom/sun/mail/imap/IMAPStore;->getAppendBufferSize()I

    move-result v6

    .line 1384
    .local v6, "maxsize":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_d
    array-length v9, p1
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_45

    if-lt v4, v9, :cond_12

    .line 1412
    monitor-exit p0

    return-void

    .line 1385
    :cond_12
    :try_start_12
    aget-object v5, p1, v4
    :try_end_14
    .catchall {:try_start_12 .. :try_end_14} :catchall_45

    .line 1390
    .local v5, "m":Ljavax/mail/Message;
    :try_start_14
    new-instance v7, Lcom/sun/mail/imap/MessageLiteral;

    .line 1391
    invoke-virtual {v5}, Ljavax/mail/Message;->getSize()I

    move-result v9

    if-le v9, v6, :cond_3a

    const/4 v9, 0x0

    .line 1390
    :goto_1d
    invoke-direct {v7, v5, v9}, Lcom/sun/mail/imap/MessageLiteral;-><init>(Ljavax/mail/Message;I)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_20} :catch_3c
    .catch Ljavax/mail/MessageRemovedException; {:try_start_14 .. :try_end_20} :catch_48
    .catchall {:try_start_14 .. :try_end_20} :catchall_45

    .line 1399
    .local v7, "mos":Lcom/sun/mail/imap/MessageLiteral;
    :try_start_20
    invoke-virtual {v5}, Ljavax/mail/Message;->getReceivedDate()Ljava/util/Date;

    move-result-object v0

    .line 1400
    .local v0, "d":Ljava/util/Date;
    if-nez v0, :cond_2a

    .line 1401
    invoke-virtual {v5}, Ljavax/mail/Message;->getSentDate()Ljava/util/Date;

    move-result-object v0

    .line 1402
    :cond_2a
    move-object v1, v0

    .line 1403
    .local v1, "dd":Ljava/util/Date;
    invoke-virtual {v5}, Ljavax/mail/Message;->getFlags()Ljavax/mail/Flags;

    move-result-object v3

    .line 1404
    .local v3, "f":Ljavax/mail/Flags;
    new-instance v9, Lcom/sun/mail/imap/IMAPFolder$10;

    invoke-direct {v9, p0, v3, v1, v7}, Lcom/sun/mail/imap/IMAPFolder$10;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljavax/mail/Flags;Ljava/util/Date;Lcom/sun/mail/imap/MessageLiteral;)V

    invoke-virtual {p0, v9}, Lcom/sun/mail/imap/IMAPFolder;->doCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    .line 1384
    .end local v0    # "d":Ljava/util/Date;
    .end local v1    # "dd":Ljava/util/Date;
    .end local v3    # "f":Ljavax/mail/Flags;
    .end local v7    # "mos":Lcom/sun/mail/imap/MessageLiteral;
    :goto_37
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_3a
    move v9, v6

    .line 1391
    goto :goto_1d

    .line 1392
    :catch_3c
    move-exception v2

    .line 1393
    .local v2, "ex":Ljava/io/IOException;
    new-instance v9, Ljavax/mail/MessagingException;

    .line 1394
    const-string v10, "IOException while appending messages"

    .line 1393
    invoke-direct {v9, v10, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v9
    :try_end_45
    .catchall {:try_start_20 .. :try_end_45} :catchall_45

    .line 1375
    .end local v2    # "ex":Ljava/io/IOException;
    .end local v4    # "i":I
    .end local v5    # "m":Ljavax/mail/Message;
    .end local v6    # "maxsize":I
    :catchall_45
    move-exception v9

    monitor-exit p0

    throw v9

    .line 1395
    .restart local v4    # "i":I
    .restart local v5    # "m":Ljavax/mail/Message;
    .restart local v6    # "maxsize":I
    :catch_48
    move-exception v8

    .line 1396
    .local v8, "mrex":Ljavax/mail/MessageRemovedException;
    goto :goto_37
.end method

.method public declared-synchronized appendUIDMessages([Ljavax/mail/Message;)[Lcom/sun/mail/imap/AppendUID;
    .registers 15
    .param p1, "msgs"    # [Ljavax/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1431
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V

    .line 1438
    iget-object v11, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v11, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v11}, Lcom/sun/mail/imap/IMAPStore;->getAppendBufferSize()I

    move-result v7

    .line 1440
    .local v7, "maxsize":I
    array-length v11, p1

    new-array v10, v11, [Lcom/sun/mail/imap/AppendUID;

    .line 1441
    .local v10, "uids":[Lcom/sun/mail/imap/AppendUID;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_10
    array-length v11, p1
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_4d

    if-lt v5, v11, :cond_15

    .line 1469
    monitor-exit p0

    return-object v10

    .line 1442
    :cond_15
    :try_start_15
    aget-object v6, p1, v5
    :try_end_17
    .catchall {:try_start_15 .. :try_end_17} :catchall_4d

    .line 1447
    .local v6, "m":Ljavax/mail/Message;
    :try_start_17
    new-instance v8, Lcom/sun/mail/imap/MessageLiteral;

    .line 1448
    invoke-virtual {v6}, Ljavax/mail/Message;->getSize()I

    move-result v11

    if-le v11, v7, :cond_42

    const/4 v11, 0x0

    .line 1447
    :goto_20
    invoke-direct {v8, v6, v11}, Lcom/sun/mail/imap/MessageLiteral;-><init>(Ljavax/mail/Message;I)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_23} :catch_44
    .catch Ljavax/mail/MessageRemovedException; {:try_start_17 .. :try_end_23} :catch_50
    .catchall {:try_start_17 .. :try_end_23} :catchall_4d

    .line 1456
    .local v8, "mos":Lcom/sun/mail/imap/MessageLiteral;
    :try_start_23
    invoke-virtual {v6}, Ljavax/mail/Message;->getReceivedDate()Ljava/util/Date;

    move-result-object v1

    .line 1457
    .local v1, "d":Ljava/util/Date;
    if-nez v1, :cond_2d

    .line 1458
    invoke-virtual {v6}, Ljavax/mail/Message;->getSentDate()Ljava/util/Date;

    move-result-object v1

    .line 1459
    :cond_2d
    move-object v2, v1

    .line 1460
    .local v2, "dd":Ljava/util/Date;
    invoke-virtual {v6}, Ljavax/mail/Message;->getFlags()Ljavax/mail/Flags;

    move-result-object v4

    .line 1461
    .local v4, "f":Ljavax/mail/Flags;
    new-instance v11, Lcom/sun/mail/imap/IMAPFolder$11;

    invoke-direct {v11, p0, v4, v2, v8}, Lcom/sun/mail/imap/IMAPFolder$11;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljavax/mail/Flags;Ljava/util/Date;Lcom/sun/mail/imap/MessageLiteral;)V

    invoke-virtual {p0, v11}, Lcom/sun/mail/imap/IMAPFolder;->doCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/mail/imap/AppendUID;

    .line 1467
    .local v0, "auid":Lcom/sun/mail/imap/AppendUID;
    aput-object v0, v10, v5

    .line 1441
    .end local v0    # "auid":Lcom/sun/mail/imap/AppendUID;
    .end local v1    # "d":Ljava/util/Date;
    .end local v2    # "dd":Ljava/util/Date;
    .end local v4    # "f":Ljavax/mail/Flags;
    .end local v8    # "mos":Lcom/sun/mail/imap/MessageLiteral;
    :goto_3f
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :cond_42
    move v11, v7

    .line 1448
    goto :goto_20

    .line 1449
    :catch_44
    move-exception v3

    .line 1450
    .local v3, "ex":Ljava/io/IOException;
    new-instance v11, Ljavax/mail/MessagingException;

    .line 1451
    const-string v12, "IOException while appending messages"

    .line 1450
    invoke-direct {v11, v12, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v11
    :try_end_4d
    .catchall {:try_start_23 .. :try_end_4d} :catchall_4d

    .line 1431
    .end local v3    # "ex":Ljava/io/IOException;
    .end local v5    # "i":I
    .end local v6    # "m":Ljavax/mail/Message;
    .end local v7    # "maxsize":I
    .end local v10    # "uids":[Lcom/sun/mail/imap/AppendUID;
    :catchall_4d
    move-exception v11

    monitor-exit p0

    throw v11

    .line 1452
    .restart local v5    # "i":I
    .restart local v6    # "m":Ljavax/mail/Message;
    .restart local v7    # "maxsize":I
    .restart local v10    # "uids":[Lcom/sun/mail/imap/AppendUID;
    :catch_50
    move-exception v9

    .line 1453
    .local v9, "mrex":Ljavax/mail/MessageRemovedException;
    goto :goto_3f
.end method

.method public declared-synchronized close(Z)V
    .registers 3
    .param p1, "expunge"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1042
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder;->close(ZZ)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 1043
    monitor-exit p0

    return-void

    .line 1042
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized copyMessages([Ljavax/mail/Message;Ljavax/mail/Folder;)V
    .registers 12
    .param p1, "msgs"    # [Ljavax/mail/Message;
    .param p2, "folder"    # Ljavax/mail/Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1514
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 1516
    array-length v5, p1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_55

    if-nez v5, :cond_9

    .line 1545
    :goto_7
    monitor-exit p0

    return-void

    .line 1520
    :cond_9
    :try_start_9
    invoke-virtual {p2}, Ljavax/mail/Folder;->getStore()Ljavax/mail/Store;

    move-result-object v5

    iget-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    if-ne v5, v6, :cond_81

    .line 1521
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_55

    .line 1523
    :try_start_14
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v3

    .line 1524
    .local v3, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    const/4 v5, 0x0

    invoke-static {p1, v5}, Lcom/sun/mail/imap/Utility;->toMessageSet([Ljavax/mail/Message;Lcom/sun/mail/imap/Utility$Condition;)[Lcom/sun/mail/imap/protocol/MessageSet;

    move-result-object v2

    .line 1525
    .local v2, "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    if-nez v2, :cond_58

    .line 1526
    new-instance v5, Ljavax/mail/MessageRemovedException;

    .line 1527
    const-string v7, "Messages have been removed"

    .line 1526
    invoke-direct {v5, v7}, Ljavax/mail/MessageRemovedException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_27
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_14 .. :try_end_27} :catch_27
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_14 .. :try_end_27} :catch_6b
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_14 .. :try_end_27} :catch_76
    .catchall {:try_start_14 .. :try_end_27} :catchall_52

    .line 1529
    .end local v2    # "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    .end local v3    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catch_27
    move-exception v1

    .line 1530
    .local v1, "cfx":Lcom/sun/mail/iap/CommandFailedException;
    :try_start_28
    invoke-virtual {v1}, Lcom/sun/mail/iap/CommandFailedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    const-string v7, "TRYCREATE"

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_61

    .line 1531
    new-instance v5, Ljavax/mail/FolderNotFoundException;

    .line 1533
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljavax/mail/Folder;->getFullName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " does not exist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1531
    invoke-direct {v5, p2, v7}, Ljavax/mail/FolderNotFoundException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v5

    .line 1521
    .end local v1    # "cfx":Lcom/sun/mail/iap/CommandFailedException;
    :catchall_52
    move-exception v5

    monitor-exit v6
    :try_end_54
    .catchall {:try_start_28 .. :try_end_54} :catchall_52

    :try_start_54
    throw v5
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_55

    .line 1514
    :catchall_55
    move-exception v5

    monitor-exit p0

    throw v5

    .line 1528
    .restart local v2    # "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    .restart local v3    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :cond_58
    :try_start_58
    invoke-virtual {p2}, Ljavax/mail/Folder;->getFullName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->copy([Lcom/sun/mail/imap/protocol/MessageSet;Ljava/lang/String;)V
    :try_end_5f
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_58 .. :try_end_5f} :catch_27
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_58 .. :try_end_5f} :catch_6b
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_58 .. :try_end_5f} :catch_76
    .catchall {:try_start_58 .. :try_end_5f} :catchall_52

    .line 1521
    :try_start_5f
    monitor-exit v6

    goto :goto_7

    .line 1536
    .end local v2    # "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    .end local v3    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v1    # "cfx":Lcom/sun/mail/iap/CommandFailedException;
    :cond_61
    new-instance v5, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/CommandFailedException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5

    .line 1537
    .end local v1    # "cfx":Lcom/sun/mail/iap/CommandFailedException;
    :catch_6b
    move-exception v0

    .line 1538
    .local v0, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v5, Ljavax/mail/FolderClosedException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, p0, v7}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v5

    .line 1539
    .end local v0    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catch_76
    move-exception v4

    .line 1540
    .local v4, "pex":Lcom/sun/mail/iap/ProtocolException;
    new-instance v5, Ljavax/mail/MessagingException;

    invoke-virtual {v4}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5
    :try_end_81
    .catchall {:try_start_5f .. :try_end_81} :catchall_52

    .line 1544
    .end local v4    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :cond_81
    :try_start_81
    invoke-super {p0, p1, p2}, Ljavax/mail/Folder;->copyMessages([Ljavax/mail/Message;Ljavax/mail/Folder;)V
    :try_end_84
    .catchall {:try_start_81 .. :try_end_84} :catchall_55

    goto :goto_7
.end method

.method public declared-synchronized create(I)Z
    .registers 7
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 721
    monitor-enter p0

    const/4 v0, 0x0

    .line 722
    .local v0, "c":C
    and-int/lit8 v4, p1, 0x1

    if-nez v4, :cond_a

    .line 723
    :try_start_6
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getSeparator()C

    move-result v0

    .line 724
    :cond_a
    move v3, v0

    .line 725
    .local v3, "sep":C
    new-instance v4, Lcom/sun/mail/imap/IMAPFolder$6;

    invoke-direct {v4, p0, p1, v3}, Lcom/sun/mail/imap/IMAPFolder$6;-><init>(Lcom/sun/mail/imap/IMAPFolder;IC)V

    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/IMAPFolder;->doCommandIgnoreFailure(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_24

    move-result-object v1

    .line 753
    .local v1, "ret":Ljava/lang/Object;
    if-nez v1, :cond_19

    .line 754
    const/4 v2, 0x0

    .line 762
    :cond_17
    :goto_17
    monitor-exit p0

    return v2

    .line 759
    :cond_19
    :try_start_19
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->exists()Z

    move-result v2

    .line 760
    .local v2, "retb":Z
    if-eqz v2, :cond_17

    .line 761
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/IMAPFolder;->notifyFolderListeners(I)V
    :try_end_23
    .catchall {:try_start_19 .. :try_end_23} :catchall_24

    goto :goto_17

    .line 721
    .end local v1    # "ret":Ljava/lang/Object;
    .end local v2    # "retb":Z
    .end local v3    # "sep":C
    :catchall_24
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized delete(Z)Z
    .registers 7
    .param p1, "recurse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 831
    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkClosed()V

    .line 833
    if-eqz p1, :cond_f

    .line 835
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->list()[Ljavax/mail/Folder;

    move-result-object v0

    .line 836
    .local v0, "f":[Ljavax/mail/Folder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    array-length v4, v0

    if-lt v1, v4, :cond_1c

    .line 842
    .end local v0    # "f":[Ljavax/mail/Folder;
    .end local v1    # "i":I
    :cond_f
    new-instance v4, Lcom/sun/mail/imap/IMAPFolder$8;

    invoke-direct {v4, p0}, Lcom/sun/mail/imap/IMAPFolder$8;-><init>(Lcom/sun/mail/imap/IMAPFolder;)V

    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/IMAPFolder;->doCommandIgnoreFailure(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
    :try_end_17
    .catchall {:try_start_2 .. :try_end_17} :catchall_30

    move-result-object v2

    .line 849
    .local v2, "ret":Ljava/lang/Object;
    if-nez v2, :cond_24

    .line 859
    :goto_1a
    monitor-exit p0

    return v3

    .line 837
    .end local v2    # "ret":Ljava/lang/Object;
    .restart local v0    # "f":[Ljavax/mail/Folder;
    .restart local v1    # "i":I
    :cond_1c
    :try_start_1c
    aget-object v4, v0, v1

    invoke-virtual {v4, p1}, Ljavax/mail/Folder;->delete(Z)Z

    .line 836
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 854
    .end local v0    # "f":[Ljavax/mail/Folder;
    .end local v1    # "i":I
    .restart local v2    # "ret":Ljava/lang/Object;
    :cond_24
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    .line 855
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    .line 858
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/IMAPFolder;->notifyFolderListeners(I)V
    :try_end_2e
    .catchall {:try_start_1c .. :try_end_2e} :catchall_30

    .line 859
    const/4 v3, 0x1

    goto :goto_1a

    .line 831
    .end local v2    # "ret":Ljava/lang/Object;
    :catchall_30
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public doCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
    .registers 6
    .param p1, "cmd"    # Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2570
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->doProtocolCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
    :try_end_3
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_0 .. :try_end_3} :catch_5
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_0 .. :try_end_3} :catch_b

    move-result-object v2

    .line 2577
    :goto_4
    return-object v2

    .line 2571
    :catch_5
    move-exception v0

    .line 2573
    .local v0, "cex":Lcom/sun/mail/iap/ConnectionException;
    invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->throwClosedException(Lcom/sun/mail/iap/ConnectionException;)V

    .line 2577
    const/4 v2, 0x0

    goto :goto_4

    .line 2574
    .end local v0    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catch_b
    move-exception v1

    .line 2575
    .local v1, "pex":Lcom/sun/mail/iap/ProtocolException;
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method public doCommandIgnoreFailure(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
    .registers 7
    .param p1, "cmd"    # Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2598
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->doProtocolCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
    :try_end_4
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_1 .. :try_end_4} :catch_6
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_4} :catch_8
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_4} :catch_d

    move-result-object v3

    .line 2607
    :goto_5
    return-object v3

    .line 2599
    :catch_6
    move-exception v1

    .line 2600
    .local v1, "cfx":Lcom/sun/mail/iap/CommandFailedException;
    goto :goto_5

    .line 2601
    .end local v1    # "cfx":Lcom/sun/mail/iap/CommandFailedException;
    :catch_8
    move-exception v0

    .line 2603
    .local v0, "cex":Lcom/sun/mail/iap/ConnectionException;
    invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->throwClosedException(Lcom/sun/mail/iap/ConnectionException;)V

    goto :goto_5

    .line 2604
    .end local v0    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catch_d
    move-exception v2

    .line 2605
    .local v2, "pex":Lcom/sun/mail/iap/ProtocolException;
    new-instance v3, Ljavax/mail/MessagingException;

    invoke-virtual {v2}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method

.method public doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
    .registers 8
    .param p1, "err"    # Ljava/lang/String;
    .param p2, "cmd"    # Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2583
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/sun/mail/imap/IMAPFolder;->doProtocolCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
    :try_end_3
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_0 .. :try_end_3} :catch_5
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_0 .. :try_end_3} :catch_c
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_0 .. :try_end_3} :catch_12

    move-result-object v3

    .line 2592
    :goto_4
    return-object v3

    .line 2584
    :catch_5
    move-exception v0

    .line 2585
    .local v0, "bex":Lcom/sun/mail/iap/BadCommandException;
    new-instance v3, Ljavax/mail/MessagingException;

    invoke-direct {v3, p1, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 2586
    .end local v0    # "bex":Lcom/sun/mail/iap/BadCommandException;
    :catch_c
    move-exception v1

    .line 2588
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    invoke-direct {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->throwClosedException(Lcom/sun/mail/iap/ConnectionException;)V

    .line 2592
    const/4 v3, 0x0

    goto :goto_4

    .line 2589
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catch_12
    move-exception v2

    .line 2590
    .local v2, "pex":Lcom/sun/mail/iap/ProtocolException;
    new-instance v3, Ljavax/mail/MessagingException;

    invoke-virtual {v2}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method

.method protected doProtocolCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
    .registers 5
    .param p1, "cmd"    # Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 2612
    monitor-enter p0

    .line 2614
    :try_start_1
    iget-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v1, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPStore;->hasSeparateStoreConnection()Z

    move-result v1

    if-nez v1, :cond_23

    .line 2615
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_20

    .line 2616
    :try_start_12
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;->doCommand(Lcom/sun/mail/imap/protocol/IMAPProtocol;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1d

    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_20

    .line 2626
    :goto_1c
    return-object v1

    .line 2615
    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    :try_start_1f
    throw v1

    .line 2612
    :catchall_20
    move-exception v1

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_20

    throw v1

    :cond_23
    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_20

    .line 2622
    const/4 v0, 0x0

    .line 2625
    .local v0, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :try_start_25
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v0

    .line 2626
    invoke-interface {p1, v0}, Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;->doCommand(Lcom/sun/mail/imap/protocol/IMAPProtocol;)Ljava/lang/Object;
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_31

    move-result-object v1

    .line 2628
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    goto :goto_1c

    .line 2627
    :catchall_31
    move-exception v1

    .line 2628
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 2629
    throw v1
.end method

.method public declared-synchronized exists()Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 512
    monitor-enter p0

    const/4 v2, 0x0

    :try_start_2
    check-cast v2, [Lcom/sun/mail/imap/protocol/ListInfo;

    .line 514
    .local v2, "li":[Lcom/sun/mail/imap/protocol/ListInfo;
    iget-boolean v4, p0, Lcom/sun/mail/imap/IMAPFolder;->isNamespace:Z

    if-eqz v4, :cond_89

    iget-char v4, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    if-eqz v4, :cond_89

    .line 515
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-char v5, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 519
    .local v3, "lname":Ljava/lang/String;
    :goto_21
    new-instance v4, Lcom/sun/mail/imap/IMAPFolder$1;

    invoke-direct {v4, p0, v3}, Lcom/sun/mail/imap/IMAPFolder$1;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/IMAPFolder;->doCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "li":[Lcom/sun/mail/imap/protocol/ListInfo;
    check-cast v2, [Lcom/sun/mail/imap/protocol/ListInfo;

    .line 525
    .restart local v2    # "li":[Lcom/sun/mail/imap/protocol/ListInfo;
    if-eqz v2, :cond_8c

    .line 526
    invoke-direct {p0, v2, v3}, Lcom/sun/mail/imap/IMAPFolder;->findName([Lcom/sun/mail/imap/protocol/ListInfo;Ljava/lang/String;)I

    move-result v0

    .line 527
    .local v0, "i":I
    aget-object v4, v2, v0

    iget-object v4, v4, Lcom/sun/mail/imap/protocol/ListInfo;->name:Ljava/lang/String;

    iput-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    .line 528
    aget-object v4, v2, v0

    iget-char v4, v4, Lcom/sun/mail/imap/protocol/ListInfo;->separator:C

    iput-char v4, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    .line 529
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 530
    .local v1, "len":I
    iget-char v4, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    if-eqz v4, :cond_61

    if-lez v1, :cond_61

    .line 531
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iget-char v5, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    if-ne v4, v5, :cond_61

    .line 532
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    const/4 v5, 0x0

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    .line 534
    :cond_61
    const/4 v4, 0x0

    iput v4, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    .line 535
    aget-object v4, v2, v0

    iget-boolean v4, v4, Lcom/sun/mail/imap/protocol/ListInfo;->hasInferiors:Z

    if-eqz v4, :cond_70

    .line 536
    iget v4, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    .line 537
    :cond_70
    aget-object v4, v2, v0

    iget-boolean v4, v4, Lcom/sun/mail/imap/protocol/ListInfo;->canOpen:Z

    if-eqz v4, :cond_7c

    .line 538
    iget v4, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    .line 539
    :cond_7c
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    .line 540
    aget-object v4, v2, v0

    iget-object v4, v4, Lcom/sun/mail/imap/protocol/ListInfo;->attrs:[Ljava/lang/String;

    iput-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    .line 546
    .end local v0    # "i":I
    .end local v1    # "len":I
    :goto_85
    iget-boolean v4, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z
    :try_end_87
    .catchall {:try_start_2 .. :try_end_87} :catchall_94

    monitor-exit p0

    return v4

    .line 517
    .end local v3    # "lname":Ljava/lang/String;
    :cond_89
    :try_start_89
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    .restart local v3    # "lname":Ljava/lang/String;
    goto :goto_21

    .line 542
    :cond_8c
    iget-boolean v4, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    iput-boolean v4, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    .line 543
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;
    :try_end_93
    .catchall {:try_start_89 .. :try_end_93} :catchall_94

    goto :goto_85

    .line 512
    .end local v2    # "li":[Lcom/sun/mail/imap/protocol/ListInfo;
    .end local v3    # "lname":Ljava/lang/String;
    :catchall_94
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized expunge()[Ljavax/mail/Message;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1551
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->expunge([Ljavax/mail/Message;)[Ljavax/mail/Message;
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_8

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized expunge([Ljavax/mail/Message;)[Ljavax/mail/Message;
    .registers 20
    .param p1, "msgs"    # [Ljavax/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1559
    monitor-enter p0

    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 1561
    new-instance v12, Ljava/util/Vector;

    invoke-direct {v12}, Ljava/util/Vector;-><init>()V

    .line 1563
    .local v12, "v":Ljava/util/Vector;
    if-eqz p1, :cond_1c

    .line 1565
    new-instance v4, Ljavax/mail/FetchProfile;

    invoke-direct {v4}, Ljavax/mail/FetchProfile;-><init>()V

    .line 1566
    .local v4, "fp":Ljavax/mail/FetchProfile;
    sget-object v13, Ljavax/mail/UIDFolder$FetchProfileItem;->UID:Ljavax/mail/UIDFolder$FetchProfileItem;

    invoke-virtual {v4, v13}, Ljavax/mail/FetchProfile;->add(Ljavax/mail/FetchProfile$Item;)V

    .line 1567
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lcom/sun/mail/imap/IMAPFolder;->fetch([Ljavax/mail/Message;Ljavax/mail/FetchProfile;)V

    .line 1570
    .end local v4    # "fp":Ljavax/mail/FetchProfile;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v14
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_95

    .line 1571
    const/4 v13, 0x0

    :try_start_22
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sun/mail/imap/IMAPFolder;->doExpungeNotification:Z
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_92

    .line 1573
    :try_start_26
    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v7

    .line 1574
    .local v7, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    if-eqz p1, :cond_64

    .line 1575
    invoke-static/range {p1 .. p1}, Lcom/sun/mail/imap/Utility;->toUIDSet([Ljavax/mail/Message;)[Lcom/sun/mail/imap/protocol/UIDSet;

    move-result-object v13

    invoke-virtual {v7, v13}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->uidexpunge([Lcom/sun/mail/imap/protocol/UIDSet;)V
    :try_end_33
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_26 .. :try_end_33} :catch_68
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_26 .. :try_end_33} :catch_a2
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_26 .. :try_end_33} :catch_af
    .catchall {:try_start_26 .. :try_end_33} :catchall_8b

    .line 1591
    :goto_33
    const/4 v13, 0x1

    :try_start_34
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sun/mail/imap/IMAPFolder;->doExpungeNotification:Z

    .line 1596
    const/4 v5, 0x0

    .local v5, "i":I
    :cond_39
    :goto_39
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Ljava/util/Vector;

    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    move-result v13

    if-lt v5, v13, :cond_ba

    .line 1570
    monitor-exit v14
    :try_end_44
    .catchall {:try_start_34 .. :try_end_44} :catchall_92

    .line 1628
    :try_start_44
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Ljava/util/Vector;

    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    .line 1631
    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v13

    new-array v9, v13, [Ljavax/mail/Message;

    .line 1632
    .local v9, "rmsgs":[Ljavax/mail/Message;
    invoke-virtual {v12, v9}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 1633
    array-length v13, v9

    if-lez v13, :cond_62

    .line 1634
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v9}, Lcom/sun/mail/imap/IMAPFolder;->notifyMessageRemovedListeners(Z[Ljavax/mail/Message;)V
    :try_end_62
    .catchall {:try_start_44 .. :try_end_62} :catchall_95

    .line 1635
    :cond_62
    monitor-exit p0

    return-object v9

    .line 1577
    .end local v5    # "i":I
    .end local v9    # "rmsgs":[Ljavax/mail/Message;
    :cond_64
    :try_start_64
    invoke-virtual {v7}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->expunge()V
    :try_end_67
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_64 .. :try_end_67} :catch_68
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_64 .. :try_end_67} :catch_a2
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_64 .. :try_end_67} :catch_af
    .catchall {:try_start_64 .. :try_end_67} :catchall_8b

    goto :goto_33

    .line 1578
    .end local v7    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catch_68
    move-exception v3

    .line 1580
    .local v3, "cfx":Lcom/sun/mail/iap/CommandFailedException;
    :try_start_69
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sun/mail/imap/IMAPFolder;->mode:I

    const/4 v15, 0x2

    if-eq v13, v15, :cond_98

    .line 1581
    new-instance v13, Ljava/lang/IllegalStateException;

    .line 1582
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Cannot expunge READ_ONLY folder: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1581
    invoke-direct {v13, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_8b
    .catchall {:try_start_69 .. :try_end_8b} :catchall_8b

    .line 1590
    .end local v3    # "cfx":Lcom/sun/mail/iap/CommandFailedException;
    :catchall_8b
    move-exception v13

    .line 1591
    const/4 v15, 0x1

    :try_start_8d
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/sun/mail/imap/IMAPFolder;->doExpungeNotification:Z

    .line 1592
    throw v13

    .line 1570
    :catchall_92
    move-exception v13

    monitor-exit v14
    :try_end_94
    .catchall {:try_start_8d .. :try_end_94} :catchall_92

    :try_start_94
    throw v13
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_95

    .line 1559
    .end local v12    # "v":Ljava/util/Vector;
    :catchall_95
    move-exception v13

    monitor-exit p0

    throw v13

    .line 1584
    .restart local v3    # "cfx":Lcom/sun/mail/iap/CommandFailedException;
    .restart local v12    # "v":Ljava/util/Vector;
    :cond_98
    :try_start_98
    new-instance v13, Ljavax/mail/MessagingException;

    invoke-virtual {v3}, Lcom/sun/mail/iap/CommandFailedException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v15, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v13

    .line 1585
    .end local v3    # "cfx":Lcom/sun/mail/iap/CommandFailedException;
    :catch_a2
    move-exception v2

    .line 1586
    .local v2, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v13, Ljavax/mail/FolderClosedException;

    invoke-virtual {v2}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v15}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v13

    .line 1587
    .end local v2    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catch_af
    move-exception v8

    .line 1589
    .local v8, "pex":Lcom/sun/mail/iap/ProtocolException;
    new-instance v13, Ljavax/mail/MessagingException;

    invoke-virtual {v8}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v15, v8}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v13
    :try_end_ba
    .catchall {:try_start_98 .. :try_end_ba} :catchall_8b

    .line 1597
    .end local v8    # "pex":Lcom/sun/mail/iap/ProtocolException;
    .restart local v5    # "i":I
    .restart local v7    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :cond_ba
    :try_start_ba
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Ljava/util/Vector;

    invoke-virtual {v13, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/mail/imap/IMAPMessage;

    .line 1598
    .local v6, "m":Lcom/sun/mail/imap/IMAPMessage;
    invoke-virtual {v6}, Lcom/sun/mail/imap/IMAPMessage;->isExpunged()Z

    move-result v13

    if-eqz v13, :cond_f2

    .line 1599
    invoke-virtual {v12, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1609
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Ljava/util/Vector;

    invoke-virtual {v13, v5}, Ljava/util/Vector;->removeElementAt(I)V

    .line 1612
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    if-eqz v13, :cond_39

    .line 1613
    invoke-virtual {v6}, Lcom/sun/mail/imap/IMAPMessage;->getUID()J

    move-result-wide v10

    .line 1614
    .local v10, "uid":J
    const-wide/16 v16, -0x1

    cmp-long v13, v10, v16

    if-eqz v13, :cond_39

    .line 1615
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    new-instance v15, Ljava/lang/Long;

    invoke-direct {v15, v10, v11}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v13, v15}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_39

    .line 1621
    .end local v10    # "uid":J
    :cond_f2
    invoke-virtual {v6}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v13

    invoke-virtual {v6, v13}, Lcom/sun/mail/imap/IMAPMessage;->setMessageNumber(I)V
    :try_end_f9
    .catchall {:try_start_ba .. :try_end_f9} :catchall_92

    .line 1622
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_39
.end method

.method public declared-synchronized fetch([Ljavax/mail/Message;Ljavax/mail/FetchProfile;)V
    .registers 4
    .param p1, "msgs"    # [Ljavax/mail/Message;
    .param p2, "fp"    # Ljavax/mail/FetchProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1007
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 1008
    invoke-static {p0, p1, p2}, Lcom/sun/mail/imap/IMAPMessage;->fetch(Lcom/sun/mail/imap/IMAPFolder;[Ljavax/mail/Message;Ljavax/mail/FetchProfile;)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 1009
    monitor-exit p0

    return-void

    .line 1007
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized forceClose()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1049
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_3
    invoke-direct {p0, v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->close(ZZ)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    .line 1050
    monitor-exit p0

    return-void

    .line 1049
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getACL()[Lcom/sun/mail/imap/ACL;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2027
    const-string v0, "ACL not supported"

    .line 2028
    new-instance v1, Lcom/sun/mail/imap/IMAPFolder$14;

    invoke-direct {v1, p0}, Lcom/sun/mail/imap/IMAPFolder$14;-><init>(Lcom/sun/mail/imap/IMAPFolder;)V

    .line 2027
    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/mail/imap/ACL;

    return-object v0
.end method

.method public getAttributes()[Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2157
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    if-nez v0, :cond_7

    .line 2158
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->exists()Z

    .line 2159
    :cond_7
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getDeletedMessageCount()I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1307
    monitor-enter p0

    :try_start_1
    iget-boolean v4, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-nez v4, :cond_b

    .line 1308
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_37

    .line 1310
    const/4 v4, -0x1

    .line 1320
    :goto_9
    monitor-exit p0

    return v4

    .line 1315
    :cond_b
    :try_start_b
    new-instance v1, Ljavax/mail/Flags;

    invoke-direct {v1}, Ljavax/mail/Flags;-><init>()V

    .line 1316
    .local v1, "f":Ljavax/mail/Flags;
    sget-object v4, Ljavax/mail/Flags$Flag;->DELETED:Ljavax/mail/Flags$Flag;

    invoke-virtual {v1, v4}, Ljavax/mail/Flags;->add(Ljavax/mail/Flags$Flag;)V
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_37

    .line 1318
    :try_start_15
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_18
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_15 .. :try_end_18} :catch_2c
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_15 .. :try_end_18} :catch_3a
    .catchall {:try_start_15 .. :try_end_18} :catchall_37

    .line 1319
    :try_start_18
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v4

    new-instance v6, Ljavax/mail/search/FlagTerm;

    const/4 v7, 0x1

    invoke-direct {v6, v1, v7}, Ljavax/mail/search/FlagTerm;-><init>(Ljavax/mail/Flags;Z)V

    invoke-virtual {v4, v6}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->search(Ljavax/mail/search/SearchTerm;)[I

    move-result-object v2

    .line 1320
    .local v2, "matches":[I
    array-length v4, v2

    monitor-exit v5

    goto :goto_9

    .line 1318
    .end local v2    # "matches":[I
    :catchall_29
    move-exception v4

    monitor-exit v5
    :try_end_2b
    .catchall {:try_start_18 .. :try_end_2b} :catchall_29

    :try_start_2b
    throw v4
    :try_end_2c
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2b .. :try_end_2c} :catch_2c
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2b .. :try_end_2c} :catch_3a
    .catchall {:try_start_2b .. :try_end_2c} :catchall_37

    .line 1322
    :catch_2c
    move-exception v0

    .line 1323
    .local v0, "cex":Lcom/sun/mail/iap/ConnectionException;
    :try_start_2d
    new-instance v4, Ljavax/mail/FolderClosedException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v4
    :try_end_37
    .catchall {:try_start_2d .. :try_end_37} :catchall_37

    .line 1307
    .end local v0    # "cex":Lcom/sun/mail/iap/ConnectionException;
    .end local v1    # "f":Ljavax/mail/Flags;
    :catchall_37
    move-exception v4

    monitor-exit p0

    throw v4

    .line 1324
    .restart local v1    # "f":Ljavax/mail/Flags;
    :catch_3a
    move-exception v3

    .line 1326
    .local v3, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_3b
    new-instance v4, Ljavax/mail/MessagingException;

    invoke-virtual {v3}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4
    :try_end_45
    .catchall {:try_start_3b .. :try_end_45} :catchall_37
.end method

.method public getFolder(Ljava/lang/String;)Ljavax/mail/Folder;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 819
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    if-eqz v1, :cond_12

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_12

    .line 820
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "Cannot contain subfolders"

    invoke-direct {v1, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 822
    :cond_12
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getSeparator()C

    move-result v0

    .line 823
    .local v0, "c":C
    new-instance v2, Lcom/sun/mail/imap/IMAPFolder;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v1, Lcom/sun/mail/imap/IMAPStore;

    invoke-direct {v2, v3, v0, v1}, Lcom/sun/mail/imap/IMAPFolder;-><init>(Ljava/lang/String;CLcom/sun/mail/imap/IMAPStore;)V

    return-object v2
.end method

.method public declared-synchronized getFullName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 491
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMessage(I)Ljavax/mail/Message;
    .registers 4
    .param p1, "msgnum"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1364
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 1365
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->checkRange(I)V

    .line 1367
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Ljava/util/Vector;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/Message;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-object v0

    .line 1364
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getMessageBySeqNumber(I)Lcom/sun/mail/imap/IMAPMessage;
    .registers 5
    .param p1, "seqnum"    # I

    .prologue
    .line 2699
    add-int/lit8 v0, p1, -0x1

    .local v0, "i":I
    :goto_2
    iget v2, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    if-lt v0, v2, :cond_8

    .line 2704
    const/4 v1, 0x0

    :cond_7
    return-object v1

    .line 2700
    :cond_8
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/mail/imap/IMAPMessage;

    .line 2701
    .local v1, "msg":Lcom/sun/mail/imap/IMAPMessage;
    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v2

    if-eq v2, p1, :cond_7

    .line 2699
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public declared-synchronized getMessageByUID(J)Ljavax/mail/Message;
    .registers 16
    .param p1, "uid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1801
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_59

    .line 1803
    const/4 v4, 0x0

    .line 1806
    .local v4, "m":Lcom/sun/mail/imap/IMAPMessage;
    :try_start_5
    iget-object v9, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_8
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_5 .. :try_end_8} :catch_4e
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_5 .. :try_end_8} :catch_5c
    .catchall {:try_start_5 .. :try_end_8} :catchall_59

    .line 1807
    :try_start_8
    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, p1, p2}, Ljava/lang/Long;-><init>(J)V

    .line 1809
    .local v3, "l":Ljava/lang/Long;
    iget-object v8, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    if-eqz v8, :cond_21

    .line 1811
    iget-object v8, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    invoke-virtual {v8, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lcom/sun/mail/imap/IMAPMessage;

    move-object v4, v0

    .line 1812
    if-eqz v4, :cond_28

    .line 1813
    monitor-exit v9
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_4b

    move-object v5, v4

    .line 1834
    .end local v4    # "m":Lcom/sun/mail/imap/IMAPMessage;
    .local v5, "m":Lcom/sun/mail/imap/IMAPMessage;
    :goto_1f
    monitor-exit p0

    return-object v5

    .line 1815
    .end local v5    # "m":Lcom/sun/mail/imap/IMAPMessage;
    .restart local v4    # "m":Lcom/sun/mail/imap/IMAPMessage;
    :cond_21
    :try_start_21
    new-instance v8, Ljava/util/Hashtable;

    invoke-direct {v8}, Ljava/util/Hashtable;-><init>()V

    iput-object v8, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    .line 1819
    :cond_28
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v8

    invoke-virtual {v8, p1, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchSequenceNumber(J)Lcom/sun/mail/imap/protocol/UID;

    move-result-object v7

    .line 1821
    .local v7, "u":Lcom/sun/mail/imap/protocol/UID;
    if-eqz v7, :cond_48

    iget v8, v7, Lcom/sun/mail/imap/protocol/UID;->seqnum:I

    iget v10, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    if-gt v8, v10, :cond_48

    .line 1822
    iget v8, v7, Lcom/sun/mail/imap/protocol/UID;->seqnum:I

    invoke-virtual {p0, v8}, Lcom/sun/mail/imap/IMAPFolder;->getMessageBySeqNumber(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v4

    .line 1823
    iget-wide v10, v7, Lcom/sun/mail/imap/protocol/UID;->uid:J

    invoke-virtual {v4, v10, v11}, Lcom/sun/mail/imap/IMAPMessage;->setUID(J)V

    .line 1825
    iget-object v8, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    invoke-virtual {v8, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1806
    :cond_48
    monitor-exit v9

    move-object v5, v4

    .line 1834
    .end local v4    # "m":Lcom/sun/mail/imap/IMAPMessage;
    .restart local v5    # "m":Lcom/sun/mail/imap/IMAPMessage;
    goto :goto_1f

    .line 1806
    .end local v3    # "l":Ljava/lang/Long;
    .end local v5    # "m":Lcom/sun/mail/imap/IMAPMessage;
    .end local v7    # "u":Lcom/sun/mail/imap/protocol/UID;
    .restart local v4    # "m":Lcom/sun/mail/imap/IMAPMessage;
    :catchall_4b
    move-exception v8

    monitor-exit v9
    :try_end_4d
    .catchall {:try_start_21 .. :try_end_4d} :catchall_4b

    :try_start_4d
    throw v8
    :try_end_4e
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_4d .. :try_end_4e} :catch_4e
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4d .. :try_end_4e} :catch_5c
    .catchall {:try_start_4d .. :try_end_4e} :catchall_59

    .line 1828
    :catch_4e
    move-exception v2

    .line 1829
    .local v2, "cex":Lcom/sun/mail/iap/ConnectionException;
    :try_start_4f
    new-instance v8, Ljavax/mail/FolderClosedException;

    invoke-virtual {v2}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v8
    :try_end_59
    .catchall {:try_start_4f .. :try_end_59} :catchall_59

    .line 1801
    .end local v2    # "cex":Lcom/sun/mail/iap/ConnectionException;
    .end local v4    # "m":Lcom/sun/mail/imap/IMAPMessage;
    :catchall_59
    move-exception v8

    monitor-exit p0

    throw v8

    .line 1830
    .restart local v4    # "m":Lcom/sun/mail/imap/IMAPMessage;
    :catch_5c
    move-exception v6

    .line 1831
    .local v6, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_5d
    new-instance v8, Ljavax/mail/MessagingException;

    invoke-virtual {v6}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v6}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v8
    :try_end_67
    .catchall {:try_start_5d .. :try_end_67} :catchall_59
.end method

.method public declared-synchronized getMessageCount()I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1168
    monitor-enter p0

    :try_start_1
    iget-boolean v6, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-nez v6, :cond_50

    .line 1169
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_25

    .line 1173
    :try_start_8
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStatus()Lcom/sun/mail/imap/protocol/Status;

    move-result-object v5

    .line 1174
    .local v5, "status":Lcom/sun/mail/imap/protocol/Status;
    iget v6, v5, Lcom/sun/mail/imap/protocol/Status;->total:I
    :try_end_e
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_8 .. :try_end_e} :catch_10
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_8 .. :try_end_e} :catch_38
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_8 .. :try_end_e} :catch_45
    .catchall {:try_start_8 .. :try_end_e} :catchall_25

    .line 1203
    .end local v5    # "status":Lcom/sun/mail/imap/protocol/Status;
    :goto_e
    monitor-exit p0

    return v6

    .line 1175
    :catch_10
    move-exception v0

    .line 1178
    .local v0, "bex":Lcom/sun/mail/iap/BadCommandException;
    const/4 v3, 0x0

    .line 1181
    .local v3, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :try_start_12
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v3

    .line 1182
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->examine(Ljava/lang/String;)Lcom/sun/mail/imap/protocol/MailboxInfo;

    move-result-object v2

    .line 1183
    .local v2, "minfo":Lcom/sun/mail/imap/protocol/MailboxInfo;
    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->close()V

    .line 1184
    iget v6, v2, Lcom/sun/mail/imap/protocol/MailboxInfo;->total:I
    :try_end_21
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_12 .. :try_end_21} :catch_28
    .catchall {:try_start_12 .. :try_end_21} :catchall_33

    .line 1189
    :try_start_21
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_25

    goto :goto_e

    .line 1168
    .end local v0    # "bex":Lcom/sun/mail/iap/BadCommandException;
    .end local v2    # "minfo":Lcom/sun/mail/imap/protocol/MailboxInfo;
    .end local v3    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catchall_25
    move-exception v6

    monitor-exit p0

    throw v6

    .line 1185
    .restart local v0    # "bex":Lcom/sun/mail/iap/BadCommandException;
    .restart local v3    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catch_28
    move-exception v4

    .line 1187
    .local v4, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_29
    new-instance v6, Ljavax/mail/MessagingException;

    invoke-virtual {v4}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6
    :try_end_33
    .catchall {:try_start_29 .. :try_end_33} :catchall_33

    .line 1188
    .end local v4    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catchall_33
    move-exception v6

    .line 1189
    :try_start_34
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1190
    throw v6

    .line 1191
    .end local v0    # "bex":Lcom/sun/mail/iap/BadCommandException;
    .end local v3    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catch_38
    move-exception v1

    .line 1192
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v6, Ljavax/mail/StoreClosedException;

    iget-object v7, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V

    throw v6

    .line 1193
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catch_45
    move-exception v4

    .line 1194
    .restart local v4    # "pex":Lcom/sun/mail/iap/ProtocolException;
    new-instance v6, Ljavax/mail/MessagingException;

    invoke-virtual {v4}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6

    .line 1199
    .end local v4    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :cond_50
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_53
    .catchall {:try_start_34 .. :try_end_53} :catchall_25

    .line 1202
    const/4 v6, 0x1

    :try_start_54
    invoke-direct {p0, v6}, Lcom/sun/mail/imap/IMAPFolder;->keepConnectionAlive(Z)V

    .line 1203
    iget v6, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I
    :try_end_59
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_54 .. :try_end_59} :catch_5e
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_54 .. :try_end_59} :catch_69
    .catchall {:try_start_54 .. :try_end_59} :catchall_5b

    :try_start_59
    monitor-exit v7

    goto :goto_e

    .line 1199
    :catchall_5b
    move-exception v6

    monitor-exit v7
    :try_end_5d
    .catchall {:try_start_59 .. :try_end_5d} :catchall_5b

    :try_start_5d
    throw v6
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_25

    .line 1204
    :catch_5e
    move-exception v1

    .line 1205
    .restart local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :try_start_5f
    new-instance v6, Ljavax/mail/FolderClosedException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, p0, v8}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v6

    .line 1206
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catch_69
    move-exception v4

    .line 1207
    .restart local v4    # "pex":Lcom/sun/mail/iap/ProtocolException;
    new-instance v6, Ljavax/mail/MessagingException;

    invoke-virtual {v4}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6
    :try_end_74
    .catchall {:try_start_5f .. :try_end_74} :catchall_5b
.end method

.method public declared-synchronized getMessagesByUID(JJ)[Ljavax/mail/Message;
    .registers 22
    .param p1, "start"    # J
    .param p3, "end"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1844
    monitor-enter p0

    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_64

    .line 1849
    :try_start_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_9
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_4 .. :try_end_9} :catch_57
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4 .. :try_end_9} :catch_67
    .catchall {:try_start_4 .. :try_end_9} :catchall_64

    .line 1850
    :try_start_9
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    if-nez v10, :cond_18

    .line 1851
    new-instance v10, Ljava/util/Hashtable;

    invoke-direct {v10}, Ljava/util/Hashtable;-><init>()V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    .line 1854
    :cond_18
    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v10

    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    invoke-virtual {v10, v0, v1, v2, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchSequenceNumbers(JJ)[Lcom/sun/mail/imap/protocol/UID;

    move-result-object v9

    .line 1856
    .local v9, "ua":[Lcom/sun/mail/imap/protocol/UID;
    array-length v10, v9

    new-array v7, v10, [Ljavax/mail/Message;

    .line 1859
    .local v7, "msgs":[Ljavax/mail/Message;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_28
    array-length v10, v9

    if-lt v5, v10, :cond_2e

    .line 1849
    monitor-exit v11
    :try_end_2c
    .catchall {:try_start_9 .. :try_end_2c} :catchall_54

    .line 1872
    monitor-exit p0

    return-object v7

    .line 1860
    :cond_2e
    :try_start_2e
    aget-object v10, v9, v5

    iget v10, v10, Lcom/sun/mail/imap/protocol/UID;->seqnum:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/sun/mail/imap/IMAPFolder;->getMessageBySeqNumber(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v6

    .line 1861
    .local v6, "m":Lcom/sun/mail/imap/IMAPMessage;
    aget-object v10, v9, v5

    iget-wide v12, v10, Lcom/sun/mail/imap/protocol/UID;->uid:J

    invoke-virtual {v6, v12, v13}, Lcom/sun/mail/imap/IMAPMessage;->setUID(J)V

    .line 1862
    aput-object v6, v7, v5

    .line 1863
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    new-instance v12, Ljava/lang/Long;

    aget-object v13, v9, v5

    iget-wide v14, v13, Lcom/sun/mail/imap/protocol/UID;->uid:J

    invoke-direct {v12, v14, v15}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v10, v12, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1859
    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    .line 1849
    .end local v5    # "i":I
    .end local v6    # "m":Lcom/sun/mail/imap/IMAPMessage;
    .end local v7    # "msgs":[Ljavax/mail/Message;
    .end local v9    # "ua":[Lcom/sun/mail/imap/protocol/UID;
    :catchall_54
    move-exception v10

    monitor-exit v11
    :try_end_56
    .catchall {:try_start_2e .. :try_end_56} :catchall_54

    :try_start_56
    throw v10
    :try_end_57
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_56 .. :try_end_57} :catch_57
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_56 .. :try_end_57} :catch_67
    .catchall {:try_start_56 .. :try_end_57} :catchall_64

    .line 1866
    :catch_57
    move-exception v4

    .line 1867
    .local v4, "cex":Lcom/sun/mail/iap/ConnectionException;
    :try_start_58
    new-instance v10, Ljavax/mail/FolderClosedException;

    invoke-virtual {v4}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v11}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v10
    :try_end_64
    .catchall {:try_start_58 .. :try_end_64} :catchall_64

    .line 1844
    .end local v4    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catchall_64
    move-exception v10

    monitor-exit p0

    throw v10

    .line 1868
    :catch_67
    move-exception v8

    .line 1869
    .local v8, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_68
    new-instance v10, Ljavax/mail/MessagingException;

    invoke-virtual {v8}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v8}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v10
    :try_end_72
    .catchall {:try_start_68 .. :try_end_72} :catchall_64
.end method

.method public declared-synchronized getMessagesByUID([J)[Ljavax/mail/Message;
    .registers 20
    .param p1, "uids"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1884
    monitor-enter p0

    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_82

    .line 1887
    :try_start_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_9
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_4 .. :try_end_9} :catch_75
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4 .. :try_end_9} :catch_c6
    .catchall {:try_start_4 .. :try_end_9} :catchall_82

    .line 1888
    move-object/from16 v9, p1

    .line 1889
    .local v9, "unavailUids":[J
    :try_start_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    if-eqz v12, :cond_68

    .line 1890
    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    .line 1892
    .local v10, "v":Ljava/util/Vector;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_17
    move-object/from16 v0, p1

    array-length v12, v0

    if-lt v3, v12, :cond_42

    .line 1898
    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v11

    .line 1899
    .local v11, "vsize":I
    new-array v9, v11, [J

    .line 1900
    const/4 v3, 0x0

    :goto_23
    if-lt v3, v11, :cond_59

    .line 1905
    .end local v3    # "i":I
    .end local v10    # "v":Ljava/util/Vector;
    .end local v11    # "vsize":I
    :goto_25
    array-length v12, v9

    if-lez v12, :cond_34

    .line 1907
    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v12

    invoke-virtual {v12, v9}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchSequenceNumbers([J)[Lcom/sun/mail/imap/protocol/UID;

    move-result-object v8

    .line 1909
    .local v8, "ua":[Lcom/sun/mail/imap/protocol/UID;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_31
    array-length v12, v8

    if-lt v3, v12, :cond_85

    .line 1917
    .end local v3    # "i":I
    .end local v8    # "ua":[Lcom/sun/mail/imap/protocol/UID;
    :cond_34
    move-object/from16 v0, p1

    array-length v12, v0

    new-array v6, v12, [Ljavax/mail/Message;

    .line 1918
    .local v6, "msgs":[Ljavax/mail/Message;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3a
    move-object/from16 v0, p1

    array-length v12, v0

    if-lt v3, v12, :cond_ad

    .line 1920
    monitor-exit v13
    :try_end_40
    .catchall {:try_start_b .. :try_end_40} :catchall_72

    monitor-exit p0

    return-object v6

    .line 1893
    .end local v6    # "msgs":[Ljavax/mail/Message;
    .restart local v10    # "v":Ljava/util/Vector;
    :cond_42
    :try_start_42
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/Long;

    aget-wide v14, p1, v3

    invoke-direct {v4, v14, v15}, Ljava/lang/Long;-><init>(J)V

    .local v4, "l":Ljava/lang/Long;
    invoke-virtual {v12, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_56

    .line 1895
    invoke-virtual {v10, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1892
    :cond_56
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 1901
    .end local v4    # "l":Ljava/lang/Long;
    .restart local v11    # "vsize":I
    :cond_59
    invoke-virtual {v10, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    aput-wide v14, v9, v3

    .line 1900
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .line 1903
    .end local v3    # "i":I
    .end local v10    # "v":Ljava/util/Vector;
    .end local v11    # "vsize":I
    :cond_68
    new-instance v12, Ljava/util/Hashtable;

    invoke-direct {v12}, Ljava/util/Hashtable;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    goto :goto_25

    .line 1887
    :catchall_72
    move-exception v12

    monitor-exit v13
    :try_end_74
    .catchall {:try_start_42 .. :try_end_74} :catchall_72

    :try_start_74
    throw v12
    :try_end_75
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_74 .. :try_end_75} :catch_75
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_74 .. :try_end_75} :catch_c6
    .catchall {:try_start_74 .. :try_end_75} :catchall_82

    .line 1922
    .end local v9    # "unavailUids":[J
    :catch_75
    move-exception v2

    .line 1923
    .local v2, "cex":Lcom/sun/mail/iap/ConnectionException;
    :try_start_76
    new-instance v12, Ljavax/mail/FolderClosedException;

    invoke-virtual {v2}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v13}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v12
    :try_end_82
    .catchall {:try_start_76 .. :try_end_82} :catchall_82

    .line 1884
    .end local v2    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catchall_82
    move-exception v12

    monitor-exit p0

    throw v12

    .line 1910
    .restart local v3    # "i":I
    .restart local v8    # "ua":[Lcom/sun/mail/imap/protocol/UID;
    .restart local v9    # "unavailUids":[J
    :cond_85
    :try_start_85
    aget-object v12, v8, v3

    iget v12, v12, Lcom/sun/mail/imap/protocol/UID;->seqnum:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/sun/mail/imap/IMAPFolder;->getMessageBySeqNumber(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v5

    .line 1911
    .local v5, "m":Lcom/sun/mail/imap/IMAPMessage;
    aget-object v12, v8, v3

    iget-wide v14, v12, Lcom/sun/mail/imap/protocol/UID;->uid:J

    invoke-virtual {v5, v14, v15}, Lcom/sun/mail/imap/IMAPMessage;->setUID(J)V

    .line 1912
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    new-instance v14, Ljava/lang/Long;

    aget-object v15, v8, v3

    iget-wide v0, v15, Lcom/sun/mail/imap/protocol/UID;->uid:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-direct {v14, v0, v1}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v12, v14, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1909
    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    .line 1919
    .end local v5    # "m":Lcom/sun/mail/imap/IMAPMessage;
    .end local v8    # "ua":[Lcom/sun/mail/imap/protocol/UID;
    .restart local v6    # "msgs":[Ljavax/mail/Message;
    :cond_ad
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    new-instance v14, Ljava/lang/Long;

    aget-wide v16, p1, v3

    move-wide/from16 v0, v16

    invoke-direct {v14, v0, v1}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v12, v14}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljavax/mail/Message;

    aput-object v12, v6, v3
    :try_end_c2
    .catchall {:try_start_85 .. :try_end_c2} :catchall_72

    .line 1918
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3a

    .line 1924
    .end local v3    # "i":I
    .end local v6    # "msgs":[Ljavax/mail/Message;
    .end local v9    # "unavailUids":[J
    :catch_c6
    move-exception v7

    .line 1925
    .local v7, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_c7
    new-instance v12, Ljavax/mail/MessagingException;

    invoke-virtual {v7}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13, v7}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v12
    :try_end_d1
    .catchall {:try_start_c7 .. :try_end_d1} :catchall_82
.end method

.method public declared-synchronized getName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 477
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->name:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1d

    if-nez v0, :cond_19

    .line 479
    :try_start_5
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    .line 480
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getSeparator()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 479
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->name:Ljava/lang/String;
    :try_end_19
    .catch Ljavax/mail/MessagingException; {:try_start_5 .. :try_end_19} :catch_20
    .catchall {:try_start_5 .. :try_end_19} :catchall_1d

    .line 484
    :cond_19
    :goto_19
    :try_start_19
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->name:Ljava/lang/String;
    :try_end_1b
    .catchall {:try_start_19 .. :try_end_1b} :catchall_1d

    monitor-exit p0

    return-object v0

    .line 477
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 482
    :catch_20
    move-exception v0

    goto :goto_19
.end method

.method public declared-synchronized getNewMessageCount()I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1217
    monitor-enter p0

    :try_start_1
    iget-boolean v6, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-nez v6, :cond_50

    .line 1218
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_25

    .line 1222
    :try_start_8
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStatus()Lcom/sun/mail/imap/protocol/Status;

    move-result-object v5

    .line 1223
    .local v5, "status":Lcom/sun/mail/imap/protocol/Status;
    iget v6, v5, Lcom/sun/mail/imap/protocol/Status;->recent:I
    :try_end_e
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_8 .. :try_end_e} :catch_10
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_8 .. :try_end_e} :catch_38
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_8 .. :try_end_e} :catch_45
    .catchall {:try_start_8 .. :try_end_e} :catchall_25

    .line 1252
    .end local v5    # "status":Lcom/sun/mail/imap/protocol/Status;
    :goto_e
    monitor-exit p0

    return v6

    .line 1224
    :catch_10
    move-exception v0

    .line 1227
    .local v0, "bex":Lcom/sun/mail/iap/BadCommandException;
    const/4 v3, 0x0

    .line 1230
    .local v3, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :try_start_12
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v3

    .line 1231
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->examine(Ljava/lang/String;)Lcom/sun/mail/imap/protocol/MailboxInfo;

    move-result-object v2

    .line 1232
    .local v2, "minfo":Lcom/sun/mail/imap/protocol/MailboxInfo;
    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->close()V

    .line 1233
    iget v6, v2, Lcom/sun/mail/imap/protocol/MailboxInfo;->recent:I
    :try_end_21
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_12 .. :try_end_21} :catch_28
    .catchall {:try_start_12 .. :try_end_21} :catchall_33

    .line 1238
    :try_start_21
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_25

    goto :goto_e

    .line 1217
    .end local v0    # "bex":Lcom/sun/mail/iap/BadCommandException;
    .end local v2    # "minfo":Lcom/sun/mail/imap/protocol/MailboxInfo;
    .end local v3    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catchall_25
    move-exception v6

    monitor-exit p0

    throw v6

    .line 1234
    .restart local v0    # "bex":Lcom/sun/mail/iap/BadCommandException;
    .restart local v3    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catch_28
    move-exception v4

    .line 1236
    .local v4, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_29
    new-instance v6, Ljavax/mail/MessagingException;

    invoke-virtual {v4}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6
    :try_end_33
    .catchall {:try_start_29 .. :try_end_33} :catchall_33

    .line 1237
    .end local v4    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catchall_33
    move-exception v6

    .line 1238
    :try_start_34
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1239
    throw v6

    .line 1240
    .end local v0    # "bex":Lcom/sun/mail/iap/BadCommandException;
    .end local v3    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catch_38
    move-exception v1

    .line 1241
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v6, Ljavax/mail/StoreClosedException;

    iget-object v7, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V

    throw v6

    .line 1242
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catch_45
    move-exception v4

    .line 1243
    .restart local v4    # "pex":Lcom/sun/mail/iap/ProtocolException;
    new-instance v6, Ljavax/mail/MessagingException;

    invoke-virtual {v4}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6

    .line 1248
    .end local v4    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :cond_50
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_53
    .catchall {:try_start_34 .. :try_end_53} :catchall_25

    .line 1251
    const/4 v6, 0x1

    :try_start_54
    invoke-direct {p0, v6}, Lcom/sun/mail/imap/IMAPFolder;->keepConnectionAlive(Z)V

    .line 1252
    iget v6, p0, Lcom/sun/mail/imap/IMAPFolder;->recent:I
    :try_end_59
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_54 .. :try_end_59} :catch_5e
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_54 .. :try_end_59} :catch_69
    .catchall {:try_start_54 .. :try_end_59} :catchall_5b

    :try_start_59
    monitor-exit v7

    goto :goto_e

    .line 1248
    :catchall_5b
    move-exception v6

    monitor-exit v7
    :try_end_5d
    .catchall {:try_start_59 .. :try_end_5d} :catchall_5b

    :try_start_5d
    throw v6
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_25

    .line 1253
    :catch_5e
    move-exception v1

    .line 1254
    .restart local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :try_start_5f
    new-instance v6, Ljavax/mail/FolderClosedException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, p0, v8}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v6

    .line 1255
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catch_69
    move-exception v4

    .line 1256
    .restart local v4    # "pex":Lcom/sun/mail/iap/ProtocolException;
    new-instance v6, Ljavax/mail/MessagingException;

    invoke-virtual {v4}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6
    :try_end_74
    .catchall {:try_start_5f .. :try_end_74} :catchall_5b
.end method

.method public declared-synchronized getParent()Ljavax/mail/Folder;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 498
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getSeparator()C

    move-result v0

    .line 500
    .local v0, "c":C
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .local v1, "index":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_21

    .line 501
    new-instance v3, Lcom/sun/mail/imap/IMAPFolder;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 502
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v2, Lcom/sun/mail/imap/IMAPStore;

    .line 501
    invoke-direct {v3, v4, v0, v2}, Lcom/sun/mail/imap/IMAPFolder;-><init>(Ljava/lang/String;CLcom/sun/mail/imap/IMAPStore;)V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_2c

    move-object v2, v3

    .line 504
    :goto_1f
    monitor-exit p0

    return-object v2

    :cond_21
    :try_start_21
    new-instance v3, Lcom/sun/mail/imap/DefaultFolder;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v2, Lcom/sun/mail/imap/IMAPStore;

    invoke-direct {v3, v2}, Lcom/sun/mail/imap/DefaultFolder;-><init>(Lcom/sun/mail/imap/IMAPStore;)V
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_2c

    move-object v2, v3

    goto :goto_1f

    .line 498
    .end local v0    # "c":C
    .end local v1    # "index":I
    :catchall_2c
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getPermanentFlags()Ljavax/mail/Flags;
    .registers 2

    .prologue
    .line 1161
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->permanentFlags:Ljavax/mail/Flags;

    invoke-virtual {v0}, Ljavax/mail/Flags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/Flags;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getQuota()[Ljavax/mail/Quota;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1989
    const-string v0, "QUOTA not supported"

    .line 1990
    new-instance v1, Lcom/sun/mail/imap/IMAPFolder$12;

    invoke-direct {v1, p0}, Lcom/sun/mail/imap/IMAPFolder$12;-><init>(Lcom/sun/mail/imap/IMAPFolder;)V

    .line 1989
    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/mail/Quota;

    return-object v0
.end method

.method public declared-synchronized getSeparator()C
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 633
    monitor-enter p0

    :try_start_1
    iget-char v1, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    const v2, 0xffff

    if-ne v1, v2, :cond_1f

    .line 634
    const/4 v0, 0x0

    check-cast v0, [Lcom/sun/mail/imap/protocol/ListInfo;

    .line 636
    .local v0, "li":[Lcom/sun/mail/imap/protocol/ListInfo;
    new-instance v1, Lcom/sun/mail/imap/IMAPFolder$3;

    invoke-direct {v1, p0}, Lcom/sun/mail/imap/IMAPFolder$3;-><init>(Lcom/sun/mail/imap/IMAPFolder;)V

    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->doCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "li":[Lcom/sun/mail/imap/protocol/ListInfo;
    check-cast v0, [Lcom/sun/mail/imap/protocol/ListInfo;

    .line 649
    .restart local v0    # "li":[Lcom/sun/mail/imap/protocol/ListInfo;
    if-eqz v0, :cond_23

    .line 650
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget-char v1, v1, Lcom/sun/mail/imap/protocol/ListInfo;->separator:C

    iput-char v1, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    .line 654
    .end local v0    # "li":[Lcom/sun/mail/imap/protocol/ListInfo;
    :cond_1f
    :goto_1f
    iget-char v1, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_28

    monitor-exit p0

    return v1

    .line 652
    .restart local v0    # "li":[Lcom/sun/mail/imap/protocol/ListInfo;
    :cond_23
    const/16 v1, 0x2f

    :try_start_25
    iput-char v1, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C
    :try_end_27
    .catchall {:try_start_25 .. :try_end_27} :catchall_28

    goto :goto_1f

    .line 633
    .end local v0    # "li":[Lcom/sun/mail/imap/protocol/ListInfo;
    :catchall_28
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected declared-synchronized getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 2430
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->connectionPoolDebug:Z

    if-eqz v0, :cond_c

    .line 2431
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->out:Ljava/io/PrintStream;

    const-string v1, "DEBUG: getStoreProtocol() - borrowing a connection"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2434
    :cond_c
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPStore;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_16

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 2430
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getType()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 661
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-eqz v0, :cond_10

    .line 663
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    if-nez v0, :cond_c

    .line 664
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->exists()Z

    .line 668
    :cond_c
    :goto_c
    iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_14

    monitor-exit p0

    return v0

    .line 666
    :cond_10
    :try_start_10
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_14

    goto :goto_c

    .line 661
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUID(Ljavax/mail/Message;)J
    .registers 16
    .param p1, "message"    # Ljavax/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1934
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Ljavax/mail/Message;->getFolder()Ljavax/mail/Folder;

    move-result-object v7

    if-eq v7, p0, :cond_12

    .line 1935
    new-instance v7, Ljava/util/NoSuchElementException;

    .line 1936
    const-string v12, "Message does not belong to this folder"

    .line 1935
    invoke-direct {v7, v12}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_f

    .line 1934
    :catchall_f
    move-exception v7

    monitor-exit p0

    throw v7

    .line 1938
    :cond_12
    :try_start_12
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 1940
    move-object v0, p1

    check-cast v0, Lcom/sun/mail/imap/IMAPMessage;

    move-object v3, v0

    .line 1943
    .local v3, "m":Lcom/sun/mail/imap/IMAPMessage;
    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->getUID()J
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_f

    move-result-wide v8

    .local v8, "uid":J
    const-wide/16 v12, -0x1

    cmp-long v7, v8, v12

    if-eqz v7, :cond_26

    move-wide v10, v8

    .line 1968
    .end local v8    # "uid":J
    .local v10, "uid":J
    :goto_24
    monitor-exit p0

    return-wide v10

    .line 1946
    .end local v10    # "uid":J
    .restart local v8    # "uid":J
    :cond_26
    :try_start_26
    iget-object v12, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v12
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_f

    .line 1948
    :try_start_29
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v4

    .line 1949
    .local v4, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 1950
    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchUID(I)Lcom/sun/mail/imap/protocol/UID;

    move-result-object v6

    .line 1952
    .local v6, "u":Lcom/sun/mail/imap/protocol/UID;
    if-eqz v6, :cond_54

    .line 1953
    iget-wide v8, v6, Lcom/sun/mail/imap/protocol/UID;->uid:J

    .line 1954
    invoke-virtual {v3, v8, v9}, Lcom/sun/mail/imap/IMAPMessage;->setUID(J)V

    .line 1957
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    if-nez v7, :cond_4a

    .line 1958
    new-instance v7, Ljava/util/Hashtable;

    invoke-direct {v7}, Ljava/util/Hashtable;-><init>()V

    iput-object v7, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    .line 1959
    :cond_4a
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    new-instance v13, Ljava/lang/Long;

    invoke-direct {v13, v8, v9}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v7, v13, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_54
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_29 .. :try_end_54} :catch_57
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_29 .. :try_end_54} :catch_65
    .catchall {:try_start_29 .. :try_end_54} :catchall_62

    .line 1946
    :cond_54
    :try_start_54
    monitor-exit v12

    move-wide v10, v8

    .line 1968
    .end local v8    # "uid":J
    .restart local v10    # "uid":J
    goto :goto_24

    .line 1961
    .end local v4    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v6    # "u":Lcom/sun/mail/imap/protocol/UID;
    .end local v10    # "uid":J
    .restart local v8    # "uid":J
    :catch_57
    move-exception v2

    .line 1962
    .local v2, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v7, Ljavax/mail/FolderClosedException;

    invoke-virtual {v2}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v7, p0, v13}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v7

    .line 1946
    .end local v2    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catchall_62
    move-exception v7

    monitor-exit v12
    :try_end_64
    .catchall {:try_start_54 .. :try_end_64} :catchall_62

    :try_start_64
    throw v7
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_f

    .line 1963
    :catch_65
    move-exception v5

    .line 1964
    .local v5, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_66
    new-instance v7, Ljavax/mail/MessagingException;

    invoke-virtual {v5}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v7, v13, v5}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7
    :try_end_70
    .catchall {:try_start_66 .. :try_end_70} :catchall_62
.end method

.method public declared-synchronized getUIDNext()J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1770
    monitor-enter p0

    :try_start_1
    iget-boolean v6, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-eqz v6, :cond_9

    .line 1771
    iget-wide v6, p0, Lcom/sun/mail/imap/IMAPFolder;->uidnext:J
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_31

    .line 1792
    :goto_7
    monitor-exit p0

    return-wide v6

    .line 1773
    :cond_9
    const/4 v3, 0x0

    .line 1774
    .local v3, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    const/4 v5, 0x0

    .line 1777
    .local v5, "status":Lcom/sun/mail/imap/protocol/Status;
    :try_start_b
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v3

    .line 1778
    const/4 v6, 0x1

    new-array v2, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "UIDNEXT"

    aput-object v7, v2, v6

    .line 1779
    .local v2, "item":[Ljava/lang/String;
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v3, v6, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->status(Ljava/lang/String;[Ljava/lang/String;)Lcom/sun/mail/imap/protocol/Status;
    :try_end_1c
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_b .. :try_end_1c} :catch_23
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_b .. :try_end_1c} :catch_34
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_b .. :try_end_1c} :catch_3c
    .catchall {:try_start_b .. :try_end_1c} :catchall_2c

    move-result-object v5

    .line 1789
    :try_start_1d
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1792
    .end local v2    # "item":[Ljava/lang/String;
    :goto_20
    iget-wide v6, v5, Lcom/sun/mail/imap/protocol/Status;->uidnext:J
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_31

    goto :goto_7

    .line 1780
    :catch_23
    move-exception v0

    .line 1782
    .local v0, "bex":Lcom/sun/mail/iap/BadCommandException;
    :try_start_24
    new-instance v6, Ljavax/mail/MessagingException;

    const-string v7, "Cannot obtain UIDNext"

    invoke-direct {v6, v7, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2c

    .line 1788
    .end local v0    # "bex":Lcom/sun/mail/iap/BadCommandException;
    :catchall_2c
    move-exception v6

    .line 1789
    :try_start_2d
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1790
    throw v6
    :try_end_31
    .catchall {:try_start_2d .. :try_end_31} :catchall_31

    .line 1770
    .end local v3    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v5    # "status":Lcom/sun/mail/imap/protocol/Status;
    :catchall_31
    move-exception v6

    monitor-exit p0

    throw v6

    .line 1783
    .restart local v3    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v5    # "status":Lcom/sun/mail/imap/protocol/Status;
    :catch_34
    move-exception v1

    .line 1785
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    :try_start_35
    invoke-direct {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->throwClosedException(Lcom/sun/mail/iap/ConnectionException;)V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_2c

    .line 1789
    :try_start_38
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_31

    goto :goto_20

    .line 1786
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catch_3c
    move-exception v4

    .line 1787
    .local v4, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_3d
    new-instance v6, Ljavax/mail/MessagingException;

    invoke-virtual {v4}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6
    :try_end_47
    .catchall {:try_start_3d .. :try_end_47} :catchall_2c
.end method

.method public declared-synchronized getUIDValidity()J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1726
    monitor-enter p0

    :try_start_1
    iget-boolean v6, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-eqz v6, :cond_9

    .line 1727
    iget-wide v6, p0, Lcom/sun/mail/imap/IMAPFolder;->uidvalidity:J
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_31

    .line 1748
    :goto_7
    monitor-exit p0

    return-wide v6

    .line 1729
    :cond_9
    const/4 v3, 0x0

    .line 1730
    .local v3, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    const/4 v5, 0x0

    .line 1733
    .local v5, "status":Lcom/sun/mail/imap/protocol/Status;
    :try_start_b
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v3

    .line 1734
    const/4 v6, 0x1

    new-array v2, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "UIDVALIDITY"

    aput-object v7, v2, v6

    .line 1735
    .local v2, "item":[Ljava/lang/String;
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v3, v6, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->status(Ljava/lang/String;[Ljava/lang/String;)Lcom/sun/mail/imap/protocol/Status;
    :try_end_1c
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_b .. :try_end_1c} :catch_23
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_b .. :try_end_1c} :catch_34
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_b .. :try_end_1c} :catch_3c
    .catchall {:try_start_b .. :try_end_1c} :catchall_2c

    move-result-object v5

    .line 1745
    :try_start_1d
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1748
    .end local v2    # "item":[Ljava/lang/String;
    :goto_20
    iget-wide v6, v5, Lcom/sun/mail/imap/protocol/Status;->uidvalidity:J
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_31

    goto :goto_7

    .line 1736
    :catch_23
    move-exception v0

    .line 1738
    .local v0, "bex":Lcom/sun/mail/iap/BadCommandException;
    :try_start_24
    new-instance v6, Ljavax/mail/MessagingException;

    const-string v7, "Cannot obtain UIDValidity"

    invoke-direct {v6, v7, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2c

    .line 1744
    .end local v0    # "bex":Lcom/sun/mail/iap/BadCommandException;
    :catchall_2c
    move-exception v6

    .line 1745
    :try_start_2d
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1746
    throw v6
    :try_end_31
    .catchall {:try_start_2d .. :try_end_31} :catchall_31

    .line 1726
    .end local v3    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v5    # "status":Lcom/sun/mail/imap/protocol/Status;
    :catchall_31
    move-exception v6

    monitor-exit p0

    throw v6

    .line 1739
    .restart local v3    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v5    # "status":Lcom/sun/mail/imap/protocol/Status;
    :catch_34
    move-exception v1

    .line 1741
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    :try_start_35
    invoke-direct {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->throwClosedException(Lcom/sun/mail/iap/ConnectionException;)V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_2c

    .line 1745
    :try_start_38
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_31

    goto :goto_20

    .line 1742
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catch_3c
    move-exception v4

    .line 1743
    .local v4, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_3d
    new-instance v6, Ljavax/mail/MessagingException;

    invoke-virtual {v4}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6
    :try_end_47
    .catchall {:try_start_3d .. :try_end_47} :catchall_2c
.end method

.method public declared-synchronized getUnreadMessageCount()I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1266
    monitor-enter p0

    :try_start_1
    iget-boolean v6, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-nez v6, :cond_2e

    .line 1267
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_20

    .line 1271
    :try_start_8
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStatus()Lcom/sun/mail/imap/protocol/Status;

    move-result-object v5

    .line 1272
    .local v5, "status":Lcom/sun/mail/imap/protocol/Status;
    iget v6, v5, Lcom/sun/mail/imap/protocol/Status;->unseen:I
    :try_end_e
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_8 .. :try_end_e} :catch_10
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_8 .. :try_end_e} :catch_13
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_8 .. :try_end_e} :catch_23
    .catchall {:try_start_8 .. :try_end_e} :catchall_20

    .line 1292
    .end local v5    # "status":Lcom/sun/mail/imap/protocol/Status;
    :goto_e
    monitor-exit p0

    return v6

    .line 1273
    :catch_10
    move-exception v0

    .line 1277
    .local v0, "bex":Lcom/sun/mail/iap/BadCommandException;
    const/4 v6, -0x1

    goto :goto_e

    .line 1278
    .end local v0    # "bex":Lcom/sun/mail/iap/BadCommandException;
    :catch_13
    move-exception v1

    .line 1279
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    :try_start_14
    new-instance v6, Ljavax/mail/StoreClosedException;

    iget-object v7, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V

    throw v6
    :try_end_20
    .catchall {:try_start_14 .. :try_end_20} :catchall_20

    .line 1266
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catchall_20
    move-exception v6

    monitor-exit p0

    throw v6

    .line 1280
    :catch_23
    move-exception v4

    .line 1281
    .local v4, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_24
    new-instance v6, Ljavax/mail/MessagingException;

    invoke-virtual {v4}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6

    .line 1287
    .end local v4    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :cond_2e
    new-instance v2, Ljavax/mail/Flags;

    invoke-direct {v2}, Ljavax/mail/Flags;-><init>()V

    .line 1288
    .local v2, "f":Ljavax/mail/Flags;
    sget-object v6, Ljavax/mail/Flags$Flag;->SEEN:Ljavax/mail/Flags$Flag;

    invoke-virtual {v2, v6}, Ljavax/mail/Flags;->add(Ljavax/mail/Flags$Flag;)V
    :try_end_38
    .catchall {:try_start_24 .. :try_end_38} :catchall_20

    .line 1290
    :try_start_38
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_3b
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_38 .. :try_end_3b} :catch_4f
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_38 .. :try_end_3b} :catch_5a
    .catchall {:try_start_38 .. :try_end_3b} :catchall_20

    .line 1291
    :try_start_3b
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v6

    new-instance v8, Ljavax/mail/search/FlagTerm;

    const/4 v9, 0x0

    invoke-direct {v8, v2, v9}, Ljavax/mail/search/FlagTerm;-><init>(Ljavax/mail/Flags;Z)V

    invoke-virtual {v6, v8}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->search(Ljavax/mail/search/SearchTerm;)[I

    move-result-object v3

    .line 1292
    .local v3, "matches":[I
    array-length v6, v3

    monitor-exit v7

    goto :goto_e

    .line 1290
    .end local v3    # "matches":[I
    :catchall_4c
    move-exception v6

    monitor-exit v7
    :try_end_4e
    .catchall {:try_start_3b .. :try_end_4e} :catchall_4c

    :try_start_4e
    throw v6
    :try_end_4f
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_4e .. :try_end_4f} :catch_4f
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4e .. :try_end_4f} :catch_5a
    .catchall {:try_start_4e .. :try_end_4f} :catchall_20

    .line 1294
    :catch_4f
    move-exception v1

    .line 1295
    .restart local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :try_start_50
    new-instance v6, Ljavax/mail/FolderClosedException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v6

    .line 1296
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catch_5a
    move-exception v4

    .line 1298
    .restart local v4    # "pex":Lcom/sun/mail/iap/ProtocolException;
    new-instance v6, Ljavax/mail/MessagingException;

    invoke-virtual {v4}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6
    :try_end_65
    .catchall {:try_start_50 .. :try_end_65} :catchall_20
.end method

.method public handleResponse(Lcom/sun/mail/iap/Response;)V
    .registers 14
    .param p1, "r"    # Lcom/sun/mail/iap/Response;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 2294
    sget-boolean v9, Lcom/sun/mail/imap/IMAPFolder;->$assertionsDisabled:Z

    if-nez v9, :cond_14

    iget-object v9, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_14

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 2299
    :cond_14
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v9

    if-nez v9, :cond_2c

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isNO()Z

    move-result v9

    if-nez v9, :cond_2c

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isBAD()Z

    move-result v9

    if-nez v9, :cond_2c

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isBYE()Z

    move-result v9

    if-eqz v9, :cond_33

    .line 2300
    :cond_2c
    iget-object v9, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v9, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v9, p1}, Lcom/sun/mail/imap/IMAPStore;->handleResponseCode(Lcom/sun/mail/iap/Response;)V

    .line 2306
    :cond_33
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isBYE()Z

    move-result v9

    if-eqz v9, :cond_41

    .line 2307
    iget-boolean v9, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-eqz v9, :cond_40

    .line 2308
    invoke-direct {p0, v10}, Lcom/sun/mail/imap/IMAPFolder;->cleanup(Z)V

    .line 2397
    :cond_40
    :goto_40
    return-void

    .line 2310
    :cond_41
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v9

    if-nez v9, :cond_40

    .line 2312
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isUnTagged()Z

    move-result v9

    if-eqz v9, :cond_40

    .line 2317
    instance-of v9, p1, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-nez v9, :cond_71

    .line 2320
    iget-object v9, p0, Lcom/sun/mail/imap/IMAPFolder;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "UNEXPECTED RESPONSE : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2321
    iget-object v9, p0, Lcom/sun/mail/imap/IMAPFolder;->out:Ljava/io/PrintStream;

    const-string v10, "CONTACT javamail@sun.com"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_40

    :cond_71
    move-object v5, p1

    .line 2325
    check-cast v5, Lcom/sun/mail/imap/protocol/IMAPResponse;

    .line 2327
    .local v5, "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    const-string v9, "EXISTS"

    invoke-virtual {v5, v9}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_ac

    .line 2328
    invoke-virtual {v5}, Lcom/sun/mail/imap/protocol/IMAPResponse;->getNumber()I

    move-result v1

    .line 2329
    .local v1, "exists":I
    iget v9, p0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I

    if-le v1, v9, :cond_40

    .line 2333
    iget v9, p0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I

    sub-int v0, v1, v9

    .line 2334
    .local v0, "count":I
    new-array v8, v0, [Ljavax/mail/Message;

    .line 2337
    .local v8, "msgs":[Ljavax/mail/Message;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_8b
    if-lt v4, v0, :cond_91

    .line 2346
    invoke-virtual {p0, v8}, Lcom/sun/mail/imap/IMAPFolder;->notifyMessageAddedListeners([Ljavax/mail/Message;)V

    goto :goto_40

    .line 2340
    :cond_91
    new-instance v7, Lcom/sun/mail/imap/IMAPMessage;

    iget v9, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    iget v10, p0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I

    invoke-direct {v7, p0, v9, v10}, Lcom/sun/mail/imap/IMAPMessage;-><init>(Lcom/sun/mail/imap/IMAPFolder;II)V

    .line 2341
    .local v7, "msg":Lcom/sun/mail/imap/IMAPMessage;
    aput-object v7, v8, v4

    .line 2342
    iget-object v9, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Ljava/util/Vector;

    invoke-virtual {v9, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2337
    add-int/lit8 v4, v4, 0x1

    goto :goto_8b

    .line 2348
    .end local v0    # "count":I
    .end local v1    # "exists":I
    .end local v4    # "i":I
    .end local v7    # "msg":Lcom/sun/mail/imap/IMAPMessage;
    .end local v8    # "msgs":[Ljavax/mail/Message;
    :cond_ac
    const-string v9, "EXPUNGE"

    invoke-virtual {v5, v9}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_f5

    .line 2351
    invoke-virtual {v5}, Lcom/sun/mail/imap/protocol/IMAPResponse;->getNumber()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/sun/mail/imap/IMAPFolder;->getMessageBySeqNumber(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v7

    .line 2352
    .restart local v7    # "msg":Lcom/sun/mail/imap/IMAPMessage;
    invoke-virtual {v7, v11}, Lcom/sun/mail/imap/IMAPMessage;->setExpunged(Z)V

    .line 2356
    invoke-virtual {v7}, Lcom/sun/mail/imap/IMAPMessage;->getMessageNumber()I

    move-result v4

    .restart local v4    # "i":I
    :goto_c3
    iget v9, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    if-lt v4, v9, :cond_da

    .line 2368
    iget v9, p0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I

    .line 2370
    iget-boolean v9, p0, Lcom/sun/mail/imap/IMAPFolder;->doExpungeNotification:Z

    if-eqz v9, :cond_40

    .line 2372
    new-array v8, v11, [Ljavax/mail/Message;

    aput-object v7, v8, v10

    .line 2373
    .restart local v8    # "msgs":[Ljavax/mail/Message;
    invoke-virtual {p0, v10, v8}, Lcom/sun/mail/imap/IMAPFolder;->notifyMessageRemovedListeners(Z[Ljavax/mail/Message;)V

    goto/16 :goto_40

    .line 2359
    .end local v8    # "msgs":[Ljavax/mail/Message;
    :cond_da
    iget-object v9, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Ljava/util/Vector;

    invoke-virtual {v9, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/mail/imap/IMAPMessage;

    .line 2360
    .local v6, "m":Lcom/sun/mail/imap/IMAPMessage;
    invoke-virtual {v6}, Lcom/sun/mail/imap/IMAPMessage;->isExpunged()Z

    move-result v9

    if-eqz v9, :cond_eb

    .line 2356
    :goto_e8
    add-int/lit8 v4, v4, 0x1

    goto :goto_c3

    .line 2364
    :cond_eb
    invoke-virtual {v6}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v6, v9}, Lcom/sun/mail/imap/IMAPMessage;->setSequenceNumber(I)V

    goto :goto_e8

    .line 2376
    .end local v4    # "i":I
    .end local v6    # "m":Lcom/sun/mail/imap/IMAPMessage;
    .end local v7    # "msg":Lcom/sun/mail/imap/IMAPMessage;
    :cond_f5
    const-string v9, "FETCH"

    invoke-virtual {v5, v9}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_12c

    .line 2379
    sget-boolean v9, Lcom/sun/mail/imap/IMAPFolder;->$assertionsDisabled:Z

    if-nez v9, :cond_10d

    instance-of v9, v5, Lcom/sun/mail/imap/protocol/FetchResponse;

    if-nez v9, :cond_10d

    new-instance v9, Ljava/lang/AssertionError;

    const-string v10, "!ir instanceof FetchResponse"

    invoke-direct {v9, v10}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v9

    :cond_10d
    move-object v2, v5

    .line 2380
    check-cast v2, Lcom/sun/mail/imap/protocol/FetchResponse;

    .line 2382
    .local v2, "f":Lcom/sun/mail/imap/protocol/FetchResponse;
    const-class v9, Ljavax/mail/Flags;

    invoke-virtual {v2, v9}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem(Ljava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;

    move-result-object v3

    check-cast v3, Ljavax/mail/Flags;

    .line 2384
    .local v3, "flags":Ljavax/mail/Flags;
    if-eqz v3, :cond_40

    .line 2385
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->getNumber()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/sun/mail/imap/IMAPFolder;->getMessageBySeqNumber(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v7

    .line 2386
    .restart local v7    # "msg":Lcom/sun/mail/imap/IMAPMessage;
    if-eqz v7, :cond_40

    .line 2387
    invoke-virtual {v7, v3}, Lcom/sun/mail/imap/IMAPMessage;->_setFlags(Ljavax/mail/Flags;)V

    .line 2388
    invoke-virtual {p0, v11, v7}, Lcom/sun/mail/imap/IMAPFolder;->notifyMessageChangedListeners(ILjavax/mail/Message;)V

    goto/16 :goto_40

    .line 2393
    .end local v2    # "f":Lcom/sun/mail/imap/protocol/FetchResponse;
    .end local v3    # "flags":Ljavax/mail/Flags;
    .end local v7    # "msg":Lcom/sun/mail/imap/IMAPMessage;
    :cond_12c
    const-string v9, "RECENT"

    invoke-virtual {v5, v9}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_40

    .line 2395
    invoke-virtual {v5}, Lcom/sun/mail/imap/protocol/IMAPResponse;->getNumber()I

    move-result v9

    iput v9, p0, Lcom/sun/mail/imap/IMAPFolder;->recent:I

    goto/16 :goto_40
.end method

.method handleResponses([Lcom/sun/mail/iap/Response;)V
    .registers 4
    .param p1, "r"    # [Lcom/sun/mail/iap/Response;

    .prologue
    .line 2406
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-lt v0, v1, :cond_5

    .line 2410
    return-void

    .line 2407
    :cond_5
    aget-object v1, p1, v0

    if-eqz v1, :cond_e

    .line 2408
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->handleResponse(Lcom/sun/mail/iap/Response;)V

    .line 2406
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public declared-synchronized hasNewMessages()Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 769
    monitor-enter p0

    :try_start_3
    iget-boolean v5, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-eqz v5, :cond_32

    .line 771
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_24

    .line 774
    const/4 v6, 0x1

    :try_start_b
    invoke-direct {p0, v6}, Lcom/sun/mail/imap/IMAPFolder;->keepConnectionAlive(Z)V
    :try_end_e
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_b .. :try_end_e} :catch_16
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_b .. :try_end_e} :catch_27
    .catchall {:try_start_b .. :try_end_e} :catchall_21

    .line 780
    :try_start_e
    iget v6, p0, Lcom/sun/mail/imap/IMAPFolder;->recent:I

    if-lez v6, :cond_13

    move v3, v4

    :cond_13
    monitor-exit v5
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_21

    .line 810
    :cond_14
    :goto_14
    monitor-exit p0

    return v3

    .line 775
    :catch_16
    move-exception v1

    .line 776
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    :try_start_17
    new-instance v3, Ljavax/mail/FolderClosedException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v3

    .line 771
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catchall_21
    move-exception v3

    monitor-exit v5
    :try_end_23
    .catchall {:try_start_17 .. :try_end_23} :catchall_21

    :try_start_23
    throw v3
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_24

    .line 769
    :catchall_24
    move-exception v3

    monitor-exit p0

    throw v3

    .line 777
    :catch_27
    move-exception v2

    .line 778
    .local v2, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_28
    new-instance v3, Ljavax/mail/MessagingException;

    invoke-virtual {v2}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
    :try_end_32
    .catchall {:try_start_28 .. :try_end_32} :catchall_21

    .line 784
    .end local v2    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :cond_32
    :try_start_32
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V

    .line 789
    new-instance v4, Lcom/sun/mail/imap/IMAPFolder$7;

    invoke-direct {v4, p0}, Lcom/sun/mail/imap/IMAPFolder$7;-><init>(Lcom/sun/mail/imap/IMAPFolder;)V

    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/IMAPFolder;->doCommandIgnoreFailure(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 807
    .local v0, "b":Ljava/lang/Boolean;
    if-eqz v0, :cond_14

    .line 810
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_45
    .catchall {:try_start_32 .. :try_end_45} :catchall_24

    move-result v3

    goto :goto_14
.end method

.method public idle()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2188
    sget-boolean v5, Lcom/sun/mail/imap/IMAPFolder;->$assertionsDisabled:Z

    if-nez v5, :cond_10

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 2189
    :cond_10
    monitor-enter p0

    .line 2190
    :try_start_11
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 2191
    const-string v5, "IDLE not supported"

    .line 2192
    new-instance v6, Lcom/sun/mail/imap/IMAPFolder$19;

    invoke-direct {v6, p0}, Lcom/sun/mail/imap/IMAPFolder$19;-><init>(Lcom/sun/mail/imap/IMAPFolder;)V

    .line 2191
    invoke-virtual {p0, v5, v6}, Lcom/sun/mail/imap/IMAPFolder;->doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    .line 2211
    .local v4, "started":Ljava/lang/Boolean;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_29

    .line 2212
    monitor-exit p0

    .line 2260
    :cond_28
    :goto_28
    return-void

    .line 2189
    :cond_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_11 .. :try_end_2a} :catchall_5b

    .line 2231
    :goto_2a
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->readIdleResponse()Lcom/sun/mail/iap/Response;

    move-result-object v3

    .line 2233
    .local v3, "r":Lcom/sun/mail/iap/Response;
    :try_start_30
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_33
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_30 .. :try_end_33} :catch_63
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_30 .. :try_end_33} :catch_68

    .line 2234
    if-eqz v3, :cond_41

    :try_start_35
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v5, :cond_41

    .line 2235
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v5, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->processIdleResponse(Lcom/sun/mail/iap/Response;)Z

    move-result v5

    if-nez v5, :cond_5e

    .line 2236
    :cond_41
    const/4 v5, 0x0

    iput v5, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    .line 2237
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 2238
    monitor-exit v6
    :try_end_4a
    .catchall {:try_start_35 .. :try_end_4a} :catchall_60

    .line 2254
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v5, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v5}, Lcom/sun/mail/imap/IMAPStore;->getMinIdleTime()I

    move-result v1

    .line 2255
    .local v1, "minidle":I
    if-lez v1, :cond_28

    .line 2257
    int-to-long v6, v1

    :try_start_55
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_58
    .catch Ljava/lang/InterruptedException; {:try_start_55 .. :try_end_58} :catch_59

    goto :goto_28

    .line 2258
    :catch_59
    move-exception v5

    goto :goto_28

    .line 2189
    .end local v1    # "minidle":I
    .end local v3    # "r":Lcom/sun/mail/iap/Response;
    .end local v4    # "started":Ljava/lang/Boolean;
    :catchall_5b
    move-exception v5

    :try_start_5c
    monitor-exit p0
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw v5

    .line 2233
    .restart local v3    # "r":Lcom/sun/mail/iap/Response;
    .restart local v4    # "started":Ljava/lang/Boolean;
    :cond_5e
    :try_start_5e
    monitor-exit v6

    goto :goto_2a

    :catchall_60
    move-exception v5

    monitor-exit v6
    :try_end_62
    .catchall {:try_start_5e .. :try_end_62} :catchall_60

    :try_start_62
    throw v5
    :try_end_63
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_62 .. :try_end_63} :catch_63
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_62 .. :try_end_63} :catch_68

    .line 2241
    :catch_63
    move-exception v0

    .line 2243
    .local v0, "cex":Lcom/sun/mail/iap/ConnectionException;
    invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->throwClosedException(Lcom/sun/mail/iap/ConnectionException;)V

    goto :goto_2a

    .line 2244
    .end local v0    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catch_68
    move-exception v2

    .line 2245
    .local v2, "pex":Lcom/sun/mail/iap/ProtocolException;
    new-instance v5, Ljavax/mail/MessagingException;

    invoke-virtual {v2}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5
.end method

.method public declared-synchronized isOpen()Z
    .registers 3

    .prologue
    .line 1145
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_14

    .line 1147
    :try_start_4
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_11

    if-eqz v0, :cond_c

    .line 1149
    const/4 v0, 0x0

    :try_start_9
    invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->keepConnectionAlive(Z)V
    :try_end_c
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_9 .. :try_end_c} :catch_17
    .catchall {:try_start_9 .. :try_end_c} :catchall_11

    .line 1145
    :cond_c
    :goto_c
    :try_start_c
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_11

    .line 1154
    :try_start_d
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z
    :try_end_f
    .catchall {:try_start_d .. :try_end_f} :catchall_14

    monitor-exit p0

    return v0

    .line 1145
    :catchall_11
    move-exception v0

    :try_start_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    :try_start_13
    throw v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_14

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1150
    :catch_17
    move-exception v0

    goto :goto_c
.end method

.method public declared-synchronized isSubscribed()Z
    .registers 7

    .prologue
    .line 675
    monitor-enter p0

    const/4 v2, 0x0

    :try_start_2
    check-cast v2, [Lcom/sun/mail/imap/protocol/ListInfo;

    .line 677
    .local v2, "li":[Lcom/sun/mail/imap/protocol/ListInfo;
    iget-boolean v4, p0, Lcom/sun/mail/imap/IMAPFolder;->isNamespace:Z

    if-eqz v4, :cond_3a

    iget-char v4, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    if-eqz v4, :cond_3a

    .line 678
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-char v5, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_20
    .catchall {:try_start_2 .. :try_end_20} :catchall_3f

    move-result-object v3

    .line 683
    .local v3, "lname":Ljava/lang/String;
    :goto_21
    :try_start_21
    new-instance v4, Lcom/sun/mail/imap/IMAPFolder$4;

    invoke-direct {v4, p0, v3}, Lcom/sun/mail/imap/IMAPFolder$4;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/IMAPFolder;->doProtocolCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, [Lcom/sun/mail/imap/protocol/ListInfo;

    move-object v2, v0
    :try_end_2e
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_21 .. :try_end_2e} :catch_42
    .catchall {:try_start_21 .. :try_end_2e} :catchall_3f

    .line 692
    :goto_2e
    if-eqz v2, :cond_3d

    .line 693
    :try_start_30
    invoke-direct {p0, v2, v3}, Lcom/sun/mail/imap/IMAPFolder;->findName([Lcom/sun/mail/imap/protocol/ListInfo;Ljava/lang/String;)I

    move-result v1

    .line 694
    .local v1, "i":I
    aget-object v4, v2, v1

    iget-boolean v4, v4, Lcom/sun/mail/imap/protocol/ListInfo;->canOpen:Z
    :try_end_38
    .catchall {:try_start_30 .. :try_end_38} :catchall_3f

    .line 696
    .end local v1    # "i":I
    :goto_38
    monitor-exit p0

    return v4

    .line 680
    .end local v3    # "lname":Ljava/lang/String;
    :cond_3a
    :try_start_3a
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;
    :try_end_3c
    .catchall {:try_start_3a .. :try_end_3c} :catchall_3f

    .restart local v3    # "lname":Ljava/lang/String;
    goto :goto_21

    .line 696
    :cond_3d
    const/4 v4, 0x0

    goto :goto_38

    .line 675
    .end local v2    # "li":[Lcom/sun/mail/imap/protocol/ListInfo;
    .end local v3    # "lname":Ljava/lang/String;
    :catchall_3f
    move-exception v4

    monitor-exit p0

    throw v4

    .line 689
    .restart local v2    # "li":[Lcom/sun/mail/imap/protocol/ListInfo;
    .restart local v3    # "lname":Ljava/lang/String;
    :catch_42
    move-exception v4

    goto :goto_2e
.end method

.method public list(Ljava/lang/String;)[Ljavax/mail/Folder;
    .registers 3
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 574
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder;->doList(Ljava/lang/String;Z)[Ljavax/mail/Folder;

    move-result-object v0

    return-object v0
.end method

.method public listRights(Ljava/lang/String;)[Lcom/sun/mail/imap/Rights;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2112
    const-string v0, "ACL not supported"

    .line 2113
    new-instance v1, Lcom/sun/mail/imap/IMAPFolder$16;

    invoke-direct {v1, p0, p1}, Lcom/sun/mail/imap/IMAPFolder$16;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljava/lang/String;)V

    .line 2112
    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/mail/imap/Rights;

    return-object v0
.end method

.method public listSubscribed(Ljava/lang/String;)[Ljavax/mail/Folder;
    .registers 3
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 581
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder;->doList(Ljava/lang/String;Z)[Ljavax/mail/Folder;

    move-result-object v0

    return-object v0
.end method

.method public myRights()Lcom/sun/mail/imap/Rights;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2129
    const-string v0, "ACL not supported"

    .line 2130
    new-instance v1, Lcom/sun/mail/imap/IMAPFolder$17;

    invoke-direct {v1, p0}, Lcom/sun/mail/imap/IMAPFolder$17;-><init>(Lcom/sun/mail/imap/IMAPFolder;)V

    .line 2129
    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/mail/imap/Rights;

    return-object v0
.end method

.method public declared-synchronized open(I)V
    .registers 12
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 893
    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkClosed()V

    .line 895
    const/4 v3, 0x0

    .line 897
    .local v3, "mi":Lcom/sun/mail/imap/protocol/MailboxInfo;
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v5, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v5, p0}, Lcom/sun/mail/imap/IMAPStore;->getProtocol(Lcom/sun/mail/imap/IMAPFolder;)Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v5

    iput-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    .line 899
    const/4 v1, 0x0

    .line 901
    .local v1, "exc":Lcom/sun/mail/iap/CommandFailedException;
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_14
    .catchall {:try_start_2 .. :try_end_14} :catchall_7e

    .line 909
    :try_start_14
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v5, p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->addResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_95

    .line 912
    if-ne p1, v8, :cond_81

    .line 913
    :try_start_1b
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    iget-object v7, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->examine(Ljava/lang/String;)Lcom/sun/mail/imap/protocol/MailboxInfo;
    :try_end_22
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_1b .. :try_end_22} :catch_8a
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1b .. :try_end_22} :catch_98
    .catchall {:try_start_1b .. :try_end_22} :catchall_95

    move-result-object v3

    .line 935
    :goto_23
    :try_start_23
    iget v5, v3, Lcom/sun/mail/imap/protocol/MailboxInfo;->mode:I

    if-eq v5, p1, :cond_38

    .line 936
    const/4 v5, 0x2

    if-ne p1, v5, :cond_af

    iget v5, v3, Lcom/sun/mail/imap/protocol/MailboxInfo;->mode:I

    if-ne v5, v8, :cond_af

    .line 937
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v5, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v5}, Lcom/sun/mail/imap/IMAPStore;->allowReadOnlySelect()Z

    move-result v5

    if-eqz v5, :cond_af

    .line 963
    :cond_38
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    .line 964
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/sun/mail/imap/IMAPFolder;->reallyClosed:Z

    .line 965
    iget v5, v3, Lcom/sun/mail/imap/protocol/MailboxInfo;->mode:I

    iput v5, p0, Lcom/sun/mail/imap/IMAPFolder;->mode:I

    .line 966
    iget-object v5, v3, Lcom/sun/mail/imap/protocol/MailboxInfo;->availableFlags:Ljavax/mail/Flags;

    iput-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->availableFlags:Ljavax/mail/Flags;

    .line 967
    iget-object v5, v3, Lcom/sun/mail/imap/protocol/MailboxInfo;->permanentFlags:Ljavax/mail/Flags;

    iput-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->permanentFlags:Ljavax/mail/Flags;

    .line 968
    iget v5, v3, Lcom/sun/mail/imap/protocol/MailboxInfo;->total:I

    iput v5, p0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I

    iput v5, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    .line 969
    iget v5, v3, Lcom/sun/mail/imap/protocol/MailboxInfo;->recent:I

    iput v5, p0, Lcom/sun/mail/imap/IMAPFolder;->recent:I

    .line 970
    iget-wide v8, v3, Lcom/sun/mail/imap/protocol/MailboxInfo;->uidvalidity:J

    iput-wide v8, p0, Lcom/sun/mail/imap/IMAPFolder;->uidvalidity:J

    .line 971
    iget-wide v8, v3, Lcom/sun/mail/imap/protocol/MailboxInfo;->uidnext:J

    iput-wide v8, p0, Lcom/sun/mail/imap/IMAPFolder;->uidnext:J

    .line 974
    new-instance v5, Ljava/util/Vector;

    iget v7, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    invoke-direct {v5, v7}, Ljava/util/Vector;-><init>(I)V

    iput-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Ljava/util/Vector;

    .line 976
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_66
    iget v5, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    if-lt v2, v5, :cond_dc

    .line 901
    monitor-exit v6
    :try_end_6b
    .catchall {:try_start_23 .. :try_end_6b} :catchall_95

    .line 986
    .end local v2    # "i":I
    :goto_6b
    if-eqz v1, :cond_f8

    .line 987
    :try_start_6d
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V

    .line 989
    iget v5, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_ee

    .line 990
    new-instance v5, Ljavax/mail/MessagingException;

    const-string v6, "folder cannot contain messages"

    invoke-direct {v5, v6}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_7e
    .catchall {:try_start_6d .. :try_end_7e} :catchall_7e

    .line 893
    .end local v1    # "exc":Lcom/sun/mail/iap/CommandFailedException;
    .end local v3    # "mi":Lcom/sun/mail/imap/protocol/MailboxInfo;
    :catchall_7e
    move-exception v5

    monitor-exit p0

    throw v5

    .line 915
    .restart local v1    # "exc":Lcom/sun/mail/iap/CommandFailedException;
    .restart local v3    # "mi":Lcom/sun/mail/imap/protocol/MailboxInfo;
    :cond_81
    :try_start_81
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    iget-object v7, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->select(Ljava/lang/String;)Lcom/sun/mail/imap/protocol/MailboxInfo;
    :try_end_88
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_81 .. :try_end_88} :catch_8a
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_81 .. :try_end_88} :catch_98
    .catchall {:try_start_81 .. :try_end_88} :catchall_95

    move-result-object v3

    goto :goto_23

    .line 916
    :catch_8a
    move-exception v0

    .line 918
    .local v0, "cex":Lcom/sun/mail/iap/CommandFailedException;
    const/4 v5, 0x1

    :try_start_8c
    invoke-direct {p0, v5}, Lcom/sun/mail/imap/IMAPFolder;->releaseProtocol(Z)V

    .line 919
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    .line 920
    move-object v1, v0

    .line 921
    monitor-exit v6

    goto :goto_6b

    .line 901
    .end local v0    # "cex":Lcom/sun/mail/iap/CommandFailedException;
    :catchall_95
    move-exception v5

    monitor-exit v6
    :try_end_97
    .catchall {:try_start_8c .. :try_end_97} :catchall_95

    :try_start_97
    throw v5
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_7e

    .line 922
    :catch_98
    move-exception v4

    .line 925
    .local v4, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_99
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logout()V
    :try_end_9e
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_99 .. :try_end_9e} :catch_109
    .catchall {:try_start_99 .. :try_end_9e} :catchall_107

    .line 929
    :goto_9e
    const/4 v5, 0x0

    :try_start_9f
    invoke-direct {p0, v5}, Lcom/sun/mail/imap/IMAPFolder;->releaseProtocol(Z)V

    .line 930
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    .line 931
    new-instance v5, Ljavax/mail/MessagingException;

    invoke-virtual {v4}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5
    :try_end_af
    .catchall {:try_start_9f .. :try_end_af} :catchall_95

    .line 942
    .end local v4    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :cond_af
    :try_start_af
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->close()V

    .line 943
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/sun/mail/imap/IMAPFolder;->releaseProtocol(Z)V
    :try_end_b8
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_af .. :try_end_b8} :catch_c3
    .catchall {:try_start_af .. :try_end_b8} :catchall_ce

    .line 954
    :goto_b8
    const/4 v5, 0x0

    :try_start_b9
    iput-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    .line 955
    new-instance v5, Ljavax/mail/ReadOnlyFolderException;

    .line 956
    const-string v7, "Cannot open in desired mode"

    .line 955
    invoke-direct {v5, p0, v7}, Ljavax/mail/ReadOnlyFolderException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v5
    :try_end_c3
    .catchall {:try_start_b9 .. :try_end_c3} :catchall_95

    .line 944
    :catch_c3
    move-exception v4

    .line 947
    .restart local v4    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_c4
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logout()V
    :try_end_c9
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_c4 .. :try_end_c9} :catch_d0
    .catchall {:try_start_c4 .. :try_end_c9} :catchall_d6

    .line 951
    const/4 v5, 0x0

    :try_start_ca
    invoke-direct {p0, v5}, Lcom/sun/mail/imap/IMAPFolder;->releaseProtocol(Z)V

    goto :goto_b8

    .end local v4    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catchall_ce
    move-exception v5

    goto :goto_b8

    .line 948
    .restart local v4    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catch_d0
    move-exception v5

    .line 951
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/sun/mail/imap/IMAPFolder;->releaseProtocol(Z)V

    goto :goto_b8

    .line 950
    :catchall_d6
    move-exception v5

    .line 951
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/sun/mail/imap/IMAPFolder;->releaseProtocol(Z)V

    .line 952
    throw v5
    :try_end_dc
    .catchall {:try_start_ca .. :try_end_dc} :catchall_ce

    .line 977
    .end local v4    # "pex":Lcom/sun/mail/iap/ProtocolException;
    .restart local v2    # "i":I
    :cond_dc
    :try_start_dc
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Ljava/util/Vector;

    new-instance v7, Lcom/sun/mail/imap/IMAPMessage;

    add-int/lit8 v8, v2, 0x1

    add-int/lit8 v9, v2, 0x1

    invoke-direct {v7, p0, v8, v9}, Lcom/sun/mail/imap/IMAPMessage;-><init>(Lcom/sun/mail/imap/IMAPFolder;II)V

    invoke-virtual {v5, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_ea
    .catchall {:try_start_dc .. :try_end_ea} :catchall_95

    .line 976
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_66

    .line 991
    .end local v2    # "i":I
    :cond_ee
    :try_start_ee
    new-instance v5, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/CommandFailedException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5

    .line 994
    :cond_f8
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    .line 995
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    .line 996
    const/4 v5, 0x1

    iput v5, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    .line 999
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/sun/mail/imap/IMAPFolder;->notifyConnectionListeners(I)V
    :try_end_105
    .catchall {:try_start_ee .. :try_end_105} :catchall_7e

    .line 1000
    monitor-exit p0

    return-void

    .restart local v4    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catchall_107
    move-exception v5

    goto :goto_9e

    .line 926
    :catch_109
    move-exception v5

    goto :goto_9e
.end method

.method protected declared-synchronized releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    .registers 3
    .param p1, "p"    # Lcom/sun/mail/imap/protocol/IMAPProtocol;

    .prologue
    .line 2638
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eq p1, v0, :cond_c

    .line 2639
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v0, p1}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 2640
    :cond_c
    monitor-exit p0

    return-void

    .line 2638
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeACL(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2057
    const-string v0, "ACL not supported"

    .line 2058
    new-instance v1, Lcom/sun/mail/imap/IMAPFolder$15;

    invoke-direct {v1, p0, p1}, Lcom/sun/mail/imap/IMAPFolder$15;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljava/lang/String;)V

    .line 2057
    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    .line 2065
    return-void
.end method

.method public removeRights(Lcom/sun/mail/imap/ACL;)V
    .registers 3
    .param p1, "acl"    # Lcom/sun/mail/imap/ACL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2089
    const/16 v0, 0x2d

    invoke-direct {p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder;->setACL(Lcom/sun/mail/imap/ACL;C)V

    .line 2090
    return-void
.end method

.method public declared-synchronized renameTo(Ljavax/mail/Folder;)Z
    .registers 6
    .param p1, "f"    # Ljavax/mail/Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 867
    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkClosed()V

    .line 868
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V

    .line 869
    invoke-virtual {p1}, Ljavax/mail/Folder;->getStore()Ljavax/mail/Store;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    if-eq v2, v3, :cond_1b

    .line 870
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "Can\'t rename across Stores"

    invoke-direct {v1, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_18
    .catchall {:try_start_2 .. :try_end_18} :catchall_18

    .line 867
    :catchall_18
    move-exception v1

    monitor-exit p0

    throw v1

    .line 873
    :cond_1b
    :try_start_1b
    new-instance v2, Lcom/sun/mail/imap/IMAPFolder$9;

    invoke-direct {v2, p0, p1}, Lcom/sun/mail/imap/IMAPFolder$9;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljavax/mail/Folder;)V

    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->doCommandIgnoreFailure(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
    :try_end_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_18

    move-result-object v0

    .line 880
    .local v0, "ret":Ljava/lang/Object;
    if-nez v0, :cond_28

    .line 886
    :goto_26
    monitor-exit p0

    return v1

    .line 883
    :cond_28
    const/4 v1, 0x0

    :try_start_29
    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    .line 884
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    .line 885
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->notifyFolderRenamedListeners(Ljavax/mail/Folder;)V
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_18

    .line 886
    const/4 v1, 0x1

    goto :goto_26
.end method

.method public declared-synchronized search(Ljavax/mail/search/SearchTerm;)[Ljavax/mail/Message;
    .registers 11
    .param p1, "term"    # Ljavax/mail/search/SearchTerm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1643
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_43

    .line 1646
    const/4 v3, 0x0

    :try_start_5
    check-cast v3, [Ljavax/mail/Message;

    .line 1648
    .local v3, "matchMsgs":[Ljavax/mail/Message;
    iget-object v8, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_a
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_5 .. :try_end_a} :catch_2c
    .catch Ljavax/mail/search/SearchException; {:try_start_5 .. :try_end_a} :catch_32
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_5 .. :try_end_a} :catch_38
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_5 .. :try_end_a} :catch_46
    .catchall {:try_start_5 .. :try_end_a} :catchall_43

    .line 1649
    :try_start_a
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->search(Ljavax/mail/search/SearchTerm;)[I

    move-result-object v4

    .line 1650
    .local v4, "matches":[I
    if-eqz v4, :cond_1b

    .line 1651
    array-length v7, v4

    new-array v3, v7, [Lcom/sun/mail/imap/IMAPMessage;

    .line 1653
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_18
    array-length v7, v4

    if-lt v2, v7, :cond_1e

    .line 1648
    .end local v2    # "i":I
    :cond_1b
    monitor-exit v8
    :try_end_1c
    .catchall {:try_start_a .. :try_end_1c} :catchall_29

    .line 1664
    .end local v3    # "matchMsgs":[Ljavax/mail/Message;
    .end local v4    # "matches":[I
    :goto_1c
    monitor-exit p0

    return-object v3

    .line 1654
    .restart local v2    # "i":I
    .restart local v3    # "matchMsgs":[Ljavax/mail/Message;
    .restart local v4    # "matches":[I
    :cond_1e
    :try_start_1e
    aget v7, v4, v2

    invoke-virtual {p0, v7}, Lcom/sun/mail/imap/IMAPFolder;->getMessageBySeqNumber(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v7

    aput-object v7, v3, v2

    .line 1653
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 1648
    .end local v2    # "i":I
    .end local v4    # "matches":[I
    :catchall_29
    move-exception v7

    monitor-exit v8
    :try_end_2b
    .catchall {:try_start_1e .. :try_end_2b} :catchall_29

    :try_start_2b
    throw v7
    :try_end_2c
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_2b .. :try_end_2c} :catch_2c
    .catch Ljavax/mail/search/SearchException; {:try_start_2b .. :try_end_2c} :catch_32
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2b .. :try_end_2c} :catch_38
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2b .. :try_end_2c} :catch_46
    .catchall {:try_start_2b .. :try_end_2c} :catchall_43

    .line 1659
    .end local v3    # "matchMsgs":[Ljavax/mail/Message;
    :catch_2c
    move-exception v1

    .line 1661
    .local v1, "cfx":Lcom/sun/mail/iap/CommandFailedException;
    :try_start_2d
    invoke-super {p0, p1}, Ljavax/mail/Folder;->search(Ljavax/mail/search/SearchTerm;)[Ljavax/mail/Message;

    move-result-object v3

    goto :goto_1c

    .line 1662
    .end local v1    # "cfx":Lcom/sun/mail/iap/CommandFailedException;
    :catch_32
    move-exception v6

    .line 1664
    .local v6, "sex":Ljavax/mail/search/SearchException;
    invoke-super {p0, p1}, Ljavax/mail/Folder;->search(Ljavax/mail/search/SearchTerm;)[Ljavax/mail/Message;

    move-result-object v3

    goto :goto_1c

    .line 1665
    .end local v6    # "sex":Ljavax/mail/search/SearchException;
    :catch_38
    move-exception v0

    .line 1666
    .local v0, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v7, Ljavax/mail/FolderClosedException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, p0, v8}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v7
    :try_end_43
    .catchall {:try_start_2d .. :try_end_43} :catchall_43

    .line 1643
    .end local v0    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catchall_43
    move-exception v7

    monitor-exit p0

    throw v7

    .line 1667
    :catch_46
    move-exception v5

    .line 1669
    .local v5, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_47
    new-instance v7, Ljavax/mail/MessagingException;

    invoke-virtual {v5}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v5}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7
    :try_end_51
    .catchall {:try_start_47 .. :try_end_51} :catchall_43
.end method

.method public declared-synchronized search(Ljavax/mail/search/SearchTerm;[Ljavax/mail/Message;)[Ljavax/mail/Message;
    .registers 15
    .param p1, "term"    # Ljavax/mail/search/SearchTerm;
    .param p2, "msgs"    # [Ljavax/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1680
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 1682
    array-length v9, p2
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_57

    if-nez v9, :cond_9

    .line 1709
    .end local p2    # "msgs":[Ljavax/mail/Message;
    :goto_7
    monitor-exit p0

    return-object p2

    .line 1687
    .restart local p2    # "msgs":[Ljavax/mail/Message;
    :cond_9
    const/4 v3, 0x0

    :try_start_a
    check-cast v3, [Ljavax/mail/Message;

    .line 1689
    .local v3, "matchMsgs":[Ljavax/mail/Message;
    iget-object v10, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_f
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_a .. :try_end_f} :catch_25
    .catch Ljavax/mail/search/SearchException; {:try_start_a .. :try_end_f} :catch_46
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_a .. :try_end_f} :catch_4c
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_a .. :try_end_f} :catch_5a
    .catchall {:try_start_a .. :try_end_f} :catchall_57

    .line 1690
    :try_start_f
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v6

    .line 1691
    .local v6, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    const/4 v9, 0x0

    invoke-static {p2, v9}, Lcom/sun/mail/imap/Utility;->toMessageSet([Ljavax/mail/Message;Lcom/sun/mail/imap/Utility$Condition;)[Lcom/sun/mail/imap/protocol/MessageSet;

    move-result-object v5

    .line 1692
    .local v5, "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    if-nez v5, :cond_2b

    .line 1693
    new-instance v9, Ljavax/mail/MessageRemovedException;

    .line 1694
    const-string v11, "Messages have been removed"

    .line 1693
    invoke-direct {v9, v11}, Ljavax/mail/MessageRemovedException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1689
    .end local v5    # "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    .end local v6    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catchall_22
    move-exception v9

    monitor-exit v10
    :try_end_24
    .catchall {:try_start_f .. :try_end_24} :catchall_22

    :try_start_24
    throw v9
    :try_end_25
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_24 .. :try_end_25} :catch_25
    .catch Ljavax/mail/search/SearchException; {:try_start_24 .. :try_end_25} :catch_46
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_24 .. :try_end_25} :catch_4c
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_24 .. :try_end_25} :catch_5a
    .catchall {:try_start_24 .. :try_end_25} :catchall_57

    .line 1704
    .end local v3    # "matchMsgs":[Ljavax/mail/Message;
    :catch_25
    move-exception v1

    .line 1706
    .local v1, "cfx":Lcom/sun/mail/iap/CommandFailedException;
    :try_start_26
    invoke-super {p0, p1, p2}, Ljavax/mail/Folder;->search(Ljavax/mail/search/SearchTerm;[Ljavax/mail/Message;)[Ljavax/mail/Message;
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_57

    move-result-object p2

    goto :goto_7

    .line 1695
    .end local v1    # "cfx":Lcom/sun/mail/iap/CommandFailedException;
    .restart local v3    # "matchMsgs":[Ljavax/mail/Message;
    .restart local v5    # "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    .restart local v6    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :cond_2b
    :try_start_2b
    invoke-virtual {v6, v5, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->search([Lcom/sun/mail/imap/protocol/MessageSet;Ljavax/mail/search/SearchTerm;)[I

    move-result-object v4

    .line 1696
    .local v4, "matches":[I
    if-eqz v4, :cond_38

    .line 1697
    array-length v9, v4

    new-array v3, v9, [Lcom/sun/mail/imap/IMAPMessage;

    .line 1698
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_35
    array-length v9, v4

    if-lt v2, v9, :cond_3b

    .line 1689
    .end local v2    # "i":I
    :cond_38
    monitor-exit v10

    move-object p2, v3

    .line 1702
    goto :goto_7

    .line 1699
    .restart local v2    # "i":I
    :cond_3b
    aget v9, v4, v2

    invoke-virtual {p0, v9}, Lcom/sun/mail/imap/IMAPFolder;->getMessageBySeqNumber(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v9

    aput-object v9, v3, v2
    :try_end_43
    .catchall {:try_start_2b .. :try_end_43} :catchall_22

    .line 1698
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 1707
    .end local v2    # "i":I
    .end local v3    # "matchMsgs":[Ljavax/mail/Message;
    .end local v4    # "matches":[I
    .end local v5    # "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    .end local v6    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catch_46
    move-exception v8

    .line 1709
    .local v8, "sex":Ljavax/mail/search/SearchException;
    :try_start_47
    invoke-super {p0, p1, p2}, Ljavax/mail/Folder;->search(Ljavax/mail/search/SearchTerm;[Ljavax/mail/Message;)[Ljavax/mail/Message;

    move-result-object p2

    goto :goto_7

    .line 1710
    .end local v8    # "sex":Ljavax/mail/search/SearchException;
    :catch_4c
    move-exception v0

    .line 1711
    .local v0, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v9, Ljavax/mail/FolderClosedException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, p0, v10}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v9
    :try_end_57
    .catchall {:try_start_47 .. :try_end_57} :catchall_57

    .line 1680
    .end local v0    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catchall_57
    move-exception v9

    monitor-exit p0

    throw v9

    .line 1712
    :catch_5a
    move-exception v7

    .line 1714
    .local v7, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_5b
    new-instance v9, Ljavax/mail/MessagingException;

    invoke-virtual {v7}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v7}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v9
    :try_end_65
    .catchall {:try_start_5b .. :try_end_65} :catchall_57
.end method

.method public declared-synchronized setFlags([Ljavax/mail/Message;Ljavax/mail/Flags;Z)V
    .registers 11
    .param p1, "msgs"    # [Ljavax/mail/Message;
    .param p2, "flag"    # Ljavax/mail/Flags;
    .param p3, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1016
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 1017
    invoke-direct {p0, p2}, Lcom/sun/mail/imap/IMAPFolder;->checkFlags(Ljavax/mail/Flags;)V

    .line 1019
    array-length v4, p1
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_30

    if-nez v4, :cond_c

    .line 1036
    :goto_a
    monitor-exit p0

    return-void

    .line 1022
    :cond_c
    :try_start_c
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_30

    .line 1024
    :try_start_f
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v2

    .line 1025
    .local v2, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    const/4 v4, 0x0

    invoke-static {p1, v4}, Lcom/sun/mail/imap/Utility;->toMessageSet([Ljavax/mail/Message;Lcom/sun/mail/imap/Utility$Condition;)[Lcom/sun/mail/imap/protocol/MessageSet;

    move-result-object v1

    .line 1026
    .local v1, "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    if-nez v1, :cond_33

    .line 1027
    new-instance v4, Ljavax/mail/MessageRemovedException;

    .line 1028
    const-string v6, "Messages have been removed"

    .line 1027
    invoke-direct {v4, v6}, Ljavax/mail/MessageRemovedException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_22
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_f .. :try_end_22} :catch_22
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_f .. :try_end_22} :catch_38
    .catchall {:try_start_f .. :try_end_22} :catchall_2d

    .line 1030
    .end local v1    # "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    .end local v2    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catch_22
    move-exception v0

    .line 1031
    .local v0, "cex":Lcom/sun/mail/iap/ConnectionException;
    :try_start_23
    new-instance v4, Ljavax/mail/FolderClosedException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, p0, v6}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v4

    .line 1022
    .end local v0    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catchall_2d
    move-exception v4

    monitor-exit v5
    :try_end_2f
    .catchall {:try_start_23 .. :try_end_2f} :catchall_2d

    :try_start_2f
    throw v4
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_30

    .line 1016
    :catchall_30
    move-exception v4

    monitor-exit p0

    throw v4

    .line 1029
    .restart local v1    # "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    .restart local v2    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :cond_33
    :try_start_33
    invoke-virtual {v2, v1, p2, p3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->storeFlags([Lcom/sun/mail/imap/protocol/MessageSet;Ljavax/mail/Flags;Z)V
    :try_end_36
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_33 .. :try_end_36} :catch_22
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_33 .. :try_end_36} :catch_38
    .catchall {:try_start_33 .. :try_end_36} :catchall_2d

    .line 1022
    :try_start_36
    monitor-exit v5

    goto :goto_a

    .line 1032
    .end local v1    # "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    .end local v2    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catch_38
    move-exception v3

    .line 1033
    .local v3, "pex":Lcom/sun/mail/iap/ProtocolException;
    new-instance v4, Ljavax/mail/MessagingException;

    invoke-virtual {v3}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4
    :try_end_43
    .catchall {:try_start_36 .. :try_end_43} :catchall_2d
.end method

.method public setQuota(Ljavax/mail/Quota;)V
    .registers 4
    .param p1, "quota"    # Ljavax/mail/Quota;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2009
    const-string v0, "QUOTA not supported"

    .line 2010
    new-instance v1, Lcom/sun/mail/imap/IMAPFolder$13;

    invoke-direct {v1, p0, p1}, Lcom/sun/mail/imap/IMAPFolder$13;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljavax/mail/Quota;)V

    .line 2009
    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    .line 2017
    return-void
.end method

.method public declared-synchronized setSubscribed(Z)V
    .registers 3
    .param p1, "subscribe"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 704
    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/sun/mail/imap/IMAPFolder$5;

    invoke-direct {v0, p0, p1}, Lcom/sun/mail/imap/IMAPFolder$5;-><init>(Lcom/sun/mail/imap/IMAPFolder;Z)V

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->doCommandIgnoreFailure(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 713
    monitor-exit p0

    return-void

    .line 704
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method waitIfIdle()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 2268
    sget-boolean v0, Lcom/sun/mail/imap/IMAPFolder;->$assertionsDisabled:Z

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2270
    :cond_12
    iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    .line 2271
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->idleAbort()V

    .line 2272
    const/4 v0, 0x2

    iput v0, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    .line 2276
    :cond_1f
    :try_start_1f
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_24
    .catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_24} :catch_29

    .line 2269
    :cond_24
    :goto_24
    iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    if-nez v0, :cond_12

    .line 2279
    return-void

    .line 2277
    :catch_29
    move-exception v0

    goto :goto_24
.end method
