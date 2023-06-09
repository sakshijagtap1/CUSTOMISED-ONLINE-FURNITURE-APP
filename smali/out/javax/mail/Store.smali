.class public abstract Ljavax/mail/Store;
.super Ljavax/mail/Service;
.source "Store.java"


# instance fields
.field private volatile folderListeners:Ljava/util/Vector;

.field private volatile storeListeners:Ljava/util/Vector;


# direct methods
.method protected constructor <init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V
    .registers 4
    .param p1, "session"    # Ljavax/mail/Session;
    .param p2, "urlname"    # Ljavax/mail/URLName;

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, p1, p2}, Ljavax/mail/Service;-><init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V

    .line 188
    iput-object v0, p0, Ljavax/mail/Store;->storeListeners:Ljava/util/Vector;

    .line 238
    iput-object v0, p0, Ljavax/mail/Store;->folderListeners:Ljava/util/Vector;

    .line 76
    return-void
.end method


# virtual methods
.method public declared-synchronized addFolderListener(Ljavax/mail/event/FolderListener;)V
    .registers 3
    .param p1, "l"    # Ljavax/mail/event/FolderListener;

    .prologue
    .line 253
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljavax/mail/Store;->folderListeners:Ljava/util/Vector;

    if-nez v0, :cond_c

    .line 254
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljavax/mail/Store;->folderListeners:Ljava/util/Vector;

    .line 255
    :cond_c
    iget-object v0, p0, Ljavax/mail/Store;->folderListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 256
    monitor-exit p0

    return-void

    .line 253
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addStoreListener(Ljavax/mail/event/StoreListener;)V
    .registers 3
    .param p1, "l"    # Ljavax/mail/event/StoreListener;

    .prologue
    .line 200
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljavax/mail/Store;->storeListeners:Ljava/util/Vector;

    if-nez v0, :cond_c

    .line 201
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljavax/mail/Store;->storeListeners:Ljava/util/Vector;

    .line 202
    :cond_c
    iget-object v0, p0, Ljavax/mail/Store;->storeListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 203
    monitor-exit p0

    return-void

    .line 200
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract getDefaultFolder()Ljavax/mail/Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getFolder(Ljava/lang/String;)Ljavax/mail/Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getFolder(Ljavax/mail/URLName;)Ljavax/mail/Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public getPersonalNamespaces()[Ljavax/mail/Folder;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 146
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/mail/Folder;

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljavax/mail/Store;->getDefaultFolder()Ljavax/mail/Folder;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getSharedNamespaces()[Ljavax/mail/Folder;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 184
    const/4 v0, 0x0

    new-array v0, v0, [Ljavax/mail/Folder;

    return-object v0
.end method

.method public getUserNamespaces(Ljava/lang/String;)[Ljavax/mail/Folder;
    .registers 3
    .param p1, "user"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 167
    const/4 v0, 0x0

    new-array v0, v0, [Ljavax/mail/Folder;

    return-object v0
.end method

.method protected notifyFolderListeners(ILjavax/mail/Folder;)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "folder"    # Ljavax/mail/Folder;

    .prologue
    .line 287
    iget-object v1, p0, Ljavax/mail/Store;->folderListeners:Ljava/util/Vector;

    if-nez v1, :cond_5

    .line 292
    :goto_4
    return-void

    .line 290
    :cond_5
    new-instance v0, Ljavax/mail/event/FolderEvent;

    invoke-direct {v0, p0, p2, p1}, Ljavax/mail/event/FolderEvent;-><init>(Ljava/lang/Object;Ljavax/mail/Folder;I)V

    .line 291
    .local v0, "e":Ljavax/mail/event/FolderEvent;
    iget-object v1, p0, Ljavax/mail/Store;->folderListeners:Ljava/util/Vector;

    invoke-virtual {p0, v0, v1}, Ljavax/mail/Store;->queueEvent(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    goto :goto_4
.end method

.method protected notifyFolderRenamedListeners(Ljavax/mail/Folder;Ljavax/mail/Folder;)V
    .registers 5
    .param p1, "oldF"    # Ljavax/mail/Folder;
    .param p2, "newF"    # Ljavax/mail/Folder;

    .prologue
    .line 310
    iget-object v1, p0, Ljavax/mail/Store;->folderListeners:Ljava/util/Vector;

    if-nez v1, :cond_5

    .line 315
    :goto_4
    return-void

    .line 313
    :cond_5
    new-instance v0, Ljavax/mail/event/FolderEvent;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p1, p2, v1}, Ljavax/mail/event/FolderEvent;-><init>(Ljava/lang/Object;Ljavax/mail/Folder;Ljavax/mail/Folder;I)V

    .line 314
    .local v0, "e":Ljavax/mail/event/FolderEvent;
    iget-object v1, p0, Ljavax/mail/Store;->folderListeners:Ljava/util/Vector;

    invoke-virtual {p0, v0, v1}, Ljavax/mail/Store;->queueEvent(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    goto :goto_4
.end method

.method protected notifyStoreListeners(ILjava/lang/String;)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 230
    iget-object v1, p0, Ljavax/mail/Store;->storeListeners:Ljava/util/Vector;

    if-nez v1, :cond_5

    .line 235
    :goto_4
    return-void

    .line 233
    :cond_5
    new-instance v0, Ljavax/mail/event/StoreEvent;

    invoke-direct {v0, p0, p1, p2}, Ljavax/mail/event/StoreEvent;-><init>(Ljavax/mail/Store;ILjava/lang/String;)V

    .line 234
    .local v0, "e":Ljavax/mail/event/StoreEvent;
    iget-object v1, p0, Ljavax/mail/Store;->storeListeners:Ljava/util/Vector;

    invoke-virtual {p0, v0, v1}, Ljavax/mail/Store;->queueEvent(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    goto :goto_4
.end method

.method public declared-synchronized removeFolderListener(Ljavax/mail/event/FolderListener;)V
    .registers 3
    .param p1, "l"    # Ljavax/mail/event/FolderListener;

    .prologue
    .line 268
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljavax/mail/Store;->folderListeners:Ljava/util/Vector;

    if-eqz v0, :cond_a

    .line 269
    iget-object v0, p0, Ljavax/mail/Store;->folderListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 270
    :cond_a
    monitor-exit p0

    return-void

    .line 268
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeStoreListener(Ljavax/mail/event/StoreListener;)V
    .registers 3
    .param p1, "l"    # Ljavax/mail/event/StoreListener;

    .prologue
    .line 215
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljavax/mail/Store;->storeListeners:Ljava/util/Vector;

    if-eqz v0, :cond_a

    .line 216
    iget-object v0, p0, Ljavax/mail/Store;->storeListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 217
    :cond_a
    monitor-exit p0

    return-void

    .line 215
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method
