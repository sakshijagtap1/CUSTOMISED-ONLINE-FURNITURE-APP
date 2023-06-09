.class final Lcom/paypal/android/sdk/payments/ds;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/paypal/android/sdk/payments/PaymentMethodActivity;


# direct methods
.method private constructor <init>(Lcom/paypal/android/sdk/payments/PaymentMethodActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/ds;->a:Lcom/paypal/android/sdk/payments/PaymentMethodActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/paypal/android/sdk/payments/PaymentMethodActivity;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/paypal/android/sdk/payments/ds;-><init>(Lcom/paypal/android/sdk/payments/PaymentMethodActivity;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->a()Ljava/lang/String;

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/ds;->a:Lcom/paypal/android/sdk/payments/PaymentMethodActivity;

    invoke-static {}, Lcom/paypal/android/sdk/payments/d;->e()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->a(Lcom/paypal/android/sdk/payments/PaymentMethodActivity;Z)Z

    invoke-static {}, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->a()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cameraAvailable:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/paypal/android/sdk/payments/ds;->a:Lcom/paypal/android/sdk/payments/PaymentMethodActivity;

    invoke-static {v3}, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->e(Lcom/paypal/android/sdk/payments/PaymentMethodActivity;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " time elapsed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ds;->a:Lcom/paypal/android/sdk/payments/PaymentMethodActivity;

    new-instance v1, Lcom/paypal/android/sdk/payments/dt;

    invoke-direct {v1, p0}, Lcom/paypal/android/sdk/payments/dt;-><init>(Lcom/paypal/android/sdk/payments/ds;)V

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    return-object v0
.end method
