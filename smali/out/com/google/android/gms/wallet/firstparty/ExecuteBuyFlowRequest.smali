.class public Lcom/google/android/gms/wallet/firstparty/ExecuteBuyFlowRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/firstparty/ExecuteBuyFlowRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field aHs:[B

.field aHt:[B

.field aHu:Lcom/google/android/gms/wallet/firstparty/WalletCustomTheme;

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/wallet/firstparty/zza;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/firstparty/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/firstparty/ExecuteBuyFlowRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(I[B[BLcom/google/android/gms/wallet/firstparty/WalletCustomTheme;)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wallet/firstparty/ExecuteBuyFlowRequest;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/wallet/firstparty/ExecuteBuyFlowRequest;->aHs:[B

    iput-object p3, p0, Lcom/google/android/gms/wallet/firstparty/ExecuteBuyFlowRequest;->aHt:[B

    iput-object p4, p0, Lcom/google/android/gms/wallet/firstparty/ExecuteBuyFlowRequest;->aHu:Lcom/google/android/gms/wallet/firstparty/WalletCustomTheme;

    return-void
.end method


# virtual methods
.method public getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/wallet/firstparty/ExecuteBuyFlowRequest;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/firstparty/zza;->zza(Lcom/google/android/gms/wallet/firstparty/ExecuteBuyFlowRequest;Landroid/os/Parcel;I)V

    return-void
.end method
