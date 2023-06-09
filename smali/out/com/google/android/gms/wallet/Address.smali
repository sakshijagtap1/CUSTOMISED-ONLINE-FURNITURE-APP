.class public final Lcom/google/android/gms/wallet/Address;
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
            "Lcom/google/android/gms/wallet/Address;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field aFG:Ljava/lang/String;

.field aFH:Ljava/lang/String;

.field aad:Ljava/lang/String;

.field aae:Ljava/lang/String;

.field aaf:Ljava/lang/String;

.field aak:Ljava/lang/String;

.field aam:Z

.field aan:Ljava/lang/String;

.field private final mVersionCode:I

.field name:Ljava/lang/String;

.field phoneNumber:Ljava/lang/String;

.field zzcgh:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/wallet/zza;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/Address;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/wallet/Address;->mVersionCode:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 13

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wallet/Address;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/wallet/Address;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/wallet/Address;->aad:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/wallet/Address;->aae:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/wallet/Address;->aaf:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/wallet/Address;->zzcgh:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/wallet/Address;->aFG:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/wallet/Address;->aFH:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/wallet/Address;->aak:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/wallet/Address;->phoneNumber:Ljava/lang/String;

    iput-boolean p11, p0, Lcom/google/android/gms/wallet/Address;->aam:Z

    iput-object p12, p0, Lcom/google/android/gms/wallet/Address;->aan:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/wallet/Address;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/zza;->zza(Lcom/google/android/gms/wallet/Address;Landroid/os/Parcel;I)V

    return-void
.end method
