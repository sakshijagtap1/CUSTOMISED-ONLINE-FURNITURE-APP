.class public Lcom/google/android/gms/internal/zzaei;
.super Lcom/google/android/gms/common/internal/zzk;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzaei$zzb;,
        Lcom/google/android/gms/internal/zzaei$zzc;,
        Lcom/google/android/gms/internal/zzaei$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzk",
        "<",
        "Lcom/google/android/gms/internal/zzaed;",
        ">;"
    }
.end annotation


# instance fields
.field private final aHp:I

.field private final aHq:Z

.field private final cb:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mTheme:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;IIZ)V
    .registers 16

    const/4 v3, 0x4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzk;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaei;->mContext:Landroid/content/Context;

    iput p6, p0, Lcom/google/android/gms/internal/zzaei;->aHp:I

    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/zzg;->getAccountName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaei;->cb:Ljava/lang/String;

    iput p7, p0, Lcom/google/android/gms/internal/zzaei;->mTheme:I

    iput-boolean p8, p0, Lcom/google/android/gms/internal/zzaei;->aHq:Z

    return-void
.end method

.method public static zza(ILjava/lang/String;Ljava/lang/String;IZ)Landroid/os/Bundle;
    .registers 9

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.google.android.gms.wallet.EXTRA_ENVIRONMENT"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "com.google.android.gms.wallet.EXTRA_USING_ANDROID_PAY_BRAND"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "androidPackageName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_26

    const-string v1, "com.google.android.gms.wallet.EXTRA_BUYER_ACCOUNT"

    new-instance v2, Landroid/accounts/Account;

    const-string v3, "com.google"

    invoke-direct {v2, p2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_26
    const-string v1, "com.google.android.gms.wallet.EXTRA_THEME"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method private zzcig()Landroid/os/Bundle;
    .registers 6

    iget v0, p0, Lcom/google/android/gms/internal/zzaei;->aHp:I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaei;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaei;->cb:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/gms/internal/zzaei;->mTheme:I

    iget-boolean v4, p0, Lcom/google/android/gms/internal/zzaei;->aHq:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzaei;->zza(ILjava/lang/String;Ljava/lang/String;IZ)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/wallet/FullWalletRequest;I)V
    .registers 7

    new-instance v1, Lcom/google/android/gms/internal/zzaei$zzc;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaei;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0, p2}, Lcom/google/android/gms/internal/zzaei$zzc;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaei;->zzcig()Landroid/os/Bundle;

    move-result-object v2

    :try_start_b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaei;->zzasa()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaed;

    invoke-interface {v0, p1, v2, v1}, Lcom/google/android/gms/internal/zzaed;->zza(Lcom/google/android/gms/wallet/FullWalletRequest;Landroid/os/Bundle;Lcom/google/android/gms/internal/zzaeg;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_14} :catch_15

    :goto_14
    return-void

    :catch_15
    move-exception v0

    const-string v2, "WalletClientImpl"

    const-string v3, "RemoteException getting full wallet"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0x8

    const/4 v2, 0x0

    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/zzaei$zzc;->zza(ILcom/google/android/gms/wallet/FullWallet;Landroid/os/Bundle;)V

    goto :goto_14
.end method

.method public zza(Lcom/google/android/gms/wallet/IsReadyToPayRequest;Lcom/google/android/gms/internal/zzpm$zzb;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/wallet/IsReadyToPayRequest;",
            "Lcom/google/android/gms/internal/zzpm$zzb",
            "<",
            "Lcom/google/android/gms/common/api/BooleanResult;",
            ">;)V"
        }
    .end annotation

    new-instance v1, Lcom/google/android/gms/internal/zzaei$zzb;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/zzaei$zzb;-><init>(Lcom/google/android/gms/internal/zzpm$zzb;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaei;->zzcig()Landroid/os/Bundle;

    move-result-object v2

    :try_start_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaei;->zzasa()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaed;

    invoke-interface {v0, p1, v2, v1}, Lcom/google/android/gms/internal/zzaed;->zza(Lcom/google/android/gms/wallet/IsReadyToPayRequest;Landroid/os/Bundle;Lcom/google/android/gms/internal/zzaeg;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_12} :catch_13

    :goto_12
    return-void

    :catch_13
    move-exception v0

    const-string v2, "WalletClientImpl"

    const-string v3, "RemoteException during isReadyToPay"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/google/android/gms/common/api/Status;->ss:Lcom/google/android/gms/common/api/Status;

    const/4 v2, 0x0

    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/zzaei$zzb;->zza(Lcom/google/android/gms/common/api/Status;ZLandroid/os/Bundle;)V

    goto :goto_12
.end method

.method public zza(Lcom/google/android/gms/wallet/MaskedWalletRequest;I)V
    .registers 7

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaei;->zzcig()Landroid/os/Bundle;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzaei$zzc;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaei;->mContext:Landroid/content/Context;

    invoke-direct {v2, v0, p2}, Lcom/google/android/gms/internal/zzaei$zzc;-><init>(Landroid/content/Context;I)V

    :try_start_b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaei;->zzasa()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaed;

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/gms/internal/zzaed;->zza(Lcom/google/android/gms/wallet/MaskedWalletRequest;Landroid/os/Bundle;Lcom/google/android/gms/internal/zzaeg;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_14} :catch_15

    :goto_14
    return-void

    :catch_15
    move-exception v0

    const-string v1, "WalletClientImpl"

    const-string v3, "RemoteException getting masked wallet"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0x8

    const/4 v1, 0x0

    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v2, v0, v1, v3}, Lcom/google/android/gms/internal/zzaei$zzc;->zza(ILcom/google/android/gms/wallet/MaskedWallet;Landroid/os/Bundle;)V

    goto :goto_14
.end method

.method public zza(Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaei;->zzcig()Landroid/os/Bundle;

    move-result-object v1

    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaei;->zzasa()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaed;

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/zzaed;->zza(Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;Landroid/os/Bundle;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    :goto_d
    return-void

    :catch_e
    move-exception v0

    goto :goto_d
.end method

.method public zzacd(I)V
    .registers 6

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaei;->zzcig()Landroid/os/Bundle;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzaei$zzc;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaei;->mContext:Landroid/content/Context;

    invoke-direct {v2, v0, p1}, Lcom/google/android/gms/internal/zzaei$zzc;-><init>(Landroid/content/Context;I)V

    :try_start_b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaei;->zzasa()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaed;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzaed;->zza(Landroid/os/Bundle;Lcom/google/android/gms/internal/zzaeg;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_14} :catch_15

    :goto_14
    return-void

    :catch_15
    move-exception v0

    const-string v1, "WalletClientImpl"

    const-string v3, "RemoteException during checkForPreAuthorization"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0x8

    const/4 v1, 0x0

    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v2, v0, v1, v3}, Lcom/google/android/gms/internal/zzaei$zzc;->zza(IZLandroid/os/Bundle;)V

    goto :goto_14
.end method

.method public zzace(I)V
    .registers 6

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaei;->zzcig()Landroid/os/Bundle;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzaei$zzc;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaei;->mContext:Landroid/content/Context;

    invoke-direct {v2, v0, p1}, Lcom/google/android/gms/internal/zzaei$zzc;-><init>(Landroid/content/Context;I)V

    :try_start_b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaei;->zzasa()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaed;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzaed;->zzb(Landroid/os/Bundle;Lcom/google/android/gms/internal/zzaeg;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_14} :catch_15

    :goto_14
    return-void

    :catch_15
    move-exception v0

    const-string v1, "WalletClientImpl"

    const-string v3, "RemoteException during isNewUser"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0x8

    const/4 v1, 0x0

    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v2, v0, v1, v3}, Lcom/google/android/gms/internal/zzaei$zzc;->zzb(IZLandroid/os/Bundle;)V

    goto :goto_14
.end method

.method public zzasb()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected synthetic zzbb(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzaei;->zzlp(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzaed;

    move-result-object v0

    return-object v0
.end method

.method public zzf(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaei;->zzcig()Landroid/os/Bundle;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzaei$zzc;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaei;->mContext:Landroid/content/Context;

    invoke-direct {v2, v0, p3}, Lcom/google/android/gms/internal/zzaei$zzc;-><init>(Landroid/content/Context;I)V

    :try_start_b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaei;->zzasa()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaed;

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/google/android/gms/internal/zzaed;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/zzaeg;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_14} :catch_15

    :goto_14
    return-void

    :catch_15
    move-exception v0

    const-string v1, "WalletClientImpl"

    const-string v3, "RemoteException changing masked wallet"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0x8

    const/4 v1, 0x0

    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v2, v0, v1, v3}, Lcom/google/android/gms/internal/zzaei$zzc;->zza(ILcom/google/android/gms/wallet/MaskedWallet;Landroid/os/Bundle;)V

    goto :goto_14
.end method

.method protected zzlp(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzaed;
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/internal/zzaed$zza;->zzll(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzaed;

    move-result-object v0

    return-object v0
.end method

.method protected zzqz()Ljava/lang/String;
    .registers 2

    const-string v0, "com.google.android.gms.wallet.service.BIND"

    return-object v0
.end method

.method protected zzra()Ljava/lang/String;
    .registers 2

    const-string v0, "com.google.android.gms.wallet.internal.IOwService"

    return-object v0
.end method
