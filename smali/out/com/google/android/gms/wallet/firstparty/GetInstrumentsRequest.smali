.class public final Lcom/google/android/gms/wallet/firstparty/GetInstrumentsRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/firstparty/GetInstrumentsRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field aHA:[I

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/wallet/firstparty/zzg;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/firstparty/zzg;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/firstparty/GetInstrumentsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/wallet/firstparty/GetInstrumentsRequest;-><init>(I[I)V

    return-void
.end method

.method constructor <init>(I[I)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wallet/firstparty/GetInstrumentsRequest;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/wallet/firstparty/GetInstrumentsRequest;->aHA:[I

    return-void
.end method


# virtual methods
.method public getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/wallet/firstparty/GetInstrumentsRequest;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/firstparty/zzg;->zza(Lcom/google/android/gms/wallet/firstparty/GetInstrumentsRequest;Landroid/os/Parcel;I)V

    return-void
.end method
