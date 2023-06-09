.class final Lcom/paypal/android/sdk/payments/cn;
.super Ljava/util/TimerTask;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/payments/cm;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/payments/cm;)V
    .registers 2

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/cn;->a:Lcom/paypal/android/sdk/payments/cm;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cn;->a:Lcom/paypal/android/sdk/payments/cm;

    iget-object v0, v0, Lcom/paypal/android/sdk/payments/cm;->a:Lcom/paypal/android/sdk/payments/PaymentActivity;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PaymentActivity;->e(Lcom/paypal/android/sdk/payments/PaymentActivity;)V

    return-void
.end method
