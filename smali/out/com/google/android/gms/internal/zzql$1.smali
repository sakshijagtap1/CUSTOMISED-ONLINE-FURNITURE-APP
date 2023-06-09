.class Lcom/google/android/gms/internal/zzql$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzql;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzqj;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic vq:Lcom/google/android/gms/internal/zzqj;

.field final synthetic vr:Lcom/google/android/gms/internal/zzql;

.field final synthetic zzap:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzql;Lcom/google/android/gms/internal/zzqj;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/zzql$1;->vr:Lcom/google/android/gms/internal/zzql;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzql$1;->vq:Lcom/google/android/gms/internal/zzqj;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzql$1;->zzap:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzql$1;->vr:Lcom/google/android/gms/internal/zzql;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzql;->zza(Lcom/google/android/gms/internal/zzql;)I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_22

    iget-object v1, p0, Lcom/google/android/gms/internal/zzql$1;->vq:Lcom/google/android/gms/internal/zzqj;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzql$1;->vr:Lcom/google/android/gms/internal/zzql;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzql;->zzb(Lcom/google/android/gms/internal/zzql;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzql$1;->vr:Lcom/google/android/gms/internal/zzql;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzql;->zzb(Lcom/google/android/gms/internal/zzql;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzql$1;->zzap:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :goto_1f
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzqj;->onCreate(Landroid/os/Bundle;)V

    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/internal/zzql$1;->vr:Lcom/google/android/gms/internal/zzql;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzql;->zza(Lcom/google/android/gms/internal/zzql;)I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_30

    iget-object v0, p0, Lcom/google/android/gms/internal/zzql$1;->vq:Lcom/google/android/gms/internal/zzqj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqj;->onStart()V

    :cond_30
    iget-object v0, p0, Lcom/google/android/gms/internal/zzql$1;->vr:Lcom/google/android/gms/internal/zzql;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzql;->zza(Lcom/google/android/gms/internal/zzql;)I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_3e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzql$1;->vq:Lcom/google/android/gms/internal/zzqj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqj;->onStop()V

    :cond_3e
    return-void

    :cond_3f
    const/4 v0, 0x0

    goto :goto_1f
.end method
