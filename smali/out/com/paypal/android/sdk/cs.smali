.class public Lcom/paypal/android/sdk/cs;
.super Ljava/lang/Thread;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/paypal/android/sdk/cx;

.field private final c:Ljava/util/List;

.field private d:Z

.field private final e:Lcom/paypal/android/sdk/ct;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/paypal/android/sdk/cs;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/cs;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/paypal/android/sdk/cx;Lcom/paypal/android/sdk/ct;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/cs;->c:Ljava/util/List;

    iput-object p1, p0, Lcom/paypal/android/sdk/cs;->b:Lcom/paypal/android/sdk/cx;

    iput-object p2, p0, Lcom/paypal/android/sdk/cs;->e:Lcom/paypal/android/sdk/ct;

    invoke-virtual {p0}, Lcom/paypal/android/sdk/cs;->start()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-boolean v0, p0, Lcom/paypal/android/sdk/cs;->d:Z

    if-eqz v0, :cond_5

    :cond_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/paypal/android/sdk/cs;->e:Lcom/paypal/android/sdk/ct;

    invoke-interface {v0}, Lcom/paypal/android/sdk/ct;->a()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/paypal/android/sdk/cs;->d:Z

    iget-object v1, p0, Lcom/paypal/android/sdk/cs;->c:Ljava/util/List;

    monitor-enter v1

    :try_start_10
    iget-object v0, p0, Lcom/paypal/android/sdk/cs;->c:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_3f

    invoke-virtual {p0}, Lcom/paypal/android/sdk/cs;->interrupt()V

    :goto_19
    invoke-virtual {p0}, Lcom/paypal/android/sdk/cs;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_4

    const-wide/16 v0, 0xa

    :try_start_21
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Waiting for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to die"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3c
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_3c} :catch_3d

    goto :goto_19

    :catch_3d
    move-exception v0

    goto :goto_19

    :catchall_3f
    move-exception v0

    :try_start_40
    monitor-exit v1
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v0
.end method

.method public final a(Lcom/paypal/android/sdk/cw;)V
    .registers 5

    iget-object v1, p0, Lcom/paypal/android/sdk/cs;->c:Ljava/util/List;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/paypal/android/sdk/cs;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Queued "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/paypal/android/sdk/cw;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/paypal/android/sdk/cs;->c:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public run()V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Starting "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    :goto_12
    iget-boolean v0, p0, Lcom/paypal/android/sdk/cs;->d:Z

    if-nez v0, :cond_8b

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/paypal/android/sdk/cs;->c:Ljava/util/List;

    monitor-enter v2

    :try_start_1a
    iget-object v1, p0, Lcom/paypal/android/sdk/cs;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_4e

    move-result v1

    if-eqz v1, :cond_43

    :try_start_22
    iget-object v1, p0, Lcom/paypal/android/sdk/cs;->c:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_27
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_27} :catch_40
    .catchall {:try_start_22 .. :try_end_27} :catchall_4e

    move-object v1, v0

    :goto_28
    :try_start_28
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_4e

    if-eqz v1, :cond_12

    :try_start_2b
    invoke-virtual {v1}, Lcom/paypal/android/sdk/cw;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/paypal/android/sdk/cw;->a(Ljava/lang/String;)V
    :try_end_32
    .catch Lorg/json/JSONException; {:try_start_2b .. :try_end_32} :catch_51
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2b .. :try_end_32} :catch_6e

    :goto_32
    iget-object v0, p0, Lcom/paypal/android/sdk/cs;->e:Lcom/paypal/android/sdk/ct;

    invoke-interface {v0, v1}, Lcom/paypal/android/sdk/ct;->b(Lcom/paypal/android/sdk/cw;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/paypal/android/sdk/cs;->b:Lcom/paypal/android/sdk/cx;

    invoke-interface {v0, v1}, Lcom/paypal/android/sdk/cx;->a(Lcom/paypal/android/sdk/cw;)V

    goto :goto_12

    :catch_40
    move-exception v1

    move-object v1, v0

    goto :goto_28

    :cond_43
    :try_start_43
    iget-object v0, p0, Lcom/paypal/android/sdk/cs;->c:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/cw;

    move-object v1, v0

    goto :goto_28

    :catchall_4e
    move-exception v0

    monitor-exit v2
    :try_end_50
    .catchall {:try_start_43 .. :try_end_50} :catchall_4e

    throw v0

    :catch_51
    move-exception v0

    const-string v2, "paypal.sdk"

    const-string v3, "Exception computing request"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Lcom/paypal/android/sdk/ca;

    sget-object v3, Lcom/paypal/android/sdk/bz;->c:Lcom/paypal/android/sdk/bz;

    invoke-virtual {v3}, Lcom/paypal/android/sdk/bz;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "JSON Exception in computeRequest"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Lcom/paypal/android/sdk/ca;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/paypal/android/sdk/cw;->a(Lcom/paypal/android/sdk/by;)V

    goto :goto_32

    :catch_6e
    move-exception v0

    const-string v2, "paypal.sdk"

    const-string v3, "Exception computing request"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Lcom/paypal/android/sdk/ca;

    sget-object v3, Lcom/paypal/android/sdk/bz;->c:Lcom/paypal/android/sdk/bz;

    invoke-virtual {v3}, Lcom/paypal/android/sdk/bz;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Unsupported encoding"

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Lcom/paypal/android/sdk/ca;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/paypal/android/sdk/cw;->a(Lcom/paypal/android/sdk/by;)V

    goto :goto_32

    :cond_8b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " exiting"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
