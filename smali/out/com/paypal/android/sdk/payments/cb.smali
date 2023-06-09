.class final Lcom/paypal/android/sdk/payments/cb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/paypal/android/sdk/payments/ce;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/payments/PayPalService;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/payments/PayPalService;)V
    .registers 2

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/cb;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cb;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->j()Z

    move-result v0

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cb;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    iget-object v0, v0, Lcom/paypal/android/sdk/payments/PayPalService;->b:Lcom/paypal/android/sdk/dt;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cb;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/cb;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/dg;

    move-result-object v1

    iget-object v1, v1, Lcom/paypal/android/sdk/dg;->b:Lcom/paypal/android/sdk/dw;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/dw;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/cb;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    iget-object v2, v2, Lcom/paypal/android/sdk/payments/PayPalService;->b:Lcom/paypal/android/sdk/dt;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/dt;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/paypal/android/sdk/payments/PayPalService;->doDeleteTokenizedCreditCard(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cb;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/paypal/android/sdk/payments/PayPalService;->b:Lcom/paypal/android/sdk/dt;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cb;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->t()V

    :cond_35
    return-void
.end method

.method public final a(Lcom/paypal/android/sdk/payments/cf;)V
    .registers 2

    return-void
.end method
