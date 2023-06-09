.class public Lcom/paypal/android/sdk/fj;
.super Lcom/paypal/android/sdk/bt;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/paypal/android/sdk/fj;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/paypal/android/sdk/cx;Lcom/paypal/android/sdk/b;Lcom/paypal/android/sdk/bu;)V
    .registers 6

    new-instance v0, Lcom/paypal/android/sdk/dc;

    sget-object v1, Lcom/paypal/android/sdk/df;->a:Lcom/paypal/android/sdk/df;

    invoke-direct {v0, v1}, Lcom/paypal/android/sdk/dc;-><init>(Lcom/paypal/android/sdk/df;)V

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/paypal/android/sdk/bt;-><init>(Lcom/paypal/android/sdk/cu;Lcom/paypal/android/sdk/cx;Lcom/paypal/android/sdk/b;Lcom/paypal/android/sdk/bu;)V

    return-void
.end method
