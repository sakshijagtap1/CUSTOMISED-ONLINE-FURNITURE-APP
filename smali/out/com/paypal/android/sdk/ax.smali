.class public final Lcom/paypal/android/sdk/ax;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:J

.field private static c:J


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/paypal/android/sdk/ax;->a:Ljava/lang/String;

    sput-wide v2, Lcom/paypal/android/sdk/ax;->b:J

    sput-wide v2, Lcom/paypal/android/sdk/ax;->c:J

    return-void
.end method

.method public static declared-synchronized a()V
    .registers 4

    const-class v1, Lcom/paypal/android/sdk/ax;

    monitor-enter v1

    :try_start_3
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/paypal/android/sdk/bn;->b(Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/ax;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/paypal/android/sdk/ax;->b:J
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_17

    monitor-exit v1

    return-void

    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(J)V
    .registers 4

    const-class v0, Lcom/paypal/android/sdk/ax;

    monitor-enter v0

    :try_start_3
    sput-wide p0, Lcom/paypal/android/sdk/ax;->c:J
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-void

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized b()Ljava/lang/String;
    .registers 2

    const-class v1, Lcom/paypal/android/sdk/ax;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/paypal/android/sdk/ax;->a:Ljava/lang/String;

    if-nez v0, :cond_a

    invoke-static {}, Lcom/paypal/android/sdk/ax;->a()V

    :cond_a
    sget-object v0, Lcom/paypal/android/sdk/ax;->a:Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    monitor-exit v1

    return-object v0

    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized c()Z
    .registers 6

    const-class v1, Lcom/paypal/android/sdk/ax;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/paypal/android/sdk/ax;->d()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sget-wide v4, Lcom/paypal/android/sdk/ax;->c:J
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_17

    cmp-long v0, v2, v4

    if-gtz v0, :cond_15

    const/4 v0, 0x1

    :goto_13
    monitor-exit v1

    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_13

    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized d()J
    .registers 6

    const-class v1, Lcom/paypal/android/sdk/ax;

    monitor-enter v1

    :try_start_3
    sget-wide v2, Lcom/paypal/android/sdk/ax;->b:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_e

    invoke-static {}, Lcom/paypal/android/sdk/ax;->a()V

    :cond_e
    sget-wide v2, Lcom/paypal/android/sdk/ax;->b:J
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-wide v2

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method
