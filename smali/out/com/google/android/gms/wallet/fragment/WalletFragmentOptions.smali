.class public final Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private Dr:I

.field private aHp:I

.field private aId:Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;

.field private mTheme:I

.field final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/wallet/fragment/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/fragment/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->mVersionCode:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->aHp:I

    new-instance v0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->aId:Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;

    return-void
.end method

.method constructor <init>(IIILcom/google/android/gms/wallet/fragment/WalletFragmentStyle;I)V
    .registers 6

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->aHp:I

    iput p3, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->mTheme:I

    iput-object p4, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->aId:Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;

    iput p5, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->Dr:I

    return-void
.end method

.method public static newBuilder()Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions$Builder;
    .registers 3

    new-instance v0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions$Builder;

    new-instance v1, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;

    invoke-direct {v1}, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions$Builder;-><init>(Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions$1;)V

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;I)I
    .registers 2

    iput p1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->aHp:I

    return p1
.end method

.method static synthetic zza(Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;)Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->aId:Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;

    return-object p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;I)I
    .registers 2

    iput p1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->mTheme:I

    return p1
.end method

.method static synthetic zzc(Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;I)I
    .registers 2

    iput p1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->Dr:I

    return p1
.end method

.method public static zzc(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;
    .registers 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/google/android/gms/R$styleable;->WalletFragmentOptions:[I

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/google/android/gms/R$styleable;->WalletFragmentOptions_appTheme:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    sget v2, Lcom/google/android/gms/R$styleable;->WalletFragmentOptions_environment:I

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    sget v3, Lcom/google/android/gms/R$styleable;->WalletFragmentOptions_fragmentStyle:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    sget v4, Lcom/google/android/gms/R$styleable;->WalletFragmentOptions_fragmentMode:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;-><init>()V

    iput v1, v0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->mTheme:I

    iput v2, v0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->aHp:I

    new-instance v1, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;

    invoke-direct {v1}, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;-><init>()V

    invoke-virtual {v1, v3}, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->setStyleResourceId(I)Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->aId:Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;

    iget-object v1, v0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->aId:Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->zzei(Landroid/content/Context;)V

    iput v4, v0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->Dr:I

    return-object v0
.end method


# virtual methods
.method public getEnvironment()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->aHp:I

    return v0
.end method

.method public getFragmentStyle()Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->aId:Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;

    return-object v0
.end method

.method public getMode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->Dr:I

    return v0
.end method

.method public getTheme()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->mTheme:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/fragment/zzb;->zza(Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzei(Landroid/content/Context;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->aId:Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->aId:Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->zzei(Landroid/content/Context;)V

    :cond_9
    return-void
.end method
