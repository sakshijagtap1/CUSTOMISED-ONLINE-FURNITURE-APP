.class public final Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/math/BigDecimal;

.field private c:Ljava/math/BigDecimal;

.field private d:Ljava/math/BigDecimal;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;->a:Ljava/lang/String;

    new-instance v0, Lcom/paypal/android/sdk/payments/bs;

    invoke-direct {v0}, Lcom/paypal/android/sdk/payments/bs;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1f

    move-object v1, v0

    :goto_b
    iput-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;->c:Ljava/math/BigDecimal;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2e

    move-object v1, v0

    :goto_14
    iput-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;->b:Ljava/math/BigDecimal;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_34

    :goto_1c
    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;->d:Ljava/math/BigDecimal;

    return-void

    :cond_1f
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_24} :catch_25

    goto :goto_b

    :catch_25
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "error unparceling PayPalPaymentDetails"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    :try_start_2e
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_14

    :cond_34
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_39
    .catch Ljava/lang/NumberFormatException; {:try_start_2e .. :try_end_39} :catch_25

    goto :goto_1c
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigDecimal;Ljava/math/BigDecimal;Ljava/math/BigDecimal;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;->c:Ljava/math/BigDecimal;

    iput-object p2, p0, Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;->b:Ljava/math/BigDecimal;

    iput-object p3, p0, Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;->d:Ljava/math/BigDecimal;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final getShipping()Ljava/math/BigDecimal;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;->c:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final getSubtotal()Ljava/math/BigDecimal;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;->b:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final getTax()Ljava/math/BigDecimal;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;->d:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final isProcessable()Z
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;->b:Ljava/math/BigDecimal;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final toJSONObject()Lorg/json/JSONObject;
    .registers 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;->c:Ljava/math/BigDecimal;

    if-eqz v1, :cond_14

    const-string v1, "shipping"

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;->c:Ljava/math/BigDecimal;

    invoke-virtual {v2}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_14
    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;->b:Ljava/math/BigDecimal;

    if-eqz v1, :cond_23

    const-string v1, "subtotal"

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;->b:Ljava/math/BigDecimal;

    invoke-virtual {v2}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_23
    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;->d:Ljava/math/BigDecimal;

    if-eqz v1, :cond_32

    const-string v1, "tax"

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;->d:Ljava/math/BigDecimal;

    invoke-virtual {v2}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_32
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_32} :catch_33

    :cond_32
    :goto_32
    return-object v0

    :catch_33
    move-exception v0

    sget-object v1, Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;->a:Ljava/lang/String;

    const-string v2, "error encoding JSON"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_32
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;->c:Ljava/math/BigDecimal;

    if-nez v0, :cond_19

    move-object v0, v1

    :goto_6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;->b:Ljava/math/BigDecimal;

    if-nez v0, :cond_20

    move-object v0, v1

    :goto_e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;->d:Ljava/math/BigDecimal;

    if-nez v0, :cond_27

    :goto_15
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_19
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;->c:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_20
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;->b:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_27
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PayPalPaymentDetails;->d:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_15
.end method
