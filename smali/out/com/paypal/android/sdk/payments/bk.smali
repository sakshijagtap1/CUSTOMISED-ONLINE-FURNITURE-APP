.class final Lcom/paypal/android/sdk/payments/bk;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/payments/PayPalFuturePaymentActivity;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/payments/PayPalFuturePaymentActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/bk;->a:Lcom/paypal/android/sdk/payments/PayPalFuturePaymentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/bk;->a:Lcom/paypal/android/sdk/payments/PayPalFuturePaymentActivity;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalFuturePaymentActivity;->b(Lcom/paypal/android/sdk/payments/PayPalFuturePaymentActivity;)Lcom/paypal/android/sdk/payments/PayPalService;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/bk;->a:Lcom/paypal/android/sdk/payments/PayPalFuturePaymentActivity;

    invoke-static {v1}, Lcom/paypal/android/sdk/payments/PayPalFuturePaymentActivity;->a(Lcom/paypal/android/sdk/payments/PayPalFuturePaymentActivity;)Lcom/paypal/android/sdk/payments/ce;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/payments/ce;Z)V

    return-void
.end method
