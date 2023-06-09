.class public abstract Ljavax/mail/Folder;
.super Ljava/lang/Object;
.source "Folder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/mail/Folder$TerminatorEvent;
    }
.end annotation


# static fields
.field public static final HOLDS_FOLDERS:I = 0x2

.field public static final HOLDS_MESSAGES:I = 0x1

.field public static final READ_ONLY:I = 0x1

.field public static final READ_WRITE:I = 0x2


# instance fields
.field private volatile connectionListeners:Ljava/util/Vector;

.field private volatile folderListeners:Ljava/util/Vector;

.field private volatile messageChangedListeners:Ljava/util/Vector;

.field private volatile messageCountListeners:Ljava/util/Vector;

.field protected mode:I

.field private q:Ljavax/mail/EventQueue;

.field private qLock:Ljava/lang/Object;

.field protected store:Ljavax/mail/Store;


# direct methods
.method protected constructor <init>(Ljavax/mail/Store;)V
    .registers 4
    .param p1, "store"    # Ljavax/mail/Store;

    .prologue
    const/4 v1, 0x0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    const/4 v0, -0x1

    iput v0, p0, Ljavax/mail/Folder;->mode:I

    .line 1297
    iput-object v1, p0, Ljavax/mail/Folder;->connectionListeners:Ljava/util/Vector;

    .line 1364
    iput-object v1, p0, Ljavax/mail/Folder;->folderListeners:Ljava/util/Vector;

    .line 1445
    iput-object v1, p0, Ljavax/mail/Folder;->messageCountListeners:Ljava/util/Vector;

    .line 1528
    iput-object v1, p0, Ljavax/mail/Folder;->messageChangedListeners:Ljava/util/Vector;

    .line 1590
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljavax/mail/Folder;->qLock:Ljava/lang/Object;

    .line 133
    iput-object p1, p0, Ljavax/mail/Folder;->store:Ljavax/mail/Store;

    .line 134
    return-void
.end method

.method private queueEvent(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V
    .registers 6
    .param p1, "event"    # Ljavax/mail/event/MailEvent;
    .param p2, "vector"    # Ljava/util/Vector;

    .prologue
    .line 1597
    iget-object v2, p0, Ljavax/mail/Folder;->qLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1598
    :try_start_3
    iget-object v1, p0, Ljavax/mail/Folder;->q:Ljavax/mail/EventQueue;

    if-nez v1, :cond_e

    .line 1599
    new-instance v1, Ljavax/mail/EventQueue;

    invoke-direct {v1}, Ljavax/mail/EventQueue;-><init>()V

    iput-object v1, p0, Ljavax/mail/Folder;->q:Ljavax/mail/EventQueue;

    .line 1597
    :cond_e
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_1b

    .line 1610
    invoke-virtual {p2}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    .line 1611
    .local v0, "v":Ljava/util/Vector;
    iget-object v1, p0, Ljavax/mail/Folder;->q:Ljavax/mail/EventQueue;

    invoke-virtual {v1, p1, v0}, Ljavax/mail/EventQueue;->enqueue(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    .line 1612
    return-void

    .line 1597
    .end local v0    # "v":Ljava/util/Vector;
    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method private terminateQueue()V
    .registers 5

    .prologue
    .line 1629
    iget-object v2, p0, Ljavax/mail/Folder;->qLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1630
    :try_start_3
    iget-object v1, p0, Ljavax/mail/Folder;->q:Ljavax/mail/EventQueue;

    if-eqz v1, :cond_1d

    .line 1631
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 1632
    .local v0, "dummyListeners":Ljava/util/Vector;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    .line 1633
    iget-object v1, p0, Ljavax/mail/Folder;->q:Ljavax/mail/EventQueue;

    new-instance v3, Ljavax/mail/Folder$TerminatorEvent;

    invoke-direct {v3}, Ljavax/mail/Folder$TerminatorEvent;-><init>()V

    invoke-virtual {v1, v3, v0}, Ljavax/mail/EventQueue;->enqueue(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    .line 1634
    const/4 v1, 0x0

    iput-object v1, p0, Ljavax/mail/Folder;->q:Ljavax/mail/EventQueue;

    .line 1629
    .end local v0    # "dummyListeners":Ljava/util/Vector;
    :cond_1d
    monitor-exit v2

    .line 1637
    return-void

    .line 1629
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
    .line 1310
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljavax/mail/Folder;->connectionListeners:Ljava/util/Vector;

    if-nez v0, :cond_c

    .line 1311
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljavax/mail/Folder;->connectionListeners:Ljava/util/Vector;

    .line 1312
    :cond_c
    iget-object v0, p0, Ljavax/mail/Folder;->connectionListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 1313
    monitor-exit p0

    return-void

    .line 1310
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addFolderListener(Ljavax/mail/event/FolderListener;)V
    .registers 3
    .param p1, "l"    # Ljavax/mail/event/FolderListener;

    .prologue
    .line 1376
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljavax/mail/Folder;->folderListeners:Ljava/util/Vector;

    if-nez v0, :cond_c

    .line 1377
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljavax/mail/Folder;->folderListeners:Ljava/util/Vector;

    .line 1378
    :cond_c
    iget-object v0, p0, Ljavax/mail/Folder;->folderListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 1379
    monitor-exit p0

    return-void

    .line 1376
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addMessageChangedListener(Ljavax/mail/event/MessageChangedListener;)V
    .registers 3
    .param p1, "l"    # Ljavax/mail/event/MessageChangedListener;

    .prologue
    .line 1541
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljavax/mail/Folder;->messageChangedListeners:Ljava/util/Vector;

    if-nez v0, :cond_c

    .line 1542
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljavax/mail/Folder;->messageChangedListeners:Ljava/util/Vector;

    .line 1543
    :cond_c
    iget-object v0, p0, Ljavax/mail/Folder;->messageChangedListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 1544
    monitor-exit p0

    return-void

    .line 1541
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addMessageCountListener(Ljavax/mail/event/MessageCountListener;)V
    .registers 3
    .param p1, "l"    # Ljavax/mail/event/MessageCountListener;

    .prologue
    .line 1457
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljavax/mail/Folder;->messageCountListeners:Ljava/util/Vector;

    if-nez v0, :cond_c

    .line 1458
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljavax/mail/Folder;->messageCountListeners:Ljava/util/Vector;

    .line 1459
    :cond_c
    iget-object v0, p0, Ljavax/mail/Folder;->messageCountListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 1460
    monitor-exit p0

    return-void

    .line 1457
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract appendMessages([Ljavax/mail/Message;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract close(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public copyMessages([Ljavax/mail/Message;Ljavax/mail/Folder;)V
    .registers 6
    .param p1, "msgs"    # [Ljavax/mail/Message;
    .param p2, "folder"    # Ljavax/mail/Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1162
    invoke-virtual {p2}, Ljavax/mail/Folder;->exists()Z

    move-result v0

    if-nez v0, :cond_23

    .line 1163
    new-instance v0, Ljavax/mail/FolderNotFoundException;

    .line 1164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljavax/mail/Folder;->getFullName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1163
    invoke-direct {v0, v1, p2}, Ljavax/mail/FolderNotFoundException;-><init>(Ljava/lang/String;Ljavax/mail/Folder;)V

    throw v0

    .line 1167
    :cond_23
    invoke-virtual {p2, p1}, Ljavax/mail/Folder;->appendMessages([Ljavax/mail/Message;)V

    .line 1168
    return-void
.end method

.method public abstract create(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract delete(Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract exists()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract expunge()[Ljavax/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public fetch([Ljavax/mail/Message;Ljavax/mail/FetchProfile;)V
    .registers 3
    .param p1, "msgs"    # [Ljavax/mail/Message;
    .param p2, "fp"    # Ljavax/mail/FetchProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1005
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
    .line 1640
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1641
    invoke-direct {p0}, Ljavax/mail/Folder;->terminateQueue()V

    .line 1642
    return-void
.end method

.method public declared-synchronized getDeletedMessageCount()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 799
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljavax/mail/Folder;->isOpen()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_23

    move-result v3

    if-nez v3, :cond_a

    .line 800
    const/4 v0, -0x1

    .line 813
    :cond_8
    monitor-exit p0

    return v0

    .line 802
    :cond_a
    const/4 v0, 0x0

    .line 803
    .local v0, "deleted":I
    :try_start_b
    invoke-virtual {p0}, Ljavax/mail/Folder;->getMessageCount()I
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_23

    move-result v2

    .line 804
    .local v2, "total":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_10
    if-gt v1, v2, :cond_8

    .line 806
    :try_start_12
    invoke-virtual {p0, v1}, Ljavax/mail/Folder;->getMessage(I)Ljavax/mail/Message;

    move-result-object v3

    sget-object v4, Ljavax/mail/Flags$Flag;->DELETED:Ljavax/mail/Flags$Flag;

    invoke-virtual {v3, v4}, Ljavax/mail/Message;->isSet(Ljavax/mail/Flags$Flag;)Z
    :try_end_1b
    .catch Ljavax/mail/MessageRemovedException; {:try_start_12 .. :try_end_1b} :catch_26
    .catchall {:try_start_12 .. :try_end_1b} :catchall_23

    move-result v3

    if-eqz v3, :cond_20

    .line 807
    add-int/lit8 v0, v0, 0x1

    .line 804
    :cond_20
    :goto_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 799
    .end local v0    # "deleted":I
    .end local v1    # "i":I
    .end local v2    # "total":I
    :catchall_23
    move-exception v3

    monitor-exit p0

    throw v3

    .line 808
    .restart local v0    # "deleted":I
    .restart local v1    # "i":I
    .restart local v2    # "total":I
    :catch_26
    move-exception v3

    goto :goto_20
.end method

.method public abstract getFolder(Ljava/lang/String;)Ljavax/mail/Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getFullName()Ljava/lang/String;
.end method

.method public abstract getMessage(I)Ljavax/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getMessageCount()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public declared-synchronized getMessages()[Ljavax/mail/Message;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 937
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljavax/mail/Folder;->isOpen()Z

    move-result v3

    if-nez v3, :cond_12

    .line 938
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Folder not open"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_f

    .line 937
    :catchall_f
    move-exception v3

    monitor-exit p0

    throw v3

    .line 939
    :cond_12
    :try_start_12
    invoke-virtual {p0}, Ljavax/mail/Folder;->getMessageCount()I

    move-result v2

    .line 940
    .local v2, "total":I
    new-array v1, v2, [Ljavax/mail/Message;
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_f

    .line 941
    .local v1, "msgs":[Ljavax/mail/Message;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_19
    if-le v0, v2, :cond_1d

    .line 943
    monitor-exit p0

    return-object v1

    .line 942
    :cond_1d
    add-int/lit8 v3, v0, -0x1

    :try_start_1f
    invoke-virtual {p0, v0}, Ljavax/mail/Folder;->getMessage(I)Ljavax/mail/Message;

    move-result-object v4

    aput-object v4, v1, v3
    :try_end_25
    .catchall {:try_start_1f .. :try_end_25} :catchall_f

    .line 941
    add-int/lit8 v0, v0, 0x1

    goto :goto_19
.end method

.method public declared-synchronized getMessages(II)[Ljavax/mail/Message;
    .registers 7
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 877
    monitor-enter p0

    sub-int v2, p2, p1

    add-int/lit8 v2, v2, 0x1

    :try_start_5
    new-array v1, v2, [Ljavax/mail/Message;
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_17

    .line 878
    .local v1, "msgs":[Ljavax/mail/Message;
    move v0, p1

    .local v0, "i":I
    :goto_8
    if-le v0, p2, :cond_c

    .line 880
    monitor-exit p0

    return-object v1

    .line 879
    :cond_c
    sub-int v2, v0, p1

    :try_start_e
    invoke-virtual {p0, v0}, Ljavax/mail/Folder;->getMessage(I)Ljavax/mail/Message;

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_17

    .line 878
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 877
    .end local v0    # "i":I
    .end local v1    # "msgs":[Ljavax/mail/Message;
    :catchall_17
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getMessages([I)[Ljavax/mail/Message;
    .registers 6
    .param p1, "msgnums"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 907
    monitor-enter p0

    :try_start_1
    array-length v1, p1

    .line 908
    .local v1, "len":I
    new-array v2, v1, [Ljavax/mail/Message;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_14

    .line 909
    .local v2, "msgs":[Ljavax/mail/Message;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    if-lt v0, v1, :cond_9

    .line 911
    monitor-exit p0

    return-object v2

    .line 910
    :cond_9
    :try_start_9
    aget v3, p1, v0

    invoke-virtual {p0, v3}, Ljavax/mail/Folder;->getMessage(I)Ljavax/mail/Message;

    move-result-object v3

    aput-object v3, v2, v0
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_14

    .line 909
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 907
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "msgs":[Ljavax/mail/Message;
    :catchall_14
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getMode()I
    .registers 3

    .prologue
    .line 636
    invoke-virtual {p0}, Ljavax/mail/Folder;->isOpen()Z

    move-result v0

    if-nez v0, :cond_e

    .line 637
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Folder not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 638
    :cond_e
    iget v0, p0, Ljavax/mail/Folder;->mode:I

    return v0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public declared-synchronized getNewMessageCount()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 707
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljavax/mail/Folder;->isOpen()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_23

    move-result v3

    if-nez v3, :cond_a

    .line 708
    const/4 v1, -0x1

    .line 721
    :cond_8
    monitor-exit p0

    return v1

    .line 710
    :cond_a
    const/4 v1, 0x0

    .line 711
    .local v1, "newmsgs":I
    :try_start_b
    invoke-virtual {p0}, Ljavax/mail/Folder;->getMessageCount()I
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_23

    move-result v2

    .line 712
    .local v2, "total":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_10
    if-gt v0, v2, :cond_8

    .line 714
    :try_start_12
    invoke-virtual {p0, v0}, Ljavax/mail/Folder;->getMessage(I)Ljavax/mail/Message;

    move-result-object v3

    sget-object v4, Ljavax/mail/Flags$Flag;->RECENT:Ljavax/mail/Flags$Flag;

    invoke-virtual {v3, v4}, Ljavax/mail/Message;->isSet(Ljavax/mail/Flags$Flag;)Z
    :try_end_1b
    .catch Ljavax/mail/MessageRemovedException; {:try_start_12 .. :try_end_1b} :catch_26
    .catchall {:try_start_12 .. :try_end_1b} :catchall_23

    move-result v3

    if-eqz v3, :cond_20

    .line 715
    add-int/lit8 v1, v1, 0x1

    .line 712
    :cond_20
    :goto_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 707
    .end local v0    # "i":I
    .end local v1    # "newmsgs":I
    .end local v2    # "total":I
    :catchall_23
    move-exception v3

    monitor-exit p0

    throw v3

    .line 716
    .restart local v0    # "i":I
    .restart local v1    # "newmsgs":I
    .restart local v2    # "total":I
    :catch_26
    move-exception v3

    goto :goto_20
.end method

.method public abstract getParent()Ljavax/mail/Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getPermanentFlags()Ljavax/mail/Flags;
.end method

.method public abstract getSeparator()C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public getStore()Ljavax/mail/Store;
    .registers 2

    .prologue
    .line 207
    iget-object v0, p0, Ljavax/mail/Folder;->store:Ljavax/mail/Store;

    return-object v0
.end method

.method public abstract getType()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public getURLName()Ljavax/mail/URLName;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 166
    invoke-virtual {p0}, Ljavax/mail/Folder;->getStore()Ljavax/mail/Store;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/mail/Store;->getURLName()Ljavax/mail/URLName;

    move-result-object v10

    .line 167
    .local v10, "storeURL":Ljavax/mail/URLName;
    invoke-virtual {p0}, Ljavax/mail/Folder;->getFullName()Ljava/lang/String;

    move-result-object v8

    .line 168
    .local v8, "fullname":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 169
    .local v7, "encodedName":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljavax/mail/Folder;->getSeparator()C

    move-result v9

    .line 171
    .local v9, "separator":C
    if-eqz v8, :cond_1a

    .line 188
    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    :cond_1a
    new-instance v0, Ljavax/mail/URLName;

    invoke-virtual {v10}, Ljavax/mail/URLName;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Ljavax/mail/URLName;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 196
    invoke-virtual {v10}, Ljavax/mail/URLName;->getPort()I

    move-result v3

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 197
    invoke-virtual {v10}, Ljavax/mail/URLName;->getUsername()Ljava/lang/String;

    move-result-object v5

    .line 198
    const/4 v6, 0x0

    .line 195
    invoke-direct/range {v0 .. v6}, Ljavax/mail/URLName;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public declared-synchronized getUnreadMessageCount()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 753
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljavax/mail/Folder;->isOpen()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_23

    move-result v3

    if-nez v3, :cond_a

    .line 754
    const/4 v2, -0x1

    .line 767
    :cond_8
    monitor-exit p0

    return v2

    .line 756
    :cond_a
    const/4 v2, 0x0

    .line 757
    .local v2, "unread":I
    :try_start_b
    invoke-virtual {p0}, Ljavax/mail/Folder;->getMessageCount()I
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_23

    move-result v1

    .line 758
    .local v1, "total":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_10
    if-gt v0, v1, :cond_8

    .line 760
    :try_start_12
    invoke-virtual {p0, v0}, Ljavax/mail/Folder;->getMessage(I)Ljavax/mail/Message;

    move-result-object v3

    sget-object v4, Ljavax/mail/Flags$Flag;->SEEN:Ljavax/mail/Flags$Flag;

    invoke-virtual {v3, v4}, Ljavax/mail/Message;->isSet(Ljavax/mail/Flags$Flag;)Z
    :try_end_1b
    .catch Ljavax/mail/MessageRemovedException; {:try_start_12 .. :try_end_1b} :catch_26
    .catchall {:try_start_12 .. :try_end_1b} :catchall_23

    move-result v3

    if-nez v3, :cond_20

    .line 761
    add-int/lit8 v2, v2, 0x1

    .line 758
    :cond_20
    :goto_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 753
    .end local v0    # "i":I
    .end local v1    # "total":I
    .end local v2    # "unread":I
    :catchall_23
    move-exception v3

    monitor-exit p0

    throw v3

    .line 762
    .restart local v0    # "i":I
    .restart local v1    # "total":I
    .restart local v2    # "unread":I
    :catch_26
    move-exception v3

    goto :goto_20
.end method

.method public abstract hasNewMessages()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract isOpen()Z
.end method

.method public isSubscribed()Z
    .registers 2

    .prologue
    .line 404
    const/4 v0, 0x1

    return v0
.end method

.method public list()[Ljavax/mail/Folder;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 321
    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljavax/mail/Folder;->list(Ljava/lang/String;)[Ljavax/mail/Folder;

    move-result-object v0

    return-object v0
.end method

.method public abstract list(Ljava/lang/String;)[Ljavax/mail/Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public listSubscribed()[Ljavax/mail/Folder;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 339
    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljavax/mail/Folder;->listSubscribed(Ljava/lang/String;)[Ljavax/mail/Folder;

    move-result-object v0

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
    .line 303
    invoke-virtual {p0, p1}, Ljavax/mail/Folder;->list(Ljava/lang/String;)[Ljavax/mail/Folder;

    move-result-object v0

    return-object v0
.end method

.method protected notifyConnectionListeners(I)V
    .registers 4
    .param p1, "type"    # I

    .prologue
    .line 1344
    iget-object v1, p0, Ljavax/mail/Folder;->connectionListeners:Ljava/util/Vector;

    if-eqz v1, :cond_e

    .line 1345
    new-instance v0, Ljavax/mail/event/ConnectionEvent;

    invoke-direct {v0, p0, p1}, Ljavax/mail/event/ConnectionEvent;-><init>(Ljava/lang/Object;I)V

    .line 1346
    .local v0, "e":Ljavax/mail/event/ConnectionEvent;
    iget-object v1, p0, Ljavax/mail/Folder;->connectionListeners:Ljava/util/Vector;

    invoke-direct {p0, v0, v1}, Ljavax/mail/Folder;->queueEvent(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    .line 1359
    .end local v0    # "e":Ljavax/mail/event/ConnectionEvent;
    :cond_e
    const/4 v1, 0x3

    if-ne p1, v1, :cond_14

    .line 1360
    invoke-direct {p0}, Ljavax/mail/Folder;->terminateQueue()V

    .line 1361
    :cond_14
    return-void
.end method

.method protected notifyFolderListeners(I)V
    .registers 4
    .param p1, "type"    # I

    .prologue
    .line 1411
    iget-object v1, p0, Ljavax/mail/Folder;->folderListeners:Ljava/util/Vector;

    if-eqz v1, :cond_e

    .line 1412
    new-instance v0, Ljavax/mail/event/FolderEvent;

    invoke-direct {v0, p0, p0, p1}, Ljavax/mail/event/FolderEvent;-><init>(Ljava/lang/Object;Ljavax/mail/Folder;I)V

    .line 1413
    .local v0, "e":Ljavax/mail/event/FolderEvent;
    iget-object v1, p0, Ljavax/mail/Folder;->folderListeners:Ljava/util/Vector;

    invoke-direct {p0, v0, v1}, Ljavax/mail/Folder;->queueEvent(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    .line 1415
    .end local v0    # "e":Ljavax/mail/event/FolderEvent;
    :cond_e
    iget-object v1, p0, Ljavax/mail/Folder;->store:Ljavax/mail/Store;

    invoke-virtual {v1, p1, p0}, Ljavax/mail/Store;->notifyFolderListeners(ILjavax/mail/Folder;)V

    .line 1416
    return-void
.end method

.method protected notifyFolderRenamedListeners(Ljavax/mail/Folder;)V
    .registers 4
    .param p1, "folder"    # Ljavax/mail/Folder;

    .prologue
    .line 1436
    iget-object v1, p0, Ljavax/mail/Folder;->folderListeners:Ljava/util/Vector;

    if-eqz v1, :cond_f

    .line 1437
    new-instance v0, Ljavax/mail/event/FolderEvent;

    .line 1438
    const/4 v1, 0x3

    .line 1437
    invoke-direct {v0, p0, p0, p1, v1}, Ljavax/mail/event/FolderEvent;-><init>(Ljava/lang/Object;Ljavax/mail/Folder;Ljavax/mail/Folder;I)V

    .line 1439
    .local v0, "e":Ljavax/mail/event/FolderEvent;
    iget-object v1, p0, Ljavax/mail/Folder;->folderListeners:Ljava/util/Vector;

    invoke-direct {p0, v0, v1}, Ljavax/mail/Folder;->queueEvent(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    .line 1441
    .end local v0    # "e":Ljavax/mail/event/FolderEvent;
    :cond_f
    iget-object v1, p0, Ljavax/mail/Folder;->store:Ljavax/mail/Store;

    invoke-virtual {v1, p0, p1}, Ljavax/mail/Store;->notifyFolderRenamedListeners(Ljavax/mail/Folder;Ljavax/mail/Folder;)V

    .line 1442
    return-void
.end method

.method protected notifyMessageAddedListeners([Ljavax/mail/Message;)V
    .registers 5
    .param p1, "msgs"    # [Ljavax/mail/Message;

    .prologue
    .line 1490
    iget-object v1, p0, Ljavax/mail/Folder;->messageCountListeners:Ljava/util/Vector;

    if-nez v1, :cond_5

    .line 1500
    :goto_4
    return-void

    .line 1493
    :cond_5
    new-instance v0, Ljavax/mail/event/MessageCountEvent;

    .line 1495
    const/4 v1, 0x1

    .line 1496
    const/4 v2, 0x0

    .line 1493
    invoke-direct {v0, p0, v1, v2, p1}, Ljavax/mail/event/MessageCountEvent;-><init>(Ljavax/mail/Folder;IZ[Ljavax/mail/Message;)V

    .line 1499
    .local v0, "e":Ljavax/mail/event/MessageCountEvent;
    iget-object v1, p0, Ljavax/mail/Folder;->messageCountListeners:Ljava/util/Vector;

    invoke-direct {p0, v0, v1}, Ljavax/mail/Folder;->queueEvent(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    goto :goto_4
.end method

.method protected notifyMessageChangedListeners(ILjavax/mail/Message;)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "msg"    # Ljavax/mail/Message;

    .prologue
    .line 1572
    iget-object v1, p0, Ljavax/mail/Folder;->messageChangedListeners:Ljava/util/Vector;

    if-nez v1, :cond_5

    .line 1577
    :goto_4
    return-void

    .line 1575
    :cond_5
    new-instance v0, Ljavax/mail/event/MessageChangedEvent;

    invoke-direct {v0, p0, p1, p2}, Ljavax/mail/event/MessageChangedEvent;-><init>(Ljava/lang/Object;ILjavax/mail/Message;)V

    .line 1576
    .local v0, "e":Ljavax/mail/event/MessageChangedEvent;
    iget-object v1, p0, Ljavax/mail/Folder;->messageChangedListeners:Ljava/util/Vector;

    invoke-direct {p0, v0, v1}, Ljavax/mail/Folder;->queueEvent(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    goto :goto_4
.end method

.method protected notifyMessageRemovedListeners(Z[Ljavax/mail/Message;)V
    .registers 5
    .param p1, "removed"    # Z
    .param p2, "msgs"    # [Ljavax/mail/Message;

    .prologue
    .line 1516
    iget-object v1, p0, Ljavax/mail/Folder;->messageCountListeners:Ljava/util/Vector;

    if-nez v1, :cond_5

    .line 1525
    :goto_4
    return-void

    .line 1519
    :cond_5
    new-instance v0, Ljavax/mail/event/MessageCountEvent;

    .line 1521
    const/4 v1, 0x2

    .line 1519
    invoke-direct {v0, p0, v1, p1, p2}, Ljavax/mail/event/MessageCountEvent;-><init>(Ljavax/mail/Folder;IZ[Ljavax/mail/Message;)V

    .line 1524
    .local v0, "e":Ljavax/mail/event/MessageCountEvent;
    iget-object v1, p0, Ljavax/mail/Folder;->messageCountListeners:Ljava/util/Vector;

    invoke-direct {p0, v0, v1}, Ljavax/mail/Folder;->queueEvent(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    goto :goto_4
.end method

.method public abstract open(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public declared-synchronized removeConnectionListener(Ljavax/mail/event/ConnectionListener;)V
    .registers 3
    .param p1, "l"    # Ljavax/mail/event/ConnectionListener;

    .prologue
    .line 1326
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljavax/mail/Folder;->connectionListeners:Ljava/util/Vector;

    if-eqz v0, :cond_a

    .line 1327
    iget-object v0, p0, Ljavax/mail/Folder;->connectionListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 1328
    :cond_a
    monitor-exit p0

    return-void

    .line 1326
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeFolderListener(Ljavax/mail/event/FolderListener;)V
    .registers 3
    .param p1, "l"    # Ljavax/mail/event/FolderListener;

    .prologue
    .line 1391
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljavax/mail/Folder;->folderListeners:Ljava/util/Vector;

    if-eqz v0, :cond_a

    .line 1392
    iget-object v0, p0, Ljavax/mail/Folder;->folderListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 1393
    :cond_a
    monitor-exit p0

    return-void

    .line 1391
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeMessageChangedListener(Ljavax/mail/event/MessageChangedListener;)V
    .registers 3
    .param p1, "l"    # Ljavax/mail/event/MessageChangedListener;

    .prologue
    .line 1557
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljavax/mail/Folder;->messageChangedListeners:Ljava/util/Vector;

    if-eqz v0, :cond_a

    .line 1558
    iget-object v0, p0, Ljavax/mail/Folder;->messageChangedListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 1559
    :cond_a
    monitor-exit p0

    return-void

    .line 1557
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeMessageCountListener(Ljavax/mail/event/MessageCountListener;)V
    .registers 3
    .param p1, "l"    # Ljavax/mail/event/MessageCountListener;

    .prologue
    .line 1473
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljavax/mail/Folder;->messageCountListeners:Ljava/util/Vector;

    if-eqz v0, :cond_a

    .line 1474
    iget-object v0, p0, Ljavax/mail/Folder;->messageCountListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 1475
    :cond_a
    monitor-exit p0

    return-void

    .line 1473
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract renameTo(Ljavax/mail/Folder;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public search(Ljavax/mail/search/SearchTerm;)[Ljavax/mail/Message;
    .registers 3
    .param p1, "term"    # Ljavax/mail/search/SearchTerm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1226
    invoke-virtual {p0}, Ljavax/mail/Folder;->getMessages()[Ljavax/mail/Message;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljavax/mail/Folder;->search(Ljavax/mail/search/SearchTerm;[Ljavax/mail/Message;)[Ljavax/mail/Message;

    move-result-object v0

    return-object v0
.end method

.method public search(Ljavax/mail/search/SearchTerm;[Ljavax/mail/Message;)[Ljavax/mail/Message;
    .registers 7
    .param p1, "term"    # Ljavax/mail/search/SearchTerm;
    .param p2, "msgs"    # [Ljavax/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1260
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 1263
    .local v2, "matchedMsgs":Ljava/util/Vector;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    array-length v3, p2

    if-lt v0, v3, :cond_13

    .line 1270
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    new-array v1, v3, [Ljavax/mail/Message;

    .line 1271
    .local v1, "m":[Ljavax/mail/Message;
    invoke-virtual {v2, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 1272
    return-object v1

    .line 1265
    .end local v1    # "m":[Ljavax/mail/Message;
    :cond_13
    :try_start_13
    aget-object v3, p2, v0

    invoke-virtual {v3, p1}, Ljavax/mail/Message;->match(Ljavax/mail/search/SearchTerm;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 1266
    aget-object v3, p2, v0

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_20
    .catch Ljavax/mail/MessageRemovedException; {:try_start_13 .. :try_end_20} :catch_23

    .line 1263
    :cond_20
    :goto_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1267
    :catch_23
    move-exception v3

    goto :goto_20
.end method

.method public declared-synchronized setFlags(IILjavax/mail/Flags;Z)V
    .registers 8
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "flag"    # Ljavax/mail/Flags;
    .param p4, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1080
    monitor-enter p0

    move v0, p1

    .local v0, "i":I
    :goto_2
    if-le v0, p2, :cond_6

    .line 1088
    monitor-exit p0

    return-void

    .line 1082
    :cond_6
    :try_start_6
    invoke-virtual {p0, v0}, Ljavax/mail/Folder;->getMessage(I)Ljavax/mail/Message;

    move-result-object v1

    .line 1083
    .local v1, "msg":Ljavax/mail/Message;
    invoke-virtual {v1, p3, p4}, Ljavax/mail/Message;->setFlags(Ljavax/mail/Flags;Z)V
    :try_end_d
    .catch Ljavax/mail/MessageRemovedException; {:try_start_6 .. :try_end_d} :catch_13
    .catchall {:try_start_6 .. :try_end_d} :catchall_10

    .line 1080
    .end local v1    # "msg":Ljavax/mail/Message;
    :goto_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catchall_10
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1084
    :catch_13
    move-exception v2

    goto :goto_d
.end method

.method public declared-synchronized setFlags([ILjavax/mail/Flags;Z)V
    .registers 7
    .param p1, "msgnums"    # [I
    .param p2, "flag"    # Ljavax/mail/Flags;
    .param p3, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1122
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    :try_start_2
    array-length v2, p1
    :try_end_3
    .catchall {:try_start_2 .. :try_end_3} :catchall_13

    if-lt v0, v2, :cond_7

    .line 1130
    monitor-exit p0

    return-void

    .line 1124
    :cond_7
    :try_start_7
    aget v2, p1, v0

    invoke-virtual {p0, v2}, Ljavax/mail/Folder;->getMessage(I)Ljavax/mail/Message;

    move-result-object v1

    .line 1125
    .local v1, "msg":Ljavax/mail/Message;
    invoke-virtual {v1, p2, p3}, Ljavax/mail/Message;->setFlags(Ljavax/mail/Flags;Z)V
    :try_end_10
    .catch Ljavax/mail/MessageRemovedException; {:try_start_7 .. :try_end_10} :catch_16
    .catchall {:try_start_7 .. :try_end_10} :catchall_13

    .line 1122
    .end local v1    # "msg":Ljavax/mail/Message;
    :goto_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catchall_13
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1126
    :catch_16
    move-exception v2

    goto :goto_10
.end method

.method public declared-synchronized setFlags([Ljavax/mail/Message;Ljavax/mail/Flags;Z)V
    .registers 6
    .param p1, "msgs"    # [Ljavax/mail/Message;
    .param p2, "flag"    # Ljavax/mail/Flags;
    .param p3, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1037
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    :try_start_2
    array-length v1, p1
    :try_end_3
    .catchall {:try_start_2 .. :try_end_3} :catchall_f

    if-lt v0, v1, :cond_7

    .line 1044
    monitor-exit p0

    return-void

    .line 1039
    :cond_7
    :try_start_7
    aget-object v1, p1, v0

    invoke-virtual {v1, p2, p3}, Ljavax/mail/Message;->setFlags(Ljavax/mail/Flags;Z)V
    :try_end_c
    .catch Ljavax/mail/MessageRemovedException; {:try_start_7 .. :try_end_c} :catch_12
    .catchall {:try_start_7 .. :try_end_c} :catchall_f

    .line 1037
    :goto_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catchall_f
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1040
    :catch_12
    move-exception v1

    goto :goto_c
.end method

.method public setSubscribed(Z)V
    .registers 3
    .param p1, "subscribe"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 425
    new-instance v0, Ljavax/mail/MethodNotSupportedException;

    invoke-direct {v0}, Ljavax/mail/MethodNotSupportedException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1651
    invoke-virtual {p0}, Ljavax/mail/Folder;->getFullName()Ljava/lang/String;

    move-result-object v0

    .line 1652
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_7

    .line 1655
    .end local v0    # "s":Ljava/lang/String;
    :goto_6
    return-object v0

    .restart local v0    # "s":Ljava/lang/String;
    :cond_7
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method
