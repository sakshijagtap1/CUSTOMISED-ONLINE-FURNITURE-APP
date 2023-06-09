.class final Lcom/paypal/android/sdk/payments/ca;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/payments/PayPalService;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/payments/PayPalService;)V
    .registers 2

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/ca;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.paypal.android.sdk.clearAllUserData"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ca;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->g()V

    const-string v0, "paypal.sdk"

    const-string v1, "active service user data cleared"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    return-void
.end method
