.class final Lcom/google/android/gms/internal/zzsb$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzsb$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzsb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzsb$zzb$zza;)Lcom/google/android/gms/internal/zzsb$zzb$zzb;
    .registers 8

    const/4 v3, 0x1

    new-instance v0, Lcom/google/android/gms/internal/zzsb$zzb$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzsb$zzb$zzb;-><init>()V

    invoke-interface {p3, p1, p2}, Lcom/google/android/gms/internal/zzsb$zzb$zza;->zzt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/internal/zzsb$zzb$zzb;->KP:I

    invoke-interface {p3, p1, p2, v3}, Lcom/google/android/gms/internal/zzsb$zzb$zza;->zzd(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/internal/zzsb$zzb$zzb;->KQ:I

    iget v1, v0, Lcom/google/android/gms/internal/zzsb$zzb$zzb;->KP:I

    if-nez v1, :cond_1e

    iget v1, v0, Lcom/google/android/gms/internal/zzsb$zzb$zzb;->KQ:I

    if-nez v1, :cond_1e

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/gms/internal/zzsb$zzb$zzb;->KR:I

    :goto_1d
    return-object v0

    :cond_1e
    iget v1, v0, Lcom/google/android/gms/internal/zzsb$zzb$zzb;->KP:I

    iget v2, v0, Lcom/google/android/gms/internal/zzsb$zzb$zzb;->KQ:I

    if-lt v1, v2, :cond_28

    const/4 v1, -0x1

    iput v1, v0, Lcom/google/android/gms/internal/zzsb$zzb$zzb;->KR:I

    goto :goto_1d

    :cond_28
    iput v3, v0, Lcom/google/android/gms/internal/zzsb$zzb$zzb;->KR:I

    goto :goto_1d
.end method
