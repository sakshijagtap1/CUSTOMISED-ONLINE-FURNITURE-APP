.class public final Lcom/google/android/gms/wallet/MaskedWallet;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/wallet/MaskedWallet$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/MaskedWallet;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field aFP:Ljava/lang/String;

.field aFQ:Ljava/lang/String;

.field aFS:Ljava/lang/String;

.field aFT:Lcom/google/android/gms/wallet/Address;

.field aFU:Lcom/google/android/gms/wallet/Address;

.field aFV:[Ljava/lang/String;

.field aFW:Lcom/google/android/gms/identity/intents/model/UserAddress;

.field aFX:Lcom/google/android/gms/identity/intents/model/UserAddress;

.field aFY:[Lcom/google/android/gms/wallet/InstrumentInfo;

.field aGL:[Lcom/google/android/gms/wallet/LoyaltyWalletObject;

.field aGM:[Lcom/google/android/gms/wallet/OfferWalletObject;

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/wallet/zzl;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/zzl;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/MaskedWallet;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/wallet/MaskedWallet;->mVersionCode:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/wallet/Address;Lcom/google/android/gms/wallet/Address;[Lcom/google/android/gms/wallet/LoyaltyWalletObject;[Lcom/google/android/gms/wallet/OfferWalletObject;Lcom/google/android/gms/identity/intents/model/UserAddress;Lcom/google/android/gms/identity/intents/model/UserAddress;[Lcom/google/android/gms/wallet/InstrumentInfo;)V
    .registers 13

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wallet/MaskedWallet;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/wallet/MaskedWallet;->aFP:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/wallet/MaskedWallet;->aFQ:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/wallet/MaskedWallet;->aFV:[Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/wallet/MaskedWallet;->aFS:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/wallet/MaskedWallet;->aFT:Lcom/google/android/gms/wallet/Address;

    iput-object p7, p0, Lcom/google/android/gms/wallet/MaskedWallet;->aFU:Lcom/google/android/gms/wallet/Address;

    iput-object p8, p0, Lcom/google/android/gms/wallet/MaskedWallet;->aGL:[Lcom/google/android/gms/wallet/LoyaltyWalletObject;

    iput-object p9, p0, Lcom/google/android/gms/wallet/MaskedWallet;->aGM:[Lcom/google/android/gms/wallet/OfferWalletObject;

    iput-object p10, p0, Lcom/google/android/gms/wallet/MaskedWallet;->aFW:Lcom/google/android/gms/identity/intents/model/UserAddress;

    iput-object p11, p0, Lcom/google/android/gms/wallet/MaskedWallet;->aFX:Lcom/google/android/gms/identity/intents/model/UserAddress;

    iput-object p12, p0, Lcom/google/android/gms/wallet/MaskedWallet;->aFY:[Lcom/google/android/gms/wallet/InstrumentInfo;

    return-void
.end method

.method public static newBuilderFrom(Lcom/google/android/gms/wallet/MaskedWallet;)Lcom/google/android/gms/wallet/MaskedWallet$Builder;
    .registers 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzab;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/wallet/MaskedWallet;->zzcid()Lcom/google/android/gms/wallet/MaskedWallet$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/wallet/MaskedWallet;->getGoogleTransactionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->setGoogleTransactionId(Ljava/lang/String;)Lcom/google/android/gms/wallet/MaskedWallet$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/wallet/MaskedWallet;->getMerchantTransactionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->setMerchantTransactionId(Ljava/lang/String;)Lcom/google/android/gms/wallet/MaskedWallet$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/wallet/MaskedWallet;->getPaymentDescriptions()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->setPaymentDescriptions([Ljava/lang/String;)Lcom/google/android/gms/wallet/MaskedWallet$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/wallet/MaskedWallet;->getInstrumentInfos()[Lcom/google/android/gms/wallet/InstrumentInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->setInstrumentInfos([Lcom/google/android/gms/wallet/InstrumentInfo;)Lcom/google/android/gms/wallet/MaskedWallet$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/wallet/MaskedWallet;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->setEmail(Ljava/lang/String;)Lcom/google/android/gms/wallet/MaskedWallet$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/wallet/MaskedWallet;->zzcie()[Lcom/google/android/gms/wallet/LoyaltyWalletObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->zza([Lcom/google/android/gms/wallet/LoyaltyWalletObject;)Lcom/google/android/gms/wallet/MaskedWallet$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/wallet/MaskedWallet;->zzcif()[Lcom/google/android/gms/wallet/OfferWalletObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->zza([Lcom/google/android/gms/wallet/OfferWalletObject;)Lcom/google/android/gms/wallet/MaskedWallet$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/wallet/MaskedWallet;->getBuyerBillingAddress()Lcom/google/android/gms/identity/intents/model/UserAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->setBuyerBillingAddress(Lcom/google/android/gms/identity/intents/model/UserAddress;)Lcom/google/android/gms/wallet/MaskedWallet$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/wallet/MaskedWallet;->getBuyerShippingAddress()Lcom/google/android/gms/identity/intents/model/UserAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->setBuyerShippingAddress(Lcom/google/android/gms/identity/intents/model/UserAddress;)Lcom/google/android/gms/wallet/MaskedWallet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static zzcid()Lcom/google/android/gms/wallet/MaskedWallet$Builder;
    .registers 3

    new-instance v0, Lcom/google/android/gms/wallet/MaskedWallet$Builder;

    new-instance v1, Lcom/google/android/gms/wallet/MaskedWallet;

    invoke-direct {v1}, Lcom/google/android/gms/wallet/MaskedWallet;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/wallet/MaskedWallet$Builder;-><init>(Lcom/google/android/gms/wallet/MaskedWallet;Lcom/google/android/gms/wallet/MaskedWallet$1;)V

    return-object v0
.end method


# virtual methods
.method public getBuyerBillingAddress()Lcom/google/android/gms/identity/intents/model/UserAddress;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet;->aFW:Lcom/google/android/gms/identity/intents/model/UserAddress;

    return-object v0
.end method

.method public getBuyerShippingAddress()Lcom/google/android/gms/identity/intents/model/UserAddress;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet;->aFX:Lcom/google/android/gms/identity/intents/model/UserAddress;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet;->aFS:Ljava/lang/String;

    return-object v0
.end method

.method public getGoogleTransactionId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet;->aFP:Ljava/lang/String;

    return-object v0
.end method

.method public getInstrumentInfos()[Lcom/google/android/gms/wallet/InstrumentInfo;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet;->aFY:[Lcom/google/android/gms/wallet/InstrumentInfo;

    return-object v0
.end method

.method public getMerchantTransactionId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet;->aFQ:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentDescriptions()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet;->aFV:[Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/wallet/MaskedWallet;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/zzl;->zza(Lcom/google/android/gms/wallet/MaskedWallet;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzcie()[Lcom/google/android/gms/wallet/LoyaltyWalletObject;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet;->aGL:[Lcom/google/android/gms/wallet/LoyaltyWalletObject;

    return-object v0
.end method

.method public zzcif()[Lcom/google/android/gms/wallet/OfferWalletObject;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet;->aGM:[Lcom/google/android/gms/wallet/OfferWalletObject;

    return-object v0
.end method
