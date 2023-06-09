.class public final Lcom/google/android/gms/wallet/PaymentMethodToken;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/PaymentMethodToken;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field aHf:I

.field aoi:Ljava/lang/String;

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/wallet/zzp;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/zzp;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/PaymentMethodToken;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/wallet/PaymentMethodToken;->mVersionCode:I

    return-void
.end method

.method constructor <init>(IILjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wallet/PaymentMethodToken;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/wallet/PaymentMethodToken;->aHf:I

    iput-object p3, p0, Lcom/google/android/gms/wallet/PaymentMethodToken;->aoi:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPaymentMethodTokenizationType()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/wallet/PaymentMethodToken;->aHf:I

    return v0
.end method

.method public getToken()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/PaymentMethodToken;->aoi:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/wallet/PaymentMethodToken;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/zzp;->zza(Lcom/google/android/gms/wallet/PaymentMethodToken;Landroid/os/Parcel;I)V

    return-void
.end method
