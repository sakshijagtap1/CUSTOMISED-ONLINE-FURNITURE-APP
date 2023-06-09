.class public final Lcom/google/android/gms/wallet/FullWalletRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/wallet/FullWalletRequest$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/FullWalletRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field aFP:Ljava/lang/String;

.field aFQ:Ljava/lang/String;

.field aGa:Lcom/google/android/gms/wallet/Cart;

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/wallet/zzf;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/FullWalletRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/wallet/FullWalletRequest;->mVersionCode:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/wallet/Cart;)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wallet/FullWalletRequest;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/wallet/FullWalletRequest;->aFP:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/wallet/FullWalletRequest;->aFQ:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/wallet/FullWalletRequest;->aGa:Lcom/google/android/gms/wallet/Cart;

    return-void
.end method

.method public static newBuilder()Lcom/google/android/gms/wallet/FullWalletRequest$Builder;
    .registers 3

    new-instance v0, Lcom/google/android/gms/wallet/FullWalletRequest$Builder;

    new-instance v1, Lcom/google/android/gms/wallet/FullWalletRequest;

    invoke-direct {v1}, Lcom/google/android/gms/wallet/FullWalletRequest;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/wallet/FullWalletRequest$Builder;-><init>(Lcom/google/android/gms/wallet/FullWalletRequest;Lcom/google/android/gms/wallet/FullWalletRequest$1;)V

    return-object v0
.end method


# virtual methods
.method public getCart()Lcom/google/android/gms/wallet/Cart;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/FullWalletRequest;->aGa:Lcom/google/android/gms/wallet/Cart;

    return-object v0
.end method

.method public getGoogleTransactionId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/FullWalletRequest;->aFP:Ljava/lang/String;

    return-object v0
.end method

.method public getMerchantTransactionId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/FullWalletRequest;->aFQ:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/wallet/FullWalletRequest;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/zzf;->zza(Lcom/google/android/gms/wallet/FullWalletRequest;Landroid/os/Parcel;I)V

    return-void
.end method
