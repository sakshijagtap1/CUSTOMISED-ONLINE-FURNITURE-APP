.class public Lcom/google/android/gms/internal/zzqp;
.super Lcom/google/android/gms/internal/zzpn;


# instance fields
.field private sA:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzqk;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzpn;-><init>(Lcom/google/android/gms/internal/zzqk;)V

    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqp;->sA:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->vm:Lcom/google/android/gms/internal/zzqk;

    const-string v1, "GmsAvailabilityHelper"

    invoke-interface {v0, v1, p0}, Lcom/google/android/gms/internal/zzqk;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzqj;)V

    return-void
.end method

.method public static zzu(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzqp;
    .registers 4

    invoke-static {p0}, Lcom/google/android/gms/internal/zzqp;->zzs(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzqk;

    move-result-object v1

    const-string v0, "GmsAvailabilityHelper"

    const-class v2, Lcom/google/android/gms/internal/zzqp;

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/zzqk;->zza(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/internal/zzqj;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqp;

    if-eqz v0, :cond_24

    iget-object v1, v0, Lcom/google/android/gms/internal/zzqp;->sA:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/tasks/Task;->isComplete()Z

    move-result v1

    if-eqz v1, :cond_23

    new-instance v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/zzqp;->sA:Lcom/google/android/gms/tasks/TaskCompletionSource;

    :cond_23
    :goto_23
    return-object v0

    :cond_24
    new-instance v0, Lcom/google/android/gms/internal/zzqp;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzqp;-><init>(Lcom/google/android/gms/internal/zzqk;)V

    goto :goto_23
.end method


# virtual methods
.method public getTask()Lcom/google/android/gms/tasks/Task;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->sA:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public onStop()V
    .registers 3

    invoke-super {p0}, Lcom/google/android/gms/internal/zzpn;->onStop()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->sA:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1}, Ljava/util/concurrent/CancellationException;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/common/ConnectionResult;I)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->sA:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    return-void
.end method

.method protected zzaoo()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->sh:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqp;->vm:Lcom/google/android/gms/internal/zzqk;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzqk;->zzaqt()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp;->sA:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    :goto_14
    return-void

    :cond_15
    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzqp;->zzk(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_14
.end method

.method public zzk(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzqp;->zzb(Lcom/google/android/gms/common/ConnectionResult;I)V

    return-void
.end method
