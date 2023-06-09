.class final Lcom/paypal/android/sdk/payments/ak;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/paypal/android/sdk/payments/cc;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/payments/LoginActivity;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/payments/LoginActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/ak;->a:Lcom/paypal/android/sdk/payments/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/paypal/android/sdk/payments/cf;)V
    .registers 4

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ak;->a:Lcom/paypal/android/sdk/payments/LoginActivity;

    iget-object v1, p1, Lcom/paypal/android/sdk/payments/cf;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/payments/LoginActivity;->b(Lcom/paypal/android/sdk/payments/LoginActivity;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ak;->a:Lcom/paypal/android/sdk/payments/LoginActivity;

    sget-object v1, Lcom/paypal/android/sdk/payments/bg;->j:Lcom/paypal/android/sdk/payments/bg;

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/payments/LoginActivity;->a(Lcom/paypal/android/sdk/payments/LoginActivity;Lcom/paypal/android/sdk/payments/bg;)V

    return-void
.end method
