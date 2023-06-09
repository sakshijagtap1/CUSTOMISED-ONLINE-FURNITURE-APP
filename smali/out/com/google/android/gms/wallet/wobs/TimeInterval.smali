.class public final Lcom/google/android/gms/wallet/wobs/TimeInterval;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/wobs/TimeInterval;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field aIA:J

.field aIB:J

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/wallet/wobs/zzg;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/wobs/zzg;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/wobs/TimeInterval;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/wallet/wobs/TimeInterval;->mVersionCode:I

    return-void
.end method

.method constructor <init>(IJJ)V
    .registers 6

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wallet/wobs/TimeInterval;->mVersionCode:I

    iput-wide p2, p0, Lcom/google/android/gms/wallet/wobs/TimeInterval;->aIA:J

    iput-wide p4, p0, Lcom/google/android/gms/wallet/wobs/TimeInterval;->aIB:J

    return-void
.end method


# virtual methods
.method public getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/wallet/wobs/TimeInterval;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/wobs/zzg;->zza(Lcom/google/android/gms/wallet/wobs/TimeInterval;Landroid/os/Parcel;I)V

    return-void
.end method
