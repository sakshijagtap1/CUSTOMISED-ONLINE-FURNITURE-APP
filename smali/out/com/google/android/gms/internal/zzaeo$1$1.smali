.class Lcom/google/android/gms/internal/zzaeo$1$1;
.super Landroid/database/ContentObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzaeo$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aLO:Lcom/google/android/gms/internal/zzaeo$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaeo$1;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaeo$1$1;->aLO:Lcom/google/android/gms/internal/zzaeo$1;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 6

    const-class v1, Lcom/google/android/gms/internal/zzaeo;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/gms/internal/zzaeo;->aLK:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaeo;->zzaz(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzaeo;->aLM:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaeo$1$1;->aLO:Lcom/google/android/gms/internal/zzaeo$1;

    iget-object v2, v0, Lcom/google/android/gms/internal/zzaeo$1;->aLN:Landroid/content/ContentResolver;

    sget-object v0, Lcom/google/android/gms/internal/zzaeo;->aLM:Ljava/util/HashSet;

    sget-object v3, Lcom/google/android/gms/internal/zzaeo;->aLM:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzaeo;->zzb(Landroid/content/ContentResolver;[Ljava/lang/String;)V

    :cond_2f
    monitor-exit v1

    return-void

    :catchall_31
    move-exception v0

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw v0
.end method
