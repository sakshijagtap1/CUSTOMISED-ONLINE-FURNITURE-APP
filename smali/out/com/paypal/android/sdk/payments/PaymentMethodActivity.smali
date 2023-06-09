.class public final Lcom/paypal/android/sdk/payments/PaymentMethodActivity;
.super Landroid/app/Activity;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/Timer;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Lcom/paypal/android/sdk/gf;

.field private h:Lcom/paypal/android/sdk/payments/cp;

.field private i:Lcom/paypal/android/sdk/payments/PayPalService;

.field private final j:Landroid/content/ServiceConnection;

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/paypal/android/sdk/payments/dq;

    invoke-direct {v0, p0}, Lcom/paypal/android/sdk/payments/dq;-><init>(Lcom/paypal/android/sdk/payments/PaymentMethodActivity;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->j:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic a(Lcom/paypal/android/sdk/payments/PaymentMethodActivity;Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/PayPalService;
    .registers 2

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->i:Lcom/paypal/android/sdk/payments/PayPalService;

    return-object p1
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static a(Landroid/app/Activity;ILcom/paypal/android/sdk/payments/PayPalConfiguration;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    const-string v1, "com.paypal.android.sdk.paypalConfiguration"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic a(Lcom/paypal/android/sdk/payments/PaymentMethodActivity;)V
    .registers 7

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->i:Lcom/paypal/android/sdk/payments/PayPalService;

    sget-object v1, Lcom/paypal/android/sdk/fc;->e:Lcom/paypal/android/sdk/fc;

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/fc;)V

    const/4 v1, 0x2

    sget-object v2, Lcom/paypal/android/sdk/payments/dh;->a:Lcom/paypal/android/sdk/payments/dh;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->i:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->d()Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    move-result-object v4

    const/4 v5, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->a(Landroid/app/Activity;ILcom/paypal/android/sdk/payments/dh;Landroid/os/Parcelable;Lcom/paypal/android/sdk/payments/PayPalConfiguration;Z)V

    return-void
.end method

.method static synthetic a(Lcom/paypal/android/sdk/payments/PaymentMethodActivity;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->e:Z

    return p1
.end method

.method private b()V
    .registers 3

    iget-boolean v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->e:Z

    if-eqz v0, :cond_2a

    iget-boolean v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->d:Z

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->g:Lcom/paypal/android/sdk/gf;

    iget-object v0, v0, Lcom/paypal/android/sdk/gf;->m:Landroid/widget/ImageView;

    const-string v1, "iVBORw0KGgoAAAANSUhEUgAAADcAAAAsCAYAAADByiAeAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAohJREFUeNrcWYGRgjAQJMwXQAl0IFbwWMFrBS8VvHYAFagVoBVIB2IFaAV8B08H/GUm/GA+CUouBL2ZTByEwCZ3m70LcRCsrusQutDBswranhBSOTYNgC1rM1ZA82yD+6nN2Urn21xNYAF0Jmf33Ro45DhDH9+1ObN3mMe84yVXTusd7ojjTds7iIzeoZtAU7mE1/E/5p536fj/yvbFb+VmDK2sn9c27b2RcKuVOs9vdJVnVN0QBsyHrjAQQ9RNMmhn5j5tC1g8zQ0A3AK4dbNqKbJ7nJjevIeYKN3HBpSOjy2h6DjznuxLQR4xpZvbYj4MX5+CO2S9aJvGCCEL+LnGEgBv2EEsWRXqIj4HJpeA3ML9FRq5IbhioEiHCsVz6V9s/H9WlwdiDHArSfycHpicpWSM0ia4UvJRRY+xlsiJcKwrnBPBtbSnLEt594b427O9cvisgL2cr6XobMobwbWdDXAitvvUTW8E5JTbAHcWXMOQUiHnHRcb4CrBXoYhBiYSjTooOH5GfSRB4I8BnI/xAV0eoTNxaOCUWfBjdh0DOFFsZAjgMkGtZnBCCTH3pIb2BewY2gDn8bkbU/q5xpgJ5t6pK7++BNcWHdUqmUV8GsQUj72irGD1KNvNHgQY8VJOIccGz+c8ybhxR9pyVOSCsW4+11S/asOZeMCIwWvdnyvuxygzJhgrh3pYiHiYqZ3P8XXI4t6SniTJ3WAWhjHBNUripKqNKNyQFoVXmB+DFXOqWDyw/tLEGItBCv6DpUkmTouSBlyJqOrHYlHjlocXA0Y9JGvAbSWpxrPajoaAy6mKVwBIDyHjG7ZkanyqKXxtu+IacEQ3bCmgZt8gixlhZdEBzK8AAwBIvuGtI5K/kgAAAABJRU5ErkJggg=="

    invoke-static {v1, p0}, Lcom/paypal/android/sdk/cz;->c(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->g:Lcom/paypal/android/sdk/gf;

    iget-object v0, v0, Lcom/paypal/android/sdk/gf;->m:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->g:Lcom/paypal/android/sdk/gf;

    iget-object v0, v0, Lcom/paypal/android/sdk/gf;->m:Landroid/widget/ImageView;

    sget-object v1, Lcom/paypal/android/sdk/fw;->bs:Lcom/paypal/android/sdk/fw;

    invoke-static {v1}, Lcom/paypal/android/sdk/fu;->a(Lcom/paypal/android/sdk/fw;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2a
    return-void
.end method

.method static synthetic b(Lcom/paypal/android/sdk/payments/PaymentMethodActivity;)V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->showDialog(I)V

    return-void
.end method

.method private c()V
    .registers 10

    const/4 v5, 0x1

    const/4 v8, 0x0

    const/16 v7, 0x8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".refreshPayment"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->i:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {p0, v0}, Lcom/paypal/android/sdk/payments/k;->a(Landroid/content/Context;Lcom/paypal/android/sdk/payments/PayPalService;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->i:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->h()V

    :cond_21
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->h:Lcom/paypal/android/sdk/payments/cp;

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

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->g:Lcom/paypal/android/sdk/gf;

    iget-object v1, v1, Lcom/paypal/android/sdk/gf;->c:Lcom/paypal/android/sdk/gk;

    iget-object v1, v1, Lcom/paypal/android/sdk/gk;->d:Landroid/widget/TextView;

    invoke-virtual {v6}, Lcom/paypal/android/sdk/payments/PayPalPayment;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->g:Lcom/paypal/android/sdk/gf;

    iget-object v1, v1, Lcom/paypal/android/sdk/gf;->c:Lcom/paypal/android/sdk/gk;

    iget-object v1, v1, Lcom/paypal/android/sdk/gk;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->i:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->j()Z

    move-result v0

    if-eqz v0, :cond_136

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->i:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/dg;

    move-result-object v0

    iget-object v0, v0, Lcom/paypal/android/sdk/dg;->g:Lcom/paypal/android/sdk/dw;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/dw;->a()Z

    move-result v0

    if-eqz v0, :cond_136

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->i:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/paypal/android/sdk/d;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_126

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->g:Lcom/paypal/android/sdk/gf;

    iget-object v1, v1, Lcom/paypal/android/sdk/gf;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->g:Lcom/paypal/android/sdk/gf;

    iget-object v0, v0, Lcom/paypal/android/sdk/gf;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->g:Lcom/paypal/android/sdk/gf;

    iget-object v0, v0, Lcom/paypal/android/sdk/gf;->b:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    :goto_94
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->i:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->d()Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->i()Z

    move-result v0

    if-eqz v0, :cond_162

    new-instance v0, Lcom/paypal/android/sdk/payments/ds;

    invoke-direct {v0, p0, v8}, Lcom/paypal/android/sdk/payments/ds;-><init>(Lcom/paypal/android/sdk/payments/PaymentMethodActivity;B)V

    new-array v1, v8, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/ds;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->i:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->s()Lcom/paypal/android/sdk/dt;

    move-result-object v0

    if-eqz v0, :cond_146

    invoke-virtual {v0}, Lcom/paypal/android/sdk/dt;->b()Z

    move-result v1

    if-eqz v1, :cond_146

    iput-boolean v5, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->d:Z

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->g:Lcom/paypal/android/sdk/gf;

    iget-object v1, v1, Lcom/paypal/android/sdk/gf;->m:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->g:Lcom/paypal/android/sdk/gf;

    iget-object v1, v1, Lcom/paypal/android/sdk/gf;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/dt;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/d;->a(Lcom/paypal/android/sdk/dt;)Ljava/lang/Enum;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->g:Lcom/paypal/android/sdk/gf;

    iget-object v1, v1, Lcom/paypal/android/sdk/gf;->g:Landroid/widget/ImageView;

    invoke-static {p0, v0}, Lcom/paypal/android/sdk/payments/d;->a(Landroid/app/Activity;Ljava/lang/Enum;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->g:Lcom/paypal/android/sdk/gf;

    iget-object v1, v1, Lcom/paypal/android/sdk/gf;->g:Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->g:Lcom/paypal/android/sdk/gf;

    iget-object v0, v0, Lcom/paypal/android/sdk/gf;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object v0, Lcom/paypal/android/sdk/fw;->z:Lcom/paypal/android/sdk/fw;

    invoke-static {v0}, Lcom/paypal/android/sdk/fu;->a(Lcom/paypal/android/sdk/fw;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->g:Lcom/paypal/android/sdk/gf;

    iget-object v1, v1, Lcom/paypal/android/sdk/gf;->k:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->g:Lcom/paypal/android/sdk/gf;

    iget-object v0, v0, Lcom/paypal/android/sdk/gf;->k:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->g:Lcom/paypal/android/sdk/gf;

    iget-object v0, v0, Lcom/paypal/android/sdk/gf;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->g:Lcom/paypal/android/sdk/gf;

    iget-object v0, v0, Lcom/paypal/android/sdk/gf;->k:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    :goto_10f
    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->b()V

    :goto_112
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->g:Lcom/paypal/android/sdk/gf;

    iget-object v0, v0, Lcom/paypal/android/sdk/gf;->i:Lcom/paypal/android/sdk/fy;

    iget-object v0, v0, Lcom/paypal/android/sdk/fy;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->i:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/PayPalService;->d()Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/payments/d;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void

    :cond_126
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->g:Lcom/paypal/android/sdk/gf;

    iget-object v0, v0, Lcom/paypal/android/sdk/gf;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->g:Lcom/paypal/android/sdk/gf;

    iget-object v0, v0, Lcom/paypal/android/sdk/gf;->b:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_94

    :cond_136
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->g:Lcom/paypal/android/sdk/gf;

    iget-object v0, v0, Lcom/paypal/android/sdk/gf;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->g:Lcom/paypal/android/sdk/gf;

    iget-object v0, v0, Lcom/paypal/android/sdk/gf;->b:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_94

    :cond_146
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->g:Lcom/paypal/android/sdk/gf;

    iget-object v0, v0, Lcom/paypal/android/sdk/gf;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->g:Lcom/paypal/android/sdk/gf;

    iget-object v0, v0, Lcom/paypal/android/sdk/gf;->e:Landroid/widget/TextView;

    sget-object v1, Lcom/paypal/android/sdk/fw;->ax:Lcom/paypal/android/sdk/fw;

    invoke-static {v1}, Lcom/paypal/android/sdk/fu;->a(Lcom/paypal/android/sdk/fw;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->g:Lcom/paypal/android/sdk/gf;

    iget-object v0, v0, Lcom/paypal/android/sdk/gf;->k:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_10f

    :cond_162
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->g:Lcom/paypal/android/sdk/gf;

    iget-object v0, v0, Lcom/paypal/android/sdk/gf;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->g:Lcom/paypal/android/sdk/gf;

    iget-object v0, v0, Lcom/paypal/android/sdk/gf;->k:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_112
.end method

.method static synthetic c(Lcom/paypal/android/sdk/payments/PaymentMethodActivity;)V
    .registers 6

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->i:Lcom/paypal/android/sdk/payments/PayPalService;

    sget-object v1, Lcom/paypal/android/sdk/fc;->f:Lcom/paypal/android/sdk/fc;

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/fc;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->i:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->s()Lcom/paypal/android/sdk/dt;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lcom/paypal/android/sdk/dt;->b()Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x2

    sget-object v1, Lcom/paypal/android/sdk/payments/dh;->c:Lcom/paypal/android/sdk/payments/dh;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->i:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v3}, Lcom/paypal/android/sdk/payments/PayPalService;->d()Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->a(Landroid/app/Activity;ILcom/paypal/android/sdk/payments/dh;Landroid/os/Parcelable;Lcom/paypal/android/sdk/payments/PayPalConfiguration;)V

    :goto_23
    return-void

    :cond_24
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->i:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->d()Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "io.card.payment.CardIOActivity"

    invoke-static {v2}, Lcom/paypal/android/sdk/payments/d;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "io.card.payment.CardIOActivity"

    const-string v3, "EXTRA_LANGUAGE_OR_LOCALE"

    invoke-static {v2, v3}, Lcom/paypal/android/sdk/payments/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "io.card.payment.CardIOActivity"

    const-string v2, "EXTRA_REQUIRE_EXPIRY"

    invoke-static {v0, v2}, Lcom/paypal/android/sdk/payments/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "io.card.payment.CardIOActivity"

    const-string v2, "EXTRA_REQUIRE_CVV"

    invoke-static {v0, v2}, Lcom/paypal/android/sdk/payments/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "startActivityForResult("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", 1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1, v4}, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_23
.end method

.method private d()V
    .registers 4

    invoke-static {p0}, Lcom/paypal/android/sdk/payments/d;->b(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->j:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->k:Z

    return-void
.end method

.method static synthetic d(Lcom/paypal/android/sdk/payments/PaymentMethodActivity;)V
    .registers 2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->showDialog(I)V

    return-void
.end method

.method static synthetic e(Lcom/paypal/android/sdk/payments/PaymentMethodActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->e:Z

    return v0
.end method

.method static synthetic f(Lcom/paypal/android/sdk/payments/PaymentMethodActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->b()V

    return-void
.end method

.method static synthetic g(Lcom/paypal/android/sdk/payments/PaymentMethodActivity;)Lcom/paypal/android/sdk/payments/PayPalService;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->i:Lcom/paypal/android/sdk/payments/PayPalService;

    return-object v0
.end method

.method static synthetic h(Lcom/paypal/android/sdk/payments/PaymentMethodActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->c()V

    return-void
.end method

.method static synthetic i(Lcom/paypal/android/sdk/payments/PaymentMethodActivity;)V
    .registers 7

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->f:Z

    if-nez v0, :cond_e

    iput-boolean v1, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->f:Z

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->i:Lcom/paypal/android/sdk/payments/PayPalService;

    sget-object v2, Lcom/paypal/android/sdk/fc;->c:Lcom/paypal/android/sdk/fc;

    invoke-virtual {v0, v2}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/fc;)V

    :cond_e
    iget-boolean v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->c:Z

    if-nez v0, :cond_80

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->i:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->d()Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->i()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->i:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->s()Lcom/paypal/android/sdk/dt;

    move-result-object v0

    if-nez v0, :cond_80

    :cond_26
    move v0, v1

    :goto_27
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "autoAdvanceToPayPalConfirmIfLoggedIn: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->i:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {p0, v2}, Lcom/paypal/android/sdk/payments/k;->a(Landroid/content/Context;Lcom/paypal/android/sdk/payments/PayPalService;)Z

    move-result v2

    if-nez v2, :cond_7c

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->i:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/payments/PayPalService;->d()Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->i()Z

    move-result v2

    if-nez v2, :cond_49

    iget-boolean v2, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->c:Z

    if-eqz v2, :cond_61

    :cond_49
    if-eqz v0, :cond_7c

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->i:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->j()Z

    move-result v0

    if-eqz v0, :cond_7c

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->i:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/dg;

    move-result-object v0

    iget-object v0, v0, Lcom/paypal/android/sdk/dg;->g:Lcom/paypal/android/sdk/dw;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/dw;->a()Z

    move-result v0

    if-eqz v0, :cond_7c

    :cond_61
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->showDialog(I)V

    iput-boolean v1, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->c:Z

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->b:Ljava/util/Timer;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->b:Ljava/util/Timer;

    new-instance v2, Lcom/paypal/android/sdk/payments/dn;

    invoke-direct {v2, p0}, Lcom/paypal/android/sdk/payments/dn;-><init>(Lcom/paypal/android/sdk/payments/PaymentMethodActivity;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    iput-boolean v1, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->c:Z

    :cond_7c
    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->c()V

    return-void

    :cond_80
    const/4 v0, 0x0

    goto :goto_27
.end method


# virtual methods
.method protected final onActivityResult(IILandroid/content/Intent;)V
    .registers 10

    const/4 v5, 0x1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".onActivityResult (requestCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resultCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    packed-switch p1, :pswitch_data_7e

    :cond_2b
    :goto_2b
    return-void

    :pswitch_2c
    if-eqz p3, :cond_2b

    const-string v0, "io.card.payment.CardIOActivity"

    const-string v1, "EXTRA_SCAN_RESULT"

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/payments/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const-string v0, "io.card.payment.CardIOActivity"

    const-string v1, "EXTRA_SCAN_RESULT"

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/payments/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    const/4 v1, 0x2

    sget-object v2, Lcom/paypal/android/sdk/payments/dh;->b:Lcom/paypal/android/sdk/payments/dh;

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "com.paypal.android.sdk.paypalConfiguration"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->a(Landroid/app/Activity;ILcom/paypal/android/sdk/payments/dh;Landroid/os/Parcelable;Lcom/paypal/android/sdk/payments/PayPalConfiguration;Z)V

    goto :goto_2b

    :pswitch_5c
    const/4 v0, -0x1

    if-ne p2, v0, :cond_78

    const-string v0, "com.paypal.android.sdk.paymentConfirmation"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/payments/PaymentConfirmation;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.paypal.android.sdk.paymentConfirmation"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, p2, v1}, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->finish()V

    goto :goto_2b

    :cond_78
    if-nez p2, :cond_2b

    iput-boolean v5, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->c:Z

    goto :goto_2b

    nop

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_5c
    .end packed-switch
.end method

.method public final onBackPressed()V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".onBackPressed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->i:Lcom/paypal/android/sdk/payments/PayPalService;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->i:Lcom/paypal/android/sdk/payments/PayPalService;

    sget-object v1, Lcom/paypal/android/sdk/fc;->d:Lcom/paypal/android/sdk/fc;

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/fc;)V

    :cond_1b
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->b:Ljava/util/Timer;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->b:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_24
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".onCreate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x103006e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->d()V

    new-instance v0, Lcom/paypal/android/sdk/gf;

    invoke-direct {v0, p0}, Lcom/paypal/android/sdk/gf;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->g:Lcom/paypal/android/sdk/gf;

    new-instance v0, Lcom/paypal/android/sdk/payments/cp;

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/paypal/android/sdk/payments/cp;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->h:Lcom/paypal/android/sdk/payments/cp;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->g:Lcom/paypal/android/sdk/gf;

    iget-object v0, v0, Lcom/paypal/android/sdk/gf;->a:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->g:Lcom/paypal/android/sdk/gf;

    iget-object v0, v0, Lcom/paypal/android/sdk/gf;->l:Landroid/widget/TextView;

    sget-object v1, Lcom/paypal/android/sdk/fw;->bi:Lcom/paypal/android/sdk/fw;

    invoke-static {p0, v0, v1}, Lcom/paypal/android/sdk/payments/d;->a(Landroid/app/Activity;Landroid/widget/TextView;Lcom/paypal/android/sdk/fw;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->g:Lcom/paypal/android/sdk/gf;

    iget-object v0, v0, Lcom/paypal/android/sdk/gf;->f:Landroid/widget/TextView;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aw:Lcom/paypal/android/sdk/fw;

    invoke-static {v1}, Lcom/paypal/android/sdk/fu;->a(Lcom/paypal/android/sdk/fw;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->g:Lcom/paypal/android/sdk/gf;

    iget-object v0, v0, Lcom/paypal/android/sdk/gf;->b:Landroid/widget/Button;

    sget-object v1, Lcom/paypal/android/sdk/fw;->ar:Lcom/paypal/android/sdk/fw;

    invoke-static {v1}, Lcom/paypal/android/sdk/fu;->a(Lcom/paypal/android/sdk/fw;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->g:Lcom/paypal/android/sdk/gf;

    iget-object v0, v0, Lcom/paypal/android/sdk/gf;->j:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/paypal/android/sdk/payments/dj;

    invoke-direct {v1, p0}, Lcom/paypal/android/sdk/payments/dj;-><init>(Lcom/paypal/android/sdk/payments/PaymentMethodActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->g:Lcom/paypal/android/sdk/gf;

    iget-object v0, v0, Lcom/paypal/android/sdk/gf;->b:Landroid/widget/Button;

    new-instance v1, Lcom/paypal/android/sdk/payments/dk;

    invoke-direct {v1, p0}, Lcom/paypal/android/sdk/payments/dk;-><init>(Lcom/paypal/android/sdk/payments/PaymentMethodActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->g:Lcom/paypal/android/sdk/gf;

    iget-object v0, v0, Lcom/paypal/android/sdk/gf;->h:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/paypal/android/sdk/payments/dl;

    invoke-direct {v1, p0}, Lcom/paypal/android/sdk/payments/dl;-><init>(Lcom/paypal/android/sdk/payments/PaymentMethodActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->g:Lcom/paypal/android/sdk/gf;

    iget-object v0, v0, Lcom/paypal/android/sdk/gf;->k:Landroid/widget/Button;

    new-instance v1, Lcom/paypal/android/sdk/payments/dm;

    invoke-direct {v1, p0}, Lcom/paypal/android/sdk/payments/dm;-><init>(Lcom/paypal/android/sdk/payments/PaymentMethodActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez p1, :cond_9f

    invoke-static {p0}, Lcom/paypal/android/sdk/payments/d;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_98

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->finish()V

    :cond_98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->f:Z

    :goto_9b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->b:Ljava/util/Timer;

    return-void

    :cond_9f
    const-string v0, "PP_PreventAutoLogin"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->c:Z

    const-string v0, "PP_PageTrackingSent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->f:Z

    goto :goto_9b
.end method

.method protected final onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 6

    packed-switch p1, :pswitch_data_2a

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :pswitch_5
    sget-object v0, Lcom/paypal/android/sdk/fw;->as:Lcom/paypal/android/sdk/fw;

    sget-object v1, Lcom/paypal/android/sdk/fw;->D:Lcom/paypal/android/sdk/fw;

    new-instance v2, Lcom/paypal/android/sdk/payments/do;

    invoke-direct {v2, p0}, Lcom/paypal/android/sdk/payments/do;-><init>(Lcom/paypal/android/sdk/payments/PaymentMethodActivity;)V

    invoke-static {p0, v0, v1, v2}, Lcom/paypal/android/sdk/payments/d;->a(Landroid/app/Activity;Lcom/paypal/android/sdk/fw;Lcom/paypal/android/sdk/fw;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_4

    :pswitch_13
    sget-object v0, Lcom/paypal/android/sdk/fw;->bk:Lcom/paypal/android/sdk/fw;

    sget-object v1, Lcom/paypal/android/sdk/fw;->B:Lcom/paypal/android/sdk/fw;

    new-instance v2, Lcom/paypal/android/sdk/payments/dp;

    invoke-direct {v2, p0}, Lcom/paypal/android/sdk/payments/dp;-><init>(Lcom/paypal/android/sdk/payments/PaymentMethodActivity;)V

    invoke-static {p0, v0, v1, v2}, Lcom/paypal/android/sdk/payments/d;->a(Landroid/app/Activity;Lcom/paypal/android/sdk/fw;Lcom/paypal/android/sdk/fw;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_4

    :pswitch_21
    sget-object v0, Lcom/paypal/android/sdk/fw;->c:Lcom/paypal/android/sdk/fw;

    sget-object v1, Lcom/paypal/android/sdk/fw;->bq:Lcom/paypal/android/sdk/fw;

    invoke-static {p0, v0, v1}, Lcom/paypal/android/sdk/payments/d;->a(Landroid/content/Context;Lcom/paypal/android/sdk/fw;Lcom/paypal/android/sdk/fw;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_4

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_5
        :pswitch_13
        :pswitch_21
    .end packed-switch
.end method

.method protected final onDestroy()V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".onDestroy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->k:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->j:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->k:Z

    :cond_1c
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected final onRestart()V
    .registers 1

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->d()V

    return-void
.end method

.method protected final onResume()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".onResume"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->i:Lcom/paypal/android/sdk/payments/PayPalService;

    if-eqz v0, :cond_1a

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->c()V

    :cond_1a
    return-void
.end method

.method protected final onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".onSaveInstanceState"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "PP_PreventAutoLogin"

    iget-boolean v1, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->c:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "PP_PageTrackingSent"

    iget-boolean v1, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->f:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->g:Lcom/paypal/android/sdk/gf;

    iget-object v0, v0, Lcom/paypal/android/sdk/gf;->c:Lcom/paypal/android/sdk/gk;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/gk;->a()V

    return-void
.end method
