.class public final Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;
.super Landroid/app/Activity;


# static fields
.field public static final EXTRA_REQUESTED_SCOPES:Ljava/lang/String; = "com.paypal.android.sdk.requested_scopes"

.field public static final EXTRA_RESULT_AUTHORIZATION:Ljava/lang/String; = "com.paypal.android.sdk.authorization"

.field public static final RESULT_EXTRAS_INVALID:I = 0x2

.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/Date;

.field private c:Ljava/util/Timer;

.field private d:Lcom/paypal/android/sdk/payments/PayPalService;

.field private final e:Landroid/content/ServiceConnection;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/paypal/android/sdk/payments/bu;

    invoke-direct {v0, p0}, Lcom/paypal/android/sdk/payments/bu;-><init>(Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;->e:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic a(Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/PayPalService;
    .registers 2

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;->d:Lcom/paypal/android/sdk/payments/PayPalService;

    return-object p1
.end method

.method static synthetic a(Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;)Lcom/paypal/android/sdk/payments/ce;
    .registers 2

    new-instance v0, Lcom/paypal/android/sdk/payments/bv;

    invoke-direct {v0, p0}, Lcom/paypal/android/sdk/payments/bv;-><init>(Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;)V

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;Ljava/util/Date;)Ljava/util/Date;
    .registers 2

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;->b:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic a(Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;Ljava/util/Timer;)Ljava/util/Timer;
    .registers 2

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;->c:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic b(Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;)Lcom/paypal/android/sdk/payments/PayPalService;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;->d:Lcom/paypal/android/sdk/payments/PayPalService;

    return-object v0
.end method

.method static synthetic c(Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;)V
    .registers 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;->d:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/PayPalService;->d()Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/paypal/android/sdk/payments/ProfileSharingConsentActivity;->a(Landroid/app/Activity;ILcom/paypal/android/sdk/payments/PayPalConfiguration;)V

    return-void
.end method

.method static synthetic d(Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;)Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;->b:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic e(Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;)Ljava/util/Timer;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;->c:Ljava/util/Timer;

    return-object v0
.end method


# virtual methods
.method public final finish()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".finish"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method protected final onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".onActivityResult"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    if-ne p1, v0, :cond_39

    packed-switch p2, :pswitch_data_68

    sget-object v0, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected request code "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " call it a cancel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    :goto_39
    :pswitch_39
    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;->finish()V

    return-void

    :pswitch_3d
    if-eqz p3, :cond_60

    const-string v0, "com.paypal.android.sdk.authorization"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/payments/PayPalAuthorization;

    if-eqz v0, :cond_58

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.paypal.android.sdk.authorization"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_39

    :cond_58
    sget-object v0, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;->a:Ljava/lang/String;

    const-string v1, "result was OK, have data, but no authorization state in bundle, oops"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    :cond_60
    sget-object v0, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;->a:Ljava/lang/String;

    const-string v1, "result was OK, no intent data, oops"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    :pswitch_data_68
    .packed-switch -0x1
        :pswitch_3d
        :pswitch_39
    .end packed-switch
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .registers 7

    const/4 v4, 0x1

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

    new-instance v0, Lcom/paypal/android/sdk/gs;

    invoke-direct {v0, p0}, Lcom/paypal/android/sdk/gs;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/paypal/android/sdk/gs;->a()V

    new-instance v0, Lcom/paypal/android/sdk/gr;

    invoke-direct {v0, p0}, Lcom/paypal/android/sdk/gr;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/paypal/android/sdk/gr;->a()V

    new-instance v0, Lcom/paypal/android/sdk/gq;

    invoke-direct {v0, p0}, Lcom/paypal/android/sdk/gq;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-class v3, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-class v2, Lcom/paypal/android/sdk/payments/LoginActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-class v3, Lcom/paypal/android/sdk/payments/FuturePaymentInfoActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Lcom/paypal/android/sdk/payments/ProfileSharingConsentActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/gq;->a(Ljava/util/Collection;)V

    invoke-static {p0}, Lcom/paypal/android/sdk/payments/d;->b(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;->e:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v4}, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;->f:Z

    const v0, 0x103006e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    new-instance v0, Lcom/paypal/android/sdk/gn;

    invoke-direct {v0, p0}, Lcom/paypal/android/sdk/gn;-><init>(Landroid/content/Context;)V

    iget-object v1, v0, Lcom/paypal/android/sdk/gn;->a:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;->setContentView(Landroid/view/View;)V

    iget-object v0, v0, Lcom/paypal/android/sdk/gn;->b:Landroid/widget/TextView;

    sget-object v1, Lcom/paypal/android/sdk/fw;->y:Lcom/paypal/android/sdk/fw;

    invoke-static {v1}, Lcom/paypal/android/sdk/fu;->a(Lcom/paypal/android/sdk/fw;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    sget-object v1, Lcom/paypal/android/sdk/fw;->y:Lcom/paypal/android/sdk/fw;

    invoke-static {p0, v0, v1}, Lcom/paypal/android/sdk/payments/d;->a(Landroid/app/Activity;Landroid/widget/TextView;Lcom/paypal/android/sdk/fw;)V

    return-void
.end method

.method protected final onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 4

    packed-switch p1, :pswitch_data_1c

    sget-object v0, Lcom/paypal/android/sdk/fw;->bc:Lcom/paypal/android/sdk/fw;

    invoke-static {p0, v0, p2, p1}, Lcom/paypal/android/sdk/payments/d;->a(Landroid/app/Activity;Lcom/paypal/android/sdk/fw;Landroid/os/Bundle;I)Landroid/app/Dialog;

    move-result-object v0

    :goto_9
    return-object v0

    :pswitch_a
    new-instance v0, Lcom/paypal/android/sdk/payments/bt;

    invoke-direct {v0, p0}, Lcom/paypal/android/sdk/payments/bt;-><init>(Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;)V

    invoke-static {p0, v0}, Lcom/paypal/android/sdk/payments/d;->a(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_9

    :pswitch_14
    sget-object v0, Lcom/paypal/android/sdk/fw;->be:Lcom/paypal/android/sdk/fw;

    invoke-static {p0, v0, p2, p1}, Lcom/paypal/android/sdk/payments/d;->a(Landroid/app/Activity;Lcom/paypal/android/sdk/fw;Landroid/os/Bundle;I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_9

    nop

    :pswitch_data_1c
    .packed-switch 0x2
        :pswitch_a
        :pswitch_14
    .end packed-switch
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

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;->d:Lcom/paypal/android/sdk/payments/PayPalService;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;->d:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->o()V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;->d:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->u()V

    :cond_24
    iget-boolean v0, p0, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;->f:Z

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;->e:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;->f:Z

    :cond_30
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
