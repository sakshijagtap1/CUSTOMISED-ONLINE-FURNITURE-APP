.class final Lcom/paypal/android/sdk/payments/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/paypal/android/sdk/payments/cc;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/payments/m;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/payments/m;)V
    .registers 2

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/s;->a:Lcom/paypal/android/sdk/payments/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/paypal/android/sdk/payments/cf;)V
    .registers 5

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/s;->a:Lcom/paypal/android/sdk/payments/m;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/m;->dismissDialog(I)V

    iget-object v0, p1, Lcom/paypal/android/sdk/payments/cf;->b:Ljava/lang/String;

    const-string v1, "invalid_nonce"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/s;->a:Lcom/paypal/android/sdk/payments/m;

    iget-object v0, v0, Lcom/paypal/android/sdk/payments/m;->c:Lcom/paypal/android/sdk/fx;

    iget-object v0, v0, Lcom/paypal/android/sdk/fx;->h:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/s;->a:Lcom/paypal/android/sdk/payments/m;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aL:Lcom/paypal/android/sdk/fw;

    invoke-static {v1}, Lcom/paypal/android/sdk/fu;->a(Lcom/paypal/android/sdk/fw;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/paypal/android/sdk/payments/d;->a(Landroid/app/Activity;Ljava/lang/String;I)V

    :goto_27
    return-void

    :cond_28
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/s;->a:Lcom/paypal/android/sdk/payments/m;

    iget-object v0, v0, Lcom/paypal/android/sdk/payments/m;->c:Lcom/paypal/android/sdk/fx;

    iget-object v0, v0, Lcom/paypal/android/sdk/fx;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/s;->a:Lcom/paypal/android/sdk/payments/m;

    iget-object v1, p1, Lcom/paypal/android/sdk/payments/cf;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/paypal/android/sdk/fu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/paypal/android/sdk/payments/d;->a(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_27
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 3

    instance-of v0, p1, Lcom/paypal/android/sdk/fk;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/s;->a:Lcom/paypal/android/sdk/payments/m;

    check-cast p1, Lcom/paypal/android/sdk/fk;

    invoke-static {v0, p1}, Lcom/paypal/android/sdk/payments/m;->a(Lcom/paypal/android/sdk/payments/m;Lcom/paypal/android/sdk/fk;)V

    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/s;->a:Lcom/paypal/android/sdk/payments/m;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/m;->b(Lcom/paypal/android/sdk/payments/m;)V

    goto :goto_b
.end method
