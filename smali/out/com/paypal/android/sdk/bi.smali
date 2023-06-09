.class public Lcom/paypal/android/sdk/bi;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/List;

.field private b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/paypal/android/sdk/bi;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/bi;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/bi;->b:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    invoke-direct {p0}, Lcom/paypal/android/sdk/bi;-><init>()V

    return-void
.end method

.method public static a()Lcom/paypal/android/sdk/bi;
    .registers 1

    invoke-static {}, Lcom/paypal/android/sdk/bj;->a()Lcom/paypal/android/sdk/bi;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .registers 4

    iget-object v0, p0, Lcom/paypal/android/sdk/bi;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2e

    monitor-enter p0

    :try_start_9
    iget-object v0, p0, Lcom/paypal/android/sdk/bi;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/paypal/android/sdk/bi;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/bh;

    iget-object v1, p0, Lcom/paypal/android/sdk/bi;->b:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/paypal/android/sdk/bi;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_2d
    monitor-exit p0

    :cond_2e
    return-void

    :catchall_2f
    move-exception v0

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_9 .. :try_end_31} :catchall_2f

    throw v0
.end method


# virtual methods
.method public final a(Lcom/paypal/android/sdk/bh;)V
    .registers 4

    iget-object v0, p0, Lcom/paypal/android/sdk/bi;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/paypal/android/sdk/bi;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_11

    invoke-direct {p0}, Lcom/paypal/android/sdk/bi;->b()V

    :cond_11
    return-void
.end method

.method public final b(Lcom/paypal/android/sdk/bh;)V
    .registers 3

    iget-object v0, p0, Lcom/paypal/android/sdk/bi;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/paypal/android/sdk/bi;->b()V

    return-void
.end method
