.class final Lcom/paypal/android/sdk/payments/cf;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/Integer;

.field b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/payments/PayPalService;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/paypal/android/sdk/payments/cf;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/paypal/android/sdk/payments/cf;->a:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method final a()Z
    .registers 3

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cf;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cf;->a:Ljava/lang/Integer;

    const/16 v1, 0x191

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method final b()Z
    .registers 3

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/cf;->a()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cf;->b:Ljava/lang/String;

    const-string v1, "2fa_required"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method final c()Z
    .registers 3

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/cf;->b:Ljava/lang/String;

    sget-object v1, Lcom/paypal/android/sdk/bz;->b:Lcom/paypal/android/sdk/bz;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/bz;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
