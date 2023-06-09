.class final Lcom/paypal/android/sdk/payments/dr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/paypal/android/sdk/payments/ch;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/payments/dq;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/payments/dq;)V
    .registers 2

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/dr;->a:Lcom/paypal/android/sdk/payments/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dr;->a:Lcom/paypal/android/sdk/payments/dq;

    iget-object v0, v0, Lcom/paypal/android/sdk/payments/dq;->a:Lcom/paypal/android/sdk/payments/PaymentMethodActivity;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->i(Lcom/paypal/android/sdk/payments/PaymentMethodActivity;)V

    return-void
.end method
