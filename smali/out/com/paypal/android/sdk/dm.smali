.class public final Lcom/paypal/android/sdk/dm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private a:Lcom/paypal/android/sdk/ev;

.field private b:Ljava/lang/String;

.field private c:Lcom/paypal/android/sdk/do;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/paypal/android/sdk/dn;

    invoke-direct {v0}, Lcom/paypal/android/sdk/dn;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/dm;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/paypal/android/sdk/ev;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/ev;

    iput-object v0, p0, Lcom/paypal/android/sdk/dm;->a:Lcom/paypal/android/sdk/ev;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/dm;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/do;

    iput-object v0, p0, Lcom/paypal/android/sdk/dm;->c:Lcom/paypal/android/sdk/do;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/paypal/android/sdk/ev;Lcom/paypal/android/sdk/do;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/paypal/android/sdk/dm;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/paypal/android/sdk/dm;->a:Lcom/paypal/android/sdk/ev;

    iput-object p3, p0, Lcom/paypal/android/sdk/dm;->c:Lcom/paypal/android/sdk/do;

    return-void
.end method


# virtual methods
.method public final a()Lcom/paypal/android/sdk/ev;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/dm;->a:Lcom/paypal/android/sdk/ev;

    return-object v0
.end method

.method public final a(Lcom/paypal/android/sdk/do;)V
    .registers 2

    iput-object p1, p0, Lcom/paypal/android/sdk/dm;->c:Lcom/paypal/android/sdk/do;

    return-void
.end method

.method public final a(Lcom/paypal/android/sdk/ev;)V
    .registers 2

    iput-object p1, p0, Lcom/paypal/android/sdk/dm;->a:Lcom/paypal/android/sdk/ev;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/paypal/android/sdk/dm;->b:Ljava/lang/String;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/dm;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Lcom/paypal/android/sdk/do;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/dm;->c:Lcom/paypal/android/sdk/do;

    return-object v0
.end method

.method public final d()Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/paypal/android/sdk/dm;->c:Lcom/paypal/android/sdk/do;

    if-eqz v2, :cond_26

    iget-object v2, p0, Lcom/paypal/android/sdk/dm;->a:Lcom/paypal/android/sdk/ev;

    if-nez v2, :cond_14

    iget-object v2, p0, Lcom/paypal/android/sdk/dm;->c:Lcom/paypal/android/sdk/do;

    sget-object v3, Lcom/paypal/android/sdk/do;->b:Lcom/paypal/android/sdk/do;

    invoke-virtual {v2, v3}, Lcom/paypal/android/sdk/do;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    :cond_14
    iget-object v2, p0, Lcom/paypal/android/sdk/dm;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/paypal/android/sdk/d;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2a

    iget-object v2, p0, Lcom/paypal/android/sdk/dm;->c:Lcom/paypal/android/sdk/do;

    sget-object v3, Lcom/paypal/android/sdk/do;->a:Lcom/paypal/android/sdk/do;

    invoke-virtual {v2, v3}, Lcom/paypal/android/sdk/do;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    :cond_26
    move v2, v0

    :goto_27
    if-nez v2, :cond_2c

    :goto_29
    return v0

    :cond_2a
    move v2, v1

    goto :goto_27

    :cond_2c
    move v0, v1

    goto :goto_29
.end method

.method public final describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-object v0, p0, Lcom/paypal/android/sdk/dm;->a:Lcom/paypal/android/sdk/ev;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/dm;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/dm;->c:Lcom/paypal/android/sdk/do;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
