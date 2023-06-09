.class final Lcom/paypal/android/sdk/payments/dc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/paypal/android/sdk/payments/cc;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/dc;->a:Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/paypal/android/sdk/payments/cf;)V
    .registers 5

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dc;->a:Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->c(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;)Lcom/paypal/android/sdk/payments/PayPalService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/dg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/dg;->a()V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dc;->a:Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->f(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;)V

    invoke-virtual {p1}, Lcom/paypal/android/sdk/payments/cf;->a()Z

    move-result v0

    if-eqz v0, :cond_71

    const-string v0, "UNAUTHORIZED_PAYMENT"

    iget-object v1, p1, Lcom/paypal/android/sdk/payments/cf;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_71

    sget-object v0, Lcom/paypal/android/sdk/payments/cu;->a:[I

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/dc;->a:Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;

    invoke-static {v1}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->g(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;)Lcom/paypal/android/sdk/payments/dh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/dh;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_b2

    :goto_34
    return-void

    :pswitch_35
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dc;->a:Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aL:Lcom/paypal/android/sdk/fw;

    invoke-static {v1}, Lcom/paypal/android/sdk/fu;->a(Lcom/paypal/android/sdk/fw;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/paypal/android/sdk/payments/d;->a(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_34

    :pswitch_42
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dc;->a:Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->showDialog(I)V

    invoke-static {}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->a()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "server thinks token is expired, get new one. AccessToken: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/dc;->a:Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;

    invoke-static {v1}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->c(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;)Lcom/paypal/android/sdk/payments/PayPalService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/dg;

    move-result-object v1

    iget-object v1, v1, Lcom/paypal/android/sdk/dg;->b:Lcom/paypal/android/sdk/dw;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dc;->a:Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->c(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;)Lcom/paypal/android/sdk/payments/PayPalService;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/dc;->a:Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;

    invoke-static {v1}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->h(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;)Lcom/paypal/android/sdk/payments/ce;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/payments/ce;Z)V

    goto :goto_34

    :cond_71
    sget-object v0, Lcom/paypal/android/sdk/payments/cu;->a:[I

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/dc;->a:Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;

    invoke-static {v1}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->g(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;)Lcom/paypal/android/sdk/payments/dh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/dh;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_bc

    goto :goto_34

    :pswitch_83
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dc;->a:Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->a(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;Z)Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "BUNDLE_ERROR_CODE"

    iget-object v2, p1, Lcom/paypal/android/sdk/payments/cf;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/dc;->a:Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_34

    :pswitch_9c
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dc;->a:Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->i(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;)Lcom/paypal/android/sdk/ge;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/paypal/android/sdk/ge;->b(Z)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dc;->a:Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;

    iget-object v1, p1, Lcom/paypal/android/sdk/payments/cf;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/paypal/android/sdk/fu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/paypal/android/sdk/payments/d;->a(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_34

    nop

    :pswitch_data_b2
    .packed-switch 0x1
        :pswitch_35
        :pswitch_42
        :pswitch_42
    .end packed-switch

    :pswitch_data_bc
    .packed-switch 0x1
        :pswitch_83
        :pswitch_9c
        :pswitch_9c
    .end packed-switch
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 5

    instance-of v0, p1, Lcom/paypal/android/sdk/payments/ProofOfPayment;

    if-eqz v0, :cond_3b

    check-cast p1, Lcom/paypal/android/sdk/payments/ProofOfPayment;

    new-instance v0, Lcom/paypal/android/sdk/payments/PaymentConfirmation;

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/dc;->a:Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;

    invoke-static {v1}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->c(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;)Lcom/paypal/android/sdk/payments/PayPalService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/PayPalService;->e()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/dc;->a:Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;

    invoke-static {v2}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->d(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;)Lcom/paypal/android/sdk/payments/cp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/paypal/android/sdk/payments/cp;->a()Lcom/paypal/android/sdk/payments/PayPalPayment;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/paypal/android/sdk/payments/PaymentConfirmation;-><init>(Ljava/lang/String;Lcom/paypal/android/sdk/payments/PayPalPayment;Lcom/paypal/android/sdk/payments/ProofOfPayment;)V

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/dc;->a:Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.paypal.android.sdk.paymentConfirmation"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dc;->a:Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->e(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dc;->a:Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dc;->a:Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->finish()V

    :cond_3a
    :goto_3a
    return-void

    :cond_3b
    instance-of v0, p1, Lcom/paypal/android/sdk/fg;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dc;->a:Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->a(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;Z)Z

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dc;->a:Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;

    check-cast p1, Lcom/paypal/android/sdk/fg;

    invoke-static {v0, p1}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->a(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;Lcom/paypal/android/sdk/fg;)V

    goto :goto_3a
.end method
