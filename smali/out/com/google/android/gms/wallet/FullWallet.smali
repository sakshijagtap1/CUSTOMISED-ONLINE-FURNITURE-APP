.class public final Lcom/google/android/gms/wallet/FullWallet;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/FullWallet;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field aFP:Ljava/lang/String;

.field aFQ:Ljava/lang/String;

.field aFR:Lcom/google/android/gms/wallet/ProxyCard;

.field aFS:Ljava/lang/String;

.field aFT:Lcom/google/android/gms/wallet/Address;

.field aFU:Lcom/google/android/gms/wallet/Address;

.field aFV:[Ljava/lang/String;

.field aFW:Lcom/google/android/gms/identity/intents/model/UserAddress;

.field aFX:Lcom/google/android/gms/identity/intents/model/UserAddress;

.field aFY:[Lcom/google/android/gms/wallet/InstrumentInfo;

.field aFZ:Lcom/google/android/gms/wallet/PaymentMethodToken;

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/wallet/zze;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/zze;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/FullWallet;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/wallet/FullWallet;->mVersionCode:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/wallet/ProxyCard;Ljava/lang/String;Lcom/google/android/gms/wallet/Address;Lcom/google/android/gms/wallet/Address;[Ljava/lang/String;Lcom/google/android/gms/identity/intents/model/UserAddress;Lcom/google/android/gms/identity/intents/model/UserAddress;[Lcom/google/android/gms/wallet/InstrumentInfo;Lcom/google/android/gms/wallet/PaymentMethodToken;)V
    .registers 13

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wallet/FullWallet;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/wallet/FullWallet;->aFP:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/wallet/FullWallet;->aFQ:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/wallet/FullWallet;->aFR:Lcom/google/android/gms/wallet/ProxyCard;

    iput-object p5, p0, Lcom/google/android/gms/wallet/FullWallet;->aFS:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/wallet/FullWallet;->aFT:Lcom/google/android/gms/wallet/Address;

    iput-object p7, p0, Lcom/google/android/gms/wallet/FullWallet;->aFU:Lcom/google/android/gms/wallet/Address;

    iput-object p8, p0, Lcom/google/android/gms/wallet/FullWallet;->aFV:[Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/wallet/FullWallet;->aFW:Lcom/google/android/gms/identity/intents/model/UserAddress;

    iput-object p10, p0, Lcom/google/android/gms/wallet/FullWallet;->aFX:Lcom/google/android/gms/identity/intents/model/UserAddress;

    iput-object p11, p0, Lcom/google/android/gms/wallet/FullWallet;->aFY:[Lcom/google/android/gms/wallet/InstrumentInfo;

    iput-object p12, p0, Lcom/google/android/gms/wallet/FullWallet;->aFZ:Lcom/google/android/gms/wallet/PaymentMethodToken;

    return-void
.end method


# virtual methods
.method public getBuyerBillingAddress()Lcom/google/android/gms/identity/intents/model/UserAddress;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/FullWallet;->aFW:Lcom/google/android/gms/identity/intents/model/UserAddress;

    return-object v0
.end method

.method public getBuyerShippingAddress()Lcom/google/android/gms/identity/intents/model/UserAddress;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/FullWallet;->aFX:Lcom/google/android/gms/identity/intents/model/UserAddress;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/FullWallet;->aFS:Ljava/lang/String;

    return-object v0
.end method

.method public getGoogleTransactionId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/FullWallet;->aFP:Ljava/lang/String;

    return-object v0
.end method

.method public getInstrumentInfos()[Lcom/google/android/gms/wallet/InstrumentInfo;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/FullWallet;->aFY:[Lcom/google/android/gms/wallet/InstrumentInfo;

    return-object v0
.end method

.method public getMerchantTransactionId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/FullWallet;->aFQ:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentDescriptions()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/FullWallet;->aFV:[Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentMethodToken()Lcom/google/android/gms/wallet/PaymentMethodToken;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/FullWallet;->aFZ:Lcom/google/android/gms/wallet/PaymentMethodToken;

    return-object v0
.end method

.method public getProxyCard()Lcom/google/android/gms/wallet/ProxyCard;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/FullWallet;->aFR:Lcom/google/android/gms/wallet/ProxyCard;

    return-object v0
.end method

.method public getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/wallet/FullWallet;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/zze;->zza(Lcom/google/android/gms/wallet/FullWallet;Landroid/os/Parcel;I)V

    return-void
.end method
