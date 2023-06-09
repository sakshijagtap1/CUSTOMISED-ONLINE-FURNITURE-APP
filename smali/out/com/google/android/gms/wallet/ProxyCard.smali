.class public final Lcom/google/android/gms/wallet/ProxyCard;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/ProxyCard;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field aHi:Ljava/lang/String;

.field aHj:Ljava/lang/String;

.field aHk:I

.field aHl:I

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/wallet/zzr;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/zzr;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/ProxyCard;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;II)V
    .registers 6

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wallet/ProxyCard;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/wallet/ProxyCard;->aHi:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/wallet/ProxyCard;->aHj:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/wallet/ProxyCard;->aHk:I

    iput p5, p0, Lcom/google/android/gms/wallet/ProxyCard;->aHl:I

    return-void
.end method


# virtual methods
.method public getCvn()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/ProxyCard;->aHj:Ljava/lang/String;

    return-object v0
.end method

.method public getExpirationMonth()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/wallet/ProxyCard;->aHk:I

    return v0
.end method

.method public getExpirationYear()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/wallet/ProxyCard;->aHl:I

    return v0
.end method

.method public getPan()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/ProxyCard;->aHi:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/wallet/ProxyCard;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/zzr;->zza(Lcom/google/android/gms/wallet/ProxyCard;Landroid/os/Parcel;I)V

    return-void
.end method
