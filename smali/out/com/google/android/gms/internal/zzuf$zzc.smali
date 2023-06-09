.class public final Lcom/google/android/gms/internal/zzuf$zzc;
.super Lcom/google/android/gms/internal/zzapv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzuf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzc"
.end annotation


# static fields
.field private static volatile amI:[Lcom/google/android/gms/internal/zzuf$zzc;


# instance fields
.field public amJ:Lcom/google/android/gms/internal/zzuf$zzf;

.field public amK:Lcom/google/android/gms/internal/zzuf$zzd;

.field public amL:Ljava/lang/Boolean;

.field public amM:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapv;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzuf$zzc;->zzbvi()Lcom/google/android/gms/internal/zzuf$zzc;

    return-void
.end method

.method public static zzbvh()[Lcom/google/android/gms/internal/zzuf$zzc;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/zzuf$zzc;->amI:[Lcom/google/android/gms/internal/zzuf$zzc;

    if-nez v0, :cond_11

    sget-object v1, Lcom/google/android/gms/internal/zzapt;->bjF:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/google/android/gms/internal/zzuf$zzc;->amI:[Lcom/google/android/gms/internal/zzuf$zzc;

    if-nez v0, :cond_10

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/zzuf$zzc;

    sput-object v0, Lcom/google/android/gms/internal/zzuf$zzc;->amI:[Lcom/google/android/gms/internal/zzuf$zzc;

    :cond_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_14

    :cond_11
    sget-object v0, Lcom/google/android/gms/internal/zzuf$zzc;->amI:[Lcom/google/android/gms/internal/zzuf$zzc;

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
    instance-of v2, p1, Lcom/google/android/gms/internal/zzuf$zzc;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/google/android/gms/internal/zzuf$zzc;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzuf$zzc;->amJ:Lcom/google/android/gms/internal/zzuf$zzf;

    if-nez v2, :cond_17

    iget-object v2, p1, Lcom/google/android/gms/internal/zzuf$zzc;->amJ:Lcom/google/android/gms/internal/zzuf$zzf;

    if-eqz v2, :cond_23

    move v0, v1

    goto :goto_4

    :cond_17
    iget-object v2, p0, Lcom/google/android/gms/internal/zzuf$zzc;->amJ:Lcom/google/android/gms/internal/zzuf$zzf;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzuf$zzc;->amJ:Lcom/google/android/gms/internal/zzuf$zzf;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzuf$zzf;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    move v0, v1

    goto :goto_4

    :cond_23
    iget-object v2, p0, Lcom/google/android/gms/internal/zzuf$zzc;->amK:Lcom/google/android/gms/internal/zzuf$zzd;

    if-nez v2, :cond_2d

    iget-object v2, p1, Lcom/google/android/gms/internal/zzuf$zzc;->amK:Lcom/google/android/gms/internal/zzuf$zzd;

    if-eqz v2, :cond_39

    move v0, v1

    goto :goto_4

    :cond_2d
    iget-object v2, p0, Lcom/google/android/gms/internal/zzuf$zzc;->amK:Lcom/google/android/gms/internal/zzuf$zzd;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzuf$zzc;->amK:Lcom/google/android/gms/internal/zzuf$zzd;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzuf$zzd;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    move v0, v1

    goto :goto_4

    :cond_39
    iget-object v2, p0, Lcom/google/android/gms/internal/zzuf$zzc;->amL:Ljava/lang/Boolean;

    if-nez v2, :cond_43

    iget-object v2, p1, Lcom/google/android/gms/internal/zzuf$zzc;->amL:Ljava/lang/Boolean;

    if-eqz v2, :cond_4f

    move v0, v1

    goto :goto_4

    :cond_43
    iget-object v2, p0, Lcom/google/android/gms/internal/zzuf$zzc;->amL:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzuf$zzc;->amL:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4f

    move v0, v1

    goto :goto_4

    :cond_4f
    iget-object v2, p0, Lcom/google/android/gms/internal/zzuf$zzc;->amM:Ljava/lang/String;

    if-nez v2, :cond_59

    iget-object v2, p1, Lcom/google/android/gms/internal/zzuf$zzc;->amM:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    :cond_59
    iget-object v2, p0, Lcom/google/android/gms/internal/zzuf$zzc;->amM:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzuf$zzc;->amM:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzuf$zzc;->amJ:Lcom/google/android/gms/internal/zzuf$zzf;

    if-nez v0, :cond_2f

    move v0, v1

    :goto_16
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzuf$zzc;->amK:Lcom/google/android/gms/internal/zzuf$zzd;

    if-nez v0, :cond_36

    move v0, v1

    :goto_1e
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzuf$zzc;->amL:Ljava/lang/Boolean;

    if-nez v0, :cond_3d

    move v0, v1

    :goto_26
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzuf$zzc;->amM:Ljava/lang/String;

    if-nez v2, :cond_44

    :goto_2d
    add-int/2addr v0, v1

    return v0

    :cond_2f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzuf$zzc;->amJ:Lcom/google/android/gms/internal/zzuf$zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzuf$zzf;->hashCode()I

    move-result v0

    goto :goto_16

    :cond_36
    iget-object v0, p0, Lcom/google/android/gms/internal/zzuf$zzc;->amK:Lcom/google/android/gms/internal/zzuf$zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzuf$zzd;->hashCode()I

    move-result v0

    goto :goto_1e

    :cond_3d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzuf$zzc;->amL:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto :goto_26

    :cond_44
    iget-object v1, p0, Lcom/google/android/gms/internal/zzuf$zzc;->amM:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzuf$zzc;->amJ:Lcom/google/android/gms/internal/zzuf$zzf;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzuf$zzc;->amJ:Lcom/google/android/gms/internal/zzuf$zzf;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzapo;->zza(ILcom/google/android/gms/internal/zzapv;)V

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzuf$zzc;->amK:Lcom/google/android/gms/internal/zzuf$zzd;

    if-eqz v0, :cond_14

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzuf$zzc;->amK:Lcom/google/android/gms/internal/zzuf$zzd;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzapo;->zza(ILcom/google/android/gms/internal/zzapv;)V

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/zzuf$zzc;->amL:Ljava/lang/Boolean;

    if-eqz v0, :cond_22

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzuf$zzc;->amL:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzapo;->zzj(IZ)V

    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/internal/zzuf$zzc;->amM:Ljava/lang/String;

    if-eqz v0, :cond_2c

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzuf$zzc;->amM:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzapo;->zzr(ILjava/lang/String;)V

    :cond_2c
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzapv;->zza(Lcom/google/android/gms/internal/zzapo;)V

    return-void
.end method

.method public zzae(Lcom/google/android/gms/internal/zzapn;)Lcom/google/android/gms/internal/zzuf$zzc;
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

    sparse-switch v0, :sswitch_data_42

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzapy;->zzb(Lcom/google/android/gms/internal/zzapn;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_d
    return-object p0

    :sswitch_e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzuf$zzc;->amJ:Lcom/google/android/gms/internal/zzuf$zzf;

    if-nez v0, :cond_19

    new-instance v0, Lcom/google/android/gms/internal/zzuf$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzuf$zzf;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzuf$zzc;->amJ:Lcom/google/android/gms/internal/zzuf$zzf;

    :cond_19
    iget-object v0, p0, Lcom/google/android/gms/internal/zzuf$zzc;->amJ:Lcom/google/android/gms/internal/zzuf$zzf;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzapn;->zza(Lcom/google/android/gms/internal/zzapv;)V

    goto :goto_0

    :sswitch_1f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzuf$zzc;->amK:Lcom/google/android/gms/internal/zzuf$zzd;

    if-nez v0, :cond_2a

    new-instance v0, Lcom/google/android/gms/internal/zzuf$zzd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzuf$zzd;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzuf$zzc;->amK:Lcom/google/android/gms/internal/zzuf$zzd;

    :cond_2a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzuf$zzc;->amK:Lcom/google/android/gms/internal/zzuf$zzd;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzapn;->zza(Lcom/google/android/gms/internal/zzapv;)V

    goto :goto_0

    :sswitch_30
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->an()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzuf$zzc;->amL:Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_3b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzuf$zzc;->amM:Ljava/lang/String;

    goto :goto_0

    :sswitch_data_42
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1f
        0x18 -> :sswitch_30
        0x22 -> :sswitch_3b
    .end sparse-switch
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzapn;)Lcom/google/android/gms/internal/zzapv;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzuf$zzc;->zzae(Lcom/google/android/gms/internal/zzapn;)Lcom/google/android/gms/internal/zzuf$zzc;

    move-result-object v0

    return-object v0
.end method

.method public zzbvi()Lcom/google/android/gms/internal/zzuf$zzc;
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzuf$zzc;->amJ:Lcom/google/android/gms/internal/zzuf$zzf;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzuf$zzc;->amK:Lcom/google/android/gms/internal/zzuf$zzd;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzuf$zzc;->amL:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzuf$zzc;->amM:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzuf$zzc;->bjG:I

    return-object p0
.end method

.method protected zzx()I
    .registers 4

    invoke-super {p0}, Lcom/google/android/gms/internal/zzapv;->zzx()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzuf$zzc;->amJ:Lcom/google/android/gms/internal/zzuf$zzf;

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzuf$zzc;->amJ:Lcom/google/android/gms/internal/zzuf$zzf;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzapo;->zzc(ILcom/google/android/gms/internal/zzapv;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
    iget-object v1, p0, Lcom/google/android/gms/internal/zzuf$zzc;->amK:Lcom/google/android/gms/internal/zzuf$zzd;

    if-eqz v1, :cond_1c

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzuf$zzc;->amK:Lcom/google/android/gms/internal/zzuf$zzd;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzapo;->zzc(ILcom/google/android/gms/internal/zzapv;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1c
    iget-object v1, p0, Lcom/google/android/gms/internal/zzuf$zzc;->amL:Ljava/lang/Boolean;

    if-eqz v1, :cond_2c

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzuf$zzc;->amL:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzapo;->zzk(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2c
    iget-object v1, p0, Lcom/google/android/gms/internal/zzuf$zzc;->amM:Ljava/lang/String;

    if-eqz v1, :cond_38

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzuf$zzc;->amM:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzapo;->zzs(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_38
    return v0
.end method
