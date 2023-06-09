.class public Lcom/google/android/gms/wallet/firstparty/WalletCustomTheme;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/firstparty/WalletCustomTheme;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field aHE:I

.field aHF:Landroid/os/Bundle;

.field aHG:Ljava/lang/String;

.field final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/wallet/firstparty/zzj;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/firstparty/zzj;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/firstparty/WalletCustomTheme;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/wallet/firstparty/WalletCustomTheme;->mVersionCode:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/wallet/firstparty/WalletCustomTheme;->aHE:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wallet/firstparty/WalletCustomTheme;->aHF:Landroid/os/Bundle;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/wallet/firstparty/WalletCustomTheme;->aHG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(IILandroid/os/Bundle;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wallet/firstparty/WalletCustomTheme;->mVersionCode:I

    iput-object p3, p0, Lcom/google/android/gms/wallet/firstparty/WalletCustomTheme;->aHF:Landroid/os/Bundle;

    iput p2, p0, Lcom/google/android/gms/wallet/firstparty/WalletCustomTheme;->aHE:I

    iput-object p4, p0, Lcom/google/android/gms/wallet/firstparty/WalletCustomTheme;->aHG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/firstparty/zzj;->zza(Lcom/google/android/gms/wallet/firstparty/WalletCustomTheme;Landroid/os/Parcel;I)V

    return-void
.end method
