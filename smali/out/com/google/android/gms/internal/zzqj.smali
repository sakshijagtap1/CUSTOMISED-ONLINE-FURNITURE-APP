.class public Lcom/google/android/gms/internal/zzqj;
.super Ljava/lang/Object;


# instance fields
.field protected final vm:Lcom/google/android/gms/internal/zzqk;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/zzqk;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqj;->vm:Lcom/google/android/gms/internal/zzqk;

    return-void
.end method

.method protected static zzc(Lcom/google/android/gms/internal/zzqi;)Lcom/google/android/gms/internal/zzqk;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqi;->zzaqq()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqi;->zzaqs()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqv;->zza(Landroid/support/v4/app/FragmentActivity;)Lcom/google/android/gms/internal/zzqv;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqi;->zzaqr()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzql;->zzt(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzql;

    move-result-object v0

    goto :goto_e
.end method

.method protected static zzs(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzqk;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/zzqi;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzqi;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqj;->zzc(Lcom/google/android/gms/internal/zzqi;)Lcom/google/android/gms/internal/zzqk;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqj;->vm:Lcom/google/android/gms/internal/zzqk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqk;->zzaqt()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    return-void
.end method

.method public onStart()V
    .registers 1
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    return-void
.end method

.method public onStop()V
    .registers 1
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    return-void
.end method
