.class final Lcom/paypal/android/sdk/payments/co;
.super Lcom/paypal/android/sdk/payments/z;


# direct methods
.method constructor <init>(Landroid/content/Intent;Lcom/paypal/android/sdk/payments/PayPalConfiguration;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/paypal/android/sdk/payments/z;-><init>(Landroid/content/Intent;Lcom/paypal/android/sdk/payments/PayPalConfiguration;)V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .registers 2

    const-class v0, Lcom/paypal/android/sdk/payments/PaymentActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final c()Z
    .registers 3

    new-instance v0, Lcom/paypal/android/sdk/payments/cp;

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/z;->a:Landroid/content/Intent;

    invoke-direct {v0, v1}, Lcom/paypal/android/sdk/payments/cp;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/cp;->a()Lcom/paypal/android/sdk/payments/PayPalPayment;

    move-result-object v1

    if-eqz v1, :cond_1e

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/cp;->a()Lcom/paypal/android/sdk/payments/PayPalPayment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalPayment;->isProcessable()Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    :goto_18
    const-string v1, "PaymentActivity.EXTRA_PAYMENT"

    invoke-virtual {p0, v0, v1}, Lcom/paypal/android/sdk/payments/co;->a(ZLjava/lang/String;)V

    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_18
.end method
