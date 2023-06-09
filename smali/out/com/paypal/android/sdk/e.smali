.class public final Lcom/paypal/android/sdk/e;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/paypal/android/sdk/da;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/paypal/android/sdk/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/e;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/paypal/android/sdk/da;
    .registers 1

    sget-object v0, Lcom/paypal/android/sdk/e;->b:Lcom/paypal/android/sdk/da;

    return-object v0
.end method

.method public static final declared-synchronized a(Ljava/util/concurrent/ExecutorService;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const-class v1, Lcom/paypal/android/sdk/e;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/paypal/android/sdk/e;->b:Lcom/paypal/android/sdk/da;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_68

    if-nez v0, :cond_57

    :try_start_7
    new-instance v0, Lcom/paypal/android/sdk/da;

    invoke-direct {v0}, Lcom/paypal/android/sdk/da;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/e;->b:Lcom/paypal/android/sdk/da;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    sget-object v2, Lcom/paypal/android/sdk/e;->b:Lcom/paypal/android/sdk/da;

    invoke-virtual {v2, p1, p2, p3, v0}, Lcom/paypal/android/sdk/da;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/paypal/android/sdk/f;

    invoke-direct {v2}, Lcom/paypal/android/sdk/f;-><init>()V

    invoke-interface {p0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Init risk component: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/paypal/android/sdk/e;->b:Lcom/paypal/android/sdk/da;

    invoke-virtual {v3}, Lcom/paypal/android/sdk/da;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " returning new clientMetadataId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_3a} :catch_3c
    .catchall {:try_start_7 .. :try_end_3a} :catchall_68

    :goto_3a
    monitor-exit v1

    return-object v0

    :catch_3c
    move-exception v0

    :try_start_3d
    const-string v2, "paypal.sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "An internal component failed to initialize: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_3a

    :cond_57
    sget-object v0, Lcom/paypal/android/sdk/e;->b:Lcom/paypal/android/sdk/da;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/da;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "risk component already initialized, returning new clientMetadataId:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_67
    .catchall {:try_start_3d .. :try_end_67} :catchall_68

    goto :goto_3a

    :catchall_68
    move-exception v0

    monitor-exit v1

    throw v0
.end method
