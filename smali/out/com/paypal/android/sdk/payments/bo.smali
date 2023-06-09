.class final Lcom/paypal/android/sdk/payments/bo;
.super Ljava/util/TimerTask;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/payments/bn;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/payments/bn;)V
    .registers 2

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/bo;->a:Lcom/paypal/android/sdk/payments/bn;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/bo;->a:Lcom/paypal/android/sdk/payments/bn;

    iget-object v0, v0, Lcom/paypal/android/sdk/payments/bn;->a:Lcom/paypal/android/sdk/payments/PayPalFuturePaymentActivity;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalFuturePaymentActivity;->e(Lcom/paypal/android/sdk/payments/PayPalFuturePaymentActivity;)V

    return-void
.end method
