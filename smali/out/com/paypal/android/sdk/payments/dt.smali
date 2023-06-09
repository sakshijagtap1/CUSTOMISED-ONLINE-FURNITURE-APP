.class final Lcom/paypal/android/sdk/payments/dt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/payments/ds;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/payments/ds;)V
    .registers 2

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/dt;->a:Lcom/paypal/android/sdk/payments/ds;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dt;->a:Lcom/paypal/android/sdk/payments/ds;

    iget-object v0, v0, Lcom/paypal/android/sdk/payments/ds;->a:Lcom/paypal/android/sdk/payments/PaymentMethodActivity;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->f(Lcom/paypal/android/sdk/payments/PaymentMethodActivity;)V

    return-void
.end method
