.class Ljavax/mail/EventQueue;
.super Ljava/lang/Object;
.source "EventQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/mail/EventQueue$QueueElement;
    }
.end annotation


# instance fields
.field private head:Ljavax/mail/EventQueue$QueueElement;

.field private qThread:Ljava/lang/Thread;

.field private tail:Ljavax/mail/EventQueue$QueueElement;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object v0, p0, Ljavax/mail/EventQueue;->head:Ljavax/mail/EventQueue$QueueElement;

    .line 71
    iput-object v0, p0, Ljavax/mail/EventQueue;->tail:Ljavax/mail/EventQueue$QueueElement;

    .line 75
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "JavaMail-EventQueue"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Ljavax/mail/EventQueue;->qThread:Ljava/lang/Thread;

    .line 76
    iget-object v0, p0, Ljavax/mail/EventQueue;->qThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 77
    iget-object v0, p0, Ljavax/mail/EventQueue;->qThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 78
    return-void
.end method

.method private declared-synchronized dequeue()Ljavax/mail/EventQueue$QueueElement;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 107
    monitor-enter p0

    :goto_1
    :try_start_1
    iget-object v1, p0, Ljavax/mail/EventQueue;->tail:Ljavax/mail/EventQueue$QueueElement;

    if-eqz v1, :cond_19

    .line 109
    iget-object v0, p0, Ljavax/mail/EventQueue;->tail:Ljavax/mail/EventQueue$QueueElement;

    .line 110
    .local v0, "elt":Ljavax/mail/EventQueue$QueueElement;
    iget-object v1, v0, Ljavax/mail/EventQueue$QueueElement;->prev:Ljavax/mail/EventQueue$QueueElement;

    iput-object v1, p0, Ljavax/mail/EventQueue;->tail:Ljavax/mail/EventQueue$QueueElement;

    .line 111
    iget-object v1, p0, Ljavax/mail/EventQueue;->tail:Ljavax/mail/EventQueue$QueueElement;

    if-nez v1, :cond_20

    .line 112
    const/4 v1, 0x0

    iput-object v1, p0, Ljavax/mail/EventQueue;->head:Ljavax/mail/EventQueue$QueueElement;

    .line 116
    :goto_12
    const/4 v1, 0x0

    iput-object v1, v0, Ljavax/mail/EventQueue$QueueElement;->next:Ljavax/mail/EventQueue$QueueElement;

    iput-object v1, v0, Ljavax/mail/EventQueue$QueueElement;->prev:Ljavax/mail/EventQueue$QueueElement;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_1d

    .line 117
    monitor-exit p0

    return-object v0

    .line 108
    .end local v0    # "elt":Ljavax/mail/EventQueue$QueueElement;
    :cond_19
    :try_start_19
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_1d

    goto :goto_1

    .line 107
    :catchall_1d
    move-exception v1

    monitor-exit p0

    throw v1

    .line 114
    .restart local v0    # "elt":Ljavax/mail/EventQueue$QueueElement;
    :cond_20
    :try_start_20
    iget-object v1, p0, Ljavax/mail/EventQueue;->tail:Ljavax/mail/EventQueue$QueueElement;

    const/4 v2, 0x0

    iput-object v2, v1, Ljavax/mail/EventQueue$QueueElement;->next:Ljavax/mail/EventQueue$QueueElement;
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_1d

    goto :goto_12
.end method


# virtual methods
.method public declared-synchronized enqueue(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V
    .registers 5
    .param p1, "event"    # Ljavax/mail/event/MailEvent;
    .param p2, "vector"    # Ljava/util/Vector;

    .prologue
    .line 84
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljavax/mail/EventQueue$QueueElement;

    invoke-direct {v0, p1, p2}, Ljavax/mail/EventQueue$QueueElement;-><init>(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    .line 86
    .local v0, "newElt":Ljavax/mail/EventQueue$QueueElement;
    iget-object v1, p0, Ljavax/mail/EventQueue;->head:Ljavax/mail/EventQueue$QueueElement;

    if-nez v1, :cond_13

    .line 87
    iput-object v0, p0, Ljavax/mail/EventQueue;->head:Ljavax/mail/EventQueue$QueueElement;

    .line 88
    iput-object v0, p0, Ljavax/mail/EventQueue;->tail:Ljavax/mail/EventQueue$QueueElement;

    .line 94
    :goto_e
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_1e

    .line 95
    monitor-exit p0

    return-void

    .line 90
    :cond_13
    :try_start_13
    iget-object v1, p0, Ljavax/mail/EventQueue;->head:Ljavax/mail/EventQueue$QueueElement;

    iput-object v1, v0, Ljavax/mail/EventQueue$QueueElement;->next:Ljavax/mail/EventQueue$QueueElement;

    .line 91
    iget-object v1, p0, Ljavax/mail/EventQueue;->head:Ljavax/mail/EventQueue$QueueElement;

    iput-object v0, v1, Ljavax/mail/EventQueue$QueueElement;->prev:Ljavax/mail/EventQueue$QueueElement;

    .line 92
    iput-object v0, p0, Ljavax/mail/EventQueue;->head:Ljavax/mail/EventQueue$QueueElement;
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_1e

    goto :goto_e

    .line 84
    .end local v0    # "newElt":Ljavax/mail/EventQueue$QueueElement;
    :catchall_1e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public run()V
    .registers 7

    .prologue
    .line 128
    :goto_0
    :try_start_0
    invoke-direct {p0}, Ljavax/mail/EventQueue;->dequeue()Ljavax/mail/EventQueue$QueueElement;

    move-result-object v2

    .local v2, "qe":Ljavax/mail/EventQueue$QueueElement;
    if-nez v2, :cond_7

    .line 146
    .end local v2    # "qe":Ljavax/mail/EventQueue$QueueElement;
    :goto_6
    return-void

    .line 129
    .restart local v2    # "qe":Ljavax/mail/EventQueue$QueueElement;
    :cond_7
    iget-object v0, v2, Ljavax/mail/EventQueue$QueueElement;->event:Ljavax/mail/event/MailEvent;

    .line 130
    .local v0, "e":Ljavax/mail/event/MailEvent;
    iget-object v4, v2, Ljavax/mail/EventQueue$QueueElement;->vector:Ljava/util/Vector;

    .line 132
    .local v4, "v":Ljava/util/Vector;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    invoke-virtual {v4}, Ljava/util/Vector;->size()I
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_f} :catch_25

    move-result v5

    if-lt v1, v5, :cond_15

    .line 141
    const/4 v2, 0x0

    const/4 v0, 0x0

    goto :goto_0

    .line 134
    :cond_15
    :try_start_15
    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljavax/mail/event/MailEvent;->dispatch(Ljava/lang/Object;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_1c} :catch_1f
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_1c} :catch_25

    .line 132
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 135
    :catch_1f
    move-exception v3

    .line 136
    .local v3, "t":Ljava/lang/Throwable;
    :try_start_20
    instance-of v5, v3, Ljava/lang/InterruptedException;
    :try_end_22
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_22} :catch_25

    if-eqz v5, :cond_1c

    goto :goto_6

    .line 143
    .end local v0    # "e":Ljavax/mail/event/MailEvent;
    .end local v1    # "i":I
    .end local v2    # "qe":Ljavax/mail/EventQueue$QueueElement;
    .end local v3    # "t":Ljava/lang/Throwable;
    .end local v4    # "v":Ljava/util/Vector;
    :catch_25
    move-exception v5

    goto :goto_6
.end method

.method stop()V
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Ljavax/mail/EventQueue;->qThread:Ljava/lang/Thread;

    if-eqz v0, :cond_c

    .line 153
    iget-object v0, p0, Ljavax/mail/EventQueue;->qThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/EventQueue;->qThread:Ljava/lang/Thread;

    .line 156
    :cond_c
    return-void
.end method
