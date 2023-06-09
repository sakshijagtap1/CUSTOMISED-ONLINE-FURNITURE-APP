.class final Lcom/paypal/android/sdk/bj;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/paypal/android/sdk/bi;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/paypal/android/sdk/bi;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/paypal/android/sdk/bi;-><init>(B)V

    sput-object v0, Lcom/paypal/android/sdk/bj;->a:Lcom/paypal/android/sdk/bi;

    return-void
.end method

.method static synthetic a()Lcom/paypal/android/sdk/bi;
    .registers 1

    sget-object v0, Lcom/paypal/android/sdk/bj;->a:Lcom/paypal/android/sdk/bi;

    return-object v0
.end method
