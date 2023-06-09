.class final Lcom/google/android/gms/internal/zzqn$zza;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzqn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "zza"
.end annotation


# instance fields
.field final synthetic vt:Lcom/google/android/gms/internal/zzqn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzqn;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqn$zza;->vt:Lcom/google/android/gms/internal/zzqn;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    const/4 v0, 0x1

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v0, :cond_12

    :goto_5
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzbo(Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqn$zza;->vt:Lcom/google/android/gms/internal/zzqn;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/zzqn$zzb;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzqn;->zzb(Lcom/google/android/gms/internal/zzqn$zzb;)V

    return-void

    :cond_12
    const/4 v0, 0x0

    goto :goto_5
.end method
