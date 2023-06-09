.class final Lcom/paypal/android/sdk/payments/bm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/paypal/android/sdk/payments/ch;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/payments/bl;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/payments/bl;)V
    .registers 2

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/bm;->a:Lcom/paypal/android/sdk/payments/bl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/bm;->a:Lcom/paypal/android/sdk/payments/bl;

    iget-object v0, v0, Lcom/paypal/android/sdk/payments/bl;->a:Lcom/paypal/android/sdk/payments/PayPalFuturePaymentActivity;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalFuturePaymentActivity;->c(Lcom/paypal/android/sdk/payments/PayPalFuturePaymentActivity;)V

    return-void
.end method
