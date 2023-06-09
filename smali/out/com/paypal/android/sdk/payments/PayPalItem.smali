.class public final Lcom/paypal/android/sdk/payments/PayPalItem;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/Integer;

.field private final d:Ljava/math/BigDecimal;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/paypal/android/sdk/payments/PayPalItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/payments/PayPalItem;->a:Ljava/lang/String;

    new-instance v0, Lcom/paypal/android/sdk/payments/bp;

    invoke-direct {v0}, Lcom/paypal/android/sdk/payments/bp;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/payments/PayPalItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalItem;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalItem;->c:Ljava/lang/Integer;

    :try_start_13
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalItem;->d:Ljava/math/BigDecimal;
    :try_end_1e
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_1e} :catch_2b

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalItem;->e:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalItem;->f:Ljava/lang/String;

    return-void

    :catch_2b
    move-exception v0

    sget-object v1, Lcom/paypal/android/sdk/payments/PayPalItem;->a:Ljava/lang/String;

    const-string v2, "bad price"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/paypal/android/sdk/payments/PayPalItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/math/BigDecimal;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/PayPalItem;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/paypal/android/sdk/payments/PayPalItem;->c:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/paypal/android/sdk/payments/PayPalItem;->d:Ljava/math/BigDecimal;

    iput-object p4, p0, Lcom/paypal/android/sdk/payments/PayPalItem;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/paypal/android/sdk/payments/PayPalItem;->f:Ljava/lang/String;

    return-void
.end method

.method public static getItemTotal([Lcom/paypal/android/sdk/payments/PayPalItem;)Ljava/math/BigDecimal;
    .registers 9

    new-instance v1, Ljava/math/BigDecimal;

    const-string v0, "0.00"

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    array-length v2, p0

    const/4 v0, 0x0

    :goto_9
    if-ge v0, v2, :cond_25

    aget-object v3, p0, v0

    iget-object v4, v3, Lcom/paypal/android/sdk/payments/PayPalItem;->d:Ljava/math/BigDecimal;

    iget-object v3, v3, Lcom/paypal/android/sdk/payments/PayPalItem;->c:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v6, v3

    invoke-static {v6, v7}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_25
    return-object v1
.end method

.method public static toJSONArray([Lcom/paypal/android/sdk/payments/PayPalItem;)Lorg/json/JSONArray;
    .registers 8

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    array-length v2, p0

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v2, :cond_49

    aget-object v3, p0, v0

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "quantity"

    iget-object v6, v3, Lcom/paypal/android/sdk/payments/PayPalItem;->c:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "name"

    iget-object v6, v3, Lcom/paypal/android/sdk/payments/PayPalItem;->b:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "price"

    iget-object v6, v3, Lcom/paypal/android/sdk/payments/PayPalItem;->d:Ljava/math/BigDecimal;

    invoke-virtual {v6}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "currency"

    iget-object v6, v3, Lcom/paypal/android/sdk/payments/PayPalItem;->e:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v5, v3, Lcom/paypal/android/sdk/payments/PayPalItem;->f:Ljava/lang/String;

    if-eqz v5, :cond_43

    const-string v5, "sku"

    iget-object v3, v3, Lcom/paypal/android/sdk/payments/PayPalItem;->f:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_43
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_49
    return-object v1
.end method


# virtual methods
.method public final describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Lcom/paypal/android/sdk/payments/PayPalItem;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/paypal/android/sdk/payments/PayPalItem;

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/paypal/android/sdk/payments/PayPalItem;->getName()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_1b

    if-eqz v3, :cond_21

    :cond_19
    move v0, v1

    goto :goto_4

    :cond_1b
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    :cond_21
    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalItem;->getQuantity()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Lcom/paypal/android/sdk/payments/PayPalItem;->getQuantity()Ljava/lang/Integer;

    move-result-object v3

    if-nez v2, :cond_2f

    if-eqz v3, :cond_35

    :cond_2d
    move v0, v1

    goto :goto_4

    :cond_2f
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    :cond_35
    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalItem;->getPrice()Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {p1}, Lcom/paypal/android/sdk/payments/PayPalItem;->getPrice()Ljava/math/BigDecimal;

    move-result-object v3

    if-nez v2, :cond_43

    if-eqz v3, :cond_49

    :cond_41
    move v0, v1

    goto :goto_4

    :cond_43
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    :cond_49
    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalItem;->getCurrency()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/paypal/android/sdk/payments/PayPalItem;->getCurrency()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_57

    if-eqz v3, :cond_5d

    :cond_55
    move v0, v1

    goto :goto_4

    :cond_57
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    :cond_5d
    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalItem;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/paypal/android/sdk/payments/PayPalItem;->getSku()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_6b

    if-eqz v3, :cond_4

    :goto_69
    move v0, v1

    goto :goto_4

    :cond_6b
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_69
.end method

.method public final getCurrency()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalItem;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalItem;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrice()Ljava/math/BigDecimal;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalItem;->d:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final getQuantity()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalItem;->c:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getSku()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalItem;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .registers 5

    const/16 v1, 0x2b

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalItem;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_33

    move v0, v1

    :goto_9
    add-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalItem;->getQuantity()Ljava/lang/Integer;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_38

    move v0, v1

    :goto_14
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalItem;->getPrice()Ljava/math/BigDecimal;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_3d

    move v0, v1

    :goto_1e
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalItem;->getCurrency()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_42

    move v0, v1

    :goto_28
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalItem;->getSku()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v0, v0, 0x3b

    if-nez v2, :cond_47

    :goto_31
    add-int/2addr v0, v1

    return v0

    :cond_33
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_9

    :cond_38
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_14

    :cond_3d
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1e

    :cond_42
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_28

    :cond_47
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_31
.end method

.method public final isValid()Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalItem;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gtz v1, :cond_11

    const-string v1, "paypal.sdk"

    const-string v2, "item.quantity must be a positive integer."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_10
    return v0

    :cond_11
    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalItem;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/paypal/android/sdk/ek;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    const-string v1, "paypal.sdk"

    const-string v2, "item.currency field is required, and must be a supported currency."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    :cond_21
    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalItem;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/paypal/android/sdk/d;->c(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_31

    const-string v1, "paypal.sdk"

    const-string v2, "item.name field is required."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    :cond_31
    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalItem;->d:Ljava/math/BigDecimal;

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/PayPalItem;->e:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/paypal/android/sdk/ek;->a(Ljava/math/BigDecimal;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_43

    const-string v1, "paypal.sdk"

    const-string v2, "item.price field is required."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    :cond_43
    const/4 v0, 0x1

    goto :goto_10
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PayPalItem(name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", quantity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalItem;->getQuantity()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", price="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalItem;->getPrice()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalItem;->getCurrency()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sku="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PayPalItem;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalItem;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalItem;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalItem;->d:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalItem;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalItem;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
