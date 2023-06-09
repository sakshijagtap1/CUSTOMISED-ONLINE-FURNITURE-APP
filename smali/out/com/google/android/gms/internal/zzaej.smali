.class public Lcom/google/android/gms/internal/zzaej;
.super Lcom/google/android/gms/dynamic/zzg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/dynamic/zzg",
        "<",
        "Lcom/google/android/gms/internal/zzaee;",
        ">;"
    }
.end annotation


# static fields
.field private static aIo:Lcom/google/android/gms/internal/zzaej;


# direct methods
.method protected constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.wallet.dynamite.WalletDynamiteCreatorImpl"

    invoke-direct {p0, v0}, Lcom/google/android/gms/dynamic/zzg;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static zza(Landroid/app/Activity;Lcom/google/android/gms/dynamic/zzc;Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;Lcom/google/android/gms/internal/zzaec;)Lcom/google/android/gms/internal/zzaeb;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_c

    new-instance v1, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;-><init>(I)V

    throw v1

    :cond_c
    :try_start_c
    invoke-static {}, Lcom/google/android/gms/internal/zzaej;->zzcih()Lcom/google/android/gms/internal/zzaej;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzaej;->zzcr(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaee;

    invoke-static {p0}, Lcom/google/android/gms/dynamic/zze;->zzac(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/google/android/gms/internal/zzaee;->zza(Lcom/google/android/gms/dynamic/zzd;Lcom/google/android/gms/dynamic/zzc;Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;Lcom/google/android/gms/internal/zzaec;)Lcom/google/android/gms/internal/zzaeb;
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_1d} :catch_1f
    .catch Lcom/google/android/gms/dynamic/zzg$zza; {:try_start_c .. :try_end_1d} :catch_26

    move-result-object v0

    return-object v0

    :catch_1f
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_26
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static zzcih()Lcom/google/android/gms/internal/zzaej;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/zzaej;->aIo:Lcom/google/android/gms/internal/zzaej;

    if-nez v0, :cond_b

    new-instance v0, Lcom/google/android/gms/internal/zzaej;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaej;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzaej;->aIo:Lcom/google/android/gms/internal/zzaej;

    :cond_b
    sget-object v0, Lcom/google/android/gms/internal/zzaej;->aIo:Lcom/google/android/gms/internal/zzaej;

    return-object v0
.end method


# virtual methods
.method protected synthetic zzc(Landroid/os/IBinder;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzaej;->zzlq(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzaee;

    move-result-object v0

    return-object v0
.end method

.method protected zzlq(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzaee;
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/internal/zzaee$zza;->zzlm(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzaee;

    move-result-object v0

    return-object v0
.end method
