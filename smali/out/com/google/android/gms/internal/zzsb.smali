.class public final Lcom/google/android/gms/internal/zzsb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzsb$zza;,
        Lcom/google/android/gms/internal/zzsb$zzb;
    }
.end annotation


# static fields
.field private static KG:Lcom/google/android/gms/internal/zzsc;

.field private static final KH:Lcom/google/android/gms/internal/zzsb$zzb$zza;

.field public static final KI:Lcom/google/android/gms/internal/zzsb$zzb;

.field public static final KJ:Lcom/google/android/gms/internal/zzsb$zzb;

.field public static final KK:Lcom/google/android/gms/internal/zzsb$zzb;

.field public static final KL:Lcom/google/android/gms/internal/zzsb$zzb;

.field public static final KM:Lcom/google/android/gms/internal/zzsb$zzb;


# instance fields
.field private final KN:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/zzsb$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzsb$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzsb;->KH:Lcom/google/android/gms/internal/zzsb$zzb$zza;

    new-instance v0, Lcom/google/android/gms/internal/zzsb$2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzsb$2;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzsb;->KI:Lcom/google/android/gms/internal/zzsb$zzb;

    new-instance v0, Lcom/google/android/gms/internal/zzsb$3;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzsb$3;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzsb;->KJ:Lcom/google/android/gms/internal/zzsb$zzb;

    new-instance v0, Lcom/google/android/gms/internal/zzsb$4;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzsb$4;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzsb;->KK:Lcom/google/android/gms/internal/zzsb$zzb;

    new-instance v0, Lcom/google/android/gms/internal/zzsb$5;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzsb$5;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzsb;->KL:Lcom/google/android/gms/internal/zzsb$zzb;

    new-instance v0, Lcom/google/android/gms/internal/zzsb$6;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzsb$6;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzsb;->KM:Lcom/google/android/gms/internal/zzsb$zzb;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzab;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsb;->KN:Landroid/content/Context;

    return-void
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzsb$zzb;Ljava/lang/String;)Lcom/google/android/gms/internal/zzsb;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzsb$zza;
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    sget-object v0, Lcom/google/android/gms/internal/zzsb;->KH:Lcom/google/android/gms/internal/zzsb$zzb$zza;

    invoke-interface {p1, p0, p2, v0}, Lcom/google/android/gms/internal/zzsb$zzb;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzsb$zzb$zza;)Lcom/google/android/gms/internal/zzsb$zzb$zzb;

    move-result-object v2

    const-string v0, "DynamiteModule"

    iget v1, v2, Lcom/google/android/gms/internal/zzsb$zzb$zzb;->KP:I

    iget v3, v2, Lcom/google/android/gms/internal/zzsb$zzb$zzb;->KQ:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x44

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Considering local module "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " and remote module "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v2, Lcom/google/android/gms/internal/zzsb$zzb$zzb;->KR:I

    if-eqz v0, :cond_6a

    iget v0, v2, Lcom/google/android/gms/internal/zzsb$zzb$zzb;->KR:I

    if-ne v0, v7, :cond_62

    iget v0, v2, Lcom/google/android/gms/internal/zzsb$zzb$zzb;->KP:I

    if-eqz v0, :cond_6a

    :cond_62
    iget v0, v2, Lcom/google/android/gms/internal/zzsb$zzb$zzb;->KR:I

    if-ne v0, v9, :cond_99

    iget v0, v2, Lcom/google/android/gms/internal/zzsb$zzb$zzb;->KQ:I

    if-nez v0, :cond_99

    :cond_6a
    new-instance v0, Lcom/google/android/gms/internal/zzsb$zza;

    iget v1, v2, Lcom/google/android/gms/internal/zzsb$zzb$zzb;->KP:I

    iget v2, v2, Lcom/google/android/gms/internal/zzsb$zzb$zzb;->KQ:I

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x5b

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "No acceptable module found. Local version is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " and remote version is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v8}, Lcom/google/android/gms/internal/zzsb$zza;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzsb$1;)V

    throw v0

    :cond_99
    iget v0, v2, Lcom/google/android/gms/internal/zzsb$zzb$zzb;->KR:I

    if-ne v0, v7, :cond_a2

    invoke-static {p0, p2}, Lcom/google/android/gms/internal/zzsb;->zzv(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/internal/zzsb;

    move-result-object v0

    :goto_a1
    return-object v0

    :cond_a2
    iget v0, v2, Lcom/google/android/gms/internal/zzsb$zzb$zzb;->KR:I

    if-ne v0, v9, :cond_ee

    :try_start_a6
    iget v0, v2, Lcom/google/android/gms/internal/zzsb$zzb$zzb;->KQ:I

    invoke-static {p0, p2, v0}, Lcom/google/android/gms/internal/zzsb;->zza(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/gms/internal/zzsb;
    :try_end_ab
    .catch Lcom/google/android/gms/internal/zzsb$zza; {:try_start_a6 .. :try_end_ab} :catch_ad

    move-result-object v0

    goto :goto_a1

    :catch_ad
    move-exception v0

    move-object v1, v0

    const-string v3, "DynamiteModule"

    const-string v4, "Failed to load remote module: "

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzsb$zza;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_e0

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_c5
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v2, Lcom/google/android/gms/internal/zzsb$zzb$zzb;->KP:I

    if-eqz v0, :cond_e6

    iget v0, v2, Lcom/google/android/gms/internal/zzsb$zzb$zzb;->KP:I

    new-instance v2, Lcom/google/android/gms/internal/zzsb$7;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/zzsb$7;-><init>(I)V

    invoke-interface {p1, p0, p2, v2}, Lcom/google/android/gms/internal/zzsb$zzb;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzsb$zzb$zza;)Lcom/google/android/gms/internal/zzsb$zzb$zzb;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/internal/zzsb$zzb$zzb;->KR:I

    if-ne v0, v7, :cond_e6

    invoke-static {p0, p2}, Lcom/google/android/gms/internal/zzsb;->zzv(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/internal/zzsb;

    move-result-object v0

    goto :goto_a1

    :cond_e0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_c5

    :cond_e6
    new-instance v0, Lcom/google/android/gms/internal/zzsb$zza;

    const-string v2, "Remote load failed. No local fallback found."

    invoke-direct {v0, v2, v1, v8}, Lcom/google/android/gms/internal/zzsb$zza;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/android/gms/internal/zzsb$1;)V

    throw v0

    :cond_ee
    new-instance v0, Lcom/google/android/gms/internal/zzsb$zza;

    iget v1, v2, Lcom/google/android/gms/internal/zzsb$zzb$zzb;->KR:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "VersionPolicy returned invalid code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v8}, Lcom/google/android/gms/internal/zzsb$zza;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzsb$1;)V

    throw v0
.end method

.method private static zza(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/gms/internal/zzsb;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzsb$zza;
        }
    .end annotation

    const/4 v3, 0x0

    const-string v0, "DynamiteModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x33

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Selected remote version of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", version >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/google/android/gms/internal/zzsb;->zzcs(Landroid/content/Context;)Lcom/google/android/gms/internal/zzsc;

    move-result-object v0

    if-nez v0, :cond_3b

    new-instance v0, Lcom/google/android/gms/internal/zzsb$zza;

    const-string v1, "Failed to create IDynamiteLoader."

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/zzsb$zza;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzsb$1;)V

    throw v0

    :cond_3b
    :try_start_3b
    invoke-static {p0}, Lcom/google/android/gms/dynamic/zze;->zzac(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/gms/internal/zzsc;->zza(Lcom/google/android/gms/dynamic/zzd;Ljava/lang/String;I)Lcom/google/android/gms/dynamic/zzd;
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_42} :catch_51

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzad(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5a

    new-instance v0, Lcom/google/android/gms/internal/zzsb$zza;

    const-string v1, "Failed to load remote module."

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/zzsb$zza;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzsb$1;)V

    throw v0

    :catch_51
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzsb$zza;

    const-string v2, "Failed to load remote module."

    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/gms/internal/zzsb$zza;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/android/gms/internal/zzsb$1;)V

    throw v1

    :cond_5a
    new-instance v1, Lcom/google/android/gms/internal/zzsb;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzad(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzsb;-><init>(Landroid/content/Context;)V

    return-object v1
.end method

.method private static zzcs(Landroid/content/Context;)Lcom/google/android/gms/internal/zzsc;
    .registers 7

    const/4 v1, 0x0

    const-class v2, Lcom/google/android/gms/internal/zzsb;

    monitor-enter v2

    :try_start_4
    sget-object v0, Lcom/google/android/gms/internal/zzsb;->KG:Lcom/google/android/gms/internal/zzsc;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/google/android/gms/internal/zzsb;->KG:Lcom/google/android/gms/internal/zzsc;

    monitor-exit v2

    :goto_b
    return-object v0

    :cond_c
    invoke-static {}, Lcom/google/android/gms/common/zzc;->zzang()Lcom/google/android/gms/common/zzc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/zzc;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_19

    monitor-exit v2
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_3a

    move-object v0, v1

    goto :goto_b

    :cond_19
    :try_start_19
    const-string v0, "com.google.android.gms"

    const/4 v3, 0x3

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v3, "com.google.android.gms.chimera.container.DynamiteLoaderImpl"

    invoke-virtual {v0, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzsc$zza;->zzfd(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzsc;

    move-result-object v0

    if-eqz v0, :cond_57

    sput-object v0, Lcom/google/android/gms/internal/zzsb;->KG:Lcom/google/android/gms/internal/zzsc;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_38} :catch_3d
    .catchall {:try_start_19 .. :try_end_38} :catchall_3a

    :try_start_38
    monitor-exit v2

    goto :goto_b

    :catchall_3a
    move-exception v0

    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_3a

    throw v0

    :catch_3d
    move-exception v0

    :try_start_3e
    const-string v3, "DynamiteModule"

    const-string v4, "Failed to load IDynamiteLoader from GmsCore: "

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_5a

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_54
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_57
    monitor-exit v2

    move-object v0, v1

    goto :goto_b

    :cond_5a
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_5f
    .catchall {:try_start_3e .. :try_end_5f} :catchall_3a

    goto :goto_54
.end method

.method public static zzd(Landroid/content/Context;Ljava/lang/String;Z)I
    .registers 8

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzsb;->zzcs(Landroid/content/Context;)Lcom/google/android/gms/internal/zzsc;

    move-result-object v0

    if-nez v0, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    :try_start_9
    invoke-static {p0}, Lcom/google/android/gms/dynamic/zze;->zzac(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v2

    invoke-interface {v0, v2, p1, p2}, Lcom/google/android/gms/internal/zzsc;->zza(Lcom/google/android/gms/dynamic/zzd;Ljava/lang/String;Z)I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_10} :catch_12

    move-result v0

    goto :goto_8

    :catch_12
    move-exception v0

    const-string v2, "DynamiteModule"

    const-string v3, "Failed to retrieve remote module version: "

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2e

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_29
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_8

    :cond_2e
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_29
.end method

.method public static zzt(Landroid/content/Context;Ljava/lang/String;)I
    .registers 9

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v2, "com.google.android.gms.dynamite.descriptors."

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ModuleDescriptor"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "MODULE_ID"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const-string v3, "MODULE_VERSION"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ad

    const-string v0, "DynamiteModule"

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x33

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Module descriptor id \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' didn\'t match expected id \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :goto_ac
    return v0

    :cond_ad
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_b1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_b1} :catch_b3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b1} :catch_de

    move-result v0

    goto :goto_ac

    :catch_b3
    move-exception v0

    const-string v0, "DynamiteModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2d

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Local module descriptor class for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_dc
    move v0, v1

    goto :goto_ac

    :catch_de
    move-exception v0

    const-string v2, "DynamiteModule"

    const-string v3, "Failed to load module descriptor class: "

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_f9

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_f5
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_dc

    :cond_f9
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_f5
.end method

.method public static zzu(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/zzsb;->zzd(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method private static zzv(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/internal/zzsb;
    .registers 6

    const-string v1, "DynamiteModule"

    const-string v2, "Selected local version of "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1f

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_12
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/google/android/gms/internal/zzsb;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzsb;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_1f
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_12
.end method


# virtual methods
.method public zzbby()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsb;->KN:Landroid/content/Context;

    return-object v0
.end method

.method public zziu(Ljava/lang/String;)Landroid/os/IBinder;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzsb$zza;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsb;->KN:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;
    :try_end_10
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_10} :catch_11
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_10} :catch_2f
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_10} :catch_31

    return-object v0

    :catch_11
    move-exception v0

    :goto_12
    new-instance v2, Lcom/google/android/gms/internal/zzsb$zza;

    const-string v3, "Failed to instantiate module class: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_29

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_24
    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3}, Lcom/google/android/gms/internal/zzsb$zza;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/android/gms/internal/zzsb$1;)V

    throw v2

    :cond_29
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_24

    :catch_2f
    move-exception v0

    goto :goto_12

    :catch_31
    move-exception v0

    goto :goto_12
.end method
