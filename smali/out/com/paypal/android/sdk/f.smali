.class final Lcom/paypal/android/sdk/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    invoke-static {}, Lcom/paypal/android/sdk/e;->a()Lcom/paypal/android/sdk/da;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/da;->a()V

    return-void
.end method
