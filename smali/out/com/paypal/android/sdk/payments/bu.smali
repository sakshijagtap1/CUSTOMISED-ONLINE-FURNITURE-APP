.class final Lcom/paypal/android/sdk/payments/bu;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/bu;->a:Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 8

    const/4 v4, 0x1

    const/4 v3, 0x2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".onServiceConnected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/bu;->a:Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_33

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".onServiceConnected exit - isFinishing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_32
    return-void

    :cond_33
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/bu;->a:Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;

    check-cast p2, Lcom/paypal/android/sdk/payments/cd;

    iget-object v1, p2, Lcom/paypal/android/sdk/payments/cd;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;->a(Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/PayPalService;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/bu;->a:Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;->b(Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;)Lcom/paypal/android/sdk/payments/PayPalService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->d()Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    move-result-object v0

    if-nez v0, :cond_5c

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Service state invalid.  Did you start the PayPalService?"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/bu;->a:Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;

    invoke-virtual {v0, v3}, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;->setResult(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/bu;->a:Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;->finish()V

    goto :goto_32

    :cond_5c
    new-instance v0, Lcom/paypal/android/sdk/payments/bx;

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/bu;->a:Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/bu;->a:Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;

    invoke-static {v2}, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;->b(Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;)Lcom/paypal/android/sdk/payments/PayPalService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/paypal/android/sdk/payments/PayPalService;->d()Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    move-result-object v2

    invoke-direct {v0, v1, v2, v4}, Lcom/paypal/android/sdk/payments/bx;-><init>(Landroid/content/Intent;Lcom/paypal/android/sdk/payments/PayPalConfiguration;Z)V

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/bx;->b()Z

    move-result v1

    if-nez v1, :cond_8b

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Service extras invalid.  Please see the docs."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/bu;->a:Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;

    invoke-virtual {v0, v3}, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;->setResult(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/bu;->a:Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;->finish()V

    goto :goto_32

    :cond_8b
    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/bx;->c()Z

    move-result v0

    if-nez v0, :cond_a5

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Extras invalid.  Please see the docs."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/bu;->a:Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;

    invoke-virtual {v0, v3}, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;->setResult(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/bu;->a:Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;->finish()V

    goto :goto_32

    :cond_a5
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/bu;->a:Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;->b(Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;)Lcom/paypal/android/sdk/payments/PayPalService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->i()Z

    move-result v0

    if-eqz v0, :cond_b8

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/bu;->a:Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;->c(Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;)V

    goto/16 :goto_32

    :cond_b8
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->add(II)V

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/bu;->a:Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;->a(Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;Ljava/util/Date;)Ljava/util/Date;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/bu;->a:Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;->b(Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;)Lcom/paypal/android/sdk/payments/PayPalService;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/bu;->a:Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;

    invoke-static {v1}, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;->a(Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;)Lcom/paypal/android/sdk/payments/ce;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/payments/ce;Z)V

    goto/16 :goto_32
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/bu;->a:Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;->a(Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;->a()Ljava/lang/String;

    return-void
.end method
