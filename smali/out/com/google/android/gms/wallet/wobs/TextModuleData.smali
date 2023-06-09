.class public final Lcom/google/android/gms/wallet/wobs/TextModuleData;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/wobs/TextModuleData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field aIz:Ljava/lang/String;

.field body:Ljava/lang/String;

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/wallet/wobs/zzf;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/wobs/zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/wobs/TextModuleData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/wallet/wobs/TextModuleData;->mVersionCode:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wallet/wobs/TextModuleData;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/wallet/wobs/TextModuleData;->aIz:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/wallet/wobs/TextModuleData;->body:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/wallet/wobs/TextModuleData;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/wobs/zzf;->zza(Lcom/google/android/gms/wallet/wobs/TextModuleData;Landroid/os/Parcel;I)V

    return-void
.end method
