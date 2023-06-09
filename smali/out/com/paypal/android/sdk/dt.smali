.class public final Lcom/paypal/android/sdk/dt;
.super Lcom/paypal/android/sdk/dp;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/util/Date;

.field private d:Ljava/lang/String;

.field private e:Lcom/paypal/android/sdk/dv;

.field private f:I

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/paypal/android/sdk/du;

    invoke-direct {v0}, Lcom/paypal/android/sdk/du;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/dt;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/paypal/android/sdk/dp;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Lcom/paypal/android/sdk/dp;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/dt;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/dt;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/dt;->d:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/paypal/android/sdk/dt;->c:Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/dv;

    iput-object v0, p0, Lcom/paypal/android/sdk/dt;->e:Lcom/paypal/android/sdk/dv;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/paypal/android/sdk/dt;->f:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/paypal/android/sdk/dt;->g:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/paypal/android/sdk/dt;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/paypal/android/sdk/a;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 10

    invoke-direct {p0}, Lcom/paypal/android/sdk/dp;-><init>()V

    invoke-virtual {p1, p3}, Lcom/paypal/android/sdk/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/dt;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/paypal/android/sdk/dt;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/paypal/android/sdk/dt;->c:Ljava/util/Date;

    invoke-direct {p0, p5}, Lcom/paypal/android/sdk/dt;->b(Ljava/lang/String;)V

    invoke-direct {p0, p6}, Lcom/paypal/android/sdk/dt;->c(Ljava/lang/String;)V

    iput p7, p0, Lcom/paypal/android/sdk/dt;->f:I

    iput p8, p0, Lcom/paypal/android/sdk/dt;->g:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 9

    invoke-direct {p0}, Lcom/paypal/android/sdk/dp;-><init>()V

    iput-object p2, p0, Lcom/paypal/android/sdk/dt;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/paypal/android/sdk/dt;->b:Ljava/lang/String;

    invoke-static {p3}, Lcom/paypal/android/sdk/ex;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/dt;->c:Ljava/util/Date;

    invoke-direct {p0, p4}, Lcom/paypal/android/sdk/dt;->b(Ljava/lang/String;)V

    invoke-direct {p0, p5}, Lcom/paypal/android/sdk/dt;->c(Ljava/lang/String;)V

    iput p6, p0, Lcom/paypal/android/sdk/dt;->f:I

    iput p7, p0, Lcom/paypal/android/sdk/dt;->g:I

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "x-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method private b(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/dt;->d:Ljava/lang/String;

    :goto_e
    return-void

    :cond_f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/paypal/android/sdk/dt;->d:Ljava/lang/String;

    goto :goto_e
.end method

.method private c(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Lcom/paypal/android/sdk/dv;->a(Ljava/lang/String;)Lcom/paypal/android/sdk/dv;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/dt;->e:Lcom/paypal/android/sdk/dv;

    return-void
.end method


# virtual methods
.method public final b()Z
    .registers 3

    iget-object v0, p0, Lcom/paypal/android/sdk/dt;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/paypal/android/sdk/d;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_49

    iget-object v0, p0, Lcom/paypal/android/sdk/dt;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/paypal/android/sdk/d;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_49

    iget-object v0, p0, Lcom/paypal/android/sdk/dt;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/paypal/android/sdk/d;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_49

    iget-object v0, p0, Lcom/paypal/android/sdk/dt;->c:Ljava/util/Date;

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/paypal/android/sdk/dt;->c:Ljava/util/Date;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_49

    iget-object v0, p0, Lcom/paypal/android/sdk/dt;->e:Lcom/paypal/android/sdk/dv;

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/paypal/android/sdk/dt;->e:Lcom/paypal/android/sdk/dv;

    sget-object v1, Lcom/paypal/android/sdk/dv;->a:Lcom/paypal/android/sdk/dv;

    if-eq v0, v1, :cond_49

    iget v0, p0, Lcom/paypal/android/sdk/dt;->f:I

    if-lez v0, :cond_49

    iget v0, p0, Lcom/paypal/android/sdk/dt;->f:I

    const/16 v1, 0xc

    if-gt v0, v1, :cond_49

    iget v0, p0, Lcom/paypal/android/sdk/dt;->g:I

    if-ltz v0, :cond_49

    iget v0, p0, Lcom/paypal/android/sdk/dt;->g:I

    const/16 v1, 0x270f

    if-gt v0, v1, :cond_49

    const/4 v0, 0x1

    :goto_48
    return v0

    :cond_49
    const/4 v0, 0x0

    goto :goto_48
.end method

.method public final c()Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/dt;->c:Ljava/util/Date;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/dt;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/paypal/android/sdk/dt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/dt;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final f()I
    .registers 2

    iget v0, p0, Lcom/paypal/android/sdk/dt;->f:I

    return v0
.end method

.method public final g()I
    .registers 2

    iget v0, p0, Lcom/paypal/android/sdk/dt;->g:I

    return v0
.end method

.method public final h()Lcom/paypal/android/sdk/dv;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/dt;->e:Lcom/paypal/android/sdk/dv;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TokenizedCreditCard(token="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/paypal/android/sdk/dt;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",lastFourDigits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/dt;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",payerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/dt;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",tokenValidUntil="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/dt;->c:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",cardType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/dt;->e:Lcom/paypal/android/sdk/dv;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",expiryMonth/year="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/paypal/android/sdk/dt;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/paypal/android/sdk/dt;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    iget-object v0, p0, Lcom/paypal/android/sdk/dt;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/dt;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/dt;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/dt;->c:Ljava/util/Date;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/dt;->e:Lcom/paypal/android/sdk/dv;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget v0, p0, Lcom/paypal/android/sdk/dt;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/paypal/android/sdk/dt;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
