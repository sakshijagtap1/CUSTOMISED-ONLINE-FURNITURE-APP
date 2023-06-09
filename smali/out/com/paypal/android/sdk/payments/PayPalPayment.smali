.class public final Lcom/paypal/android/sdk/payments/PayPalPayment;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final PAYMENT_INTENT_AUTHORIZE:Ljava/lang/String; = "authorize"

.field public static final PAYMENT_INTENT_ORDER:Ljava/lang/String; = "order"

.field public static final PAYMENT_INTENT_SALE:Ljava/lang/String; = "sale"

.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/math/BigDecimal;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;

.field private g:Ljava/lang/String;

.field private h:[Lcom/paypal/android/sdk/payments/PayPalItem;

.field private i:Z

.field private j:Lcom/paypal/android/sdk/payments/ShippingAddress;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/paypal/android/sdk/payments/PayPalPayment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/payments/PayPalPayment;->a:Ljava/lang/String;

    new-instance v0, Lcom/paypal/android/sdk/payments/br;

    invoke-direct {v0}, Lcom/paypal/android/sdk/payments/br;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/payments/PayPalPayment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->c:Ljava/lang/String;

    :try_start_a
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->b:Ljava/math/BigDecimal;
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_15} :catch_72

    :goto_15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->d:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->g:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->e:Ljava/lang/String;

    const-class v0, Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->f:Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_46

    new-array v0, v0, [Lcom/paypal/android/sdk/payments/PayPalItem;

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->h:[Lcom/paypal/android/sdk/payments/PayPalItem;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->h:[Lcom/paypal/android/sdk/payments/PayPalItem;

    sget-object v2, Lcom/paypal/android/sdk/payments/PayPalItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    :cond_46
    const-class v0, Lcom/paypal/android/sdk/payments/ShippingAddress;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/payments/ShippingAddress;

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->j:Lcom/paypal/android/sdk/payments/ShippingAddress;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_70

    move v0, v1

    :goto_5b
    iput-boolean v0, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->i:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->k:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->l:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->m:Ljava/lang/String;

    return-void

    :cond_70
    const/4 v0, 0x0

    goto :goto_5b

    :catch_72
    move-exception v0

    goto :goto_15
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/paypal/android/sdk/payments/PayPalPayment;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigDecimal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->b:Ljava/math/BigDecimal;

    iput-object p2, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->f:Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->e:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalPayment;->toString()Ljava/lang/String;

    return-void
.end method

.method private static a(ZLjava/lang/String;)V
    .registers 5

    if-nez p0, :cond_1a

    const-string v0, "paypal.sdk"

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

.method private static a(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 6

    invoke-static {p0}, Lcom/paypal/android/sdk/d;->d(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p2, :cond_30

    const-string v0, "paypal.sdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is too long (max "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_2f
    return v0

    :cond_30
    const/4 v0, 0x1

    goto :goto_2f
.end method


# virtual methods
.method protected final a()Ljava/math/BigDecimal;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->b:Ljava/math/BigDecimal;

    return-object v0
.end method

.method protected final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final bnCode(Ljava/lang/String;)Lcom/paypal/android/sdk/payments/PayPalPayment;
    .registers 2

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->e:Ljava/lang/String;

    return-object p0
.end method

.method protected final c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final custom(Ljava/lang/String;)Lcom/paypal/android/sdk/payments/PayPalPayment;
    .registers 2

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->l:Ljava/lang/String;

    return-object p0
.end method

.method protected final d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected final e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final enablePayPalShippingAddressesRetrieval(Z)Lcom/paypal/android/sdk/payments/PayPalPayment;
    .registers 2

    iput-boolean p1, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->i:Z

    return-object p0
.end method

.method protected final f()Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->f:Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;

    return-object v0
.end method

.method protected final g()[Lcom/paypal/android/sdk/payments/PayPalItem;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->h:[Lcom/paypal/android/sdk/payments/PayPalItem;

    return-object v0
.end method

.method public final getAmountAsLocalizedString()Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->b:Ljava/math/BigDecimal;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    invoke-static {}, Lcom/paypal/android/sdk/de;->a()Lcom/paypal/android/sdk/de;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v1}, Lcom/paypal/android/sdk/de;->c()Lcom/paypal/android/sdk/ei;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/sdk/ei;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->b:Ljava/math/BigDecimal;

    invoke-virtual {v2}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v2

    iget-object v4, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->c:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/paypal/android/sdk/ek;->a(Ljava/util/Locale;Ljava/lang/String;DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public final getProvidedShippingAddress()Lcom/paypal/android/sdk/payments/ShippingAddress;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->j:Lcom/paypal/android/sdk/payments/ShippingAddress;

    return-object v0
.end method

.method protected final h()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->k:Ljava/lang/String;

    return-object v0
.end method

.method protected final i()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final invoiceNumber(Ljava/lang/String;)Lcom/paypal/android/sdk/payments/PayPalPayment;
    .registers 2

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->k:Ljava/lang/String;

    return-object p0
.end method

.method public final isEnablePayPalShippingAddressesRetrieval()Z
    .registers 2

    iget-boolean v0, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->i:Z

    return v0
.end method

.method public final isNoShipping()Z
    .registers 2

    iget-boolean v0, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->i:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->j:Lcom/paypal/android/sdk/payments/ShippingAddress;

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final isProcessable()Z
    .registers 14

    const/16 v12, 0x100

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/paypal/android/sdk/ek;->a(Ljava/lang/String;)Z

    move-result v7

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->b:Ljava/math/BigDecimal;

    iget-object v3, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->c:Ljava/lang/String;

    invoke-static {v0, v3, v1}, Lcom/paypal/android/sdk/ek;->a(Ljava/math/BigDecimal;Ljava/lang/String;Z)Z

    move-result v8

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/paypal/android/sdk/d;->b(Ljava/lang/CharSequence;)Z

    move-result v9

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/paypal/android/sdk/d;->d(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_ae

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->g:Ljava/lang/String;

    const-string v3, "sale"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->g:Ljava/lang/String;

    const-string v3, "authorize"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->g:Ljava/lang/String;

    const-string v3, "order"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ae

    :cond_3e
    move v0, v1

    :goto_3f
    iget-object v3, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->f:Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;

    if-nez v3, :cond_b0

    move v3, v1

    :goto_44
    iget-object v4, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->e:Ljava/lang/String;

    invoke-static {v4}, Lcom/paypal/android/sdk/d;->c(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b7

    move v4, v1

    :goto_4d
    iget-object v5, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->h:[Lcom/paypal/android/sdk/payments/PayPalItem;

    if-eqz v5, :cond_56

    iget-object v5, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->h:[Lcom/paypal/android/sdk/payments/PayPalItem;

    array-length v5, v5

    if-nez v5, :cond_be

    :cond_56
    move v5, v1

    :goto_57
    iget-object v6, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->k:Ljava/lang/String;

    const-string v10, "invoiceNumber"

    invoke-static {v6, v10, v12}, Lcom/paypal/android/sdk/payments/PayPalPayment;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_d5

    move v6, v2

    :goto_62
    iget-object v10, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->l:Ljava/lang/String;

    const-string v11, "custom"

    invoke-static {v10, v11, v12}, Lcom/paypal/android/sdk/payments/PayPalPayment;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v10

    if-nez v10, :cond_6d

    move v6, v2

    :cond_6d
    iget-object v10, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->m:Ljava/lang/String;

    const-string v11, "softDescriptor"

    const/16 v12, 0x16

    invoke-static {v10, v11, v12}, Lcom/paypal/android/sdk/payments/PayPalPayment;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v10

    if-nez v10, :cond_7a

    move v6, v2

    :cond_7a
    const-string v10, "currencyCode"

    invoke-static {v7, v10}, Lcom/paypal/android/sdk/payments/PayPalPayment;->a(ZLjava/lang/String;)V

    const-string v10, "amount"

    invoke-static {v8, v10}, Lcom/paypal/android/sdk/payments/PayPalPayment;->a(ZLjava/lang/String;)V

    const-string v10, "shortDescription"

    invoke-static {v9, v10}, Lcom/paypal/android/sdk/payments/PayPalPayment;->a(ZLjava/lang/String;)V

    const-string v10, "paymentIntent"

    invoke-static {v0, v10}, Lcom/paypal/android/sdk/payments/PayPalPayment;->a(ZLjava/lang/String;)V

    const-string v10, "details"

    invoke-static {v3, v10}, Lcom/paypal/android/sdk/payments/PayPalPayment;->a(ZLjava/lang/String;)V

    const-string v10, "bnCode"

    invoke-static {v4, v10}, Lcom/paypal/android/sdk/payments/PayPalPayment;->a(ZLjava/lang/String;)V

    const-string v10, "items"

    invoke-static {v5, v10}, Lcom/paypal/android/sdk/payments/PayPalPayment;->a(ZLjava/lang/String;)V

    if-eqz v7, :cond_d3

    if-eqz v8, :cond_d3

    if-eqz v9, :cond_d3

    if-eqz v3, :cond_d3

    if-eqz v0, :cond_d3

    if-eqz v4, :cond_d3

    if-eqz v5, :cond_d3

    if-eqz v6, :cond_d3

    :goto_ad
    return v1

    :cond_ae
    move v0, v2

    goto :goto_3f

    :cond_b0
    iget-object v3, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->f:Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;

    invoke-virtual {v3}, Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;->isProcessable()Z

    move-result v3

    goto :goto_44

    :cond_b7
    iget-object v4, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->e:Ljava/lang/String;

    invoke-static {v4}, Lcom/paypal/android/sdk/d;->c(Ljava/lang/String;)Z

    move-result v4

    goto :goto_4d

    :cond_be
    iget-object v6, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->h:[Lcom/paypal/android/sdk/payments/PayPalItem;

    array-length v10, v6

    move v5, v2

    :goto_c2
    if-ge v5, v10, :cond_d1

    aget-object v11, v6, v5

    invoke-virtual {v11}, Lcom/paypal/android/sdk/payments/PayPalItem;->isValid()Z

    move-result v11

    if-nez v11, :cond_ce

    move v5, v2

    goto :goto_57

    :cond_ce
    add-int/lit8 v5, v5, 0x1

    goto :goto_c2

    :cond_d1
    move v5, v1

    goto :goto_57

    :cond_d3
    move v1, v2

    goto :goto_ad

    :cond_d5
    move v6, v1

    goto :goto_62
.end method

.method public final items([Lcom/paypal/android/sdk/payments/PayPalItem;)Lcom/paypal/android/sdk/payments/PayPalPayment;
    .registers 2

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->h:[Lcom/paypal/android/sdk/payments/PayPalItem;

    return-object p0
.end method

.method protected final j()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final paymentDetails(Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;)Lcom/paypal/android/sdk/payments/PayPalPayment;
    .registers 2

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->f:Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;

    return-object p0
.end method

.method public final providedShippingAddress(Lcom/paypal/android/sdk/payments/ShippingAddress;)Lcom/paypal/android/sdk/payments/PayPalPayment;
    .registers 2

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->j:Lcom/paypal/android/sdk/payments/ShippingAddress;

    return-object p0
.end method

.method public final softDescriptor(Ljava/lang/String;)Lcom/paypal/android/sdk/payments/PayPalPayment;
    .registers 2

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->m:Ljava/lang/String;

    return-object p0
.end method

.method public final toJSONObject()Lorg/json/JSONObject;
    .registers 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "amount"

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->b:Ljava/math/BigDecimal;

    invoke-virtual {v2}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "currency_code"

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->f:Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;

    if-eqz v1, :cond_26

    const-string v1, "details"

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->f:Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_26
    const-string v1, "short_description"

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "intent"

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->g:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/paypal/android/sdk/d;->d(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_47

    const-string v1, "bn_code"

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_47
    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->h:[Lcom/paypal/android/sdk/payments/PayPalItem;

    if-eqz v1, :cond_65

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->h:[Lcom/paypal/android/sdk/payments/PayPalItem;

    array-length v1, v1

    if-lez v1, :cond_65

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "items"

    iget-object v3, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->h:[Lcom/paypal/android/sdk/payments/PayPalItem;

    invoke-static {v3}, Lcom/paypal/android/sdk/payments/PayPalItem;->toJSONArray([Lcom/paypal/android/sdk/payments/PayPalItem;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "item_list"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_65
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_65} :catch_66

    :cond_65
    :goto_65
    return-object v0

    :catch_66
    move-exception v0

    const-string v1, "paypal.sdk"

    const-string v2, "error encoding JSON"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_65
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    const-string v1, "PayPalPayment: {%s: $%s %s, %s}"

    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->d:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->b:Ljava/math/BigDecimal;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->b:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_15
    aput-object v0, v2, v3

    const/4 v0, 0x2

    iget-object v3, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->c:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v0, 0x3

    iget-object v3, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->g:Ljava/lang/String;

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->b:Ljava/math/BigDecimal;

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->d:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->g:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->e:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->f:Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->h:[Lcom/paypal/android/sdk/payments/PayPalItem;

    if-eqz v1, :cond_4f

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->h:[Lcom/paypal/android/sdk/payments/PayPalItem;

    array-length v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->h:[Lcom/paypal/android/sdk/payments/PayPalItem;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    :goto_32
    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->j:Lcom/paypal/android/sdk/payments/ShippingAddress;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-boolean v1, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->i:Z

    if-eqz v1, :cond_3c

    const/4 v0, 0x1

    :cond_3c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalPayment;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_4f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_32
.end method
