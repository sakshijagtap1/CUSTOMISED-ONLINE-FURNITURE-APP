.class public final Lcom/paypal/android/sdk/payments/PayPalConfiguration;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final ENVIRONMENT_NO_NETWORK:Ljava/lang/String; = "mock"

.field public static final ENVIRONMENT_PRODUCTION:Ljava/lang/String; = "live"

.field public static final ENVIRONMENT_SANDBOX:Ljava/lang/String; = "sandbox"

.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Landroid/net/Uri;

.field private n:Landroid/net/Uri;

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->a:Ljava/lang/String;

    new-instance v0, Lcom/paypal/android/sdk/payments/bj;

    invoke-direct {v0}, Lcom/paypal/android/sdk/payments/bj;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/paypal/android/sdk/payments/d;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->j:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->o:Z

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/paypal/android/sdk/payments/d;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->j:Z

    iput-boolean v1, p0, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->o:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->d:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->e:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->f:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_7a

    move v0, v1

    :goto_32
    iput-boolean v0, p0, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->g:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->h:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->i:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_7c

    move v0, v1

    :goto_47
    iput-boolean v0, p0, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->j:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->k:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->l:Ljava/lang/String;

    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->m:Landroid/net/Uri;

    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->n:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_7e

    :goto_77
    iput-boolean v1, p0, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->o:Z

    return-void

    :cond_7a
    move v0, v2

    goto :goto_32

    :cond_7c
    move v0, v2

    goto :goto_47

    :cond_7e
    move v1, v2

    goto :goto_77
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static a(ZLjava/lang/String;)V
    .registers 5

    if-nez p0, :cond_1a

    sget-object v0, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is invalid.  Please see the docs."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    return-void
.end method

.method public static final getApplicationCorrelationId(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->getClientMetadataId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getClientMetadataId(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    new-instance v0, Lcom/paypal/android/sdk/a;

    new-instance v1, Lcom/paypal/android/sdk/payments/d;

    invoke-direct {v1}, Lcom/paypal/android/sdk/payments/d;-><init>()V

    const-string v1, "AndroidBasePrefs"

    new-instance v2, Lcom/paypal/android/sdk/d;

    invoke-direct {v2}, Lcom/paypal/android/sdk/d;-><init>()V

    invoke-direct {v0, p0, v1, v2}, Lcom/paypal/android/sdk/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/paypal/android/sdk/d;)V

    sget-object v1, Lcom/paypal/android/sdk/payments/PayPalService;->a:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/a;->e()Ljava/lang/String;

    move-result-object v0

    const-string v2, "2.14.4"

    const/4 v3, 0x0

    invoke-static {v1, p0, v0, v2, v3}, Lcom/paypal/android/sdk/e;->a(Ljava/util/concurrent/ExecutorService;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getLibraryVersion()Ljava/lang/String;
    .registers 1

    const-string v0, "2.14.4"

    return-object v0
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final acceptCreditCards(Z)Lcom/paypal/android/sdk/payments/PayPalConfiguration;
    .registers 2

    iput-boolean p1, p0, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->j:Z

    return-object p0
.end method

.method final b()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/paypal/android/sdk/d;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "live"

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->c:Ljava/lang/String;

    const-string v0, "paypal.sdk"

    const-string v1, "defaulting to production environment"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->c:Ljava/lang/String;

    return-object v0
.end method

.method final c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final clientId(Ljava/lang/String;)Lcom/paypal/android/sdk/payments/PayPalConfiguration;
    .registers 2

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->k:Ljava/lang/String;

    return-object p0
.end method

.method final d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final defaultUserEmail(Ljava/lang/String;)Lcom/paypal/android/sdk/payments/PayPalConfiguration;
    .registers 2

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final defaultUserPhone(Ljava/lang/String;)Lcom/paypal/android/sdk/payments/PayPalConfiguration;
    .registers 2

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final defaultUserPhoneCountryCode(Ljava/lang/String;)Lcom/paypal/android/sdk/payments/PayPalConfiguration;
    .registers 2

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method final e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final environment(Ljava/lang/String;)Lcom/paypal/android/sdk/payments/PayPalConfiguration;
    .registers 2

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->c:Ljava/lang/String;

    return-object p0
.end method

.method final f()Z
    .registers 2

    iget-boolean v0, p0, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->g:Z

    return v0
.end method

.method public final forceDefaultsOnSandbox(Z)Lcom/paypal/android/sdk/payments/PayPalConfiguration;
    .registers 2

    iput-boolean p1, p0, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->g:Z

    return-object p0
.end method

.method final g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->h:Ljava/lang/String;

    return-object v0
.end method

.method final h()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->i:Ljava/lang/String;

    return-object v0
.end method

.method final i()Z
    .registers 2

    iget-boolean v0, p0, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->j:Z

    return v0
.end method

.method final j()Z
    .registers 2

    iget-boolean v0, p0, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->o:Z

    return v0
.end method

.method final k()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->k:Ljava/lang/String;

    return-object v0
.end method

.method final l()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final languageOrLocale(Ljava/lang/String;)Lcom/paypal/android/sdk/payments/PayPalConfiguration;
    .registers 2

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->b:Ljava/lang/String;

    return-object p0
.end method

.method final m()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->m:Landroid/net/Uri;

    return-object v0
.end method

.method public final merchantName(Ljava/lang/String;)Lcom/paypal/android/sdk/payments/PayPalConfiguration;
    .registers 2

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->l:Ljava/lang/String;

    return-object p0
.end method

.method public final merchantPrivacyPolicyUri(Landroid/net/Uri;)Lcom/paypal/android/sdk/payments/PayPalConfiguration;
    .registers 2

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->m:Landroid/net/Uri;

    return-object p0
.end method

.method public final merchantUserAgreementUri(Landroid/net/Uri;)Lcom/paypal/android/sdk/payments/PayPalConfiguration;
    .registers 2

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->n:Landroid/net/Uri;

    return-object p0
.end method

.method final n()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->n:Landroid/net/Uri;

    return-object v0
.end method

.method final o()Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "environment"

    invoke-static {v2, v3, v4}, Lcom/paypal/android/sdk/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    const-string v2, "environment"

    invoke-static {v3, v2}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->a(ZLjava/lang/String;)V

    if-eqz v3, :cond_37

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/paypal/android/sdk/bp;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    move v2, v0

    :goto_20
    if-eqz v3, :cond_35

    if-eqz v2, :cond_35

    :goto_24
    return v0

    :cond_25
    sget-object v2, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->k:Ljava/lang/String;

    const-string v5, "clientId"

    invoke-static {v2, v4, v5}, Lcom/paypal/android/sdk/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const-string v4, "clientId"

    invoke-static {v2, v4}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->a(ZLjava/lang/String;)V

    goto :goto_20

    :cond_35
    move v0, v1

    goto :goto_24

    :cond_37
    move v2, v1

    goto :goto_20
.end method

.method public final rememberUser(Z)Lcom/paypal/android/sdk/payments/PayPalConfiguration;
    .registers 2

    iput-boolean p1, p0, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->o:Z

    return-object p0
.end method

.method public final sandboxUserPassword(Ljava/lang/String;)Lcom/paypal/android/sdk/payments/PayPalConfiguration;
    .registers 2

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->h:Ljava/lang/String;

    return-object p0
.end method

.method public final sandboxUserPin(Ljava/lang/String;)Lcom/paypal/android/sdk/payments/PayPalConfiguration;
    .registers 2

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->i:Ljava/lang/String;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": {environment:%s, client_id:%s, languageOrLocale:%s}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->k:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->g:Z

    if-eqz v0, :cond_54

    move v0, v1

    :goto_20
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->j:Z

    if-eqz v0, :cond_56

    move v0, v1

    :goto_33
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->m:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->n:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-boolean v0, p0, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->o:Z

    if-eqz v0, :cond_58

    :goto_4f
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    return-void

    :cond_54
    move v0, v2

    goto :goto_20

    :cond_56
    move v0, v2

    goto :goto_33

    :cond_58
    move v1, v2

    goto :goto_4f
.end method
