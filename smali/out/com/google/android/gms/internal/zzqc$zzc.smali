.class Lcom/google/android/gms/internal/zzqc$zzc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzqc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/google/android/gms/common/api/Api$ApiOptions;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;",
        "Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;"
    }
.end annotation


# instance fields
.field private final rQ:Lcom/google/android/gms/internal/zzpj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpj",
            "<TO;>;"
        }
    .end annotation
.end field

.field final synthetic uQ:Lcom/google/android/gms/internal/zzqc;

.field private final uS:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/android/gms/internal/zzpi;",
            ">;"
        }
    .end annotation
.end field

.field private final uT:Lcom/google/android/gms/common/api/Api$zze;

.field private final uU:Lcom/google/android/gms/common/api/Api$zzb;

.field private final uV:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/gms/internal/zzqy;",
            ">;"
        }
    .end annotation
.end field

.field private final uW:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/zzpl;",
            ">;"
        }
    .end annotation
.end field

.field private final uX:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/zzpm$zza;",
            ">;>;"
        }
    .end annotation
.end field

.field private uY:Lcom/google/android/gms/common/ConnectionResult;

.field private ud:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzqc;Lcom/google/android/gms/common/api/zzc;)V
    .registers 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzc",
            "<TO;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uQ:Lcom/google/android/gms/internal/zzqc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uS:Ljava/util/Queue;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uV:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uW:Ljava/util/Set;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uX:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uY:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzqc$zzc;->zzb(Lcom/google/android/gms/common/api/zzc;)Lcom/google/android/gms/common/api/Api$zze;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uT:Lcom/google/android/gms/common/api/Api$zze;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uT:Lcom/google/android/gms/common/api/Api$zze;

    instance-of v0, v0, Lcom/google/android/gms/common/internal/zzah;

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uT:Lcom/google/android/gms/common/api/Api$zze;

    check-cast v0, Lcom/google/android/gms/common/internal/zzah;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzah;->zzatn()Lcom/google/android/gms/common/api/Api$zzg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uU:Lcom/google/android/gms/common/api/Api$zzb;

    :goto_3a
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/zzc;->zzaob()Lcom/google/android/gms/internal/zzpj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->rQ:Lcom/google/android/gms/internal/zzpj;

    return-void

    :cond_41
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uT:Lcom/google/android/gms/common/api/Api$zze;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uU:Lcom/google/android/gms/common/api/Api$zzb;

    goto :goto_3a
.end method

.method private connect()V
    .registers 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uT:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->isConnected()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uT:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_10
    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uT:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->zzanu()Z

    move-result v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uQ:Lcom/google/android/gms/internal/zzqc;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqc;->zzk(Lcom/google/android/gms/internal/zzqc;)I

    move-result v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uQ:Lcom/google/android/gms/internal/zzqc;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uQ:Lcom/google/android/gms/internal/zzqc;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzqc;->zzi(Lcom/google/android/gms/internal/zzqc;)Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uQ:Lcom/google/android/gms/internal/zzqc;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzqc;->zzh(Lcom/google/android/gms/internal/zzqc;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzqc;->zza(Lcom/google/android/gms/internal/zzqc;I)I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uQ:Lcom/google/android/gms/internal/zzqc;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqc;->zzk(Lcom/google/android/gms/internal/zzqc;)I

    move-result v0

    if-eqz v0, :cond_4e

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uQ:Lcom/google/android/gms/internal/zzqc;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzqc;->zzk(Lcom/google/android/gms/internal/zzqc;)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzqc$zzc;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_10

    :cond_4e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uT:Lcom/google/android/gms/common/api/Api$zze;

    new-instance v1, Lcom/google/android/gms/internal/zzqc$zzd;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uQ:Lcom/google/android/gms/internal/zzqc;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uT:Lcom/google/android/gms/common/api/Api$zze;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzqc$zzc;->rQ:Lcom/google/android/gms/internal/zzpj;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzqc$zzd;-><init>(Lcom/google/android/gms/internal/zzqc;Lcom/google/android/gms/common/api/Api$zze;Lcom/google/android/gms/internal/zzpj;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/Api$zze;->zza(Lcom/google/android/gms/common/internal/zzd$zzf;)V

    goto :goto_10
.end method

.method private resume()V
    .registers 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->ud:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqc$zzc;->connect()V

    :cond_7
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzqc$zzc;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqc$zzc;->connect()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzqc$zzc;Lcom/google/android/gms/common/api/Status;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzqc$zzc;->zzab(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method private zzab(Lcom/google/android/gms/common/api/Status;)V
    .registers 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uS:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpi;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzpi;->zzx(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_6

    :cond_16
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uS:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method private zzapu()V
    .registers 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/16 v2, 0x8

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->ud:Z

    if-eqz v0, :cond_2c

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqc$zzc;->zzaqk()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uQ:Lcom/google/android/gms/internal/zzqc;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqc;->zzi(Lcom/google/android/gms/internal/zzqc;)Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uQ:Lcom/google/android/gms/internal/zzqc;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzqc;->zzh(Lcom/google/android/gms/internal/zzqc;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_2d

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v1, "Connection timed out while waiting for Google Play services update to complete."

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    :goto_24
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzqc$zzc;->zzab(Lcom/google/android/gms/common/api/Status;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uT:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->disconnect()V

    :cond_2c
    return-void

    :cond_2d
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v1, "API failed to connect while resuming due to an unknown error."

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    goto :goto_24
.end method

.method private zzaqk()V
    .registers 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->ud:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uQ:Lcom/google/android/gms/internal/zzqc;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqc;->zza(Lcom/google/android/gms/internal/zzqc;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqc$zzc;->rQ:Lcom/google/android/gms/internal/zzpj;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uQ:Lcom/google/android/gms/internal/zzqc;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqc;->zza(Lcom/google/android/gms/internal/zzqc;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqc$zzc;->rQ:Lcom/google/android/gms/internal/zzpj;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->ud:Z

    :cond_21
    return-void
.end method

.method private zzaql()V
    .registers 5

    const/16 v3, 0xa

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uQ:Lcom/google/android/gms/internal/zzqc;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqc;->zza(Lcom/google/android/gms/internal/zzqc;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqc$zzc;->rQ:Lcom/google/android/gms/internal/zzpj;

    invoke-virtual {v0, v3, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uQ:Lcom/google/android/gms/internal/zzqc;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqc;->zza(Lcom/google/android/gms/internal/zzqc;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uQ:Lcom/google/android/gms/internal/zzqc;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzqc;->zza(Lcom/google/android/gms/internal/zzqc;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqc$zzc;->rQ:Lcom/google/android/gms/internal/zzpj;

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uQ:Lcom/google/android/gms/internal/zzqc;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzqc;->zzj(Lcom/google/android/gms/internal/zzqc;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private zzaqm()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uT:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uX:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_31

    const/4 v0, 0x0

    move v1, v0

    :goto_12
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uV:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_36

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uV:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uV:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqy;->zzara()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqc$zzc;->zzaql()V

    :cond_31
    :goto_31
    return-void

    :cond_32
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_12

    :cond_36
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uT:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->disconnect()V

    goto :goto_31
.end method

.method private zzb(Lcom/google/android/gms/common/api/zzc;)Lcom/google/android/gms/common/api/Api$zze;
    .registers 10
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/zzc;->zzanz()Lcom/google/android/gms/common/api/Api;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api;->zzant()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api;->zzanr()Lcom/google/android/gms/common/api/Api$zzh;

    move-result-object v4

    new-instance v0, Lcom/google/android/gms/common/internal/zzah;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/zzc;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uQ:Lcom/google/android/gms/internal/zzqc;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzqc;->zza(Lcom/google/android/gms/internal/zzqc;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/Api$zzh;->zzanw()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/zzc;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/common/internal/zzg;->zzcd(Landroid/content/Context;)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v6

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/zzc;->zzaoa()Lcom/google/android/gms/common/api/Api$ApiOptions;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/api/Api$zzh;->zzr(Ljava/lang/Object;)Lcom/google/android/gms/common/api/Api$zzg;

    move-result-object v7

    move-object v4, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/common/internal/zzah;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Lcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/common/api/Api$zzg;)V

    :goto_37
    return-object v0

    :cond_38
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/zzc;->zzanz()Lcom/google/android/gms/common/api/Api;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api;->zzanq()Lcom/google/android/gms/common/api/Api$zza;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/zzc;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uQ:Lcom/google/android/gms/internal/zzqc;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzqc;->zza(Lcom/google/android/gms/internal/zzqc;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/zzc;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/common/internal/zzg;->zzcd(Landroid/content/Context;)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/zzc;->zzaoa()Lcom/google/android/gms/common/api/Api$ApiOptions;

    move-result-object v4

    move-object v5, p0

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/common/api/Api$zza;->zza(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzg;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$zze;

    move-result-object v0

    goto :goto_37
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzqc$zzc;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqc$zzc;->resume()V

    return-void
.end method

.method private zzc(Lcom/google/android/gms/internal/zzpi;)V
    .registers 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uV:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzpi;->zza(Landroid/util/SparseArray;)V

    iget v1, p1, Lcom/google/android/gms/internal/zzpi;->iq:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_45

    :try_start_b
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uX:Landroid/util/SparseArray;

    iget v2, p1, Lcom/google/android/gms/internal/zzpi;->sx:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_81

    new-instance v1, Landroid/support/v4/util/ArrayMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/support/v4/util/ArrayMap;-><init>(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uX:Landroid/util/SparseArray;

    iget v3, p1, Lcom/google/android/gms/internal/zzpi;->sx:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v3, v1

    :goto_25
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/zzpi$zza;

    move-object v1, v0

    iget-object v2, v1, Lcom/google/android/gms/internal/zzpi$zza;->sy:Lcom/google/android/gms/internal/zzpm$zza;

    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/internal/zzqm;

    move-object v1, v0

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzqm;->zzaqu()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_36
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_36} :catch_3c

    :cond_36
    :goto_36
    :try_start_36
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uU:Lcom/google/android/gms/common/api/Api$zzb;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzpi;->zzb(Lcom/google/android/gms/common/api/Api$zzb;)V
    :try_end_3b
    .catch Landroid/os/DeadObjectException; {:try_start_36 .. :try_end_3b} :catch_77

    :goto_3b
    return-void

    :catch_3c
    move-exception v1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Listener registration methods must implement ListenerApiMethod"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_45
    iget v1, p1, Lcom/google/android/gms/internal/zzpi;->iq:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_36

    :try_start_4a
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uX:Landroid/util/SparseArray;

    iget v2, p1, Lcom/google/android/gms/internal/zzpi;->sx:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/zzpi$zza;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/internal/zzpi$zza;->sy:Lcom/google/android/gms/internal/zzpm$zza;

    check-cast v2, Lcom/google/android/gms/internal/zzqm;

    if-eqz v1, :cond_6f

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzqm;->zzaqu()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_65
    .catch Ljava/lang/ClassCastException; {:try_start_4a .. :try_end_65} :catch_66

    goto :goto_36

    :catch_66
    move-exception v1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Listener unregistration methods must implement ListenerApiMethod"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6f
    :try_start_6f
    const-string v1, "GoogleApiManager"

    const-string v2, "Received call to unregister a listener without a matching registration call."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_76
    .catch Ljava/lang/ClassCastException; {:try_start_6f .. :try_end_76} :catch_66

    goto :goto_36

    :catch_77
    move-exception v1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uT:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/Api$zze;->disconnect()V

    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/zzqc$zzc;->onConnectionSuspended(I)V

    goto :goto_3b

    :cond_81
    move-object v3, v1

    goto :goto_25
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzqc$zzc;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqc$zzc;->zzapu()V

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzqc$zzc;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqc$zzc;->zzaqm()V

    return-void
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzqc$zzc;)Ljava/util/Queue;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uS:Ljava/util/Queue;

    return-object v0
.end method

.method private zzj(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uW:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpl;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqc$zzc;->rQ:Lcom/google/android/gms/internal/zzpj;

    invoke-virtual {v0, v2, p1}, Lcom/google/android/gms/internal/zzpl;->zza(Lcom/google/android/gms/internal/zzpj;Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_6

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uW:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method


# virtual methods
.method isConnected()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uT:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->isConnected()Z

    move-result v0

    return v0
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .registers 6
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqc$zzc;->zzaqi()V

    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->rb:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzqc$zzc;->zzj(Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqc$zzc;->zzaqk()V

    const/4 v0, 0x0

    move v1, v0

    :goto_d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uX:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_4c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uX:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uX:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpm$zza;

    :try_start_37
    iget-object v3, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uU:Lcom/google/android/gms/common/api/Api$zzb;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzpm$zza;->zzb(Lcom/google/android/gms/common/api/Api$zzb;)V
    :try_end_3c
    .catch Landroid/os/DeadObjectException; {:try_start_37 .. :try_end_3c} :catch_3d

    goto :goto_2b

    :catch_3d
    move-exception v0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uT:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->disconnect()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzqc$zzc;->onConnectionSuspended(I)V

    goto :goto_2b

    :cond_48
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    :cond_4c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqc$zzc;->zzaqh()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqc$zzc;->zzaql()V

    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 7
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqc$zzc;->zzaqi()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uQ:Lcom/google/android/gms/internal/zzqc;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzqc;->zza(Lcom/google/android/gms/internal/zzqc;I)I

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzqc$zzc;->zzj(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uV:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uS:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1e

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uY:Lcom/google/android/gms/common/ConnectionResult;

    :cond_1d
    :goto_1d
    return-void

    :cond_1e
    invoke-static {}, Lcom/google/android/gms/internal/zzqc;->zzaqf()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_23
    iget-object v2, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uQ:Lcom/google/android/gms/internal/zzqc;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzqc;->zzd(Lcom/google/android/gms/internal/zzqc;)Lcom/google/android/gms/internal/zzpr;

    move-result-object v2

    if-eqz v2, :cond_47

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uQ:Lcom/google/android/gms/internal/zzqc;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzqc;->zze(Lcom/google/android/gms/internal/zzqc;)Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzqc$zzc;->rQ:Lcom/google/android/gms/internal/zzpj;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uQ:Lcom/google/android/gms/internal/zzqc;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzqc;->zzd(Lcom/google/android/gms/internal/zzqc;)Lcom/google/android/gms/internal/zzpr;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/google/android/gms/internal/zzpr;->zzb(Lcom/google/android/gms/common/ConnectionResult;I)V

    monitor-exit v1

    goto :goto_1d

    :catchall_44
    move-exception v0

    monitor-exit v1
    :try_end_46
    .catchall {:try_start_23 .. :try_end_46} :catchall_44

    throw v0

    :cond_47
    :try_start_47
    monitor-exit v1
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_44

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uQ:Lcom/google/android/gms/internal/zzqc;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/zzqc;->zzc(Lcom/google/android/gms/common/ConnectionResult;I)Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_5b

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->ud:Z

    :cond_5b
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->ud:Z

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uQ:Lcom/google/android/gms/internal/zzqc;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqc;->zza(Lcom/google/android/gms/internal/zzqc;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uQ:Lcom/google/android/gms/internal/zzqc;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzqc;->zza(Lcom/google/android/gms/internal/zzqc;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/android/gms/internal/zzqc$zzc;->rQ:Lcom/google/android/gms/internal/zzpj;

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uQ:Lcom/google/android/gms/internal/zzqc;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzqc;->zzb(Lcom/google/android/gms/internal/zzqc;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1d

    :cond_7d
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x11

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqc$zzc;->rQ:Lcom/google/android/gms/internal/zzpj;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzpj;->zzaon()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x26

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "API: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not available on this device."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzqc$zzc;->zzab(Lcom/google/android/gms/common/api/Status;)V

    goto/16 :goto_1d
.end method

.method public onConnectionSuspended(I)V
    .registers 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqc$zzc;->zzaqi()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->ud:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uQ:Lcom/google/android/gms/internal/zzqc;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqc;->zza(Lcom/google/android/gms/internal/zzqc;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uQ:Lcom/google/android/gms/internal/zzqc;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzqc;->zza(Lcom/google/android/gms/internal/zzqc;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/android/gms/internal/zzqc$zzc;->rQ:Lcom/google/android/gms/internal/zzpj;

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uQ:Lcom/google/android/gms/internal/zzqc;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzqc;->zzb(Lcom/google/android/gms/internal/zzqc;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uQ:Lcom/google/android/gms/internal/zzqc;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqc;->zza(Lcom/google/android/gms/internal/zzqc;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uQ:Lcom/google/android/gms/internal/zzqc;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzqc;->zza(Lcom/google/android/gms/internal/zzqc;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/android/gms/internal/zzqc$zzc;->rQ:Lcom/google/android/gms/internal/zzpj;

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uQ:Lcom/google/android/gms/internal/zzqc;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzqc;->zzc(Lcom/google/android/gms/internal/zzqc;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uQ:Lcom/google/android/gms/internal/zzqc;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzqc;->zza(Lcom/google/android/gms/internal/zzqc;I)I

    return-void
.end method

.method public zzaqh()V
    .registers 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uT:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uS:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uS:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpi;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzqc$zzc;->zzc(Lcom/google/android/gms/internal/zzpi;)V

    goto :goto_0

    :cond_1c
    return-void
.end method

.method public zzaqi()V
    .registers 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uY:Lcom/google/android/gms/common/ConnectionResult;

    return-void
.end method

.method zzaqj()Lcom/google/android/gms/common/ConnectionResult;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uY:Lcom/google/android/gms/common/ConnectionResult;

    return-object v0
.end method

.method public zzb(Lcom/google/android/gms/internal/zzpi;)V
    .registers 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uT:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzqc$zzc;->zzc(Lcom/google/android/gms/internal/zzpi;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqc$zzc;->zzaql()V

    :goto_e
    return-void

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uS:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uY:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uY:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uY:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzqc$zzc;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_e

    :cond_26
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqc$zzc;->connect()V

    goto :goto_e
.end method

.method public zzb(Lcom/google/android/gms/internal/zzpl;)V
    .registers 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uW:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public zzf(IZ)V
    .registers 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uS:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpi;

    iget v2, v0, Lcom/google/android/gms/internal/zzpi;->sx:I

    if-ne v2, p1, :cond_6

    iget v2, v0, Lcom/google/android/gms/internal/zzpi;->iq:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_6

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzpi;->cancel()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    :cond_25
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uV:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqy;->release()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uX:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    if-nez p2, :cond_79

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uV:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uQ:Lcom/google/android/gms/internal/zzqc;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqc;->zzf(Lcom/google/android/gms/internal/zzqc;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uV:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_79

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uS:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_79

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqc$zzc;->zzaqk()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uT:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->disconnect()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uQ:Lcom/google/android/gms/internal/zzqc;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqc;->zzg(Lcom/google/android/gms/internal/zzqc;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqc$zzc;->rQ:Lcom/google/android/gms/internal/zzpj;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/internal/zzqc;->zzaqf()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_6d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uQ:Lcom/google/android/gms/internal/zzqc;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqc;->zze(Lcom/google/android/gms/internal/zzqc;)Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqc$zzc;->rQ:Lcom/google/android/gms/internal/zzpj;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    :cond_79
    return-void

    :catchall_7a
    move-exception v0

    monitor-exit v1
    :try_end_7c
    .catchall {:try_start_6d .. :try_end_7c} :catchall_7a

    throw v0
.end method

.method public zzfn(I)V
    .registers 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uV:Landroid/util/SparseArray;

    new-instance v1, Lcom/google/android/gms/internal/zzqy;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqc$zzc;->rQ:Lcom/google/android/gms/internal/zzpj;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzpj;->zzans()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uT:Lcom/google/android/gms/common/api/Api$zze;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/zzqy;-><init>(Lcom/google/android/gms/common/api/Api$zzc;Lcom/google/android/gms/common/api/Api$zze;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public zzfo(I)V
    .registers 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc$zzc;->uV:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqy;

    new-instance v1, Lcom/google/android/gms/internal/zzqc$zzc$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzqc$zzc$1;-><init>(Lcom/google/android/gms/internal/zzqc$zzc;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzqy;->zza(Lcom/google/android/gms/internal/zzqy$zzc;)V

    return-void
.end method
