.class public final Lcom/paypal/android/sdk/payments/PayPalService;
.super Landroid/app/Service;


# static fields
.field public static final EXTRA_PAYPAL_CONFIGURATION:Ljava/lang/String; = "com.paypal.android.sdk.paypalConfiguration"

.field static final a:Ljava/util/concurrent/ExecutorService;

.field private static final c:Ljava/lang/String;

.field private static t:Landroid/content/Intent;


# instance fields
.field b:Lcom/paypal/android/sdk/dt;

.field private d:Lcom/paypal/android/sdk/b;

.field private e:Lcom/paypal/android/sdk/dg;

.field private f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

.field private g:Z

.field private h:Lcom/paypal/android/sdk/payments/a;

.field private i:Lcom/paypal/android/sdk/payments/a;

.field private j:Lcom/paypal/android/sdk/payments/i;

.field private k:Ljava/lang/String;

.field private l:Lcom/paypal/android/sdk/br;

.field private m:Lcom/paypal/android/sdk/payments/ce;

.field private n:Ljava/lang/String;

.field private o:Lcom/paypal/android/sdk/a;

.field private p:Lcom/paypal/android/sdk/dl;

.field private q:Ljava/util/List;

.field private r:Z

.field private s:Z

.field private final u:Landroid/content/BroadcastReceiver;

.field private final v:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/payments/PayPalService;->c:Ljava/lang/String;

    invoke-static {}, Lcom/paypal/android/sdk/db;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/payments/PayPalService;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/paypal/android/sdk/payments/a;

    invoke-direct {v0}, Lcom/paypal/android/sdk/payments/a;-><init>()V

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->h:Lcom/paypal/android/sdk/payments/a;

    new-instance v0, Lcom/paypal/android/sdk/payments/a;

    invoke-direct {v0}, Lcom/paypal/android/sdk/payments/a;-><init>()V

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->i:Lcom/paypal/android/sdk/payments/a;

    new-instance v0, Lcom/paypal/android/sdk/payments/h;

    invoke-direct {v0, p0}, Lcom/paypal/android/sdk/payments/h;-><init>(Lcom/paypal/android/sdk/payments/PayPalService;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->j:Lcom/paypal/android/sdk/payments/i;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->q:Ljava/util/List;

    iput-boolean v1, p0, Lcom/paypal/android/sdk/payments/PayPalService;->r:Z

    iput-boolean v1, p0, Lcom/paypal/android/sdk/payments/PayPalService;->s:Z

    new-instance v0, Lcom/paypal/android/sdk/payments/ca;

    invoke-direct {v0, p0}, Lcom/paypal/android/sdk/payments/ca;-><init>(Lcom/paypal/android/sdk/payments/PayPalService;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->u:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/paypal/android/sdk/payments/cd;

    invoke-direct {v0, p0}, Lcom/paypal/android/sdk/payments/cd;-><init>(Lcom/paypal/android/sdk/payments/PayPalService;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->v:Landroid/os/IBinder;

    return-void
.end method

.method private A()Z
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/dg;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static B()Lcom/paypal/android/sdk/dg;
    .registers 1

    new-instance v0, Lcom/paypal/android/sdk/dg;

    invoke-direct {v0}, Lcom/paypal/android/sdk/dg;-><init>()V

    return-object v0
.end method

.method private C()V
    .registers 3

    new-instance v0, Lcom/paypal/android/sdk/payments/cb;

    invoke-direct {v0, p0}, Lcom/paypal/android/sdk/payments/cb;-><init>(Lcom/paypal/android/sdk/payments/PayPalService;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/payments/ce;Z)V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Lcom/paypal/android/sdk/bq;
    .registers 8

    new-instance v1, Lcom/paypal/android/sdk/bq;

    invoke-direct {v1, p0, p1}, Lcom/paypal/android/sdk/bq;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_8a

    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2c

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not start with \'https://\', ignoring "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_55

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " does not end with a slash, adding one."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_55
    invoke-static {}, Lcom/paypal/android/sdk/dc;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/cu;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/bq;->c()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0}, Lcom/paypal/android/sdk/cu;->a()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Lcom/paypal/android/sdk/cu;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5d

    :cond_8a
    return-object v1
.end method

.method static synthetic a(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/PayPalConfiguration;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    return-object v0
.end method

.method static synthetic a(Lcom/paypal/android/sdk/payments/PayPalService;Lcom/paypal/android/sdk/payments/ce;)Lcom/paypal/android/sdk/payments/ce;
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->m:Lcom/paypal/android/sdk/payments/ce;

    return-object v0
.end method

.method private a(Landroid/content/Intent;)V
    .registers 11

    const/16 v1, 0x1f4

    const/4 v2, 0x0

    const/4 v4, 0x1

    sput-object p1, Lcom/paypal/android/sdk/payments/PayPalService;->t:Landroid/content/Intent;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "init:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/paypal/android/sdk/payments/PayPalService;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    if-nez v0, :cond_2e

    const-string v0, "com.paypal.android.sdk.paypalConfiguration"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    if-nez v0, :cond_2e

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Missing EXTRA_PAYPAL_CONFIGURATION. To avoid this error, set EXTRA_PAYPAL_CONFIGURATION in both PayPalService, and the initializing activity."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->o()Z

    move-result v0

    if-nez v0, :cond_3e

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Service extras invalid.  Please check the docs."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3e
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->i()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-static {}, Lcom/paypal/android/sdk/payments/d;->d()Z

    move-result v0

    if-nez v0, :cond_54

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Credit Cards cannot be accepted without card.io dependency. Please check the docs."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_54
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/paypal/android/sdk/bp;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16b

    const-string v0, "https://api-m.paypal.com/v1/"

    :goto_62
    new-instance v5, Lcom/paypal/android/sdk/dl;

    iget-object v6, p0, Lcom/paypal/android/sdk/payments/PayPalService;->o:Lcom/paypal/android/sdk/a;

    iget-object v7, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v7}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->b()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/paypal/android/sdk/dl;-><init>(Lcom/paypal/android/sdk/a;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/paypal/android/sdk/payments/PayPalService;->p:Lcom/paypal/android/sdk/dl;

    invoke-static {v3, v0}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/paypal/android/sdk/bq;

    move-result-object v5

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/br;

    if-nez v0, :cond_134

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->z()Z

    move-result v0

    if-eqz v0, :cond_1a9

    const-string v0, "com.paypal.android.sdk.mockNetworkDelay"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a9

    const-string v0, "com.paypal.android.sdk.mockNetworkDelay"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    :goto_8d
    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->z()Z

    move-result v1

    if-eqz v1, :cond_1ac

    const-string v1, "com.paypal.android.sdk.mockEnable2fa"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1ac

    const-string v1, "com.paypal.android.sdk.mockEnable2fa"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    :goto_a1
    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->z()Z

    move-result v3

    if-eqz v3, :cond_1af

    const-string v3, "com.paypal.android.sdk.mock2faPhoneNumberCount"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1af

    const-string v3, "com.paypal.android.sdk.mock2faPhoneNumberCount"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    :goto_b5
    iput-boolean v4, p0, Lcom/paypal/android/sdk/payments/PayPalService;->r:Z

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->z()Z

    move-result v6

    if-eqz v6, :cond_cd

    const-string v6, "com.paypal.android.sdk.enableAuthenticator"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_cd

    const-string v6, "com.paypal.android.sdk.enableAuthenticator"

    invoke-virtual {p1, v6, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/paypal/android/sdk/payments/PayPalService;->r:Z

    :cond_cd
    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->z()Z

    move-result v6

    if-eqz v6, :cond_e3

    const-string v6, "com.paypal.android.sdk.enableAuthenticatorSecurity"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e3

    const-string v6, "com.paypal.android.sdk.enableAuthenticatorSecurity"

    invoke-virtual {p1, v6, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/paypal/android/sdk/payments/PayPalService;->s:Z

    :cond_e3
    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->z()Z

    move-result v6

    if-eqz v6, :cond_1da

    const-string v6, "com.paypal.android.sdk.enableStageSsl"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1da

    const-string v6, "com.paypal.android.sdk.enableStageSsl"

    invoke-virtual {p1, v6, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    move v6, v4

    :goto_f8
    new-instance v4, Lcom/paypal/android/sdk/br;

    iget-object v7, p0, Lcom/paypal/android/sdk/payments/PayPalService;->o:Lcom/paypal/android/sdk/a;

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalService;->a()Lcom/paypal/android/sdk/b;

    move-result-object v8

    invoke-direct {v4, v7, v5, v8}, Lcom/paypal/android/sdk/br;-><init>(Lcom/paypal/android/sdk/a;Lcom/paypal/android/sdk/bq;Lcom/paypal/android/sdk/b;)V

    iput-object v4, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/br;

    iget-object v4, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/br;

    new-instance v5, Lcom/paypal/android/sdk/ef;

    new-instance v7, Lcom/paypal/android/sdk/payments/cg;

    invoke-direct {v7, p0, v2}, Lcom/paypal/android/sdk/payments/cg;-><init>(Lcom/paypal/android/sdk/payments/PayPalService;B)V

    invoke-direct {v5, v7}, Lcom/paypal/android/sdk/ef;-><init>(Lcom/paypal/android/sdk/ee;)V

    invoke-virtual {v4, v5}, Lcom/paypal/android/sdk/br;->a(Lcom/paypal/android/sdk/bx;)V

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/paypal/android/sdk/bp;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b2

    new-instance v2, Lcom/paypal/android/sdk/ft;

    iget-object v4, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/br;

    invoke-direct {v2, v4, v0, v1, v3}, Lcom/paypal/android/sdk/ft;-><init>(Lcom/paypal/android/sdk/cx;IZI)V

    move-object v0, v2

    :goto_128
    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/br;

    new-instance v2, Lcom/paypal/android/sdk/cs;

    iget-object v3, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/br;

    invoke-direct {v2, v3, v0}, Lcom/paypal/android/sdk/cs;-><init>(Lcom/paypal/android/sdk/cx;Lcom/paypal/android/sdk/ct;)V

    invoke-virtual {v1, v2}, Lcom/paypal/android/sdk/br;->a(Lcom/paypal/android/sdk/cs;)V

    :cond_134
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/paypal/android/sdk/fu;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/dg;

    if-nez v0, :cond_147

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->B()Lcom/paypal/android/sdk/dg;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/dg;

    :cond_147
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->j()Z

    move-result v0

    if-nez v0, :cond_158

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->o:Lcom/paypal/android/sdk/a;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/a;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->clearAllUserData(Landroid/content/Context;)V

    :cond_158
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->k:Ljava/lang/String;

    sget-object v0, Lcom/paypal/android/sdk/fc;->a:Lcom/paypal/android/sdk/fc;

    invoke-virtual {p0, v0}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/fc;)V

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/PayPalService;->C()V

    return-void

    :cond_16b
    invoke-static {v3}, Lcom/paypal/android/sdk/bp;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_175

    const-string v0, "https://api-m.sandbox.paypal.com/v1/"

    goto/16 :goto_62

    :cond_175
    invoke-static {v3}, Lcom/paypal/android/sdk/bp;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17e

    const/4 v0, 0x0

    goto/16 :goto_62

    :cond_17e
    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->z()Z

    move-result v0

    if-eqz v0, :cond_194

    const-string v0, "com.paypal.android.sdk.baseEnvironmentUrl"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_194

    const-string v0, "com.paypal.android.sdk.baseEnvironmentUrl"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_62

    :cond_194
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid environment selected:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a9
    move v0, v1

    goto/16 :goto_8d

    :cond_1ac
    move v1, v2

    goto/16 :goto_a1

    :cond_1af
    move v3, v4

    goto/16 :goto_b5

    :cond_1b2
    new-instance v0, Lcom/paypal/android/sdk/cm;

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalService;->o:Lcom/paypal/android/sdk/a;

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalService;->a()Lcom/paypal/android/sdk/b;

    move-result-object v3

    iget-object v4, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/br;

    const/16 v5, 0x5a

    new-instance v7, Lcom/paypal/android/sdk/dh;

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalService;->a()Lcom/paypal/android/sdk/b;

    move-result-object v8

    invoke-interface {v8}, Lcom/paypal/android/sdk/b;->c()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/paypal/android/sdk/dh;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/paypal/android/sdk/cm;-><init>(Lcom/paypal/android/sdk/a;Ljava/lang/String;Lcom/paypal/android/sdk/b;Lcom/paypal/android/sdk/cx;IZLjava/util/List;)V

    goto/16 :goto_128

    :cond_1da
    move v6, v4

    goto/16 :goto_f8
.end method

.method private a(Lcom/paypal/android/sdk/cw;)V
    .registers 3

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/br;

    invoke-virtual {v0, p1}, Lcom/paypal/android/sdk/br;->b(Lcom/paypal/android/sdk/cw;)V

    return-void
.end method

.method private a(Lcom/paypal/android/sdk/fc;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->j:Lcom/paypal/android/sdk/payments/i;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/paypal/android/sdk/payments/i;->a(Lcom/paypal/android/sdk/fc;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/paypal/android/sdk/payments/PayPalService;Lcom/paypal/android/sdk/cw;)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/dg;

    iput-object v3, v0, Lcom/paypal/android/sdk/dg;->b:Lcom/paypal/android/sdk/dw;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/paypal/android/sdk/cw;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " request error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/paypal/android/sdk/cw;->p()Lcom/paypal/android/sdk/by;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/by;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "paypal.sdk"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/paypal/android/sdk/fc;->b:Lcom/paypal/android/sdk/fc;

    invoke-virtual {p1}, Lcom/paypal/android/sdk/cw;->j()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Lcom/paypal/android/sdk/payments/PayPalService;->b(Lcom/paypal/android/sdk/fc;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->m:Lcom/paypal/android/sdk/payments/ce;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->m:Lcom/paypal/android/sdk/payments/ce;

    invoke-direct {p0, p1}, Lcom/paypal/android/sdk/payments/PayPalService;->b(Lcom/paypal/android/sdk/cw;)Lcom/paypal/android/sdk/payments/cf;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/paypal/android/sdk/payments/ce;->a(Lcom/paypal/android/sdk/payments/cf;)V

    iput-object v3, p0, Lcom/paypal/android/sdk/payments/PayPalService;->m:Lcom/paypal/android/sdk/payments/ce;

    :cond_3c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->g:Z

    return-void
.end method

.method static synthetic a(Lcom/paypal/android/sdk/payments/PayPalService;Lcom/paypal/android/sdk/fc;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/fc;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Lcom/paypal/android/sdk/dw;)Z
    .registers 2

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Lcom/paypal/android/sdk/dw;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method static synthetic a(Lcom/paypal/android/sdk/payments/PayPalService;Z)Z
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->g:Z

    return v0
.end method

.method private a([Lcom/paypal/android/sdk/payments/PayPalItem;)[Lcom/paypal/android/sdk/fo;
    .registers 13

    const/4 v0, 0x0

    if-nez p1, :cond_5

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :cond_5
    array-length v1, p1

    new-array v6, v1, [Lcom/paypal/android/sdk/fo;

    array-length v10, p1

    move v7, v0

    move v8, v0

    :goto_b
    if-ge v7, v10, :cond_31

    aget-object v5, p1, v7

    add-int/lit8 v9, v8, 0x1

    new-instance v0, Lcom/paypal/android/sdk/fo;

    invoke-virtual {v5}, Lcom/paypal/android/sdk/payments/PayPalItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Lcom/paypal/android/sdk/payments/PayPalItem;->getQuantity()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5}, Lcom/paypal/android/sdk/payments/PayPalItem;->getPrice()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v5}, Lcom/paypal/android/sdk/payments/PayPalItem;->getCurrency()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Lcom/paypal/android/sdk/payments/PayPalItem;->getSku()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/paypal/android/sdk/fo;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/math/BigDecimal;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v6, v8

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    move v8, v9

    goto :goto_b

    :cond_31
    move-object v0, v6

    goto :goto_4
.end method

.method static synthetic b(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/ce;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->m:Lcom/paypal/android/sdk/payments/ce;

    return-object v0
.end method

.method private b(Lcom/paypal/android/sdk/cw;)Lcom/paypal/android/sdk/payments/cf;
    .registers 6

    new-instance v0, Lcom/paypal/android/sdk/payments/cf;

    invoke-virtual {p1}, Lcom/paypal/android/sdk/cw;->p()Lcom/paypal/android/sdk/by;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/sdk/by;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/paypal/android/sdk/cw;->r()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Lcom/paypal/android/sdk/cw;->p()Lcom/paypal/android/sdk/by;

    move-result-object v3

    invoke-virtual {v3}, Lcom/paypal/android/sdk/by;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/paypal/android/sdk/payments/cf;-><init>(Lcom/paypal/android/sdk/payments/PayPalService;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic b(Lcom/paypal/android/sdk/payments/PayPalService;Lcom/paypal/android/sdk/cw;)Lcom/paypal/android/sdk/payments/cf;
    .registers 3

    invoke-direct {p0, p1}, Lcom/paypal/android/sdk/payments/PayPalService;->b(Lcom/paypal/android/sdk/cw;)Lcom/paypal/android/sdk/payments/cf;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/content/Intent;)Ljava/lang/String;
    .registers 6

    if-nez p0, :cond_5

    const-string v0, "Intent = null"

    :goto_4
    return-object v0

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Intent{"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "action:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, ", cmp:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_56

    const-string v0, "null extras"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4c
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_56
    const-string v0, "extras:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_67
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_67
.end method

.method private b(Lcom/paypal/android/sdk/fc;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/fc;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/a;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->h:Lcom/paypal/android/sdk/payments/a;

    return-object v0
.end method

.method static synthetic c(Lcom/paypal/android/sdk/payments/PayPalService;Lcom/paypal/android/sdk/cw;)V
    .registers 5

    invoke-virtual {p1}, Lcom/paypal/android/sdk/cw;->p()Lcom/paypal/android/sdk/by;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/by;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "paypal.sdk"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/paypal/android/sdk/fc;->h:Lcom/paypal/android/sdk/fc;

    invoke-virtual {p1}, Lcom/paypal/android/sdk/cw;->j()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Lcom/paypal/android/sdk/payments/PayPalService;->b(Lcom/paypal/android/sdk/fc;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->i:Lcom/paypal/android/sdk/payments/a;

    invoke-direct {p0, p1}, Lcom/paypal/android/sdk/payments/PayPalService;->b(Lcom/paypal/android/sdk/cw;)Lcom/paypal/android/sdk/payments/cf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/a;->a(Lcom/paypal/android/sdk/payments/cf;)V

    return-void
.end method

.method public static clearAllUserData(Landroid/content/Context;)V
    .registers 3

    const-string v0, "paypal.sdk"

    const-string v1, "clearing user data"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/paypal/android/sdk/payments/PayPalService;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/paypal/android/sdk/payments/by;

    invoke-direct {v1, p0}, Lcom/paypal/android/sdk/payments/by;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method static synthetic d(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/dl;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->p:Lcom/paypal/android/sdk/dl;

    return-object v0
.end method

.method static synthetic e(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/a;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->i:Lcom/paypal/android/sdk/payments/a;

    return-object v0
.end method

.method static synthetic f(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/a;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->o:Lcom/paypal/android/sdk/a;

    return-object v0
.end method

.method static synthetic y()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/paypal/android/sdk/payments/PayPalService;->c:Ljava/lang/String;

    return-object v0
.end method

.method private static z()Z
    .registers 2

    const-string v0, "partner"

    const-string v1, "general"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method


# virtual methods
.method final a()Lcom/paypal/android/sdk/b;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->d:Lcom/paypal/android/sdk/b;

    if-nez v0, :cond_b

    new-instance v0, Lcom/paypal/android/sdk/payments/d;

    invoke-direct {v0}, Lcom/paypal/android/sdk/payments/d;-><init>()V

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->d:Lcom/paypal/android/sdk/b;

    :cond_b
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->d:Lcom/paypal/android/sdk/b;

    return-object v0
.end method

.method final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->o:Lcom/paypal/android/sdk/a;

    invoke-virtual {v0, p1}, Lcom/paypal/android/sdk/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final a(I)V
    .registers 11

    iget-object v7, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/br;

    new-instance v0, Lcom/paypal/android/sdk/fl;

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/br;

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalService;->a()Lcom/paypal/android/sdk/b;

    move-result-object v2

    iget-object v3, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/br;

    invoke-virtual {v3}, Lcom/paypal/android/sdk/br;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v4}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->k()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/dg;

    iget-object v5, v5, Lcom/paypal/android/sdk/dg;->i:Ljava/lang/String;

    new-instance v6, Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/dg;

    iget-object v8, v8, Lcom/paypal/android/sdk/dg;->f:Lcom/paypal/android/sdk/ed;

    iget-object v8, v8, Lcom/paypal/android/sdk/ed;->a:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/paypal/android/sdk/fl;-><init>(Lcom/paypal/android/sdk/cx;Lcom/paypal/android/sdk/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/paypal/android/sdk/br;->b(Lcom/paypal/android/sdk/cw;)V

    return-void
.end method

.method final a(Lcom/paypal/android/sdk/ep;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V
    .registers 20

    iget-object v12, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/br;

    new-instance v0, Lcom/paypal/android/sdk/fm;

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/br;

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalService;->a()Lcom/paypal/android/sdk/b;

    move-result-object v2

    iget-object v3, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/br;

    invoke-virtual {v3}, Lcom/paypal/android/sdk/br;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v4}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->k()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/dg;

    iget-object v7, v5, Lcom/paypal/android/sdk/dg;->i:Ljava/lang/String;

    move-object v5, p1

    move-object v6, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p6

    invoke-direct/range {v0 .. v11}, Lcom/paypal/android/sdk/fm;-><init>(Lcom/paypal/android/sdk/cx;Lcom/paypal/android/sdk/b;Ljava/lang/String;Ljava/lang/String;Lcom/paypal/android/sdk/ep;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v12, v0}, Lcom/paypal/android/sdk/br;->b(Lcom/paypal/android/sdk/cw;)V

    return-void
.end method

.method final a(Lcom/paypal/android/sdk/ep;ZLjava/lang/String;ZLjava/lang/String;)V
    .registers 17

    iget-object v10, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/br;

    new-instance v0, Lcom/paypal/android/sdk/fm;

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/br;

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalService;->a()Lcom/paypal/android/sdk/b;

    move-result-object v2

    iget-object v3, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/br;

    invoke-virtual {v3}, Lcom/paypal/android/sdk/br;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v4}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->k()Ljava/lang/String;

    move-result-object v4

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    move v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/paypal/android/sdk/fm;-><init>(Lcom/paypal/android/sdk/cx;Lcom/paypal/android/sdk/b;Ljava/lang/String;Ljava/lang/String;Lcom/paypal/android/sdk/ep;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v10, v0}, Lcom/paypal/android/sdk/br;->b(Lcom/paypal/android/sdk/cw;)V

    return-void
.end method

.method final a(Lcom/paypal/android/sdk/er;Ljava/util/Map;[Lcom/paypal/android/sdk/payments/PayPalItem;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/br;

    move-object/from16 v17, v0

    new-instance v2, Lcom/paypal/android/sdk/fg;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/br;

    invoke-virtual/range {p0 .. p0}, Lcom/paypal/android/sdk/payments/PayPalService;->a()Lcom/paypal/android/sdk/b;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/dg;

    iget-object v5, v5, Lcom/paypal/android/sdk/dg;->g:Lcom/paypal/android/sdk/dw;

    invoke-virtual {v5}, Lcom/paypal/android/sdk/dw;->c()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/dg;

    invoke-virtual {v6}, Lcom/paypal/android/sdk/dg;->b()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/paypal/android/sdk/payments/PayPalService;->a([Lcom/paypal/android/sdk/payments/PayPalItem;)[Lcom/paypal/android/sdk/fo;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/paypal/android/sdk/payments/PayPalService;->n:Ljava/lang/String;

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v11, p4

    move/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v15, p7

    move/from16 v16, p8

    invoke-direct/range {v2 .. v16}, Lcom/paypal/android/sdk/fg;-><init>(Lcom/paypal/android/sdk/cx;Lcom/paypal/android/sdk/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/paypal/android/sdk/er;Ljava/util/Map;[Lcom/paypal/android/sdk/fo;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p9

    invoke-virtual {v2, v0}, Lcom/paypal/android/sdk/fg;->d(Ljava/lang/String;)Lcom/paypal/android/sdk/fg;

    move-result-object v2

    move-object/from16 v0, p10

    invoke-virtual {v2, v0}, Lcom/paypal/android/sdk/fg;->e(Ljava/lang/String;)Lcom/paypal/android/sdk/fg;

    move-result-object v2

    move-object/from16 v0, p11

    invoke-virtual {v2, v0}, Lcom/paypal/android/sdk/fg;->f(Ljava/lang/String;)Lcom/paypal/android/sdk/fg;

    move-result-object v2

    move/from16 v0, p12

    invoke-virtual {v2, v0}, Lcom/paypal/android/sdk/fg;->a(Z)Lcom/paypal/android/sdk/fg;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/paypal/android/sdk/br;->b(Lcom/paypal/android/sdk/cw;)V

    return-void
.end method

.method final a(Lcom/paypal/android/sdk/fc;)V
    .registers 8

    const/4 v3, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/fc;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method final a(Lcom/paypal/android/sdk/fc;Ljava/lang/Boolean;)V
    .registers 9

    const/4 v3, 0x0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/fc;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method final a(Lcom/paypal/android/sdk/fc;Ljava/lang/Boolean;Ljava/lang/String;)V
    .registers 10

    const/4 v3, 0x0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/fc;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method final a(Lcom/paypal/android/sdk/fc;Ljava/lang/String;)V
    .registers 9

    const/4 v3, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/fc;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method final a(Lcom/paypal/android/sdk/fc;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/fc;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method final a(Lcom/paypal/android/sdk/payments/cc;)V
    .registers 3

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->h:Lcom/paypal/android/sdk/payments/a;

    invoke-virtual {v0, p1}, Lcom/paypal/android/sdk/payments/a;->a(Lcom/paypal/android/sdk/payments/cc;)V

    return-void
.end method

.method final a(Lcom/paypal/android/sdk/payments/ce;Z)V
    .registers 9

    if-eqz p2, :cond_7

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/dg;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/paypal/android/sdk/dg;->b:Lcom/paypal/android/sdk/dw;

    :cond_7
    iput-object p1, p0, Lcom/paypal/android/sdk/payments/PayPalService;->m:Lcom/paypal/android/sdk/payments/ce;

    iget-boolean v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->g:Z

    if-eqz v0, :cond_e

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/dg;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/dg;->c()Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->g:Z

    sget-object v0, Lcom/paypal/android/sdk/fc;->b:Lcom/paypal/android/sdk/fc;

    invoke-virtual {p0, v0}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/fc;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/br;

    new-instance v1, Lcom/paypal/android/sdk/fr;

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/br;

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalService;->a()Lcom/paypal/android/sdk/b;

    move-result-object v4

    iget-object v5, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v5}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->k()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/paypal/android/sdk/fr;-><init>(Ljava/lang/String;Lcom/paypal/android/sdk/cx;Lcom/paypal/android/sdk/b;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/br;->b(Lcom/paypal/android/sdk/cw;)V

    goto :goto_d
.end method

.method final a(Ljava/lang/String;Ljava/lang/String;Lcom/paypal/android/sdk/er;Ljava/util/Map;[Lcom/paypal/android/sdk/payments/PayPalItem;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/br;

    move-object/from16 v17, v0

    new-instance v2, Lcom/paypal/android/sdk/fh;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/br;

    invoke-virtual/range {p0 .. p0}, Lcom/paypal/android/sdk/payments/PayPalService;->a()Lcom/paypal/android/sdk/b;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/dg;

    iget-object v5, v5, Lcom/paypal/android/sdk/dg;->b:Lcom/paypal/android/sdk/dw;

    invoke-virtual {v5}, Lcom/paypal/android/sdk/dw;->c()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/paypal/android/sdk/payments/PayPalService;->a([Lcom/paypal/android/sdk/payments/PayPalItem;)[Lcom/paypal/android/sdk/fo;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/paypal/android/sdk/payments/PayPalService;->n:Ljava/lang/String;

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p8

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v12, p6

    move/from16 v13, p7

    move-object/from16 v14, p9

    move-object/from16 v16, p10

    invoke-direct/range {v2 .. v16}, Lcom/paypal/android/sdk/fh;-><init>(Lcom/paypal/android/sdk/cx;Lcom/paypal/android/sdk/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/paypal/android/sdk/er;Ljava/util/Map;[Lcom/paypal/android/sdk/fo;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p11

    invoke-virtual {v2, v0}, Lcom/paypal/android/sdk/fh;->d(Ljava/lang/String;)Lcom/paypal/android/sdk/fh;

    move-result-object v2

    move-object/from16 v0, p12

    invoke-virtual {v2, v0}, Lcom/paypal/android/sdk/fh;->e(Ljava/lang/String;)Lcom/paypal/android/sdk/fh;

    move-result-object v2

    move-object/from16 v0, p13

    invoke-virtual {v2, v0}, Lcom/paypal/android/sdk/fh;->f(Ljava/lang/String;)Lcom/paypal/android/sdk/fh;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/paypal/android/sdk/br;->b(Lcom/paypal/android/sdk/cw;)V

    return-void
.end method

.method final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/paypal/android/sdk/er;Ljava/util/Map;[Lcom/paypal/android/sdk/payments/PayPalItem;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 39

    const-string v2, "4111111111111111"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_76

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/paypal/android/sdk/bp;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_76

    const-string p3, "4444333322221111"

    move-object/from16 v8, p3

    :goto_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/br;

    move-object/from16 v21, v0

    new-instance v2, Lcom/paypal/android/sdk/fh;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/br;

    invoke-virtual/range {p0 .. p0}, Lcom/paypal/android/sdk/payments/PayPalService;->a()Lcom/paypal/android/sdk/b;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/dg;

    iget-object v5, v5, Lcom/paypal/android/sdk/dg;->b:Lcom/paypal/android/sdk/dw;

    invoke-virtual {v5}, Lcom/paypal/android/sdk/dw;->c()Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p9

    invoke-direct {v0, v1}, Lcom/paypal/android/sdk/payments/PayPalService;->a([Lcom/paypal/android/sdk/payments/PayPalItem;)[Lcom/paypal/android/sdk/fo;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/paypal/android/sdk/payments/PayPalService;->n:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    move-object/from16 v16, p10

    move/from16 v17, p11

    move-object/from16 v18, p12

    move-object/from16 v20, p13

    invoke-direct/range {v2 .. v20}, Lcom/paypal/android/sdk/fh;-><init>(Lcom/paypal/android/sdk/cx;Lcom/paypal/android/sdk/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/paypal/android/sdk/er;Ljava/util/Map;[Lcom/paypal/android/sdk/fo;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p14

    invoke-virtual {v2, v0}, Lcom/paypal/android/sdk/fh;->d(Ljava/lang/String;)Lcom/paypal/android/sdk/fh;

    move-result-object v2

    move-object/from16 v0, p15

    invoke-virtual {v2, v0}, Lcom/paypal/android/sdk/fh;->e(Ljava/lang/String;)Lcom/paypal/android/sdk/fh;

    move-result-object v2

    move-object/from16 v0, p16

    invoke-virtual {v2, v0}, Lcom/paypal/android/sdk/fh;->f(Ljava/lang/String;)Lcom/paypal/android/sdk/fh;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/paypal/android/sdk/br;->b(Lcom/paypal/android/sdk/cw;)V

    return-void

    :cond_76
    move-object/from16 v8, p3

    goto :goto_1c
.end method

.method final a(Ljava/util/List;)V
    .registers 11

    iget-object v8, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/br;

    new-instance v0, Lcom/paypal/android/sdk/ff;

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/br;

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalService;->a()Lcom/paypal/android/sdk/b;

    move-result-object v2

    iget-object v3, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/br;

    invoke-virtual {v3}, Lcom/paypal/android/sdk/br;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v4}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->k()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/dg;

    iget-object v5, v5, Lcom/paypal/android/sdk/dg;->e:Lcom/paypal/android/sdk/dy;

    invoke-virtual {v5}, Lcom/paypal/android/sdk/dy;->a()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/dg;

    iget-object v6, v6, Lcom/paypal/android/sdk/dg;->i:Ljava/lang/String;

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/paypal/android/sdk/ff;-><init>(Lcom/paypal/android/sdk/cx;Lcom/paypal/android/sdk/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v8, v0}, Lcom/paypal/android/sdk/br;->b(Lcom/paypal/android/sdk/cw;)V

    return-void
.end method

.method final a(ZLjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 20

    iget-object v12, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/br;

    new-instance v0, Lcom/paypal/android/sdk/fd;

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/br;

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalService;->a()Lcom/paypal/android/sdk/b;

    move-result-object v2

    iget-object v3, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/dg;

    iget-object v3, v3, Lcom/paypal/android/sdk/dg;->g:Lcom/paypal/android/sdk/dw;

    invoke-virtual {v3}, Lcom/paypal/android/sdk/dw;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/dg;

    invoke-virtual {v4}, Lcom/paypal/android/sdk/dg;->b()Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/paypal/android/sdk/payments/PayPalService;->n:Ljava/lang/String;

    move v5, p1

    move-object/from16 v6, p6

    move-object v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-direct/range {v0 .. v11}, Lcom/paypal/android/sdk/fd;-><init>(Lcom/paypal/android/sdk/cx;Lcom/paypal/android/sdk/b;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    invoke-virtual {v12, v0}, Lcom/paypal/android/sdk/br;->b(Lcom/paypal/android/sdk/cw;)V

    return-void
.end method

.method protected final a(Lcom/paypal/android/sdk/payments/ch;)Z
    .registers 3

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/PayPalService;->A()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected final b()Lcom/paypal/android/sdk/br;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/br;

    return-object v0
.end method

.method final b(Lcom/paypal/android/sdk/payments/cc;)V
    .registers 3

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->i:Lcom/paypal/android/sdk/payments/a;

    invoke-virtual {v0, p1}, Lcom/paypal/android/sdk/payments/a;->a(Lcom/paypal/android/sdk/payments/cc;)V

    return-void
.end method

.method protected final c()Lcom/paypal/android/sdk/dg;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/dg;

    return-object v0
.end method

.method final d()Lcom/paypal/android/sdk/payments/PayPalConfiguration;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    return-object v0
.end method

.method public final doDeleteTokenizedCreditCard(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Lcom/paypal/android/sdk/fi;

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/br;

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalService;->a()Lcom/paypal/android/sdk/b;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/paypal/android/sdk/fi;-><init>(Lcom/paypal/android/sdk/cx;Lcom/paypal/android/sdk/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/cw;)V

    return-void
.end method

.method public final doTrackingRequest(Lcom/paypal/android/sdk/bu;)V
    .registers 6

    new-instance v0, Lcom/paypal/android/sdk/fj;

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/br;

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalService;->a()Lcom/paypal/android/sdk/b;

    move-result-object v2

    invoke-static {p1}, Lcom/paypal/android/sdk/fa;->a(Lcom/paypal/android/sdk/bu;)Lcom/paypal/android/sdk/bu;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/paypal/android/sdk/fj;-><init>(Lcom/paypal/android/sdk/cx;Lcom/paypal/android/sdk/b;Lcom/paypal/android/sdk/bu;)V

    invoke-direct {p0, v0}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/cw;)V

    return-void
.end method

.method protected final e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final g()V
    .registers 2

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalService;->t()V

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalService;->h()V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->p:Lcom/paypal/android/sdk/dl;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/dl;->b()V

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalService;->u()V

    return-void
.end method

.method final h()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/dg;

    iput-object v1, v0, Lcom/paypal/android/sdk/dg;->g:Lcom/paypal/android/sdk/dw;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/paypal/android/sdk/di;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/dg;

    iput-object v1, v0, Lcom/paypal/android/sdk/dg;->d:Lcom/paypal/android/sdk/dm;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/dg;

    iput-object v1, v0, Lcom/paypal/android/sdk/dg;->c:Ljava/lang/String;

    return-void
.end method

.method final i()Z
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/dg;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/dg;->c()Z

    move-result v0

    return v0
.end method

.method final j()Z
    .registers 3

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/dg;

    iget-object v1, v0, Lcom/paypal/android/sdk/dg;->g:Lcom/paypal/android/sdk/dw;

    if-eqz v1, :cond_10

    iget-object v0, v0, Lcom/paypal/android/sdk/dg;->g:Lcom/paypal/android/sdk/dw;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/dw;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method final k()Z
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/dg;

    iget-object v0, v0, Lcom/paypal/android/sdk/dg;->e:Lcom/paypal/android/sdk/dy;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/dg;

    iget-object v0, v0, Lcom/paypal/android/sdk/dg;->i:Ljava/lang/String;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method final l()V
    .registers 5

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->p:Lcom/paypal/android/sdk/dl;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/dl;->a()Lcom/paypal/android/sdk/dm;

    move-result-object v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalService;->h()V

    :goto_b
    return-void

    :cond_c
    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/dg;

    iget-object v1, v1, Lcom/paypal/android/sdk/dg;->g:Lcom/paypal/android/sdk/dw;

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/paypal/android/sdk/di;->a(Ljava/lang/String;)Lcom/paypal/android/sdk/dw;

    move-result-object v2

    invoke-static {v1}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/dw;)Z

    move-result v1

    if-nez v1, :cond_2a

    invoke-static {v2}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/dw;)Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/dg;

    iput-object v2, v1, Lcom/paypal/android/sdk/dg;->g:Lcom/paypal/android/sdk/dw;

    :cond_2a
    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/dg;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/dm;->d()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-virtual {v0}, Lcom/paypal/android/sdk/dm;->c()Lcom/paypal/android/sdk/do;

    move-result-object v2

    sget-object v3, Lcom/paypal/android/sdk/do;->a:Lcom/paypal/android/sdk/do;

    invoke-virtual {v2, v3}, Lcom/paypal/android/sdk/do;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-virtual {v0}, Lcom/paypal/android/sdk/dm;->b()Ljava/lang/String;

    move-result-object v0

    :goto_42
    iput-object v0, v1, Lcom/paypal/android/sdk/dg;->c:Ljava/lang/String;

    goto :goto_b

    :cond_45
    invoke-virtual {v0}, Lcom/paypal/android/sdk/dm;->a()Lcom/paypal/android/sdk/ev;

    move-result-object v0

    invoke-static {}, Lcom/paypal/android/sdk/de;->a()Lcom/paypal/android/sdk/de;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/paypal/android/sdk/ev;->a(Lcom/paypal/android/sdk/eu;)Ljava/lang/String;

    move-result-object v0

    goto :goto_42

    :cond_52
    const/4 v0, 0x0

    goto :goto_42
.end method

.method final m()V
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->i:Lcom/paypal/android/sdk/payments/a;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/a;->b()V

    return-void
.end method

.method final n()V
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->h:Lcom/paypal/android/sdk/payments/a;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/a;->b()V

    return-void
.end method

.method final o()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->m:Lcom/paypal/android/sdk/payments/ce;

    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onBind("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/paypal/android/sdk/payments/PayPalService;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/PayPalService;->A()Z

    move-result v0

    if-nez v0, :cond_21

    sget-object v0, Lcom/paypal/android/sdk/payments/PayPalService;->t:Landroid/content/Intent;

    if-nez v0, :cond_24

    invoke-direct {p0, p1}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Landroid/content/Intent;)V

    :cond_21
    :goto_21
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->v:Landroid/os/IBinder;

    return-object v0

    :cond_24
    sget-object v0, Lcom/paypal/android/sdk/payments/PayPalService;->t:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Landroid/content/Intent;)V

    goto :goto_21
.end method

.method public final onCreate()V
    .registers 5

    const-string v0, "paypal.sdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " created. API:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalService;->a()Lcom/paypal/android/sdk/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/paypal/android/sdk/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/paypal/android/sdk/a;

    new-instance v1, Lcom/paypal/android/sdk/payments/d;

    invoke-direct {v1}, Lcom/paypal/android/sdk/payments/d;-><init>()V

    const-string v1, "AndroidBasePrefs"

    new-instance v2, Lcom/paypal/android/sdk/d;

    invoke-direct {v2}, Lcom/paypal/android/sdk/d;-><init>()V

    invoke-direct {v0, p0, v1, v2}, Lcom/paypal/android/sdk/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/paypal/android/sdk/d;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->o:Lcom/paypal/android/sdk/a;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->o:Lcom/paypal/android/sdk/a;

    invoke-static {v0}, Lcom/paypal/android/sdk/eh;->a(Lcom/paypal/android/sdk/a;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->o:Lcom/paypal/android/sdk/a;

    invoke-static {v0}, Lcom/paypal/android/sdk/em;->a(Lcom/paypal/android/sdk/a;)V

    sget-object v0, Lcom/paypal/android/sdk/payments/PayPalService;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalService;->o:Lcom/paypal/android/sdk/a;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/a;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2.14.4"

    const/4 v3, 0x0

    invoke-static {v0, p0, v1, v2, v3}, Lcom/paypal/android/sdk/e;->a(Ljava/util/concurrent/ExecutorService;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->n:Ljava/lang/String;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.paypal.android.sdk.clearAllUserData"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/paypal/android/sdk/payments/aa;->a(Landroid/content/Context;)Lcom/paypal/android/sdk/payments/aa;

    move-result-object v1

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/PayPalService;->u:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/paypal/android/sdk/payments/aa;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public final onDestroy()V
    .registers 4

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/br;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/br;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/br;->a()V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/br;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/br;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/br;

    :cond_11
    :try_start_11
    invoke-static {p0}, Lcom/paypal/android/sdk/payments/aa;->a(Landroid/content/Context;)Lcom/paypal/android/sdk/payments/aa;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalService;->u:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/aa;->a(Landroid/content/BroadcastReceiver;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_1a} :catch_25

    :goto_1a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "service destroyed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void

    :catch_25
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ignoring:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a
.end method

.method public final onRebind(Landroid/content/Intent;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onRebind("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/paypal/android/sdk/payments/PayPalService;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onStartCommand("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/paypal/android/sdk/payments/PayPalService;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/PayPalService;->A()Z

    move-result v0

    if-nez v0, :cond_49

    new-instance v0, Lcom/paypal/android/sdk/gs;

    invoke-direct {v0, p0}, Lcom/paypal/android/sdk/gs;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/paypal/android/sdk/gs;->a()V

    if-eqz p1, :cond_3e

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_46

    :cond_3e
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Service extras required. Please see the docs."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_46
    invoke-direct {p0, p1}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Landroid/content/Intent;)V

    :cond_49
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6c

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_57
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/payments/ch;

    invoke-interface {v0}, Lcom/paypal/android/sdk/payments/ch;->a()V

    goto :goto_57

    :cond_67
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_6c
    const/4 v0, 0x3

    return v0
.end method

.method public final onUnbind(Landroid/content/Intent;)Z
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onUnbind("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/paypal/android/sdk/payments/PayPalService;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    return v0
.end method

.method final p()V
    .registers 8

    iget-object v6, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/br;

    new-instance v0, Lcom/paypal/android/sdk/fk;

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/br;

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalService;->a()Lcom/paypal/android/sdk/b;

    move-result-object v2

    iget-object v3, p0, Lcom/paypal/android/sdk/payments/PayPalService;->l:Lcom/paypal/android/sdk/br;

    invoke-virtual {v3}, Lcom/paypal/android/sdk/br;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/dg;

    iget-object v4, v4, Lcom/paypal/android/sdk/dg;->b:Lcom/paypal/android/sdk/dw;

    invoke-virtual {v4}, Lcom/paypal/android/sdk/dw;->c()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v5}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->k()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/paypal/android/sdk/fk;-><init>(Lcom/paypal/android/sdk/cx;Lcom/paypal/android/sdk/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/paypal/android/sdk/br;->b(Lcom/paypal/android/sdk/cw;)V

    return-void
.end method

.method final q()Lcom/paypal/android/sdk/dm;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->p:Lcom/paypal/android/sdk/dl;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/dl;->a()Lcom/paypal/android/sdk/dm;

    move-result-object v0

    return-object v0
.end method

.method final r()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/dg;

    iget-object v0, v0, Lcom/paypal/android/sdk/dg;->c:Ljava/lang/String;

    return-object v0
.end method

.method final s()Lcom/paypal/android/sdk/dt;
    .registers 3

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->p:Lcom/paypal/android/sdk/dl;

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/dl;->a(Ljava/lang/String;)Lcom/paypal/android/sdk/dt;

    move-result-object v0

    return-object v0
.end method

.method final t()V
    .registers 3

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalService;->s()Lcom/paypal/android/sdk/dt;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->b:Lcom/paypal/android/sdk/dt;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->p:Lcom/paypal/android/sdk/dl;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/dl;->c()V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->b:Lcom/paypal/android/sdk/dt;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/dg;

    iget-object v0, v0, Lcom/paypal/android/sdk/dg;->b:Lcom/paypal/android/sdk/dw;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/dg;

    iget-object v0, v0, Lcom/paypal/android/sdk/dg;->b:Lcom/paypal/android/sdk/dw;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/dw;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalService;->b:Lcom/paypal/android/sdk/dt;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/dt;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/paypal/android/sdk/payments/PayPalService;->doDeleteTokenizedCreditCard(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->b:Lcom/paypal/android/sdk/dt;

    :cond_29
    return-void
.end method

.method final u()V
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->f:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->o()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->B()Lcom/paypal/android/sdk/dg;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->e:Lcom/paypal/android/sdk/dg;

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/PayPalService;->C()V

    :cond_15
    return-void
.end method

.method protected final v()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->k:Ljava/lang/String;

    return-object v0
.end method

.method final w()Z
    .registers 2

    iget-boolean v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->r:Z

    return v0
.end method

.method final x()Z
    .registers 2

    iget-boolean v0, p0, Lcom/paypal/android/sdk/payments/PayPalService;->s:Z

    return v0
.end method
