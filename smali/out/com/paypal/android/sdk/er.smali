.class public Lcom/paypal/android/sdk/er;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field private static synthetic c:Z


# instance fields
.field private a:Ljava/math/BigDecimal;

.field private b:Ljava/util/Currency;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/paypal/android/sdk/er;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/paypal/android/sdk/er;->c:Z

    new-instance v0, Lcom/paypal/android/sdk/es;

    invoke-direct {v0}, Lcom/paypal/android/sdk/es;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/er;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    :cond_13
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/er;->a:Ljava/math/BigDecimal;

    :try_start_e
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/er;->b:Ljava/util/Currency;
    :try_end_18
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_18} :catch_19

    return-void

    :catch_19
    move-exception v0

    const-string v1, "MoneySpec"

    const-string v2, "Exception reading currency code from parcel"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Ljava/math/BigDecimal;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/paypal/android/sdk/er;->a:Ljava/math/BigDecimal;

    invoke-static {p2}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/er;->b:Ljava/util/Currency;

    return-void
.end method


# virtual methods
.method public final a()Ljava/math/BigDecimal;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/er;->a:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final b()Ljava/util/Currency;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/er;->b:Ljava/util/Currency;

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    sget-boolean v0, Lcom/paypal/android/sdk/er;->c:Z

    if-nez v0, :cond_e

    instance-of v0, p1, Lcom/paypal/android/sdk/er;

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_e
    check-cast p1, Lcom/paypal/android/sdk/er;

    iget-object v0, p1, Lcom/paypal/android/sdk/er;->a:Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/paypal/android/sdk/er;->a:Ljava/math/BigDecimal;

    if-ne v0, v1, :cond_22

    iget-object v0, p1, Lcom/paypal/android/sdk/er;->b:Ljava/util/Currency;

    iget-object v1, p0, Lcom/paypal/android/sdk/er;->b:Ljava/util/Currency;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lcom/paypal/android/sdk/er;->a:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/er;->b:Ljava/util/Currency;

    invoke-virtual {v0}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
