.class public final Lcom/paypal/android/sdk/db;
.super Ljava/lang/Object;


# static fields
.field private static final a:I

.field private static b:I

.field private static c:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/paypal/android/sdk/db;

    invoke-direct {v0}, Lcom/paypal/android/sdk/db;-><init>()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/paypal/android/sdk/db;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/paypal/android/sdk/db;->b:I

    sget v0, Lcom/paypal/android/sdk/db;->a:I

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/paypal/android/sdk/db;->c:I

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/paypal/android/sdk/dd;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/paypal/android/sdk/dd;-><init>(B)V

    return-void
.end method

.method public static a()Ljava/util/concurrent/ThreadPoolExecutor;
    .registers 8

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, Lcom/paypal/android/sdk/db;->b:I

    sget v3, Lcom/paypal/android/sdk/db;->c:I

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    return-object v1
.end method
