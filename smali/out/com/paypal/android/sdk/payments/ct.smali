.class final Lcom/paypal/android/sdk/payments/ct;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/paypal/android/sdk/payments/ce;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/ct;->a:Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    invoke-static {}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->a()Ljava/lang/String;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ct;->a:Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->k(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;)V

    return-void
.end method

.method public final a(Lcom/paypal/android/sdk/payments/cf;)V
    .registers 5

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ct;->a:Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->f(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ct;->a:Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;

    iget-object v1, p1, Lcom/paypal/android/sdk/payments/cf;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/paypal/android/sdk/fu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/paypal/android/sdk/payments/d;->a(Landroid/app/Activity;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ct;->a:Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->g(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;)Lcom/paypal/android/sdk/payments/dh;

    move-result-object v0

    sget-object v1, Lcom/paypal/android/sdk/payments/dh;->a:Lcom/paypal/android/sdk/payments/dh;

    if-eq v0, v1, :cond_24

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ct;->a:Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->i(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;)Lcom/paypal/android/sdk/ge;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/paypal/android/sdk/ge;->b(Z)V

    :cond_24
    return-void
.end method
