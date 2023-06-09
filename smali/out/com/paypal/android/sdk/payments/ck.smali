.class final Lcom/paypal/android/sdk/payments/ck;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/paypal/android/sdk/payments/PaymentActivity;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/payments/PaymentActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/ck;->a:Lcom/paypal/android/sdk/payments/PaymentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/paypal/android/sdk/payments/PaymentActivity;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".onServiceConnected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ck;->a:Lcom/paypal/android/sdk/payments/PaymentActivity;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PaymentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/paypal/android/sdk/payments/PaymentActivity;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".onServiceConnected exit - isFinishing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2c
    :goto_2c
    return-void

    :cond_2d
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ck;->a:Lcom/paypal/android/sdk/payments/PaymentActivity;

    check-cast p2, Lcom/paypal/android/sdk/payments/cd;

    iget-object v1, p2, Lcom/paypal/android/sdk/payments/cd;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/payments/PaymentActivity;->a(Lcom/paypal/android/sdk/payments/PaymentActivity;Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/PayPalService;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ck;->a:Lcom/paypal/android/sdk/payments/PaymentActivity;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PaymentActivity;->b(Lcom/paypal/android/sdk/payments/PaymentActivity;)Lcom/paypal/android/sdk/payments/PayPalService;

    move-result-object v0

    new-instance v1, Lcom/paypal/android/sdk/payments/cl;

    invoke-direct {v1, p0}, Lcom/paypal/android/sdk/payments/cl;-><init>(Lcom/paypal/android/sdk/payments/ck;)V

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/payments/ch;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ck;->a:Lcom/paypal/android/sdk/payments/PaymentActivity;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PaymentActivity;->c(Lcom/paypal/android/sdk/payments/PaymentActivity;)V

    goto :goto_2c
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ck;->a:Lcom/paypal/android/sdk/payments/PaymentActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/payments/PaymentActivity;->a(Lcom/paypal/android/sdk/payments/PaymentActivity;Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {}, Lcom/paypal/android/sdk/payments/PaymentActivity;->a()Ljava/lang/String;

    return-void
.end method
