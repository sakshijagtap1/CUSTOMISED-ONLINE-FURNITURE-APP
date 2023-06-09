.class final Lcom/paypal/android/sdk/payments/dx;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private a:Lorg/json/JSONArray;

.field private b:Lcom/paypal/android/sdk/payments/ShippingAddress;

.field private c:I

.field private d:I

.field private e:Lorg/json/JSONObject;

.field private f:Lorg/json/JSONArray;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/paypal/android/sdk/payments/dy;

    invoke-direct {v0}, Lcom/paypal/android/sdk/payments/dy;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/payments/dx;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    const/4 v0, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/paypal/android/sdk/payments/dx;->c:I

    iput v0, p0, Lcom/paypal/android/sdk/payments/dx;->g:I

    if-eqz p1, :cond_5e

    :try_start_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5f

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/paypal/android/sdk/payments/dx;->a:Lorg/json/JSONArray;
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_18} :catch_63

    :goto_18
    const-class v0, Lcom/paypal/android/sdk/payments/ShippingAddress;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/payments/ShippingAddress;

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/dx;->b:Lcom/paypal/android/sdk/payments/ShippingAddress;

    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_67

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/paypal/android/sdk/payments/dx;->e:Lorg/json/JSONObject;
    :try_end_33
    .catch Lorg/json/JSONException; {:try_start_26 .. :try_end_33} :catch_6b

    :goto_33
    :try_start_33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6f

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/paypal/android/sdk/payments/dx;->f:Lorg/json/JSONArray;
    :try_end_40
    .catch Lorg/json/JSONException; {:try_start_33 .. :try_end_40} :catch_73

    :goto_40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/dx;->h:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/dx;->i:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/paypal/android/sdk/payments/dx;->g:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/paypal/android/sdk/payments/dx;->c:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/paypal/android/sdk/payments/dx;->d:I

    :cond_5e
    return-void

    :cond_5f
    const/4 v0, 0x0

    :try_start_60
    iput-object v0, p0, Lcom/paypal/android/sdk/payments/dx;->a:Lorg/json/JSONArray;
    :try_end_62
    .catch Lorg/json/JSONException; {:try_start_60 .. :try_end_62} :catch_63

    goto :goto_18

    :catch_63
    move-exception v0

    iput-object v2, p0, Lcom/paypal/android/sdk/payments/dx;->a:Lorg/json/JSONArray;

    goto :goto_18

    :cond_67
    const/4 v0, 0x0

    :try_start_68
    iput-object v0, p0, Lcom/paypal/android/sdk/payments/dx;->e:Lorg/json/JSONObject;
    :try_end_6a
    .catch Lorg/json/JSONException; {:try_start_68 .. :try_end_6a} :catch_6b

    goto :goto_33

    :catch_6b
    move-exception v0

    iput-object v2, p0, Lcom/paypal/android/sdk/payments/dx;->e:Lorg/json/JSONObject;

    goto :goto_33

    :cond_6f
    const/4 v0, 0x0

    :try_start_70
    iput-object v0, p0, Lcom/paypal/android/sdk/payments/dx;->f:Lorg/json/JSONArray;
    :try_end_72
    .catch Lorg/json/JSONException; {:try_start_70 .. :try_end_72} :catch_73

    goto :goto_40

    :catch_73
    move-exception v0

    iput-object v2, p0, Lcom/paypal/android/sdk/payments/dx;->f:Lorg/json/JSONArray;

    goto :goto_40
.end method

.method public constructor <init>(Lcom/paypal/android/sdk/fg;Lcom/paypal/android/sdk/payments/ShippingAddress;)V
    .registers 5

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/paypal/android/sdk/payments/dx;->c:I

    iput v1, p0, Lcom/paypal/android/sdk/payments/dx;->g:I

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fg;->v()Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/dx;->a:Lorg/json/JSONArray;

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fg;->w()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/dx;->e:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fg;->x()Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/dx;->f:Lorg/json/JSONArray;

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fg;->t()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/dx;->h:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fg;->u()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/dx;->i:Ljava/lang/String;

    iput-object p2, p0, Lcom/paypal/android/sdk/payments/dx;->b:Lcom/paypal/android/sdk/payments/ShippingAddress;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dx;->b:Lcom/paypal/android/sdk/payments/ShippingAddress;

    if-eqz v0, :cond_3a

    const/4 v0, 0x0

    iput v0, p0, Lcom/paypal/android/sdk/payments/dx;->c:I

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dx;->b:Lcom/paypal/android/sdk/payments/ShippingAddress;

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/dx;->a:Lorg/json/JSONArray;

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/payments/dx;->a(Lcom/paypal/android/sdk/payments/ShippingAddress;Lorg/json/JSONArray;)I

    move-result v0

    iput v0, p0, Lcom/paypal/android/sdk/payments/dx;->d:I

    :goto_39
    return-void

    :cond_3a
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dx;->a:Lorg/json/JSONArray;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/dx;->a(Lorg/json/JSONArray;)I

    move-result v0

    iput v0, p0, Lcom/paypal/android/sdk/payments/dx;->c:I

    iput v1, p0, Lcom/paypal/android/sdk/payments/dx;->d:I

    goto :goto_39
.end method

.method private static a(Lcom/paypal/android/sdk/payments/ShippingAddress;Lorg/json/JSONArray;)I
    .registers 4

    if-eqz p0, :cond_19

    if-eqz p1, :cond_19

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_19

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/paypal/android/sdk/payments/ShippingAddress;->a(Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_16

    :goto_15
    return v0

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_19
    const/4 v0, -0x1

    goto :goto_15
.end method

.method private static a(Lorg/json/JSONArray;)I
    .registers 5

    const/4 v1, 0x0

    if-nez p0, :cond_5

    const/4 v0, -0x1

    :cond_4
    :goto_4
    return v0

    :cond_5
    move v0, v1

    :goto_6
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1b

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "default_address"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_1b
    move v0, v1

    goto :goto_4
.end method


# virtual methods
.method public final a()Lorg/json/JSONArray;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dx;->a:Lorg/json/JSONArray;

    return-object v0
.end method

.method public final a(I)V
    .registers 2

    iput p1, p0, Lcom/paypal/android/sdk/payments/dx;->g:I

    return-void
.end method

.method public final b()Lcom/paypal/android/sdk/payments/ShippingAddress;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dx;->b:Lcom/paypal/android/sdk/payments/ShippingAddress;

    return-object v0
.end method

.method public final b(I)V
    .registers 2

    iput p1, p0, Lcom/paypal/android/sdk/payments/dx;->c:I

    return-void
.end method

.method public final c()Lorg/json/JSONObject;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dx;->e:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final d()Lorg/json/JSONArray;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dx;->f:Lorg/json/JSONArray;

    return-object v0
.end method

.method public final describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dx;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dx;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final g()I
    .registers 2

    iget v0, p0, Lcom/paypal/android/sdk/payments/dx;->g:I

    if-gez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget v0, p0, Lcom/paypal/android/sdk/payments/dx;->g:I

    goto :goto_5
.end method

.method public final h()I
    .registers 2

    iget v0, p0, Lcom/paypal/android/sdk/payments/dx;->c:I

    if-gez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget v0, p0, Lcom/paypal/android/sdk/payments/dx;->c:I

    goto :goto_5
.end method

.method public final i()I
    .registers 2

    iget v0, p0, Lcom/paypal/android/sdk/payments/dx;->d:I

    return v0
.end method

.method public final j()Z
    .registers 3

    iget v0, p0, Lcom/paypal/android/sdk/payments/dx;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public final k()Z
    .registers 3

    iget v0, p0, Lcom/paypal/android/sdk/payments/dx;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public final l()Lorg/json/JSONObject;
    .registers 3

    iget v0, p0, Lcom/paypal/android/sdk/payments/dx;->g:I

    if-gtz v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dx;->f:Lorg/json/JSONArray;

    iget v1, p0, Lcom/paypal/android/sdk/payments/dx;->g:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_5
.end method

.method public final m()Lorg/json/JSONObject;
    .registers 3

    iget v0, p0, Lcom/paypal/android/sdk/payments/dx;->c:I

    if-gez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dx;->b:Lcom/paypal/android/sdk/payments/ShippingAddress;

    if-eqz v0, :cond_37

    iget v0, p0, Lcom/paypal/android/sdk/payments/dx;->c:I

    if-nez v0, :cond_22

    iget v0, p0, Lcom/paypal/android/sdk/payments/dx;->d:I

    if-gez v0, :cond_19

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dx;->b:Lcom/paypal/android/sdk/payments/ShippingAddress;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/ShippingAddress;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_5

    :cond_19
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dx;->a:Lorg/json/JSONArray;

    iget v1, p0, Lcom/paypal/android/sdk/payments/dx;->d:I

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_5

    :cond_22
    iget v0, p0, Lcom/paypal/android/sdk/payments/dx;->c:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/paypal/android/sdk/payments/dx;->d:I

    if-ltz v1, :cond_30

    iget v1, p0, Lcom/paypal/android/sdk/payments/dx;->d:I

    if-lt v0, v1, :cond_30

    add-int/lit8 v0, v0, 0x1

    :cond_30
    iget-object v1, p0, Lcom/paypal/android/sdk/payments/dx;->a:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_5

    :cond_37
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dx;->a:Lorg/json/JSONArray;

    iget v1, p0, Lcom/paypal/android/sdk/payments/dx;->c:I

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_5
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dx;->a:Lorg/json/JSONArray;

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dx;->a:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dx;->b:Lcom/paypal/android/sdk/payments/ShippingAddress;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dx;->e:Lorg/json/JSONObject;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dx;->e:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dx;->f:Lorg/json/JSONArray;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dx;->f:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2b
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dx;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dx;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/paypal/android/sdk/payments/dx;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/paypal/android/sdk/payments/dx;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/paypal/android/sdk/payments/dx;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_48
    move-object v0, v1

    goto :goto_b

    :cond_4a
    move-object v0, v1

    goto :goto_1e
.end method
