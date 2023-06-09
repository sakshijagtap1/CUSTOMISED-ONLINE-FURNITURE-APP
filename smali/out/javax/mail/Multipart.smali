.class public abstract Ljavax/mail/Multipart;
.super Ljava/lang/Object;
.source "Multipart.java"


# instance fields
.field protected contentType:Ljava/lang/String;

.field protected parent:Ljavax/mail/Part;

.field protected parts:Ljava/util/Vector;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljavax/mail/Multipart;->parts:Ljava/util/Vector;

    .line 79
    const-string v0, "multipart/mixed"

    iput-object v0, p0, Ljavax/mail/Multipart;->contentType:Ljava/lang/String;

    .line 91
    return-void
.end method


# virtual methods
.method public declared-synchronized addBodyPart(Ljavax/mail/BodyPart;)V
    .registers 3
    .param p1, "part"    # Ljavax/mail/BodyPart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 215
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljavax/mail/Multipart;->parts:Ljava/util/Vector;

    if-nez v0, :cond_c

    .line 216
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljavax/mail/Multipart;->parts:Ljava/util/Vector;

    .line 218
    :cond_c
    iget-object v0, p0, Ljavax/mail/Multipart;->parts:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 219
    invoke-virtual {p1, p0}, Ljavax/mail/BodyPart;->setParent(Ljavax/mail/Multipart;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 220
    monitor-exit p0

    return-void

    .line 215
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addBodyPart(Ljavax/mail/BodyPart;I)V
    .registers 4
    .param p1, "part"    # Ljavax/mail/BodyPart;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 238
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljavax/mail/Multipart;->parts:Ljava/util/Vector;

    if-nez v0, :cond_c

    .line 239
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljavax/mail/Multipart;->parts:Ljava/util/Vector;

    .line 241
    :cond_c
    iget-object v0, p0, Ljavax/mail/Multipart;->parts:Ljava/util/Vector;

    invoke-virtual {v0, p1, p2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 242
    invoke-virtual {p1, p0}, Ljavax/mail/BodyPart;->setParent(Ljavax/mail/Multipart;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 243
    monitor-exit p0

    return-void

    .line 238
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBodyPart(I)Ljavax/mail/BodyPart;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 154
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljavax/mail/Multipart;->parts:Ljava/util/Vector;

    if-nez v0, :cond_10

    .line 155
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "No such BodyPart"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    .line 154
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 157
    :cond_10
    :try_start_10
    iget-object v0, p0, Ljavax/mail/Multipart;->parts:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/BodyPart;
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_d

    monitor-exit p0

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Ljavax/mail/Multipart;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getCount()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 137
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljavax/mail/Multipart;->parts:Ljava/util/Vector;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_f

    if-nez v0, :cond_8

    .line 138
    const/4 v0, 0x0

    .line 140
    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    :try_start_8
    iget-object v0, p0, Ljavax/mail/Multipart;->parts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_f

    move-result v0

    goto :goto_6

    .line 137
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getParent()Ljavax/mail/Part;
    .registers 2

    .prologue
    .line 263
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljavax/mail/Multipart;->parent:Ljavax/mail/Part;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeBodyPart(I)V
    .registers 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 195
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Ljavax/mail/Multipart;->parts:Ljava/util/Vector;

    if-nez v1, :cond_10

    .line 196
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, "No such BodyPart"

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    .line 195
    :catchall_d
    move-exception v1

    monitor-exit p0

    throw v1

    .line 198
    :cond_10
    :try_start_10
    iget-object v1, p0, Ljavax/mail/Multipart;->parts:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/BodyPart;

    .line 199
    .local v0, "part":Ljavax/mail/BodyPart;
    iget-object v1, p0, Ljavax/mail/Multipart;->parts:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->removeElementAt(I)V

    .line 200
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/mail/BodyPart;->setParent(Ljavax/mail/Multipart;)V
    :try_end_21
    .catchall {:try_start_10 .. :try_end_21} :catchall_d

    .line 201
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized removeBodyPart(Ljavax/mail/BodyPart;)Z
    .registers 5
    .param p1, "part"    # Ljavax/mail/BodyPart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 173
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Ljavax/mail/Multipart;->parts:Ljava/util/Vector;

    if-nez v1, :cond_10

    .line 174
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "No such body part"

    invoke-direct {v1, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    .line 173
    :catchall_d
    move-exception v1

    monitor-exit p0

    throw v1

    .line 176
    :cond_10
    :try_start_10
    iget-object v1, p0, Ljavax/mail/Multipart;->parts:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    move-result v0

    .line 177
    .local v0, "ret":Z
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljavax/mail/BodyPart;->setParent(Ljavax/mail/Multipart;)V
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_d

    .line 178
    monitor-exit p0

    return v0
.end method

.method protected declared-synchronized setMultipartDataSource(Ljavax/mail/MultipartDataSource;)V
    .registers 5
    .param p1, "mp"    # Ljavax/mail/MultipartDataSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 110
    monitor-enter p0

    :try_start_1
    invoke-interface {p1}, Ljavax/mail/MultipartDataSource;->getContentType()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljavax/mail/Multipart;->contentType:Ljava/lang/String;

    .line 112
    invoke-interface {p1}, Ljavax/mail/MultipartDataSource;->getCount()I
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_1a

    move-result v0

    .line 113
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-lt v1, v0, :cond_10

    .line 115
    monitor-exit p0

    return-void

    .line 114
    :cond_10
    :try_start_10
    invoke-interface {p1, v1}, Ljavax/mail/MultipartDataSource;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljavax/mail/Multipart;->addBodyPart(Ljavax/mail/BodyPart;)V
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_1a

    .line 113
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 110
    .end local v0    # "count":I
    .end local v1    # "i":I
    :catchall_1a
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setParent(Ljavax/mail/Part;)V
    .registers 3
    .param p1, "parent"    # Ljavax/mail/Part;

    .prologue
    .line 276
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Ljavax/mail/Multipart;->parent:Ljavax/mail/Part;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 277
    monitor-exit p0

    return-void

    .line 276
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract writeTo(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method
