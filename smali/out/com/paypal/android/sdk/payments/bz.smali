.class final Lcom/paypal/android/sdk/payments/bz;
.super Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/payments/by;)V
    .registers 3

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "live"

    invoke-virtual {p0, v0}, Lcom/paypal/android/sdk/payments/bz;->add(Ljava/lang/Object;)Z

    const-string v0, "sandbox"

    invoke-virtual {p0, v0}, Lcom/paypal/android/sdk/payments/bz;->add(Ljava/lang/Object;)Z

    const-string v0, "mock"

    invoke-virtual {p0, v0}, Lcom/paypal/android/sdk/payments/bz;->add(Ljava/lang/Object;)Z

    return-void
.end method
