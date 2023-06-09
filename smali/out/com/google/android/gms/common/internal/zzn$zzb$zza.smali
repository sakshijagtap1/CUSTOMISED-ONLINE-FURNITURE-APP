.class public Lcom/google/android/gms/common/internal/zzn$zzb$zza;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/zzn$zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "zza"
.end annotation


# instance fields
.field final synthetic yX:Lcom/google/android/gms/common/internal/zzn$zzb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/zzn$zzb;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzn$zzb$zza;->yX:Lcom/google/android/gms/common/internal/zzn$zzb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzn$zzb$zza;->yX:Lcom/google/android/gms/common/internal/zzn$zzb;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/zzn$zzb;->yW:Lcom/google/android/gms/common/internal/zzn;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzn;->zza(Lcom/google/android/gms/common/internal/zzn;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzn$zzb$zza;->yX:Lcom/google/android/gms/common/internal/zzn$zzb;

    invoke-static {v0, p2}, Lcom/google/android/gms/common/internal/zzn$zzb;->zza(Lcom/google/android/gms/common/internal/zzn$zzb;Landroid/os/IBinder;)Landroid/os/IBinder;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzn$zzb$zza;->yX:Lcom/google/android/gms/common/internal/zzn$zzb;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/zzn$zzb;->zza(Lcom/google/android/gms/common/internal/zzn$zzb;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzn$zzb$zza;->yX:Lcom/google/android/gms/common/internal/zzn$zzb;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzn$zzb;->zzb(Lcom/google/android/gms/common/internal/zzn$zzb;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ServiceConnection;

    invoke-interface {v0, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_1d

    :catchall_2d
    move-exception v0

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_9 .. :try_end_2f} :catchall_2d

    throw v0

    :cond_30
    :try_start_30
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzn$zzb$zza;->yX:Lcom/google/android/gms/common/internal/zzn$zzb;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzn$zzb;->zza(Lcom/google/android/gms/common/internal/zzn$zzb;I)I

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_2d

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzn$zzb$zza;->yX:Lcom/google/android/gms/common/internal/zzn$zzb;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/zzn$zzb;->yW:Lcom/google/android/gms/common/internal/zzn;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzn;->zza(Lcom/google/android/gms/common/internal/zzn;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzn$zzb$zza;->yX:Lcom/google/android/gms/common/internal/zzn$zzb;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzn$zzb;->zza(Lcom/google/android/gms/common/internal/zzn$zzb;Landroid/os/IBinder;)Landroid/os/IBinder;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzn$zzb$zza;->yX:Lcom/google/android/gms/common/internal/zzn$zzb;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/zzn$zzb;->zza(Lcom/google/android/gms/common/internal/zzn$zzb;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzn$zzb$zza;->yX:Lcom/google/android/gms/common/internal/zzn$zzb;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzn$zzb;->zzb(Lcom/google/android/gms/common/internal/zzn$zzb;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ServiceConnection;

    invoke-interface {v0, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    goto :goto_1e

    :catchall_2e
    move-exception v0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_9 .. :try_end_30} :catchall_2e

    throw v0

    :cond_31
    :try_start_31
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzn$zzb$zza;->yX:Lcom/google/android/gms/common/internal/zzn$zzb;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzn$zzb;->zza(Lcom/google/android/gms/common/internal/zzn$zzb;I)I

    monitor-exit v1
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_2e

    return-void
.end method
