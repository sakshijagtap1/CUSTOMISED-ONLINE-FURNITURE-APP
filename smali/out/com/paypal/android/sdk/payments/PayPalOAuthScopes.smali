.class public final Lcom/paypal/android/sdk/payments/PayPalOAuthScopes;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final PAYPAL_SCOPE_ADDRESS:Ljava/lang/String;

.field public static final PAYPAL_SCOPE_EMAIL:Ljava/lang/String;

.field public static final PAYPAL_SCOPE_FUTURE_PAYMENTS:Ljava/lang/String;

.field public static final PAYPAL_SCOPE_OPENID:Ljava/lang/String;

.field public static final PAYPAL_SCOPE_PAYPAL_ATTRIBUTES:Ljava/lang/String;

.field public static final PAYPAL_SCOPE_PHONE:Ljava/lang/String;

.field public static final PAYPAL_SCOPE_PROFILE:Ljava/lang/String;


# instance fields
.field private final a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/paypal/android/sdk/ak;->a:Lcom/paypal/android/sdk/ak;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/ak;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/payments/PayPalOAuthScopes;->PAYPAL_SCOPE_FUTURE_PAYMENTS:Ljava/lang/String;

    sget-object v0, Lcom/paypal/android/sdk/ak;->b:Lcom/paypal/android/sdk/ak;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/ak;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/payments/PayPalOAuthScopes;->PAYPAL_SCOPE_PROFILE:Ljava/lang/String;

    sget-object v0, Lcom/paypal/android/sdk/ak;->c:Lcom/paypal/android/sdk/ak;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/ak;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/payments/PayPalOAuthScopes;->PAYPAL_SCOPE_PAYPAL_ATTRIBUTES:Ljava/lang/String;

    sget-object v0, Lcom/paypal/android/sdk/ak;->e:Lcom/paypal/android/sdk/ak;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/ak;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/payments/PayPalOAuthScopes;->PAYPAL_SCOPE_EMAIL:Ljava/lang/String;

    sget-object v0, Lcom/paypal/android/sdk/ak;->f:Lcom/paypal/android/sdk/ak;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/ak;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/payments/PayPalOAuthScopes;->PAYPAL_SCOPE_ADDRESS:Ljava/lang/String;

    sget-object v0, Lcom/paypal/android/sdk/ak;->g:Lcom/paypal/android/sdk/ak;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/ak;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/payments/PayPalOAuthScopes;->PAYPAL_SCOPE_PHONE:Ljava/lang/String;

    sget-object v0, Lcom/paypal/android/sdk/ak;->d:Lcom/paypal/android/sdk/ak;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/ak;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/payments/PayPalOAuthScopes;->PAYPAL_SCOPE_OPENID:Ljava/lang/String;

    new-instance v0, Lcom/paypal/android/sdk/payments/bq;

    invoke-direct {v0}, Lcom/paypal/android/sdk/payments/bq;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/payments/PayPalOAuthScopes;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalOAuthScopes;->a:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalOAuthScopes;->a:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v0, 0x0

    :goto_f
    if-ge v0, v1, :cond_1d

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/PayPalOAuthScopes;->a:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1d
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/paypal/android/sdk/payments/PayPalOAuthScopes;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .registers 5

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/PayPalOAuthScopes;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/PayPalOAuthScopes;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_19
    return-void
.end method


# virtual methods
.method final a()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalOAuthScopes;->a:Ljava/util/List;

    return-object v0
.end method

.method final b()Ljava/lang/String;
    .registers 3

    const-string v0, " "

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalOAuthScopes;->a:Ljava/util/List;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/paypal/android/sdk/payments/PayPalOAuthScopes;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": {%s}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/paypal/android/sdk/payments/PayPalOAuthScopes;->a:Ljava/util/List;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalOAuthScopes;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_b
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalOAuthScopes;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_22

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalOAuthScopes;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    :cond_22
    return-void
.end method
