.class final Lcom/paypal/android/sdk/payments/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/paypal/android/sdk/payments/m;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/payments/m;)V
    .registers 2

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/u;->a:Lcom/paypal/android/sdk/payments/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/paypal/android/sdk/payments/m;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".onServiceConnected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/u;->a:Lcom/paypal/android/sdk/payments/m;

    check-cast p2, Lcom/paypal/android/sdk/payments/cd;

    iget-object v1, p2, Lcom/paypal/android/sdk/payments/cd;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    iput-object v1, v0, Lcom/paypal/android/sdk/payments/m;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/u;->a:Lcom/paypal/android/sdk/payments/m;

    iget-object v0, v0, Lcom/paypal/android/sdk/payments/m;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    new-instance v1, Lcom/paypal/android/sdk/payments/v;

    invoke-direct {v1, p0}, Lcom/paypal/android/sdk/payments/v;-><init>(Lcom/paypal/android/sdk/payments/u;)V

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/payments/ch;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/u;->a:Lcom/paypal/android/sdk/payments/m;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/m;->d(Lcom/paypal/android/sdk/payments/m;)V

    :cond_2e
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/u;->a:Lcom/paypal/android/sdk/payments/m;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/paypal/android/sdk/payments/m;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    return-void
.end method
