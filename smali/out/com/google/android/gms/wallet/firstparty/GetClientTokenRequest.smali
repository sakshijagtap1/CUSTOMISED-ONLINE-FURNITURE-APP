.class public final Lcom/google/android/gms/wallet/firstparty/GetClientTokenRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/firstparty/GetClientTokenRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field aHy:Lcom/google/android/gms/wallet/firstparty/WalletCustomTheme;

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/wallet/firstparty/zze;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/firstparty/zze;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/firstparty/GetClientTokenRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/wallet/firstparty/GetClientTokenRequest;-><init>(ILcom/google/android/gms/wallet/firstparty/WalletCustomTheme;)V

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/wallet/firstparty/WalletCustomTheme;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wallet/firstparty/GetClientTokenRequest;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/wallet/firstparty/GetClientTokenRequest;->aHy:Lcom/google/android/gms/wallet/firstparty/WalletCustomTheme;

    return-void
.end method


# virtual methods
.method public getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/wallet/firstparty/GetClientTokenRequest;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/firstparty/zze;->zza(Lcom/google/android/gms/wallet/firstparty/GetClientTokenRequest;Landroid/os/Parcel;I)V

    return-void
.end method
