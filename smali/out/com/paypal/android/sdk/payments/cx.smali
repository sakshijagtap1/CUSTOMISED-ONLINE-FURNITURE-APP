.class final Lcom/paypal/android/sdk/payments/cx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/paypal/android/sdk/payments/ch;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/payments/cw;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/payments/cw;)V
    .registers 2

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/cx;->a:Lcom/paypal/android/sdk/payments/cw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cx;->a:Lcom/paypal/android/sdk/payments/cw;

    iget-object v0, v0, Lcom/paypal/android/sdk/payments/cw;->a:Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->b(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;)V

    return-void
.end method
