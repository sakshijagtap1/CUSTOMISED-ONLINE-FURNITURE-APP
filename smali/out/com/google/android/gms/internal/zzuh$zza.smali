.class public final Lcom/google/android/gms/internal/zzuh$zza;
.super Lcom/google/android/gms/internal/zzapv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzuh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation


# static fields
.field private static volatile ani:[Lcom/google/android/gms/internal/zzuh$zza;


# instance fields
.field public amz:Ljava/lang/Integer;

.field public anj:Lcom/google/android/gms/internal/zzuh$zzf;

.field public ank:Lcom/google/android/gms/internal/zzuh$zzf;

.field public anl:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapv;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzuh$zza;->zzbvt()Lcom/google/android/gms/internal/zzuh$zza;

    return-void
.end method

.method public static zzbvs()[Lcom/google/android/gms/internal/zzuh$zza;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/zzuh$zza;->ani:[Lcom/google/android/gms/internal/zzuh$zza;

    if-nez v0, :cond_11

    sget-object v1, Lcom/google/android/gms/internal/zzapt;->bjF:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/google/android/gms/internal/zzuh$zza;->ani:[Lcom/google/android/gms/internal/zzuh$zza;

    if-nez v0, :cond_10

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/zzuh$zza;

    sput-object v0, Lcom/google/android/gms/internal/zzuh$zza;->ani:[Lcom/google/android/gms/internal/zzuh$zza;

    :cond_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_14

    :cond_11
    sget-object v0, Lcom/google/android/gms/internal/zzuh$zza;->ani:[Lcom/google/android/gms/internal/zzuh$zza;

    return-object v0

    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Lcom/google/android/gms/internal/zzuh$zza;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/google/android/gms/internal/zzuh$zza;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzuh$zza;->amz:Ljava/lang/Integer;

    if-nez v2, :cond_17

    iget-object v2, p1, Lcom/google/android/gms/internal/zzuh$zza;->amz:Ljava/lang/Integer;

    if-eqz v2, :cond_23

    move v0, v1

    goto :goto_4

    :cond_17
    iget-object v2, p0, Lcom/google/android/gms/internal/zzuh$zza;->amz:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzuh$zza;->amz:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    move v0, v1

    goto :goto_4

    :cond_23
    iget-object v2, p0, Lcom/google/android/gms/internal/zzuh$zza;->anj:Lcom/google/android/gms/internal/zzuh$zzf;

    if-nez v2, :cond_2d

    iget-object v2, p1, Lcom/google/android/gms/internal/zzuh$zza;->anj:Lcom/google/android/gms/internal/zzuh$zzf;

    if-eqz v2, :cond_39

    move v0, v1

    goto :goto_4

    :cond_2d
    iget-object v2, p0, Lcom/google/android/gms/internal/zzuh$zza;->anj:Lcom/google/android/gms/internal/zzuh$zzf;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzuh$zza;->anj:Lcom/google/android/gms/internal/zzuh$zzf;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzuh$zzf;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    move v0, v1

    goto :goto_4

    :cond_39
    iget-object v2, p0, Lcom/google/android/gms/internal/zzuh$zza;->ank:Lcom/google/android/gms/internal/zzuh$zzf;

    if-nez v2, :cond_43

    iget-object v2, p1, Lcom/google/android/gms/internal/zzuh$zza;->ank:Lcom/google/android/gms/internal/zzuh$zzf;

    if-eqz v2, :cond_4f

    move v0, v1

    goto :goto_4

    :cond_43
    iget-object v2, p0, Lcom/google/android/gms/internal/zzuh$zza;->ank:Lcom/google/android/gms/internal/zzuh$zzf;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzuh$zza;->ank:Lcom/google/android/gms/internal/zzuh$zzf;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzuh$zzf;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4f

    move v0, v1

    goto :goto_4

    :cond_4f
    iget-object v2, p0, Lcom/google/android/gms/internal/zzuh$zza;->anl:Ljava/lang/Boolean;

    if-nez v2, :cond_59

    iget-object v2, p1, Lcom/google/android/gms/internal/zzuh$zza;->anl:Ljava/lang/Boolean;

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    :cond_59
    iget-object v2, p0, Lcom/google/android/gms/internal/zzuh$zza;->anl:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzuh$zza;->anl:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzuh$zza;->amz:Ljava/lang/Integer;

    if-nez v0, :cond_2f

    move v0, v1

    :goto_16
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzuh$zza;->anj:Lcom/google/android/gms/internal/zzuh$zzf;

    if-nez v0, :cond_36

    move v0, v1

    :goto_1e
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzuh$zza;->ank:Lcom/google/android/gms/internal/zzuh$zzf;

    if-nez v0, :cond_3d

    move v0, v1

    :goto_26
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzuh$zza;->anl:Ljava/lang/Boolean;

    if-nez v2, :cond_44

    :goto_2d
    add-int/2addr v0, v1

    return v0

    :cond_2f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzuh$zza;->amz:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_16

    :cond_36
    iget-object v0, p0, Lcom/google/android/gms/internal/zzuh$zza;->anj:Lcom/google/android/gms/internal/zzuh$zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzuh$zzf;->hashCode()I

    move-result v0

    goto :goto_1e

    :cond_3d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzuh$zza;->ank:Lcom/google/android/gms/internal/zzuh$zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzuh$zzf;->hashCode()I

    move-result v0

    goto :goto_26

    :cond_44
    iget-object v1, p0, Lcom/google/android/gms/internal/zzuh$zza;->anl:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_2d
.end method

.method public zza(Lcom/google/android/gms/internal/zzapo;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzuh$zza;->amz:Ljava/lang/Integer;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzuh$zza;->amz:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzapo;->zzae(II)V

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzuh$zza;->anj:Lcom/google/android/gms/internal/zzuh$zzf;

    if-eqz v0, :cond_18

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzuh$zza;->anj:Lcom/google/android/gms/internal/zzuh$zzf;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzapo;->zza(ILcom/google/android/gms/internal/zzapv;)V

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/zzuh$zza;->ank:Lcom/google/android/gms/internal/zzuh$zzf;

    if-eqz v0, :cond_22

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzuh$zza;->ank:Lcom/google/android/gms/internal/zzuh$zzf;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzapo;->zza(ILcom/google/android/gms/internal/zzapv;)V

    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/internal/zzuh$zza;->anl:Ljava/lang/Boolean;

    if-eqz v0, :cond_30

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzuh$zza;->anl:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzapo;->zzj(IZ)V

    :cond_30
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzapv;->zza(Lcom/google/android/gms/internal/zzapo;)V

    return-void
.end method

.method public zzal(Lcom/google/android/gms/internal/zzapn;)Lcom/google/android/gms/internal/zzuh$zza;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->ah()I

    move-result v0

    sparse-switch v0, :sswitch_data_46

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzapy;->zzb(Lcom/google/android/gms/internal/zzapn;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_d
    return-object p0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->al()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzuh$zza;->amz:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_19
    iget-object v0, p0, Lcom/google/android/gms/internal/zzuh$zza;->anj:Lcom/google/android/gms/internal/zzuh$zzf;

    if-nez v0, :cond_24

    new-instance v0, Lcom/google/android/gms/internal/zzuh$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzuh$zzf;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzuh$zza;->anj:Lcom/google/android/gms/internal/zzuh$zzf;

    :cond_24
    iget-object v0, p0, Lcom/google/android/gms/internal/zzuh$zza;->anj:Lcom/google/android/gms/internal/zzuh$zzf;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzapn;->zza(Lcom/google/android/gms/internal/zzapv;)V

    goto :goto_0

    :sswitch_2a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzuh$zza;->ank:Lcom/google/android/gms/internal/zzuh$zzf;

    if-nez v0, :cond_35

    new-instance v0, Lcom/google/android/gms/internal/zzuh$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzuh$zzf;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzuh$zza;->ank:Lcom/google/android/gms/internal/zzuh$zzf;

    :cond_35
    iget-object v0, p0, Lcom/google/android/gms/internal/zzuh$zza;->ank:Lcom/google/android/gms/internal/zzuh$zzf;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzapn;->zza(Lcom/google/android/gms/internal/zzapv;)V

    goto :goto_0

    :sswitch_3b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->an()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzuh$zza;->anl:Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_data_46
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_19
        0x1a -> :sswitch_2a
        0x20 -> :sswitch_3b
    .end sparse-switch
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzapn;)Lcom/google/android/gms/internal/zzapv;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzuh$zza;->zzal(Lcom/google/android/gms/internal/zzapn;)Lcom/google/android/gms/internal/zzuh$zza;

    move-result-object v0

    return-object v0
.end method

.method public zzbvt()Lcom/google/android/gms/internal/zzuh$zza;
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzuh$zza;->amz:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzuh$zza;->anj:Lcom/google/android/gms/internal/zzuh$zzf;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzuh$zza;->ank:Lcom/google/android/gms/internal/zzuh$zzf;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzuh$zza;->anl:Ljava/lang/Boolean;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzuh$zza;->bjG:I

    return-object p0
.end method

.method protected zzx()I
    .registers 4

    invoke-super {p0}, Lcom/google/android/gms/internal/zzapv;->zzx()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzuh$zza;->amz:Ljava/lang/Integer;

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzuh$zza;->amz:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzapo;->zzag(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_14
    iget-object v1, p0, Lcom/google/android/gms/internal/zzuh$zza;->anj:Lcom/google/android/gms/internal/zzuh$zzf;

    if-eqz v1, :cond_20

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzuh$zza;->anj:Lcom/google/android/gms/internal/zzuh$zzf;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzapo;->zzc(ILcom/google/android/gms/internal/zzapv;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_20
    iget-object v1, p0, Lcom/google/android/gms/internal/zzuh$zza;->ank:Lcom/google/android/gms/internal/zzuh$zzf;

    if-eqz v1, :cond_2c

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzuh$zza;->ank:Lcom/google/android/gms/internal/zzuh$zzf;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzapo;->zzc(ILcom/google/android/gms/internal/zzapv;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2c
    iget-object v1, p0, Lcom/google/android/gms/internal/zzuh$zza;->anl:Ljava/lang/Boolean;

    if-eqz v1, :cond_3c

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzuh$zza;->anl:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzapo;->zzk(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3c
    return v0
.end method
