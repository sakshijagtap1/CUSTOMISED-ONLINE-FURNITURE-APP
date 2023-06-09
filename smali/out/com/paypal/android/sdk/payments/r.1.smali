.class final Lcom/paypal/android/sdk/payments/r;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/paypal/android/sdk/payments/ce;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/payments/m;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/payments/m;)V
    .registers 2

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/r;->a:Lcom/paypal/android/sdk/payments/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    invoke-static {}, Lcom/paypal/android/sdk/payments/m;->b()Ljava/lang/String;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/r;->a:Lcom/paypal/android/sdk/payments/m;

    iget-object v0, v0, Lcom/paypal/android/sdk/payments/m;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->p()V

    return-void
.end method

.method public final a(Lcom/paypal/android/sdk/payments/cf;)V
    .registers 5

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/r;->a:Lcom/paypal/android/sdk/payments/m;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/m;->a(Lcom/paypal/android/sdk/payments/m;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/r;->a:Lcom/paypal/android/sdk/payments/m;

    iget-object v1, p1, Lcom/paypal/android/sdk/payments/cf;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/paypal/android/sdk/fu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/paypal/android/sdk/payments/d;->a(Landroid/app/Activity;Ljava/lang/String;I)V

    return-void
.end method
