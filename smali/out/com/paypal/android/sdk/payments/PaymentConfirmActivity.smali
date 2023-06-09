.class public final Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;
.super Landroid/app/Activity;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/paypal/android/sdk/payments/dg;

.field private c:Lcom/paypal/android/sdk/payments/dx;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Lcom/paypal/android/sdk/ge;

.field private h:Lcom/paypal/android/sdk/payments/cp;

.field private i:Lcom/paypal/android/sdk/payments/dh;

.field private j:Landroid/os/Parcelable;

.field private k:Lcom/paypal/android/sdk/payments/PayPalService;

.field private final l:Landroid/content/ServiceConnection;

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/paypal/android/sdk/payments/cw;

    invoke-direct {v0, p0}, Lcom/paypal/android/sdk/payments/cw;-><init>(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->l:Landroid/content/ServiceConnection;

    return-void
.end method

.method private static a(Lcom/paypal/android/sdk/payments/PayPalPayment;)Lcom/paypal/android/sdk/er;
    .registers 4

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalPayment;->a()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalPayment;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/paypal/android/sdk/ek;->a(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/paypal/android/sdk/er;

    new-instance v2, Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalPayment;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/paypal/android/sdk/er;-><init>(Ljava/math/BigDecimal;Ljava/lang/String;)V

    return-object v1
.end method

.method static synthetic a(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/PayPalService;
    .registers 2

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->k:Lcom/paypal/android/sdk/payments/PayPalService;

    return-object p1
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(I)V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method static a(Landroid/app/Activity;ILcom/paypal/android/sdk/payments/dh;Landroid/os/Parcelable;Lcom/paypal/android/sdk/payments/PayPalConfiguration;)V
    .registers 11

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->a(Landroid/app/Activity;ILcom/paypal/android/sdk/payments/dh;Landroid/os/Parcelable;Lcom/paypal/android/sdk/payments/PayPalConfiguration;Z)V

    return-void
.end method

.method static a(Landroid/app/Activity;ILcom/paypal/android/sdk/payments/dh;Landroid/os/Parcelable;Lcom/paypal/android/sdk/payments/PayPalConfiguration;Z)V
    .registers 8

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    const-string v1, "com.paypal.android.sdk.payments.PaymentConfirmActivity.EXTRA_PAYMENT_KIND"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "com.paypal.android.sdk.payments.PaymentConfirmActivity.EXTRA_CREDIT_CARD"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "com.paypal.android.sdk.payments.PaymentConfirmActivity.EXTRA_RESET_PP_REQUEST_ID"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "com.paypal.android.sdk.paypalConfiguration"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .registers 14

    const/4 v11, 0x1

    const/4 v6, 0x0

    const-string v0, "authAccount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "authtoken"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "scope"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "valid_until"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_3e

    const-string v8, "%s:null"

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v0, v9, v6

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_22

    :cond_3e
    const-string v9, "%s:%s (%s)"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v0, v10, v6

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v11

    const/4 v0, 0x2

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v10, v0

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_22

    :cond_5a
    new-instance v1, Lcom/paypal/android/sdk/dw;

    invoke-direct/range {v1 .. v6}, Lcom/paypal/android/sdk/dw;-><init>(Ljava/lang/String;Ljava/lang/String;JZ)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->k:Lcom/paypal/android/sdk/payments/PayPalService;

    if-nez v0, :cond_6b

    new-instance v0, Lcom/paypal/android/sdk/payments/dg;

    invoke-direct {v0, p0, v7, v1}, Lcom/paypal/android/sdk/payments/dg;-><init>(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;Ljava/lang/String;Lcom/paypal/android/sdk/dw;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->b:Lcom/paypal/android/sdk/payments/dg;

    :goto_6a
    return-void

    :cond_6b
    invoke-direct {p0, v7, v1}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->a(Ljava/lang/String;Lcom/paypal/android/sdk/dw;)V

    goto :goto_6a
.end method

.method static synthetic a(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->g()V

    return-void
.end method

.method static synthetic a(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;Lcom/paypal/android/sdk/fg;)V
    .registers 5

    new-instance v0, Lcom/paypal/android/sdk/payments/dx;

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->h:Lcom/paypal/android/sdk/payments/cp;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/cp;->a()Lcom/paypal/android/sdk/payments/PayPalPayment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/PayPalPayment;->getProvidedShippingAddress()Lcom/paypal/android/sdk/payments/ShippingAddress;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/paypal/android/sdk/payments/dx;-><init>(Lcom/paypal/android/sdk/fg;Lcom/paypal/android/sdk/payments/ShippingAddress;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->c:Lcom/paypal/android/sdk/payments/dx;

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.paypal.android.sdk.payments.PaymentConfirmActivity.EXTRA_PAYMENT_INFO"

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->c:Lcom/paypal/android/sdk/payments/dx;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->b()V

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->j()V

    return-void
.end method

.method static synthetic a(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;Ljava/util/List;I)V
    .registers 5

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->h:Lcom/paypal/android/sdk/payments/cp;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/cp;->b()Lcom/paypal/android/sdk/payments/dx;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/paypal/android/sdk/payments/dx;->a(I)V

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->g:Lcom/paypal/android/sdk/ge;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/fz;

    invoke-virtual {v1, p0, v0}, Lcom/paypal/android/sdk/ge;->a(Landroid/content/Context;Lcom/paypal/android/sdk/fz;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->g:Lcom/paypal/android/sdk/ge;

    invoke-virtual {v0, p1}, Lcom/paypal/android/sdk/ge;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/paypal/android/sdk/dw;)V
    .registers 5

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->k:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/dg;

    move-result-object v0

    iput-object p1, v0, Lcom/paypal/android/sdk/dg;->c:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->k:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/dg;

    move-result-object v0

    iput-object p2, v0, Lcom/paypal/android/sdk/dg;->g:Lcom/paypal/android/sdk/dw;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->i:Lcom/paypal/android/sdk/payments/dh;

    sget-object v1, Lcom/paypal/android/sdk/payments/dh;->a:Lcom/paypal/android/sdk/payments/dh;

    if-eq v0, v1, :cond_1f

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->g:Lcom/paypal/android/sdk/ge;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/ge;->b(Z)V

    :cond_1f
    return-void
.end method

.method private a(Z)V
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".doLogin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->k:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {p0, v0}, Lcom/paypal/android/sdk/payments/k;->a(Landroid/content/Context;Lcom/paypal/android/sdk/payments/PayPalService;)Z

    move-result v0

    if-eqz v0, :cond_94

    if-eqz p1, :cond_91

    sget-object v0, Lcom/paypal/android/sdk/dr;->b:Lcom/paypal/android/sdk/dr;

    :goto_1c
    new-instance v1, Lcom/paypal/android/sdk/dq;

    invoke-direct {v1}, Lcom/paypal/android/sdk/dq;-><init>()V

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->k:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/payments/PayPalService;->d()Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->k()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/paypal/android/sdk/ds;->a:Lcom/paypal/android/sdk/ds;

    iget-object v4, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->k:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v4}, Lcom/paypal/android/sdk/payments/PayPalService;->b()Lcom/paypal/android/sdk/br;

    move-result-object v4

    invoke-virtual {v4}, Lcom/paypal/android/sdk/br;->d()Lcom/paypal/android/sdk/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/paypal/android/sdk/a;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/paypal/android/sdk/dq;->a(Ljava/lang/String;Lcom/paypal/android/sdk/dr;Lcom/paypal/android/sdk/ds;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "scope"

    const-string v2, "https://uri.paypal.com/services/payments/basic"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startActivityForResult("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", 2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "paypal.sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "requesting "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "response_type"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with scope={"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "scope"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "} from Authenticator."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_90
    return-void

    :cond_91
    sget-object v0, Lcom/paypal/android/sdk/dr;->a:Lcom/paypal/android/sdk/dr;

    goto :goto_1c

    :cond_94
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->k:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->q()Lcom/paypal/android/sdk/dm;

    move-result-object v2

    const/4 v3, 0x0

    const-string v5, "https://uri.paypal.com/services/payments/basic"

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->k:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->d()Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    move-result-object v6

    move-object v0, p0

    move v4, p1

    invoke-static/range {v0 .. v6}, Lcom/paypal/android/sdk/payments/LoginActivity;->a(Landroid/app/Activity;ILcom/paypal/android/sdk/dm;ZZLjava/lang/String;Lcom/paypal/android/sdk/payments/PayPalConfiguration;)V

    goto :goto_90
.end method

.method static synthetic a(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;Z)Z
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->f:Z

    return v0
.end method

.method private static b(Lcom/paypal/android/sdk/payments/PayPalPayment;)Ljava/util/Map;
    .registers 7

    if-eqz p0, :cond_65

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalPayment;->f()Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;

    move-result-object v1

    if-eqz v1, :cond_5e

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;->getShipping()Ljava/math/BigDecimal;

    move-result-object v2

    if-eqz v2, :cond_28

    const-string v2, "shipping"

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;->getShipping()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalPayment;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v5, v3}, Lcom/paypal/android/sdk/ek;->a(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_28
    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;->getSubtotal()Ljava/math/BigDecimal;

    move-result-object v2

    if-eqz v2, :cond_43

    const-string v2, "subtotal"

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;->getSubtotal()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalPayment;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v5, v3}, Lcom/paypal/android/sdk/ek;->a(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_43
    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;->getTax()Ljava/math/BigDecimal;

    move-result-object v2

    if-eqz v2, :cond_5e

    const-string v2, "tax"

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;->getTax()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalPayment;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v5, v1}, Lcom/paypal/android/sdk/ek;->a(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5e
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_65

    :goto_64
    return-object v0

    :cond_65
    const/4 v0, 0x0

    goto :goto_64
.end method

.method private b()V
    .registers 9

    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->c:Lcom/paypal/android/sdk/payments/dx;

    if-eqz v0, :cond_d8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->c:Lcom/paypal/android/sdk/payments/dx;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/dx;->b()Lcom/paypal/android/sdk/payments/ShippingAddress;

    move-result-object v1

    if-eqz v1, :cond_1b

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->c:Lcom/paypal/android/sdk/payments/dx;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/dx;->b()Lcom/paypal/android/sdk/payments/ShippingAddress;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/ShippingAddress;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    :cond_1b
    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->c:Lcom/paypal/android/sdk/payments/dx;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/dx;->h()I

    move-result v1

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->c:Lcom/paypal/android/sdk/payments/dx;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/payments/dx;->a()Lorg/json/JSONArray;

    move-result-object v2

    iget-object v3, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->c:Lcom/paypal/android/sdk/payments/dx;

    invoke-virtual {v3}, Lcom/paypal/android/sdk/payments/dx;->i()I

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/paypal/android/sdk/gl;->a(Lorg/json/JSONObject;Lorg/json/JSONArray;I)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->h:Lcom/paypal/android/sdk/payments/cp;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/cp;->a()Lcom/paypal/android/sdk/payments/PayPalPayment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalPayment;->isNoShipping()Z

    move-result v0

    if-nez v0, :cond_d9

    if-eqz v2, :cond_d9

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_d9

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->g:Lcom/paypal/android/sdk/ge;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/ge;->f()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->g:Lcom/paypal/android/sdk/ge;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/ge;->f()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setClickable(Z)V

    iget-object v3, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->g:Lcom/paypal/android/sdk/ge;

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/gl;

    invoke-virtual {v3, v4, v0}, Lcom/paypal/android/sdk/ge;->a(Landroid/content/Context;Lcom/paypal/android/sdk/gl;)V

    new-instance v0, Lcom/paypal/android/sdk/gm;

    invoke-direct {v0, p0, v2, v1}, Lcom/paypal/android/sdk/gm;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    new-instance v1, Landroid/widget/ListView;

    invoke-direct {v1, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->g:Lcom/paypal/android/sdk/ge;

    new-instance v3, Lcom/paypal/android/sdk/payments/da;

    invoke-direct {v3, p0, v0, v2}, Lcom/paypal/android/sdk/payments/da;-><init>(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;Lcom/paypal/android/sdk/gm;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v3}, Lcom/paypal/android/sdk/ge;->d(Landroid/view/View$OnClickListener;)V

    :goto_7d
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->c:Lcom/paypal/android/sdk/payments/dx;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/dx;->g()I

    move-result v1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->c:Lcom/paypal/android/sdk/payments/dx;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/dx;->c()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->c:Lcom/paypal/android/sdk/payments/dx;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/payments/dx;->d()Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/paypal/android/sdk/fz;->a(Lorg/json/JSONObject;Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_ec

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_ec

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->g:Lcom/paypal/android/sdk/ge;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/ge;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->g:Lcom/paypal/android/sdk/ge;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/ge;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setClickable(Z)V

    iget-object v3, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->g:Lcom/paypal/android/sdk/ge;

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/fz;

    invoke-virtual {v3, v4, v0}, Lcom/paypal/android/sdk/ge;->a(Landroid/content/Context;Lcom/paypal/android/sdk/fz;)V

    new-instance v0, Lcom/paypal/android/sdk/ga;

    invoke-direct {v0, p0, v2, v1}, Lcom/paypal/android/sdk/ga;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    new-instance v1, Landroid/widget/ListView;

    invoke-direct {v1, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->g:Lcom/paypal/android/sdk/ge;

    new-instance v3, Lcom/paypal/android/sdk/payments/cy;

    invoke-direct {v3, p0, v0, v2}, Lcom/paypal/android/sdk/payments/cy;-><init>(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;Lcom/paypal/android/sdk/ga;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v3}, Lcom/paypal/android/sdk/ge;->c(Landroid/view/View$OnClickListener;)V

    :goto_d3
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->g:Lcom/paypal/android/sdk/ge;

    invoke-virtual {v0, v6}, Lcom/paypal/android/sdk/ge;->b(Z)V

    :cond_d8
    return-void

    :cond_d9
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->g:Lcom/paypal/android/sdk/ge;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/ge;->f()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->g:Lcom/paypal/android/sdk/ge;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/ge;->f()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7d

    :cond_ec
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->g:Lcom/paypal/android/sdk/ge;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/ge;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->g:Lcom/paypal/android/sdk/ge;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/ge;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_d3
.end method

.method static synthetic b(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;)V
    .registers 4

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".postBindSetup()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->i:Lcom/paypal/android/sdk/payments/dh;

    sget-object v1, Lcom/paypal/android/sdk/payments/dh;->a:Lcom/paypal/android/sdk/payments/dh;

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/dh;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_88

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->k:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->d()Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/paypal/android/sdk/d;->b(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->g:Lcom/paypal/android/sdk/ge;

    invoke-virtual {v1, v0}, Lcom/paypal/android/sdk/ge;->a(Landroid/text/SpannableString;)V

    :goto_2e
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->b:Lcom/paypal/android/sdk/payments/dg;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->b:Lcom/paypal/android/sdk/payments/dg;

    iget-object v0, v0, Lcom/paypal/android/sdk/payments/dg;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->b:Lcom/paypal/android/sdk/payments/dg;

    iget-object v1, v1, Lcom/paypal/android/sdk/payments/dg;->b:Lcom/paypal/android/sdk/dw;

    invoke-direct {p0, v0, v1}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->a(Ljava/lang/String;Lcom/paypal/android/sdk/dw;)V

    iput-object v2, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->b:Lcom/paypal/android/sdk/payments/dg;

    :cond_3f
    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.paypal.android.sdk.payments.PaymentConfirmActivity.EXTRA_RESET_PP_REQUEST_ID"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->k:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/dg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/dg;->a()V

    :cond_55
    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->e()Z

    move-result v0

    iget-boolean v1, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->d:Z

    if-nez v1, :cond_67

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->d:Z

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->k:Lcom/paypal/android/sdk/payments/PayPalService;

    sget-object v2, Lcom/paypal/android/sdk/fc;->g:Lcom/paypal/android/sdk/fc;

    invoke-virtual {v1, v2}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/fc;)V

    :cond_67
    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->f()V

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->k:Lcom/paypal/android/sdk/payments/PayPalService;

    new-instance v2, Lcom/paypal/android/sdk/payments/dc;

    invoke-direct {v2, p0}, Lcom/paypal/android/sdk/payments/dc;-><init>(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;)V

    invoke-virtual {v1, v2}, Lcom/paypal/android/sdk/payments/PayPalService;->b(Lcom/paypal/android/sdk/payments/cc;)V

    sget-object v1, Lcom/paypal/android/sdk/payments/dh;->a:Lcom/paypal/android/sdk/payments/dh;

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->i:Lcom/paypal/android/sdk/payments/dh;

    if-ne v1, v2, :cond_87

    if-nez v0, :cond_87

    iget-boolean v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->f:Z

    if-nez v0, :cond_87

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->c:Lcom/paypal/android/sdk/payments/dx;

    if-nez v0, :cond_87

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->i()V

    :cond_87
    return-void

    :cond_88
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->g:Lcom/paypal/android/sdk/ge;

    invoke-virtual {v0, v2}, Lcom/paypal/android/sdk/ge;->a(Landroid/text/SpannableString;)V

    goto :goto_2e
.end method

.method static synthetic b(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;Ljava/util/List;I)V
    .registers 5

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->h:Lcom/paypal/android/sdk/payments/cp;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/cp;->b()Lcom/paypal/android/sdk/payments/dx;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/paypal/android/sdk/payments/dx;->b(I)V

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->g:Lcom/paypal/android/sdk/ge;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/gl;

    invoke-virtual {v1, p0, v0}, Lcom/paypal/android/sdk/ge;->a(Landroid/content/Context;Lcom/paypal/android/sdk/gl;)V

    return-void
.end method

.method static synthetic b(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;Z)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->a(Z)V

    return-void
.end method

.method static synthetic c(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;)Lcom/paypal/android/sdk/payments/PayPalService;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->k:Lcom/paypal/android/sdk/payments/PayPalService;

    return-object v0
.end method

.method private c()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->k:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/dg;

    move-result-object v0

    iget-object v0, v0, Lcom/paypal/android/sdk/dg;->g:Lcom/paypal/android/sdk/dw;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->k:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/dg;

    move-result-object v0

    iget-object v0, v0, Lcom/paypal/android/sdk/dg;->g:Lcom/paypal/android/sdk/dw;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/dw;->a()Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->k:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/dg;

    move-result-object v0

    iput-object v1, v0, Lcom/paypal/android/sdk/dg;->g:Lcom/paypal/android/sdk/dw;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->k:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/dg;

    move-result-object v0

    iput-object v1, v0, Lcom/paypal/android/sdk/dg;->c:Ljava/lang/String;

    :cond_29
    return-void
.end method

.method static synthetic d(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;)Lcom/paypal/android/sdk/payments/cp;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->h:Lcom/paypal/android/sdk/payments/cp;

    return-object v0
.end method

.method private d()V
    .registers 4

    invoke-static {p0}, Lcom/paypal/android/sdk/payments/d;->b(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->l:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->m:Z

    return-void
.end method

.method static synthetic e(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->c()V

    return-void
.end method

.method private e()Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->i:Lcom/paypal/android/sdk/payments/dh;

    sget-object v3, Lcom/paypal/android/sdk/payments/dh;->a:Lcom/paypal/android/sdk/payments/dh;

    invoke-virtual {v2, v3}, Lcom/paypal/android/sdk/payments/dh;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->k:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/payments/PayPalService;->j()Z

    move-result v2

    if-nez v2, :cond_1e

    iget-boolean v2, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->e:Z

    if-nez v2, :cond_1e

    iput-boolean v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->e:Z

    invoke-direct {p0, v1}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->a(Z)V

    :goto_1d
    return v0

    :cond_1e
    move v0, v1

    goto :goto_1d
.end method

.method private f()V
    .registers 10

    const/4 v8, 0x0

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->h:Lcom/paypal/android/sdk/payments/cp;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/cp;->a()Lcom/paypal/android/sdk/payments/PayPalPayment;

    move-result-object v6

    invoke-static {}, Lcom/paypal/android/sdk/de;->a()Lcom/paypal/android/sdk/de;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v1}, Lcom/paypal/android/sdk/de;->c()Lcom/paypal/android/sdk/ei;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/sdk/ei;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lcom/paypal/android/sdk/payments/PayPalPayment;->a()Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v6}, Lcom/paypal/android/sdk/payments/PayPalPayment;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/paypal/android/sdk/ek;->a(Ljava/util/Locale;Ljava/lang/String;DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->g:Lcom/paypal/android/sdk/ge;

    invoke-virtual {v6}, Lcom/paypal/android/sdk/payments/PayPalPayment;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/paypal/android/sdk/ge;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->i:Lcom/paypal/android/sdk/payments/dh;

    sget-object v1, Lcom/paypal/android/sdk/payments/dh;->a:Lcom/paypal/android/sdk/payments/dh;

    if-ne v0, v1, :cond_55

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->g:Lcom/paypal/android/sdk/ge;

    invoke-virtual {v0, v5}, Lcom/paypal/android/sdk/ge;->a(Z)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->k:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->r()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->a(Ljava/lang/String;)V

    :goto_45
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->g:Lcom/paypal/android/sdk/ge;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/ge;->d()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->k:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/PayPalService;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/payments/d;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void

    :cond_55
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->i:Lcom/paypal/android/sdk/payments/dh;

    sget-object v1, Lcom/paypal/android/sdk/payments/dh;->b:Lcom/paypal/android/sdk/payments/dh;

    if-eq v0, v1, :cond_61

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->i:Lcom/paypal/android/sdk/payments/dh;

    sget-object v1, Lcom/paypal/android/sdk/payments/dh;->c:Lcom/paypal/android/sdk/payments/dh;

    if-ne v0, v1, :cond_c6

    :cond_61
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->g:Lcom/paypal/android/sdk/ge;

    invoke-virtual {v0, v8}, Lcom/paypal/android/sdk/ge;->a(Z)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->i:Lcom/paypal/android/sdk/payments/dh;

    sget-object v1, Lcom/paypal/android/sdk/payments/dh;->b:Lcom/paypal/android/sdk/payments/dh;

    if-ne v0, v1, :cond_af

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->j:Landroid/os/Parcelable;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/d;->a(Landroid/os/Parcelable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/paypal/android/sdk/dt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->j:Landroid/os/Parcelable;

    const-string v1, "expiryMonth"

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/payments/d;->b(Landroid/os/Parcelable;Ljava/lang/String;)I

    move-result v1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->j:Landroid/os/Parcelable;

    const-string v2, "expiryYear"

    invoke-static {v0, v2}, Lcom/paypal/android/sdk/payments/d;->b(Landroid/os/Parcelable;Ljava/lang/String;)I

    move-result v2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->j:Landroid/os/Parcelable;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/d;->b(Landroid/os/Parcelable;)Ljava/lang/Enum;

    move-result-object v0

    :goto_8c
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string v6, "%02d / %04d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v5

    invoke-static {v4, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->g:Lcom/paypal/android/sdk/ge;

    invoke-static {p0, v0}, Lcom/paypal/android/sdk/payments/d;->a(Landroid/app/Activity;Ljava/lang/Enum;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v2, v3, v0, v1}, Lcom/paypal/android/sdk/ge;->a(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_45

    :cond_af
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->k:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->s()Lcom/paypal/android/sdk/dt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/dt;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/paypal/android/sdk/dt;->f()I

    move-result v1

    invoke-virtual {v0}, Lcom/paypal/android/sdk/dt;->g()I

    move-result v2

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/d;->a(Lcom/paypal/android/sdk/dt;)Ljava/lang/Enum;

    move-result-object v0

    goto :goto_8c

    :cond_c6
    sget-object v0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown payment type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->i:Lcom/paypal/android/sdk/payments/dh;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/payments/dh;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "The payment is not a valid type. Please try again."

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Lcom/paypal/android/sdk/payments/d;->a(Landroid/app/Activity;Ljava/lang/String;I)V

    goto/16 :goto_45
.end method

.method static synthetic f(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->j()V

    return-void
.end method

.method static synthetic g(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;)Lcom/paypal/android/sdk/payments/dh;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->i:Lcom/paypal/android/sdk/payments/dh;

    return-object v0
.end method

.method private g()V
    .registers 28

    sget-object v1, Lcom/paypal/android/sdk/payments/cu;->a:[I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->i:Lcom/paypal/android/sdk/payments/dh;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/payments/dh;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_19e

    :cond_f
    const/4 v1, 0x1

    :goto_10
    if-nez v1, :cond_4f

    :goto_12
    return-void

    :pswitch_13
    invoke-direct/range {p0 .. p0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->e()Z

    move-result v1

    if-nez v1, :cond_1b

    const/4 v1, 0x1

    goto :goto_10

    :cond_1b
    const/4 v1, 0x0

    goto :goto_10

    :pswitch_1d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->k:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/PayPalService;->i()Z

    move-result v1

    if-nez v1, :cond_f

    const/4 v1, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->showDialog(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "token is expired, get new one. AccessToken: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->k:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/dg;

    move-result-object v2

    iget-object v2, v2, Lcom/paypal/android/sdk/dg;->b:Lcom/paypal/android/sdk/dw;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->k:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-direct/range {p0 .. p0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->h()Lcom/paypal/android/sdk/payments/ce;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/payments/ce;Z)V

    const/4 v1, 0x0

    goto :goto_10

    :cond_4f
    const/4 v1, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->showDialog(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->h:Lcom/paypal/android/sdk/payments/cp;

    if-eqz v1, :cond_77

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->h:Lcom/paypal/android/sdk/payments/cp;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/cp;->a()Lcom/paypal/android/sdk/payments/PayPalPayment;

    move-result-object v1

    if-eqz v1, :cond_77

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->i:Lcom/paypal/android/sdk/payments/dh;

    sget-object v2, Lcom/paypal/android/sdk/payments/dh;->a:Lcom/paypal/android/sdk/payments/dh;

    if-ne v1, v2, :cond_7b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->h:Lcom/paypal/android/sdk/payments/cp;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/cp;->b()Lcom/paypal/android/sdk/payments/dx;

    move-result-object v1

    if-nez v1, :cond_7b

    :cond_77
    invoke-virtual/range {p0 .. p0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->onBackPressed()V

    goto :goto_12

    :cond_7b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->h:Lcom/paypal/android/sdk/payments/cp;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/cp;->a()Lcom/paypal/android/sdk/payments/PayPalPayment;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->a(Lcom/paypal/android/sdk/payments/PayPalPayment;)Lcom/paypal/android/sdk/er;

    move-result-object v6

    invoke-static/range {v17 .. v17}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->b(Lcom/paypal/android/sdk/payments/PayPalPayment;)Ljava/util/Map;

    move-result-object v7

    invoke-virtual/range {v17 .. v17}, Lcom/paypal/android/sdk/payments/PayPalPayment;->b()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->k:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/PayPalService;->d()Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->j()Z

    move-result v2

    sget-object v1, Lcom/paypal/android/sdk/payments/cu;->a:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->i:Lcom/paypal/android/sdk/payments/dh;

    invoke-virtual {v3}, Lcom/paypal/android/sdk/payments/dh;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_1a8

    goto/16 :goto_12

    :pswitch_ac
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->h:Lcom/paypal/android/sdk/payments/cp;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/cp;->b()Lcom/paypal/android/sdk/payments/dx;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->k:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v6}, Lcom/paypal/android/sdk/payments/dx;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lcom/paypal/android/sdk/payments/dx;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lcom/paypal/android/sdk/payments/dx;->k()Z

    move-result v5

    if-eqz v5, :cond_dd

    invoke-virtual {v6}, Lcom/paypal/android/sdk/payments/dx;->m()Lorg/json/JSONObject;

    move-result-object v5

    :goto_ca
    invoke-virtual {v6}, Lcom/paypal/android/sdk/payments/dx;->j()Z

    move-result v7

    if-eqz v7, :cond_df

    invoke-virtual {v6}, Lcom/paypal/android/sdk/payments/dx;->l()Lorg/json/JSONObject;

    move-result-object v6

    :goto_d4
    invoke-virtual/range {v17 .. v17}, Lcom/paypal/android/sdk/payments/PayPalPayment;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v1 .. v7}, Lcom/paypal/android/sdk/payments/PayPalService;->a(ZLjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto/16 :goto_12

    :cond_dd
    const/4 v5, 0x0

    goto :goto_ca

    :cond_df
    const/4 v6, 0x0

    goto :goto_d4

    :pswitch_e1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->k:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/PayPalService;->s()Lcom/paypal/android/sdk/dt;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->k:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/dt;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->k:Lcom/paypal/android/sdk/payments/PayPalService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->k:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v4}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/dg;

    move-result-object v4

    invoke-virtual {v4}, Lcom/paypal/android/sdk/dg;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/paypal/android/sdk/dt;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Lcom/paypal/android/sdk/payments/PayPalPayment;->g()[Lcom/paypal/android/sdk/payments/PayPalItem;

    move-result-object v8

    invoke-virtual/range {v17 .. v17}, Lcom/paypal/android/sdk/payments/PayPalPayment;->e()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {v17 .. v17}, Lcom/paypal/android/sdk/payments/PayPalPayment;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {v17 .. v17}, Lcom/paypal/android/sdk/payments/PayPalPayment;->h()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {v17 .. v17}, Lcom/paypal/android/sdk/payments/PayPalPayment;->i()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {v17 .. v17}, Lcom/paypal/android/sdk/payments/PayPalPayment;->j()Ljava/lang/String;

    move-result-object v16

    move v10, v2

    invoke-virtual/range {v3 .. v16}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Ljava/lang/String;Ljava/lang/String;Lcom/paypal/android/sdk/er;Ljava/util/Map;[Lcom/paypal/android/sdk/payments/PayPalItem;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12

    :pswitch_12b
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->k:Lcom/paypal/android/sdk/payments/PayPalService;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->k:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/dg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/sdk/dg;->b()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->j:Landroid/os/Parcelable;

    invoke-static {v1}, Lcom/paypal/android/sdk/payments/d;->b(Landroid/os/Parcelable;)Ljava/lang/Enum;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->j:Landroid/os/Parcelable;

    const-string v3, "cardNumber"

    invoke-static {v1, v3}, Lcom/paypal/android/sdk/payments/d;->a(Landroid/os/Parcelable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->j:Landroid/os/Parcelable;

    const-string v3, "cvv"

    invoke-static {v1, v3}, Lcom/paypal/android/sdk/payments/d;->a(Landroid/os/Parcelable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->j:Landroid/os/Parcelable;

    const-string v3, "expiryMonth"

    invoke-static {v1, v3}, Lcom/paypal/android/sdk/payments/d;->b(Landroid/os/Parcelable;Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->j:Landroid/os/Parcelable;

    const-string v3, "expiryYear"

    invoke-static {v1, v3}, Lcom/paypal/android/sdk/payments/d;->b(Landroid/os/Parcelable;Ljava/lang/String;)I

    move-result v16

    invoke-virtual/range {v17 .. v17}, Lcom/paypal/android/sdk/payments/PayPalPayment;->g()[Lcom/paypal/android/sdk/payments/PayPalItem;

    move-result-object v19

    invoke-virtual/range {v17 .. v17}, Lcom/paypal/android/sdk/payments/PayPalPayment;->e()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v17 .. v17}, Lcom/paypal/android/sdk/payments/PayPalPayment;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v17 .. v17}, Lcom/paypal/android/sdk/payments/PayPalPayment;->h()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v17 .. v17}, Lcom/paypal/android/sdk/payments/PayPalPayment;->i()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v17 .. v17}, Lcom/paypal/android/sdk/payments/PayPalPayment;->j()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move-object/from16 v20, v9

    move/from16 v21, v2

    invoke-virtual/range {v10 .. v26}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/paypal/android/sdk/er;Ljava/util/Map;[Lcom/paypal/android/sdk/payments/PayPalItem;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12

    :pswitch_data_19e
    .packed-switch 0x1
        :pswitch_13
        :pswitch_1d
        :pswitch_1d
    .end packed-switch

    :pswitch_data_1a8
    .packed-switch 0x1
        :pswitch_ac
        :pswitch_e1
        :pswitch_12b
    .end packed-switch
.end method

.method private h()Lcom/paypal/android/sdk/payments/ce;
    .registers 2

    new-instance v0, Lcom/paypal/android/sdk/payments/ct;

    invoke-direct {v0, p0}, Lcom/paypal/android/sdk/payments/ct;-><init>(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;)V

    return-object v0
.end method

.method static synthetic h(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;)Lcom/paypal/android/sdk/payments/ce;
    .registers 2

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->h()Lcom/paypal/android/sdk/payments/ce;

    move-result-object v0

    return-object v0
.end method

.method static synthetic i(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;)Lcom/paypal/android/sdk/ge;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->g:Lcom/paypal/android/sdk/ge;

    return-object v0
.end method

.method private i()V
    .registers 14

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->k:Lcom/paypal/android/sdk/payments/PayPalService;

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->k:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/dg;

    move-result-object v0

    iget-object v0, v0, Lcom/paypal/android/sdk/dg;->g:Lcom/paypal/android/sdk/dw;

    if-eqz v0, :cond_63

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->showDialog(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->h:Lcom/paypal/android/sdk/payments/cp;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/cp;->a()Lcom/paypal/android/sdk/payments/PayPalPayment;

    move-result-object v12

    invoke-static {v12}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->a(Lcom/paypal/android/sdk/payments/PayPalPayment;)Lcom/paypal/android/sdk/er;

    move-result-object v1

    invoke-static {v12}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->b(Lcom/paypal/android/sdk/payments/PayPalPayment;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v12}, Lcom/paypal/android/sdk/payments/PayPalPayment;->b()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->k:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->d()Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->j()Z

    move-result v5

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->k:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v12}, Lcom/paypal/android/sdk/payments/PayPalPayment;->g()[Lcom/paypal/android/sdk/payments/PayPalItem;

    move-result-object v3

    invoke-virtual {v12}, Lcom/paypal/android/sdk/payments/PayPalPayment;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12}, Lcom/paypal/android/sdk/payments/PayPalPayment;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12}, Lcom/paypal/android/sdk/payments/PayPalPayment;->isEnablePayPalShippingAddressesRetrieval()Z

    move-result v8

    invoke-virtual {v12}, Lcom/paypal/android/sdk/payments/PayPalPayment;->h()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12}, Lcom/paypal/android/sdk/payments/PayPalPayment;->i()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12}, Lcom/paypal/android/sdk/payments/PayPalPayment;->j()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12}, Lcom/paypal/android/sdk/payments/PayPalPayment;->isNoShipping()Z

    move-result v12

    invoke-virtual/range {v0 .. v12}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/er;Ljava/util/Map;[Lcom/paypal/android/sdk/payments/PayPalItem;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->f:Z

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->k:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->r()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->a(Ljava/lang/String;)V

    :cond_63
    return-void
.end method

.method private j()V
    .registers 2

    const/4 v0, 0x2

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->dismissDialog(I)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_4} :catch_5

    :goto_4
    return-void

    :catch_5
    move-exception v0

    goto :goto_4
.end method

.method static synthetic j(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->i()V

    return-void
.end method

.method static synthetic k(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->g()V

    return-void
.end method


# virtual methods
.method public final finish()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".finish"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method protected final onActivityResult(IILandroid/content/Intent;)V
    .registers 8

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".onActivityResult(requestCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resultCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    packed-switch p1, :pswitch_data_88

    sget-object v0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unhandled requestCode "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4a
    :goto_4a
    return-void

    :pswitch_4b
    iput-boolean v2, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->e:Z

    if-ne p2, v3, :cond_60

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->g:Lcom/paypal/android/sdk/ge;

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->g:Lcom/paypal/android/sdk/ge;

    invoke-virtual {v0, v2}, Lcom/paypal/android/sdk/ge;->b(Z)V

    :cond_58
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->k:Lcom/paypal/android/sdk/payments/PayPalService;

    if-eqz v0, :cond_4a

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->i()V

    goto :goto_4a

    :cond_60
    invoke-direct {p0, p2}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->a(I)V

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->finish()V

    goto :goto_4a

    :pswitch_67
    iput-boolean v2, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->e:Z

    if-ne p2, v3, :cond_80

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->g:Lcom/paypal/android/sdk/ge;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/ge;->b(Z)V

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->a(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->k:Lcom/paypal/android/sdk/payments/PayPalService;

    if-eqz v0, :cond_4a

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->i()V

    goto :goto_4a

    :cond_80
    invoke-direct {p0, p2}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->a(I)V

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->finish()V

    goto :goto_4a

    nop

    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_4b
        :pswitch_67
    .end packed-switch
.end method

.method public final onBackPressed()V
    .registers 3

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->k:Lcom/paypal/android/sdk/payments/PayPalService;

    sget-object v1, Lcom/paypal/android/sdk/fc;->i:Lcom/paypal/android/sdk/fc;

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/fc;)V

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->c()V

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .registers 6

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".onCreate"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->d()V

    if-nez p1, :cond_32

    invoke-static {p0}, Lcom/paypal/android/sdk/payments/d;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_22

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->finish()V

    :cond_22
    iput-boolean v1, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->d:Z

    :goto_24
    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_4b

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->onBackPressed()V

    :cond_31
    :goto_31
    return-void

    :cond_32
    const-string v0, "pageTrackingSent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->d:Z

    const-string v0, "isLoginActivityInProgress"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->e:Z

    const-string v0, "isSFOPaymentRequestInProgress"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->f:Z

    goto :goto_24

    :cond_4b
    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "com.paypal.android.sdk.payments.PaymentConfirmActivity.EXTRA_PAYMENT_KIND"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/payments/dh;

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->i:Lcom/paypal/android/sdk/payments/dh;

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "com.paypal.android.sdk.payments.PaymentConfirmActivity.EXTRA_CREDIT_CARD"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->j:Landroid/os/Parcelable;

    new-instance v0, Lcom/paypal/android/sdk/payments/cp;

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/paypal/android/sdk/payments/cp;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->h:Lcom/paypal/android/sdk/payments/cp;

    const v0, 0x103006e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    new-instance v2, Lcom/paypal/android/sdk/ge;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->i:Lcom/paypal/android/sdk/payments/dh;

    sget-object v3, Lcom/paypal/android/sdk/payments/dh;->a:Lcom/paypal/android/sdk/payments/dh;

    if-ne v0, v3, :cond_ca

    const/4 v0, 0x1

    :goto_84
    invoke-direct {v2, p0, v0}, Lcom/paypal/android/sdk/ge;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->g:Lcom/paypal/android/sdk/ge;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->g:Lcom/paypal/android/sdk/ge;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/ge;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->g:Lcom/paypal/android/sdk/ge;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/ge;->b()Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Lcom/paypal/android/sdk/fw;->A:Lcom/paypal/android/sdk/fw;

    invoke-static {p0, v0, v1}, Lcom/paypal/android/sdk/payments/d;->a(Landroid/app/Activity;Landroid/widget/TextView;Lcom/paypal/android/sdk/fw;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->g:Lcom/paypal/android/sdk/ge;

    new-instance v1, Lcom/paypal/android/sdk/payments/cq;

    invoke-direct {v1, p0}, Lcom/paypal/android/sdk/payments/cq;-><init>(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;)V

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/ge;->b(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->g:Lcom/paypal/android/sdk/ge;

    new-instance v1, Lcom/paypal/android/sdk/payments/cv;

    invoke-direct {v1, p0}, Lcom/paypal/android/sdk/payments/cv;-><init>(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;)V

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/ge;->a(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/paypal/android/sdk/payments/dh;->a:Lcom/paypal/android/sdk/payments/dh;

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->i:Lcom/paypal/android/sdk/payments/dh;

    if-ne v0, v1, :cond_31

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.paypal.android.sdk.payments.PaymentConfirmActivity.EXTRA_PAYMENT_INFO"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/payments/dx;

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->c:Lcom/paypal/android/sdk/payments/dx;

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->b()V

    goto/16 :goto_31

    :cond_ca
    move v0, v1

    goto :goto_84
.end method

.method protected final onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 11

    const v7, 0x1080027

    packed-switch p1, :pswitch_data_c4

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :pswitch_8
    sget-object v0, Lcom/paypal/android/sdk/fw;->br:Lcom/paypal/android/sdk/fw;

    invoke-static {p0, v0, p2}, Lcom/paypal/android/sdk/payments/d;->a(Landroid/app/Activity;Lcom/paypal/android/sdk/fw;Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_7

    :pswitch_f
    sget-object v0, Lcom/paypal/android/sdk/fw;->aE:Lcom/paypal/android/sdk/fw;

    sget-object v1, Lcom/paypal/android/sdk/fw;->bq:Lcom/paypal/android/sdk/fw;

    invoke-static {p0, v0, v1}, Lcom/paypal/android/sdk/payments/d;->a(Landroid/content/Context;Lcom/paypal/android/sdk/fw;Lcom/paypal/android/sdk/fw;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_7

    :pswitch_18
    sget-object v0, Lcom/paypal/android/sdk/fw;->an:Lcom/paypal/android/sdk/fw;

    invoke-static {p0, v0, p2, p1}, Lcom/paypal/android/sdk/payments/d;->a(Landroid/app/Activity;Lcom/paypal/android/sdk/fw;Landroid/os/Bundle;I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_7

    :pswitch_1f
    sget-object v0, Lcom/paypal/android/sdk/fw;->aM:Lcom/paypal/android/sdk/fw;

    new-instance v1, Lcom/paypal/android/sdk/payments/dd;

    invoke-direct {v1, p0}, Lcom/paypal/android/sdk/payments/dd;-><init>(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;)V

    invoke-static {p0, v0, p2, v1}, Lcom/paypal/android/sdk/payments/d;->a(Landroid/app/Activity;Lcom/paypal/android/sdk/fw;Landroid/os/Bundle;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_7

    :pswitch_2b
    sget-object v0, Lcom/paypal/android/sdk/fw;->bf:Lcom/paypal/android/sdk/fw;

    invoke-static {v0}, Lcom/paypal/android/sdk/fu;->a(Lcom/paypal/android/sdk/fw;)Ljava/lang/String;

    if-eqz p2, :cond_82

    const-string v0, "BUNDLE_ERROR_CODE"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/paypal/android/sdk/d;->d(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_82

    const-string v0, "BUNDLE_ERROR_CODE"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/paypal/android/sdk/fw;->bh:Lcom/paypal/android/sdk/fw;

    invoke-static {v0}, Lcom/paypal/android/sdk/fu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/paypal/android/sdk/fw;->aR:Lcom/paypal/android/sdk/fw;

    sget-object v3, Lcom/paypal/android/sdk/fw;->f:Lcom/paypal/android/sdk/fw;

    new-instance v4, Lcom/paypal/android/sdk/payments/de;

    invoke-direct {v4, p0}, Lcom/paypal/android/sdk/payments/de;-><init>(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;)V

    new-instance v5, Lcom/paypal/android/sdk/payments/df;

    invoke-direct {v5, p0}, Lcom/paypal/android/sdk/payments/df;-><init>(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;)V

    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-static {v1}, Lcom/paypal/android/sdk/fu;->a(Lcom/paypal/android/sdk/fw;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-static {v2}, Lcom/paypal/android/sdk/fu;->a(Lcom/paypal/android/sdk/fw;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-static {v3}, Lcom/paypal/android/sdk/fu;->a(Lcom/paypal/android/sdk/fw;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_7

    :cond_82
    sget-object v0, Lcom/paypal/android/sdk/fw;->bh:Lcom/paypal/android/sdk/fw;

    sget-object v1, Lcom/paypal/android/sdk/fw;->bf:Lcom/paypal/android/sdk/fw;

    sget-object v2, Lcom/paypal/android/sdk/fw;->aR:Lcom/paypal/android/sdk/fw;

    sget-object v3, Lcom/paypal/android/sdk/fw;->f:Lcom/paypal/android/sdk/fw;

    new-instance v4, Lcom/paypal/android/sdk/payments/cr;

    invoke-direct {v4, p0}, Lcom/paypal/android/sdk/payments/cr;-><init>(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;)V

    new-instance v5, Lcom/paypal/android/sdk/payments/cs;

    invoke-direct {v5, p0}, Lcom/paypal/android/sdk/payments/cs;-><init>(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;)V

    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-static {v0}, Lcom/paypal/android/sdk/fu;->a(Lcom/paypal/android/sdk/fw;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-static {v1}, Lcom/paypal/android/sdk/fu;->a(Lcom/paypal/android/sdk/fw;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-static {v2}, Lcom/paypal/android/sdk/fu;->a(Lcom/paypal/android/sdk/fw;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-static {v3}, Lcom/paypal/android/sdk/fu;->a(Lcom/paypal/android/sdk/fw;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_7

    nop

    :pswitch_data_c4
    .packed-switch 0x1
        :pswitch_8
        :pswitch_f
        :pswitch_18
        :pswitch_1f
        :pswitch_2b
    .end packed-switch
.end method

.method protected final onDestroy()V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".onDestroy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->k:Lcom/paypal/android/sdk/payments/PayPalService;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->k:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->m()V

    :cond_19
    iget-boolean v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->m:Z

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->l:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->m:Z

    :cond_25
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected final onRestart()V
    .registers 1

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->d()V

    return-void
.end method

.method protected final onResume()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".onResume"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->k:Lcom/paypal/android/sdk/payments/PayPalService;

    if-eqz v0, :cond_1a

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->f()V

    :cond_1a
    return-void
.end method

.method protected final onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "pageTrackingSent"

    iget-boolean v1, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->d:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "isLoginActivityInProgress"

    iget-boolean v1, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->e:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "isSFOPaymentRequestInProgress"

    iget-boolean v1, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->f:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".onWindowFocusChanged"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->g:Lcom/paypal/android/sdk/ge;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/ge;->c()V

    return-void
.end method
