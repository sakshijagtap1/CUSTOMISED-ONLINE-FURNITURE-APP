.class public final Lcom/paypal/android/sdk/payments/LoginActivity;
.super Landroid/app/Activity;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/paypal/android/sdk/payments/bg;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lcom/paypal/android/sdk/ep;

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:I

.field private p:Lcom/paypal/android/sdk/gd;

.field private q:Z

.field private r:Lcom/paypal/android/sdk/payments/PayPalService;

.field private final s:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-class v0, Lcom/paypal/android/sdk/payments/LoginActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->a:Ljava/lang/String;

    new-instance v0, Lcom/paypal/android/sdk/payments/ap;

    invoke-direct {v0, p0}, Lcom/paypal/android/sdk/payments/ap;-><init>(Lcom/paypal/android/sdk/payments/LoginActivity;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->s:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic a(Lcom/paypal/android/sdk/payments/LoginActivity;I)I
    .registers 2

    iput p1, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->o:I

    return p1
.end method

.method private a(Lcom/paypal/android/sdk/payments/bg;)Lcom/paypal/android/sdk/ep;
    .registers 6

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/LoginActivity;->g()V

    sget-object v0, Lcom/paypal/android/sdk/payments/bg;->b:Lcom/paypal/android/sdk/payments/bg;

    if-ne p1, v0, :cond_2e

    invoke-static {}, Lcom/paypal/android/sdk/de;->a()Lcom/paypal/android/sdk/de;

    move-result-object v1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->f:Ljava/lang/String;

    if-nez v0, :cond_1f

    new-instance v0, Lcom/paypal/android/sdk/ev;

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->e:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/paypal/android/sdk/ev;-><init>(Lcom/paypal/android/sdk/eu;Ljava/lang/String;)V

    :goto_16
    new-instance v1, Lcom/paypal/android/sdk/ep;

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->g:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/paypal/android/sdk/ep;-><init>(Lcom/paypal/android/sdk/ev;Ljava/lang/String;)V

    move-object v0, v1

    :goto_1e
    return-object v0

    :cond_1f
    new-instance v0, Lcom/paypal/android/sdk/ev;

    new-instance v2, Lcom/paypal/android/sdk/ei;

    iget-object v3, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->f:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/paypal/android/sdk/ei;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->e:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/paypal/android/sdk/ev;-><init>(Lcom/paypal/android/sdk/eu;Lcom/paypal/android/sdk/ei;Ljava/lang/String;)V

    goto :goto_16

    :cond_2e
    sget-object v0, Lcom/paypal/android/sdk/payments/bg;->a:Lcom/paypal/android/sdk/payments/bg;

    if-ne p1, v0, :cond_3c

    new-instance v0, Lcom/paypal/android/sdk/ep;

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/paypal/android/sdk/ep;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    :cond_3c
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->i:Lcom/paypal/android/sdk/ep;

    goto :goto_1e
.end method

.method static synthetic a(Lcom/paypal/android/sdk/payments/LoginActivity;Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/PayPalService;
    .registers 2

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->r:Lcom/paypal/android/sdk/payments/PayPalService;

    return-object p1
.end method

.method static a(Landroid/app/Activity;ILcom/paypal/android/sdk/dm;ZZLjava/lang/String;Lcom/paypal/android/sdk/payments/PayPalConfiguration;)V
    .registers 9

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/paypal/android/sdk/payments/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    const-string v1, "com.paypal.android.sdk.payments.persistedLogin"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "com.paypal.android.sdk.payments.useResponseTypeCode"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "com.paypal.android.sdk.payments.forceLogin"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "com.paypal.android.sdk.payments.requestedScopes"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.paypal.android.sdk.paypalConfiguration"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic a(Lcom/paypal/android/sdk/payments/LoginActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/LoginActivity;->h()V

    return-void
.end method

.method static synthetic a(Lcom/paypal/android/sdk/payments/LoginActivity;Landroid/view/View;)V
    .registers 8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->b:Lcom/paypal/android/sdk/payments/bg;

    invoke-direct {p0, v0}, Lcom/paypal/android/sdk/payments/LoginActivity;->a(Lcom/paypal/android/sdk/payments/bg;)Lcom/paypal/android/sdk/ep;

    move-result-object v1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->b:Lcom/paypal/android/sdk/payments/bg;

    sget-object v2, Lcom/paypal/android/sdk/payments/bg;->b:Lcom/paypal/android/sdk/payments/bg;

    if-ne v0, v2, :cond_2f

    new-instance v0, Lcom/paypal/android/sdk/ep;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/ep;->d()Lcom/paypal/android/sdk/ev;

    move-result-object v2

    invoke-direct {v0, v2, v3}, Lcom/paypal/android/sdk/ep;-><init>(Lcom/paypal/android/sdk/ev;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->i:Lcom/paypal/android/sdk/ep;

    sget-object v0, Lcom/paypal/android/sdk/payments/bg;->d:Lcom/paypal/android/sdk/payments/bg;

    invoke-direct {p0, v0}, Lcom/paypal/android/sdk/payments/LoginActivity;->b(Lcom/paypal/android/sdk/payments/bg;)V

    :goto_1d
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->r:Lcom/paypal/android/sdk/payments/PayPalService;

    iget-boolean v2, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->l:Z

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/LoginActivity;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/LoginActivity;->c()Z

    move-result v4

    iget-object v5, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->j:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/ep;ZLjava/lang/String;ZLjava/lang/String;)V

    return-void

    :cond_2f
    new-instance v0, Lcom/paypal/android/sdk/ep;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/ep;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v3}, Lcom/paypal/android/sdk/ep;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->i:Lcom/paypal/android/sdk/ep;

    sget-object v0, Lcom/paypal/android/sdk/payments/bg;->c:Lcom/paypal/android/sdk/payments/bg;

    invoke-direct {p0, v0}, Lcom/paypal/android/sdk/payments/LoginActivity;->b(Lcom/paypal/android/sdk/payments/bg;)V

    goto :goto_1d
.end method

.method static synthetic a(Lcom/paypal/android/sdk/payments/LoginActivity;Lcom/paypal/android/sdk/payments/bg;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/paypal/android/sdk/payments/LoginActivity;->b(Lcom/paypal/android/sdk/payments/bg;)V

    return-void
.end method

.method static synthetic a(Lcom/paypal/android/sdk/payments/LoginActivity;Lcom/paypal/android/sdk/payments/cf;)V
    .registers 6

    const/4 v3, 0x0

    const/4 v2, 0x3

    invoke-virtual {p1}, Lcom/paypal/android/sdk/payments/cf;->b()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/LoginActivity;->d()V

    :goto_b
    return-void

    :cond_c
    invoke-virtual {p1}, Lcom/paypal/android/sdk/payments/cf;->a()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p1, Lcom/paypal/android/sdk/payments/cf;->b:Ljava/lang/String;

    const-string v1, "invalid_user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const/4 v0, 0x1

    :goto_1d
    if-eqz v0, :cond_2e

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/LoginActivity;->o()V

    sget-object v0, Lcom/paypal/android/sdk/fw;->bt:Lcom/paypal/android/sdk/fw;

    invoke-static {v0}, Lcom/paypal/android/sdk/fu;->a(Lcom/paypal/android/sdk/fw;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcom/paypal/android/sdk/payments/d;->a(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_b

    :cond_2c
    const/4 v0, 0x0

    goto :goto_1d

    :cond_2e
    invoke-virtual {p1}, Lcom/paypal/android/sdk/payments/cf;->c()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/LoginActivity;->o()V

    iget-object v0, p1, Lcom/paypal/android/sdk/payments/cf;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/paypal/android/sdk/fu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcom/paypal/android/sdk/payments/d;->a(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_b

    :cond_41
    const-string v0, "invalid_nonce"

    iget-object v1, p1, Lcom/paypal/android/sdk/payments/cf;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    iput-object v3, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->h:Ljava/lang/String;

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/LoginActivity;->o()V

    sget-object v0, Lcom/paypal/android/sdk/fw;->aL:Lcom/paypal/android/sdk/fw;

    invoke-static {v0}, Lcom/paypal/android/sdk/fu;->a(Lcom/paypal/android/sdk/fw;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {p0, v0, v1}, Lcom/paypal/android/sdk/payments/d;->a(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_b

    :cond_5b
    iput-object v3, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->h:Ljava/lang/String;

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/LoginActivity;->o()V

    iget-object v0, p1, Lcom/paypal/android/sdk/payments/cf;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/paypal/android/sdk/fu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Lcom/paypal/android/sdk/payments/d;->a(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_b
.end method

.method static synthetic a(Lcom/paypal/android/sdk/payments/LoginActivity;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->g:Ljava/lang/String;

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/LoginActivity;->o()V

    invoke-static {p1}, Lcom/paypal/android/sdk/fu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/paypal/android/sdk/payments/d;->a(Landroid/app/Activity;Ljava/lang/String;I)V

    return-void
.end method

.method private b()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/LoginActivity;->c()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "code"

    :goto_8
    return-object v0

    :cond_9
    const-string v0, "token"

    goto :goto_8
.end method

.method static synthetic b(Lcom/paypal/android/sdk/payments/LoginActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/LoginActivity;->i()V

    return-void
.end method

.method static synthetic b(Lcom/paypal/android/sdk/payments/LoginActivity;Landroid/view/View;)V
    .registers 5

    invoke-static {}, Lcom/paypal/android/sdk/payments/ae;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/paypal/android/sdk/payments/LoginActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->r:Lcom/paypal/android/sdk/payments/PayPalService;

    sget-object v1, Lcom/paypal/android/sdk/fc;->o:Lcom/paypal/android/sdk/fc;

    iget-boolean v2, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->l:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/fc;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic b(Lcom/paypal/android/sdk/payments/LoginActivity;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/LoginActivity;->o()V

    const-string v0, "invalid_nonce"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/paypal/android/sdk/fw;->aL:Lcom/paypal/android/sdk/fw;

    invoke-static {v0}, Lcom/paypal/android/sdk/fu;->a(Lcom/paypal/android/sdk/fw;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {p0, v0, v1}, Lcom/paypal/android/sdk/payments/d;->a(Landroid/app/Activity;Ljava/lang/String;I)V

    :goto_15
    return-void

    :cond_16
    invoke-static {p1}, Lcom/paypal/android/sdk/fu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lcom/paypal/android/sdk/payments/d;->a(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_15
.end method

.method private b(Lcom/paypal/android/sdk/payments/bg;)V
    .registers 9

    const/16 v6, 0x15

    const/16 v5, 0x14

    const/16 v4, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "changeLoginState:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_3b

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->b:Lcom/paypal/android/sdk/payments/bg;

    :goto_16
    const/16 v0, 0x14

    :try_start_18
    invoke-virtual {p0, v0}, Lcom/paypal/android/sdk/payments/LoginActivity;->dismissDialog(I)V

    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/paypal/android/sdk/payments/LoginActivity;->dismissDialog(I)V
    :try_end_20
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_20} :catch_1e6

    :goto_20
    sget-object v0, Lcom/paypal/android/sdk/payments/ay;->a:[I

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->b:Lcom/paypal/android/sdk/payments/bg;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/bg;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1ea

    :goto_2d
    sget-object v0, Lcom/paypal/android/sdk/payments/ay;->a:[I

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->b:Lcom/paypal/android/sdk/payments/bg;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/bg;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_208

    :goto_3a
    return-void

    :cond_3b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "null loginState, refreshing:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->b:Lcom/paypal/android/sdk/payments/bg;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_16

    :pswitch_48
    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/LoginActivity;->j()V

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/LoginActivity;->m()V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/LoginActivity;->h()V

    goto :goto_2d

    :pswitch_60
    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/LoginActivity;->j()V

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/LoginActivity;->n()V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/LoginActivity;->h()V

    goto :goto_2d

    :pswitch_78
    invoke-virtual {p0, v5}, Lcom/paypal/android/sdk/payments/LoginActivity;->showDialog(I)V

    :pswitch_7b
    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/LoginActivity;->j()V

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/LoginActivity;->m()V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_2d

    :pswitch_97
    invoke-virtual {p0, v5}, Lcom/paypal/android/sdk/payments/LoginActivity;->showDialog(I)V

    :pswitch_9a
    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/LoginActivity;->j()V

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/LoginActivity;->n()V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_2d

    :pswitch_a8
    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/LoginActivity;->l()V

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/LoginActivity;->k()V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->o:Lcom/paypal/android/sdk/gi;

    iget-object v0, v0, Lcom/paypal/android/sdk/gi;->c:Landroid/widget/Button;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aY:Lcom/paypal/android/sdk/fw;

    invoke-static {v1}, Lcom/paypal/android/sdk/fu;->a(Lcom/paypal/android/sdk/fw;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->l:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->l:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2d

    :pswitch_db
    invoke-virtual {p0, v6}, Lcom/paypal/android/sdk/payments/LoginActivity;->showDialog(I)V

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/LoginActivity;->l()V

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/LoginActivity;->k()V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->o:Lcom/paypal/android/sdk/gi;

    iget-object v0, v0, Lcom/paypal/android/sdk/gi;->c:Landroid/widget/Button;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aZ:Lcom/paypal/android/sdk/fw;

    invoke-static {v1}, Lcom/paypal/android/sdk/fu;->a(Lcom/paypal/android/sdk/fw;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->l:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->l:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2d

    :pswitch_111
    invoke-virtual {p0, v6}, Lcom/paypal/android/sdk/payments/LoginActivity;->showDialog(I)V

    :pswitch_114
    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/LoginActivity;->l()V

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/LoginActivity;->k()V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->o:Lcom/paypal/android/sdk/gi;

    iget-object v0, v0, Lcom/paypal/android/sdk/gi;->c:Landroid/widget/Button;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aZ:Lcom/paypal/android/sdk/fw;

    invoke-static {v1}, Lcom/paypal/android/sdk/fu;->a(Lcom/paypal/android/sdk/fw;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->l:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->l:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2d

    :pswitch_147
    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/LoginActivity;->l()V

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/LoginActivity;->k()V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->o:Lcom/paypal/android/sdk/gi;

    iget-object v0, v0, Lcom/paypal/android/sdk/gi;->c:Landroid/widget/Button;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aZ:Lcom/paypal/android/sdk/fw;

    invoke-static {v1}, Lcom/paypal/android/sdk/fu;->a(Lcom/paypal/android/sdk/fw;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->l:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->l:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->l:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/paypal/android/sdk/payments/am;

    invoke-direct {v2, p0, v0}, Lcom/paypal/android/sdk/payments/am;-><init>(Lcom/paypal/android/sdk/payments/LoginActivity;Landroid/widget/EditText;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/LoginActivity;->i()V

    goto/16 :goto_2d

    :pswitch_18c
    invoke-virtual {p0, v5}, Lcom/paypal/android/sdk/payments/LoginActivity;->showDialog(I)V

    :pswitch_18f
    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/LoginActivity;->l()V

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/LoginActivity;->k()V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->o:Lcom/paypal/android/sdk/gi;

    iget-object v0, v0, Lcom/paypal/android/sdk/gi;->c:Landroid/widget/Button;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aZ:Lcom/paypal/android/sdk/fw;

    invoke-static {v1}, Lcom/paypal/android/sdk/fu;->a(Lcom/paypal/android/sdk/fw;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->l:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->l:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2d

    :pswitch_1c2
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->r:Lcom/paypal/android/sdk/payments/PayPalService;

    new-instance v1, Lcom/paypal/android/sdk/payments/bf;

    invoke-direct {v1, p0}, Lcom/paypal/android/sdk/payments/bf;-><init>(Lcom/paypal/android/sdk/payments/LoginActivity;)V

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/payments/cc;)V

    goto/16 :goto_3a

    :pswitch_1ce
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->r:Lcom/paypal/android/sdk/payments/PayPalService;

    new-instance v1, Lcom/paypal/android/sdk/payments/ak;

    invoke-direct {v1, p0}, Lcom/paypal/android/sdk/payments/ak;-><init>(Lcom/paypal/android/sdk/payments/LoginActivity;)V

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/payments/cc;)V

    goto/16 :goto_3a

    :pswitch_1da
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->r:Lcom/paypal/android/sdk/payments/PayPalService;

    new-instance v1, Lcom/paypal/android/sdk/payments/al;

    invoke-direct {v1, p0}, Lcom/paypal/android/sdk/payments/al;-><init>(Lcom/paypal/android/sdk/payments/LoginActivity;)V

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/payments/cc;)V

    goto/16 :goto_3a

    :catch_1e6
    move-exception v0

    goto/16 :goto_20

    nop

    :pswitch_data_1ea
    .packed-switch 0x1
        :pswitch_78
        :pswitch_97
        :pswitch_db
        :pswitch_111
        :pswitch_18c
        :pswitch_48
        :pswitch_60
        :pswitch_7b
        :pswitch_9a
        :pswitch_a8
        :pswitch_114
        :pswitch_147
        :pswitch_18f
    .end packed-switch

    :pswitch_data_208
    .packed-switch 0x1
        :pswitch_1c2
        :pswitch_1c2
        :pswitch_1ce
        :pswitch_1ce
        :pswitch_1da
    .end packed-switch
.end method

.method static synthetic c(Lcom/paypal/android/sdk/payments/LoginActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/LoginActivity;->e()V

    return-void
.end method

.method static synthetic c(Lcom/paypal/android/sdk/payments/LoginActivity;Landroid/view/View;)V
    .registers 5

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/LoginActivity;->g()V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->b:Lcom/paypal/android/sdk/payments/bg;

    sget-object v1, Lcom/paypal/android/sdk/payments/bg;->b:Lcom/paypal/android/sdk/payments/bg;

    if-ne v0, v1, :cond_1e

    sget-object v0, Lcom/paypal/android/sdk/payments/bg;->a:Lcom/paypal/android/sdk/payments/bg;

    invoke-direct {p0, v0}, Lcom/paypal/android/sdk/payments/LoginActivity;->b(Lcom/paypal/android/sdk/payments/bg;)V

    :goto_e
    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/LoginActivity;->f()V

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->b:Lcom/paypal/android/sdk/payments/bg;

    sget-object v2, Lcom/paypal/android/sdk/payments/bg;->a:Lcom/paypal/android/sdk/payments/bg;

    if-ne v0, v2, :cond_24

    const/4 v0, 0x1

    :goto_1a
    invoke-virtual {v1, v0}, Lcom/paypal/android/sdk/gd;->a(Z)V

    return-void

    :cond_1e
    sget-object v0, Lcom/paypal/android/sdk/payments/bg;->b:Lcom/paypal/android/sdk/payments/bg;

    invoke-direct {p0, v0}, Lcom/paypal/android/sdk/payments/LoginActivity;->b(Lcom/paypal/android/sdk/payments/bg;)V

    goto :goto_e

    :cond_24
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method private c()Z
    .registers 4

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.paypal.android.sdk.payments.useResponseTypeCode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private d()V
    .registers 3

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->r:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/dg;

    move-result-object v0

    iget-object v0, v0, Lcom/paypal/android/sdk/dg;->f:Lcom/paypal/android/sdk/ed;

    iget-object v0, v0, Lcom/paypal/android/sdk/ed;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/LoginActivity;->o()V

    sget-object v0, Lcom/paypal/android/sdk/fw;->ba:Lcom/paypal/android/sdk/fw;

    invoke-static {v0}, Lcom/paypal/android/sdk/fu;->a(Lcom/paypal/android/sdk/fw;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {p0, v0, v1}, Lcom/paypal/android/sdk/payments/d;->a(Landroid/app/Activity;Ljava/lang/String;I)V

    :goto_1e
    return-void

    :cond_1f
    sget-object v0, Lcom/paypal/android/sdk/payments/bg;->g:Lcom/paypal/android/sdk/payments/bg;

    invoke-direct {p0, v0}, Lcom/paypal/android/sdk/payments/LoginActivity;->b(Lcom/paypal/android/sdk/payments/bg;)V

    goto :goto_1e
.end method

.method static synthetic d(Lcom/paypal/android/sdk/payments/LoginActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/LoginActivity;->d()V

    return-void
.end method

.method static synthetic d(Lcom/paypal/android/sdk/payments/LoginActivity;Landroid/view/View;)V
    .registers 5

    invoke-static {}, Lcom/paypal/android/sdk/payments/ea;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/paypal/android/sdk/payments/LoginActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->r:Lcom/paypal/android/sdk/payments/PayPalService;

    sget-object v1, Lcom/paypal/android/sdk/fc;->n:Lcom/paypal/android/sdk/fc;

    iget-boolean v2, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->l:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/fc;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic e(Lcom/paypal/android/sdk/payments/LoginActivity;)Lcom/paypal/android/sdk/gd;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    return-object v0
.end method

.method private e()V
    .registers 2

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/paypal/android/sdk/payments/LoginActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/LoginActivity;->finish()V

    return-void
.end method

.method static synthetic e(Lcom/paypal/android/sdk/payments/LoginActivity;Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->b:Lcom/paypal/android/sdk/payments/bg;

    sget-object v1, Lcom/paypal/android/sdk/payments/bg;->j:Lcom/paypal/android/sdk/payments/bg;

    if-ne v0, v1, :cond_1c

    sget-object v0, Lcom/paypal/android/sdk/payments/bg;->i:Lcom/paypal/android/sdk/payments/bg;

    invoke-direct {p0, v0}, Lcom/paypal/android/sdk/payments/LoginActivity;->b(Lcom/paypal/android/sdk/payments/bg;)V

    :goto_b
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->l:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->r:Lcom/paypal/android/sdk/payments/PayPalService;

    iget v1, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->o:I

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/PayPalService;->a(I)V

    return-void

    :cond_1c
    sget-object v0, Lcom/paypal/android/sdk/payments/bg;->h:Lcom/paypal/android/sdk/payments/bg;

    invoke-direct {p0, v0}, Lcom/paypal/android/sdk/payments/LoginActivity;->b(Lcom/paypal/android/sdk/payments/bg;)V

    goto :goto_b
.end method

.method static synthetic f(Lcom/paypal/android/sdk/payments/LoginActivity;)Lcom/paypal/android/sdk/payments/PayPalService;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->r:Lcom/paypal/android/sdk/payments/PayPalService;

    return-object v0
.end method

.method private f()V
    .registers 3

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->c:Lcom/paypal/android/sdk/fy;

    iget-object v0, v0, Lcom/paypal/android/sdk/fy;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->r:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/PayPalService;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/payments/d;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/paypal/android/sdk/payments/LoginActivity;->b(Lcom/paypal/android/sdk/payments/bg;)V

    return-void
.end method

.method static synthetic f(Lcom/paypal/android/sdk/payments/LoginActivity;Landroid/view/View;)V
    .registers 9

    sget-object v0, Lcom/paypal/android/sdk/payments/bg;->k:Lcom/paypal/android/sdk/payments/bg;

    invoke-direct {p0, v0}, Lcom/paypal/android/sdk/payments/LoginActivity;->b(Lcom/paypal/android/sdk/payments/bg;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->r:Lcom/paypal/android/sdk/payments/PayPalService;

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->b:Lcom/paypal/android/sdk/payments/bg;

    invoke-direct {p0, v1}, Lcom/paypal/android/sdk/payments/LoginActivity;->a(Lcom/paypal/android/sdk/payments/bg;)Lcom/paypal/android/sdk/ep;

    move-result-object v1

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v2, v2, Lcom/paypal/android/sdk/gd;->l:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->l:Z

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/LoginActivity;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/LoginActivity;->c()Z

    move-result v5

    iget-object v6, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->j:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/ep;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method private g()V
    .registers 3

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->b:Lcom/paypal/android/sdk/payments/bg;

    sget-object v1, Lcom/paypal/android/sdk/payments/bg;->b:Lcom/paypal/android/sdk/payments/bg;

    if-ne v0, v1, :cond_23

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->g:Ljava/lang/String;

    :goto_22
    return-void

    :cond_23
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->d:Ljava/lang/String;

    goto :goto_22
.end method

.method static synthetic g(Lcom/paypal/android/sdk/payments/LoginActivity;)V
    .registers 3

    sget-object v0, Lcom/paypal/android/sdk/payments/ay;->a:[I

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->b:Lcom/paypal/android/sdk/payments/bg;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/bg;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_36

    :pswitch_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->b:Lcom/paypal/android/sdk/payments/bg;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " case not handled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1d
    return-void

    :pswitch_1e
    sget-object v0, Lcom/paypal/android/sdk/payments/bg;->a:Lcom/paypal/android/sdk/payments/bg;

    invoke-direct {p0, v0}, Lcom/paypal/android/sdk/payments/LoginActivity;->b(Lcom/paypal/android/sdk/payments/bg;)V

    goto :goto_1d

    :pswitch_24
    sget-object v0, Lcom/paypal/android/sdk/payments/bg;->b:Lcom/paypal/android/sdk/payments/bg;

    invoke-direct {p0, v0}, Lcom/paypal/android/sdk/payments/LoginActivity;->b(Lcom/paypal/android/sdk/payments/bg;)V

    goto :goto_1d

    :pswitch_2a
    sget-object v0, Lcom/paypal/android/sdk/payments/bg;->j:Lcom/paypal/android/sdk/payments/bg;

    invoke-direct {p0, v0}, Lcom/paypal/android/sdk/payments/LoginActivity;->b(Lcom/paypal/android/sdk/payments/bg;)V

    goto :goto_1d

    :pswitch_30
    sget-object v0, Lcom/paypal/android/sdk/payments/bg;->j:Lcom/paypal/android/sdk/payments/bg;

    invoke-direct {p0, v0}, Lcom/paypal/android/sdk/payments/LoginActivity;->b(Lcom/paypal/android/sdk/payments/bg;)V

    goto :goto_1d

    :pswitch_data_36
    .packed-switch 0x8
        :pswitch_1e
        :pswitch_24
        :pswitch_d
        :pswitch_30
        :pswitch_d
        :pswitch_2a
    .end packed-switch
.end method

.method private h()V
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v2, v2, Lcom/paypal/android/sdk/gd;->b:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v3, v3, Lcom/paypal/android/sdk/gd;->d:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->b:Lcom/paypal/android/sdk/payments/bg;

    sget-object v5, Lcom/paypal/android/sdk/payments/bg;->b:Lcom/paypal/android/sdk/payments/bg;

    if-ne v4, v5, :cond_3d

    invoke-static {v2}, Lcom/paypal/android/sdk/et;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-static {v3}, Lcom/paypal/android/sdk/et;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3b

    :cond_2c
    :goto_2c
    iget-object v1, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v1, v1, Lcom/paypal/android/sdk/gd;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v1, v1, Lcom/paypal/android/sdk/gd;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    return-void

    :cond_3b
    move v0, v1

    goto :goto_2c

    :cond_3d
    invoke-static {v2}, Lcom/paypal/android/sdk/et;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-static {v3}, Lcom/paypal/android/sdk/et;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2c

    :cond_49
    move v0, v1

    goto :goto_2c
.end method

.method static synthetic h(Lcom/paypal/android/sdk/payments/LoginActivity;)V
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->i:Lcom/paypal/android/sdk/ep;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/ep;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/paypal/android/sdk/payments/bg;->a:Lcom/paypal/android/sdk/payments/bg;

    invoke-direct {p0, v0}, Lcom/paypal/android/sdk/payments/LoginActivity;->b(Lcom/paypal/android/sdk/payments/bg;)V

    :goto_d
    return-void

    :cond_e
    sget-object v0, Lcom/paypal/android/sdk/payments/bg;->b:Lcom/paypal/android/sdk/payments/bg;

    invoke-direct {p0, v0}, Lcom/paypal/android/sdk/payments/LoginActivity;->b(Lcom/paypal/android/sdk/payments/bg;)V

    goto :goto_d
.end method

.method private i()V
    .registers 3

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v1, v1, Lcom/paypal/android/sdk/gd;->l:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_1c

    const/4 v0, 0x1

    :goto_14
    iget-object v1, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v1, v1, Lcom/paypal/android/sdk/gd;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    return-void

    :cond_1c
    const/4 v0, 0x0

    goto :goto_14
.end method

.method private j()V
    .registers 4

    const/4 v2, 0x0

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->o:Lcom/paypal/android/sdk/gi;

    iget-object v0, v0, Lcom/paypal/android/sdk/gi;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->o:Lcom/paypal/android/sdk/gi;

    iget-object v0, v0, Lcom/paypal/android/sdk/gi;->c:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->l:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->l:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    return-void
.end method

.method private k()V
    .registers 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    sget-object v1, Lcom/paypal/android/sdk/fw;->aT:Lcom/paypal/android/sdk/fw;

    invoke-static {p0, v0, v1}, Lcom/paypal/android/sdk/payments/d;->a(Landroid/app/Activity;Landroid/widget/TextView;Lcom/paypal/android/sdk/fw;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "phone numbers: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->r:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/dg;

    move-result-object v1

    iget-object v1, v1, Lcom/paypal/android/sdk/dg;->f:Lcom/paypal/android/sdk/ed;

    iget-object v1, v1, Lcom/paypal/android/sdk/ed;->a:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->r:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/dg;

    move-result-object v0

    iget-object v0, v0, Lcom/paypal/android/sdk/dg;->f:Lcom/paypal/android/sdk/ed;

    iget-object v0, v0, Lcom/paypal/android/sdk/ed;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v2, v0, Lcom/paypal/android/sdk/gd;->o:Lcom/paypal/android/sdk/gi;

    iget v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->o:I

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/paypal/android/sdk/gi;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->o:Lcom/paypal/android/sdk/gi;

    iget-object v0, v0, Lcom/paypal/android/sdk/gi;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_89

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->o:Lcom/paypal/android/sdk/gi;

    invoke-virtual {v0, v3}, Lcom/paypal/android/sdk/gi;->a(Z)V

    new-instance v0, Lcom/paypal/android/sdk/gh;

    iget v2, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->o:I

    invoke-direct {v0, p0, v1, v2}, Lcom/paypal/android/sdk/gh;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    new-instance v2, Landroid/widget/ListView;

    invoke-direct {v2, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v2, v2, Lcom/paypal/android/sdk/gd;->o:Lcom/paypal/android/sdk/gi;

    iget-object v2, v2, Lcom/paypal/android/sdk/gi;->b:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/paypal/android/sdk/payments/an;

    invoke-direct {v3, p0, v0, v1}, Lcom/paypal/android/sdk/payments/an;-><init>(Lcom/paypal/android/sdk/payments/LoginActivity;Lcom/paypal/android/sdk/gh;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_7f
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->o:Lcom/paypal/android/sdk/gi;

    iget-object v0, v0, Lcom/paypal/android/sdk/gi;->c:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    return-void

    :cond_89
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->o:Lcom/paypal/android/sdk/gi;

    invoke-virtual {v0, v4}, Lcom/paypal/android/sdk/gi;->a(Z)V

    goto :goto_7f
.end method

.method private l()V
    .registers 4

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->e:Landroid/widget/TableLayout;

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->e:Landroid/widget/TableLayout;

    invoke-virtual {v0, v2}, Landroid/widget/TableLayout;->setVisibility(I)V

    return-void
.end method

.method private m()V
    .registers 4

    const/4 v2, 0x0

    const/4 v0, 0x0

    sget-object v1, Lcom/paypal/android/sdk/fw;->aq:Lcom/paypal/android/sdk/fw;

    invoke-static {p0, v0, v1}, Lcom/paypal/android/sdk/payments/d;->a(Landroid/app/Activity;Landroid/widget/TextView;Lcom/paypal/android/sdk/fw;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->b:Landroid/widget/EditText;

    sget-object v1, Lcom/paypal/android/sdk/fw;->ae:Lcom/paypal/android/sdk/fw;

    invoke-static {v1}, Lcom/paypal/android/sdk/fu;->a(Lcom/paypal/android/sdk/fw;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->b:Landroid/widget/EditText;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->d:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->d:Landroid/widget/EditText;

    sget-object v1, Lcom/paypal/android/sdk/fw;->au:Lcom/paypal/android/sdk/fw;

    invoke-static {v1}, Lcom/paypal/android/sdk/fu;->a(Lcom/paypal/android/sdk/fw;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->d:Landroid/widget/EditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_76

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_76

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_76
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->b:Landroid/widget/EditText;

    const-string v1, "Email"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->d:Landroid/widget/EditText;

    const-string v1, "Password"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->e:Landroid/widget/TableLayout;

    invoke-virtual {v0, v2}, Landroid/widget/TableLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->j:Landroid/widget/TextView;

    sget-object v1, Lcom/paypal/android/sdk/fw;->bp:Lcom/paypal/android/sdk/fw;

    invoke-static {v1}, Lcom/paypal/android/sdk/fu;->a(Lcom/paypal/android/sdk/fw;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private n()V
    .registers 4

    const/4 v2, 0x0

    const/4 v0, 0x0

    sget-object v1, Lcom/paypal/android/sdk/fw;->aq:Lcom/paypal/android/sdk/fw;

    invoke-static {p0, v0, v1}, Lcom/paypal/android/sdk/payments/d;->a(Landroid/app/Activity;Landroid/widget/TextView;Lcom/paypal/android/sdk/fw;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->b:Landroid/widget/EditText;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aA:Lcom/paypal/android/sdk/fw;

    invoke-static {v1}, Lcom/paypal/android/sdk/fu;->a(Lcom/paypal/android/sdk/fw;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->b:Landroid/widget/EditText;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->d:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->d:Landroid/widget/EditText;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aB:Lcom/paypal/android/sdk/fw;

    invoke-static {v1}, Lcom/paypal/android/sdk/fu;->a(Lcom/paypal/android/sdk/fw;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->d:Landroid/widget/EditText;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_75

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_75

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_75
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->b:Landroid/widget/EditText;

    const-string v1, "Phone"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->d:Landroid/widget/EditText;

    const-string v1, "Pin"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->e:Landroid/widget/TableLayout;

    invoke-virtual {v0, v2}, Landroid/widget/TableLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->g:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->j:Landroid/widget/TextView;

    sget-object v1, Lcom/paypal/android/sdk/fw;->bo:Lcom/paypal/android/sdk/fw;

    invoke-static {v1}, Lcom/paypal/android/sdk/fu;->a(Lcom/paypal/android/sdk/fw;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private o()V
    .registers 3

    sget-object v0, Lcom/paypal/android/sdk/payments/ay;->a:[I

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->b:Lcom/paypal/android/sdk/payments/bg;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/bg;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_36

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->b:Lcom/paypal/android/sdk/payments/bg;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " case not handled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1d
    return-void

    :pswitch_1e
    sget-object v0, Lcom/paypal/android/sdk/payments/bg;->e:Lcom/paypal/android/sdk/payments/bg;

    invoke-direct {p0, v0}, Lcom/paypal/android/sdk/payments/LoginActivity;->b(Lcom/paypal/android/sdk/payments/bg;)V

    goto :goto_1d

    :pswitch_24
    sget-object v0, Lcom/paypal/android/sdk/payments/bg;->f:Lcom/paypal/android/sdk/payments/bg;

    invoke-direct {p0, v0}, Lcom/paypal/android/sdk/payments/LoginActivity;->b(Lcom/paypal/android/sdk/payments/bg;)V

    goto :goto_1d

    :pswitch_2a
    sget-object v0, Lcom/paypal/android/sdk/payments/bg;->m:Lcom/paypal/android/sdk/payments/bg;

    invoke-direct {p0, v0}, Lcom/paypal/android/sdk/payments/LoginActivity;->b(Lcom/paypal/android/sdk/payments/bg;)V

    goto :goto_1d

    :pswitch_30
    sget-object v0, Lcom/paypal/android/sdk/payments/bg;->l:Lcom/paypal/android/sdk/payments/bg;

    invoke-direct {p0, v0}, Lcom/paypal/android/sdk/payments/LoginActivity;->b(Lcom/paypal/android/sdk/payments/bg;)V

    goto :goto_1d

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_24
        :pswitch_30
        :pswitch_30
        :pswitch_2a
    .end packed-switch
.end method


# virtual methods
.method final a()V
    .registers 6

    const/4 v4, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->r:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->d()Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    move-result-object v0

    sget-boolean v1, Lcom/paypal/android/sdk/fu;->a:Z

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v1, v1, Lcom/paypal/android/sdk/gd;->d:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setGravity(I)V

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v1, v1, Lcom/paypal/android/sdk/gd;->b:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setGravity(I)V

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v1, v1, Lcom/paypal/android/sdk/gd;->l:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setGravity(I)V

    :cond_22
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/paypal/android/sdk/et;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->r:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/dg;

    move-result-object v1

    iget-boolean v1, v1, Lcom/paypal/android/sdk/dg;->h:Z

    if-nez v1, :cond_48

    :cond_40
    iget-object v1, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v1, v1, Lcom/paypal/android/sdk/gd;->j:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_48
    iget-boolean v1, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->m:Z

    if-eqz v1, :cond_80

    iput-boolean v4, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->m:Z

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->c:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5c

    iput-object v1, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->e:Ljava/lang/String;

    :cond_5c
    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_64

    iput-object v1, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->f:Ljava/lang/String;

    :cond_64
    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->f()Z

    move-result v1

    if-eqz v1, :cond_80

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/paypal/android/sdk/bp;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_80

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->g()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->d:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->g:Ljava/lang/String;

    :cond_80
    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.paypal.android.sdk.payments.forceLogin"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_97

    iget-boolean v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->n:Z

    if-nez v0, :cond_97

    iput-boolean v3, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->n:Z

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->r:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->h()V

    :cond_97
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->r:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->j()Z

    move-result v0

    if-nez v0, :cond_11b

    iget-boolean v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->k:Z

    if-nez v0, :cond_b2

    iput-boolean v3, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->k:Z

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->r:Lcom/paypal/android/sdk/payments/PayPalService;

    sget-object v1, Lcom/paypal/android/sdk/fc;->k:Lcom/paypal/android/sdk/fc;

    iget-boolean v2, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->l:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/fc;Ljava/lang/Boolean;)V

    :cond_b2
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->b:Lcom/paypal/android/sdk/payments/bg;

    if-nez v0, :cond_105

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.paypal.android.sdk.payments.persistedLogin"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/dm;

    if-eqz v0, :cond_115

    iput-boolean v3, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->l:Z

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/paypal/android/sdk/d;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_de

    invoke-virtual {v0}, Lcom/paypal/android/sdk/dm;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/paypal/android/sdk/d;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_de

    invoke-virtual {v0}, Lcom/paypal/android/sdk/dm;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->c:Ljava/lang/String;

    :cond_de
    iget-object v1, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->e:Ljava/lang/String;

    if-nez v1, :cond_f6

    invoke-virtual {v0}, Lcom/paypal/android/sdk/dm;->a()Lcom/paypal/android/sdk/ev;

    move-result-object v1

    if-eqz v1, :cond_f6

    invoke-virtual {v0}, Lcom/paypal/android/sdk/dm;->a()Lcom/paypal/android/sdk/ev;

    move-result-object v1

    invoke-static {}, Lcom/paypal/android/sdk/de;->a()Lcom/paypal/android/sdk/de;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/paypal/android/sdk/ev;->a(Lcom/paypal/android/sdk/eu;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->e:Ljava/lang/String;

    :cond_f6
    sget-object v1, Lcom/paypal/android/sdk/payments/ay;->b:[I

    invoke-virtual {v0}, Lcom/paypal/android/sdk/dm;->c()Lcom/paypal/android/sdk/do;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/do;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_120

    :cond_105
    :goto_105
    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/LoginActivity;->f()V

    :goto_108
    return-void

    :pswitch_109
    sget-object v0, Lcom/paypal/android/sdk/payments/bg;->a:Lcom/paypal/android/sdk/payments/bg;

    invoke-direct {p0, v0}, Lcom/paypal/android/sdk/payments/LoginActivity;->b(Lcom/paypal/android/sdk/payments/bg;)V

    goto :goto_105

    :pswitch_10f
    sget-object v0, Lcom/paypal/android/sdk/payments/bg;->b:Lcom/paypal/android/sdk/payments/bg;

    invoke-direct {p0, v0}, Lcom/paypal/android/sdk/payments/LoginActivity;->b(Lcom/paypal/android/sdk/payments/bg;)V

    goto :goto_105

    :cond_115
    sget-object v0, Lcom/paypal/android/sdk/payments/bg;->a:Lcom/paypal/android/sdk/payments/bg;

    invoke-direct {p0, v0}, Lcom/paypal/android/sdk/payments/LoginActivity;->b(Lcom/paypal/android/sdk/payments/bg;)V

    goto :goto_105

    :cond_11b
    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/LoginActivity;->e()V

    goto :goto_108

    nop

    :pswitch_data_120
    .packed-switch 0x1
        :pswitch_109
        :pswitch_10f
    .end packed-switch
.end method

.method public final onBackPressed()V
    .registers 4

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->r:Lcom/paypal/android/sdk/payments/PayPalService;

    sget-object v1, Lcom/paypal/android/sdk/fc;->p:Lcom/paypal/android/sdk/fc;

    iget-boolean v2, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->l:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/fc;Ljava/lang/Boolean;)V

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .registers 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".onCreate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.paypal.android.sdk.payments.requestedScopes"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->j:Ljava/lang/String;

    invoke-static {p0}, Lcom/paypal/android/sdk/payments/d;->b(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->s:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v3}, Lcom/paypal/android/sdk/payments/LoginActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->q:Z

    const v0, 0x103006e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    new-instance v0, Lcom/paypal/android/sdk/gd;

    invoke-direct {v0, p0}, Lcom/paypal/android/sdk/gd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->a:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/paypal/android/sdk/payments/LoginActivity;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->f:Landroid/widget/TextView;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aO:Lcom/paypal/android/sdk/fw;

    invoke-static {v1}, Lcom/paypal/android/sdk/fu;->a(Lcom/paypal/android/sdk/fw;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->g:Landroid/widget/TextView;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aj:Lcom/paypal/android/sdk/fw;

    invoke-static {v1}, Lcom/paypal/android/sdk/fu;->a(Lcom/paypal/android/sdk/fw;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->i:Landroid/widget/TextView;

    sget-object v1, Lcom/paypal/android/sdk/fw;->ap:Lcom/paypal/android/sdk/fw;

    invoke-static {v1}, Lcom/paypal/android/sdk/fu;->a(Lcom/paypal/android/sdk/fw;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->i:Landroid/widget/TextView;

    sget-object v1, Lcom/paypal/android/sdk/fw;->ap:Lcom/paypal/android/sdk/fw;

    invoke-static {v1}, Lcom/paypal/android/sdk/fu;->a(Lcom/paypal/android/sdk/fw;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->k:Landroid/widget/TextView;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aU:Lcom/paypal/android/sdk/fw;

    invoke-static {v1}, Lcom/paypal/android/sdk/fu;->a(Lcom/paypal/android/sdk/fw;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->l:Landroid/widget/EditText;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aW:Lcom/paypal/android/sdk/fw;

    invoke-static {v1}, Lcom/paypal/android/sdk/fu;->a(Lcom/paypal/android/sdk/fw;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->n:Landroid/widget/TextView;

    sget-object v1, Lcom/paypal/android/sdk/fw;->ap:Lcom/paypal/android/sdk/fw;

    invoke-static {v1}, Lcom/paypal/android/sdk/fu;->a(Lcom/paypal/android/sdk/fw;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->o:Lcom/paypal/android/sdk/gi;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aX:Lcom/paypal/android/sdk/fw;

    invoke-static {v1}, Lcom/paypal/android/sdk/fu;->a(Lcom/paypal/android/sdk/fw;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/gi;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/paypal/android/sdk/payments/aj;

    invoke-direct {v0, p0}, Lcom/paypal/android/sdk/payments/aj;-><init>(Lcom/paypal/android/sdk/payments/LoginActivity;)V

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v1, v1, Lcom/paypal/android/sdk/gd;->b:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v1, v1, Lcom/paypal/android/sdk/gd;->d:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->h:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/paypal/android/sdk/payments/aw;

    invoke-direct {v1, p0}, Lcom/paypal/android/sdk/payments/aw;-><init>(Lcom/paypal/android/sdk/payments/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->g:Landroid/widget/TextView;

    new-instance v1, Lcom/paypal/android/sdk/payments/az;

    invoke-direct {v1, p0}, Lcom/paypal/android/sdk/payments/az;-><init>(Lcom/paypal/android/sdk/payments/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->j:Landroid/widget/TextView;

    new-instance v1, Lcom/paypal/android/sdk/payments/ba;

    invoke-direct {v1, p0}, Lcom/paypal/android/sdk/payments/ba;-><init>(Lcom/paypal/android/sdk/payments/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->f:Landroid/widget/TextView;

    new-instance v1, Lcom/paypal/android/sdk/payments/bb;

    invoke-direct {v1, p0}, Lcom/paypal/android/sdk/payments/bb;-><init>(Lcom/paypal/android/sdk/payments/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->o:Lcom/paypal/android/sdk/gi;

    iget-object v0, v0, Lcom/paypal/android/sdk/gi;->c:Landroid/widget/Button;

    new-instance v1, Lcom/paypal/android/sdk/payments/bc;

    invoke-direct {v1, p0}, Lcom/paypal/android/sdk/payments/bc;-><init>(Lcom/paypal/android/sdk/payments/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->l:Landroid/widget/EditText;

    new-instance v1, Lcom/paypal/android/sdk/payments/bd;

    invoke-direct {v1, p0}, Lcom/paypal/android/sdk/payments/bd;-><init>(Lcom/paypal/android/sdk/payments/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->m:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/paypal/android/sdk/payments/be;

    invoke-direct {v1, p0}, Lcom/paypal/android/sdk/payments/be;-><init>(Lcom/paypal/android/sdk/payments/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez p1, :cond_131

    iput-boolean v2, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->k:Z

    iput-boolean v3, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->m:Z

    :goto_127
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->p:Lcom/paypal/android/sdk/gd;

    iget-object v0, v0, Lcom/paypal/android/sdk/gd;->l:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_131
    iput-boolean v2, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->m:Z

    const-string v0, "PP_PageTrackingSent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->k:Z

    const-string v0, "PP_LoginType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/payments/bg;

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->b:Lcom/paypal/android/sdk/payments/bg;

    const-string v0, "PP_SavedEmail"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->c:Ljava/lang/String;

    const-string v0, "PP_SavedPhone"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->e:Ljava/lang/String;

    const-string v0, "PP_savedPhoneCountryCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->f:Ljava/lang/String;

    const-string v0, "PP_SavedPassword"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->d:Ljava/lang/String;

    const-string v0, "PP_SavedPIN"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->g:Ljava/lang/String;

    const-string v0, "PP_IsReturningUser"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->l:Z

    const-string v0, "PP_IsClearedLogin"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->n:Z

    const-string v0, "PP_RequestedScopes"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->j:Ljava/lang/String;

    const-string v0, "PP_SavedOTP"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->h:Ljava/lang/String;

    const-string v0, "PP_OriginalLoginData"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/ep;

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->i:Lcom/paypal/android/sdk/ep;

    const-string v0, "PP_TwoFaSelectedPhoneNumberIndex"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->o:I

    goto :goto_127
.end method

.method protected final onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 5

    sparse-switch p1, :sswitch_data_60

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :sswitch_5
    sget-object v0, Lcom/paypal/android/sdk/fw;->bn:Lcom/paypal/android/sdk/fw;

    new-instance v1, Lcom/paypal/android/sdk/payments/ar;

    invoke-direct {v1, p0}, Lcom/paypal/android/sdk/payments/ar;-><init>(Lcom/paypal/android/sdk/payments/LoginActivity;)V

    invoke-static {p0, v0, p2, v1}, Lcom/paypal/android/sdk/payments/d;->a(Landroid/app/Activity;Lcom/paypal/android/sdk/fw;Landroid/os/Bundle;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_4

    :sswitch_11
    sget-object v0, Lcom/paypal/android/sdk/fw;->bh:Lcom/paypal/android/sdk/fw;

    new-instance v1, Lcom/paypal/android/sdk/payments/as;

    invoke-direct {v1, p0}, Lcom/paypal/android/sdk/payments/as;-><init>(Lcom/paypal/android/sdk/payments/LoginActivity;)V

    invoke-static {p0, v0, p2, v1}, Lcom/paypal/android/sdk/payments/d;->a(Landroid/app/Activity;Lcom/paypal/android/sdk/fw;Landroid/os/Bundle;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_4

    :sswitch_1d
    sget-object v0, Lcom/paypal/android/sdk/fw;->bn:Lcom/paypal/android/sdk/fw;

    new-instance v1, Lcom/paypal/android/sdk/payments/at;

    invoke-direct {v1, p0}, Lcom/paypal/android/sdk/payments/at;-><init>(Lcom/paypal/android/sdk/payments/LoginActivity;)V

    invoke-static {p0, v0, p2, v1}, Lcom/paypal/android/sdk/payments/d;->a(Landroid/app/Activity;Lcom/paypal/android/sdk/fw;Landroid/os/Bundle;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_4

    :sswitch_29
    sget-object v0, Lcom/paypal/android/sdk/fw;->bn:Lcom/paypal/android/sdk/fw;

    new-instance v1, Lcom/paypal/android/sdk/payments/au;

    invoke-direct {v1, p0}, Lcom/paypal/android/sdk/payments/au;-><init>(Lcom/paypal/android/sdk/payments/LoginActivity;)V

    invoke-static {p0, v0, p2, v1}, Lcom/paypal/android/sdk/payments/d;->a(Landroid/app/Activity;Lcom/paypal/android/sdk/fw;Landroid/os/Bundle;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_4

    :sswitch_35
    sget-object v0, Lcom/paypal/android/sdk/fw;->aM:Lcom/paypal/android/sdk/fw;

    new-instance v1, Lcom/paypal/android/sdk/payments/av;

    invoke-direct {v1, p0}, Lcom/paypal/android/sdk/payments/av;-><init>(Lcom/paypal/android/sdk/payments/LoginActivity;)V

    invoke-static {p0, v0, p2, v1}, Lcom/paypal/android/sdk/payments/d;->a(Landroid/app/Activity;Lcom/paypal/android/sdk/fw;Landroid/os/Bundle;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_4

    :sswitch_41
    sget-object v0, Lcom/paypal/android/sdk/fw;->bn:Lcom/paypal/android/sdk/fw;

    new-instance v1, Lcom/paypal/android/sdk/payments/ax;

    invoke-direct {v1, p0}, Lcom/paypal/android/sdk/payments/ax;-><init>(Lcom/paypal/android/sdk/payments/LoginActivity;)V

    invoke-static {p0, v0, p2, v1}, Lcom/paypal/android/sdk/payments/d;->a(Landroid/app/Activity;Lcom/paypal/android/sdk/fw;Landroid/os/Bundle;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_4

    :sswitch_4d
    sget-object v0, Lcom/paypal/android/sdk/fw;->c:Lcom/paypal/android/sdk/fw;

    sget-object v1, Lcom/paypal/android/sdk/fw;->bq:Lcom/paypal/android/sdk/fw;

    invoke-static {p0, v0, v1}, Lcom/paypal/android/sdk/payments/d;->a(Landroid/content/Context;Lcom/paypal/android/sdk/fw;Lcom/paypal/android/sdk/fw;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_4

    :sswitch_56
    sget-object v0, Lcom/paypal/android/sdk/fw;->aV:Lcom/paypal/android/sdk/fw;

    sget-object v1, Lcom/paypal/android/sdk/fw;->bq:Lcom/paypal/android/sdk/fw;

    invoke-static {p0, v0, v1}, Lcom/paypal/android/sdk/payments/d;->a(Landroid/content/Context;Lcom/paypal/android/sdk/fw;Lcom/paypal/android/sdk/fw;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_4

    nop

    :sswitch_data_60
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_11
        0x3 -> :sswitch_1d
        0x4 -> :sswitch_29
        0x5 -> :sswitch_35
        0xa -> :sswitch_41
        0x14 -> :sswitch_4d
        0x15 -> :sswitch_56
    .end sparse-switch
.end method

.method protected final onDestroy()V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".onDestroy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->r:Lcom/paypal/android/sdk/payments/PayPalService;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->r:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->n()V

    :cond_1f
    iget-boolean v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->q:Z

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->s:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/paypal/android/sdk/payments/LoginActivity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->q:Z

    :cond_2b
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected final onResume()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".onResume"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->r:Lcom/paypal/android/sdk/payments/PayPalService;

    if-eqz v0, :cond_20

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/LoginActivity;->f()V

    :cond_20
    return-void
.end method

.method protected final onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/LoginActivity;->g()V

    const-string v0, "PP_LoginType"

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->b:Lcom/paypal/android/sdk/payments/bg;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "PP_SavedEmail"

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PP_SavedPhone"

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PP_savedPhoneCountryCode"

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PP_SavedPassword"

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PP_SavedPIN"

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PP_IsReturningUser"

    iget-boolean v1, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->l:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "PP_PageTrackingSent"

    iget-boolean v1, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->k:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "PP_IsClearedLogin"

    iget-boolean v1, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->n:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "PP_RequestedScopes"

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PP_SavedOTP"

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PP_OriginalLoginData"

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->i:Lcom/paypal/android/sdk/ep;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "PP_TwoFaSelectedPhoneNumberIndex"

    iget v1, p0, Lcom/paypal/android/sdk/payments/LoginActivity;->o:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
