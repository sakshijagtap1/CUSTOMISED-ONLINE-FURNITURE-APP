.class final Lcom/paypal/android/sdk/payments/cl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/paypal/android/sdk/payments/ch;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/payments/ck;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/payments/ck;)V
    .registers 2

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/cl;->a:Lcom/paypal/android/sdk/payments/ck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cl;->a:Lcom/paypal/android/sdk/payments/ck;

    iget-object v0, v0, Lcom/paypal/android/sdk/payments/ck;->a:Lcom/paypal/android/sdk/payments/PaymentActivity;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PaymentActivity;->c(Lcom/paypal/android/sdk/payments/PaymentActivity;)V

    return-void
.end method
