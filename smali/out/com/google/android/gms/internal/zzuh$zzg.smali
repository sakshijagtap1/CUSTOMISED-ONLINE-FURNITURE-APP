.class public final Lcom/google/android/gms/internal/zzuh$zzg;
.super Lcom/google/android/gms/internal/zzapv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzuh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzg"
.end annotation


# static fields
.field private static volatile anV:[Lcom/google/android/gms/internal/zzuh$zzg;


# instance fields
.field public amv:Ljava/lang/Float;

.field public amw:Ljava/lang/Double;

.field public anW:Ljava/lang/Long;

.field public anr:Ljava/lang/Long;

.field public name:Ljava/lang/String;

.field public zD:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapv;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzuh$zzg;->zzbwd()Lcom/google/android/gms/internal/zzuh$zzg;

    return-void
.end method

.method public static zzbwc()[Lcom/google/android/gms/internal/zzuh$zzg;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/zzuh$zzg;->anV:[Lcom/google/android/gms/internal/zzuh$zzg;

    if-nez v0, :cond_11

    sget-object v1, Lcom/google/android/gms/internal/zzapt;->bjF:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/google/android/gms/internal/zzuh$zzg;->anV:[Lcom/google/android/gms/internal/zzuh$zzg;

    if-nez v0, :cond_10

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/zzuh$zzg;

    sput-object v0, Lcom/google/android/gms/internal/zzuh$zzg;->anV:[Lcom/google/android/gms/internal/zzuh$zzg;

    :cond_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_14

    :cond_11
    sget-object v0, Lcom/google/android/gms/internal/zzuh$zzg;->anV:[Lcom/google/android/gms/internal/zzuh$zzg;

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
    instance-of v2, p1, Lcom/google/android/gms/internal/zzuh$zzg;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/google/android/gms/internal/zzuh$zzg;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzuh$zzg;->anW:Ljava/lang/Long;

    if-nez v2, :cond_17

    iget-object v2, p1, Lcom/google/android/gms/internal/zzuh$zzg;->anW:Ljava/lang/Long;

    if-eqz v2, :cond_23

    move v0, v1

    goto :goto_4

    :cond_17
    iget-object v2, p0, Lcom/google/android/gms/internal/zzuh$zzg;->anW:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzuh$zzg;->anW:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    move v0, v1

    goto :goto_4

    :cond_23
    iget-object v2, p0, Lcom/google/android/gms/internal/zzuh$zzg;->name:Ljava/lang/String;

    if-nez v2, :cond_2d

    iget-object v2, p1, Lcom/google/android/gms/internal/zzuh$zzg;->name:Ljava/lang/String;

    if-eqz v2, :cond_39

    move v0, v1

    goto :goto_4

    :cond_2d
    iget-object v2, p0, Lcom/google/android/gms/internal/zzuh$zzg;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzuh$zzg;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    move v0, v1

    goto :goto_4

    :cond_39
    iget-object v2, p0, Lcom/google/android/gms/internal/zzuh$zzg;->zD:Ljava/lang/String;

    if-nez v2, :cond_43

    iget-object v2, p1, Lcom/google/android/gms/internal/zzuh$zzg;->zD:Ljava/lang/String;

    if-eqz v2, :cond_4f

    move v0, v1

    goto :goto_4

    :cond_43
    iget-object v2, p0, Lcom/google/android/gms/internal/zzuh$zzg;->zD:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzuh$zzg;->zD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4f

    move v0, v1

    goto :goto_4

    :cond_4f
    iget-object v2, p0, Lcom/google/android/gms/internal/zzuh$zzg;->anr:Ljava/lang/Long;

    if-nez v2, :cond_59

    iget-object v2, p1, Lcom/google/android/gms/internal/zzuh$zzg;->anr:Ljava/lang/Long;

    if-eqz v2, :cond_65

    move v0, v1

    goto :goto_4

    :cond_59
    iget-object v2, p0, Lcom/google/android/gms/internal/zzuh$zzg;->anr:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzuh$zzg;->anr:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65

    move v0, v1

    goto :goto_4

    :cond_65
    iget-object v2, p0, Lcom/google/android/gms/internal/zzuh$zzg;->amv:Ljava/lang/Float;

    if-nez v2, :cond_6f

    iget-object v2, p1, Lcom/google/android/gms/internal/zzuh$zzg;->amv:Ljava/lang/Float;

    if-eqz v2, :cond_7b

    move v0, v1

    goto :goto_4

    :cond_6f
    iget-object v2, p0, Lcom/google/android/gms/internal/zzuh$zzg;->amv:Ljava/lang/Float;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzuh$zzg;->amv:Ljava/lang/Float;

    invoke-virtual {v2, v3}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7b

    move v0, v1

    goto :goto_4

    :cond_7b
    iget-object v2, p0, Lcom/google/android/gms/internal/zzuh$zzg;->amw:Ljava/lang/Double;

    if-nez v2, :cond_85

    iget-object v2, p1, Lcom/google/android/gms/internal/zzuh$zzg;->amw:Ljava/lang/Double;

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    :cond_85
    iget-object v2, p0, Lcom/google/android/gms/internal/zzuh$zzg;->amw:Ljava/lang/Double;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzuh$zzg;->amw:Ljava/lang/Double;

    invoke-virtual {v2, v3}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto/16 :goto_4
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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzuh$zzg;->anW:Ljava/lang/Long;

    if-nez v0, :cond_3f

    move v0, v1

    :goto_16
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzuh$zzg;->name:Ljava/lang/String;

    if-nez v0, :cond_46

    move v0, v1

    :goto_1e
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzuh$zzg;->zD:Ljava/lang/String;

    if-nez v0, :cond_4d

    move v0, v1

    :goto_26
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzuh$zzg;->anr:Ljava/lang/Long;

    if-nez v0, :cond_54

    move v0, v1

    :goto_2e
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzuh$zzg;->amv:Ljava/lang/Float;

    if-nez v0, :cond_5b

    move v0, v1

    :goto_36
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzuh$zzg;->amw:Ljava/lang/Double;

    if-nez v2, :cond_62

    :goto_3d
    add-int/2addr v0, v1

    return v0

    :cond_3f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzuh$zzg;->anW:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto :goto_16

    :cond_46
    iget-object v0, p0, Lcom/google/android/gms/internal/zzuh$zzg;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1e

    :cond_4d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzuh$zzg;->zD:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_26

    :cond_54
    iget-object v0, p0, Lcom/google/android/gms/internal/zzuh$zzg;->anr:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto :goto_2e

    :cond_5b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzuh$zzg;->amv:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->hashCode()I

    move-result v0

    goto :goto_36

    :cond_62
    iget-object v1, p0, Lcom/google/android/gms/internal/zzuh$zzg;->amw:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->hashCode()I

    move-result v1

    goto :goto_3d
.end method

.method public zza(Lcom/google/android/gms/internal/zzapo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzuh$zzg;->anW:Ljava/lang/Long;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzuh$zzg;->anW:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzapo;->zzb(IJ)V

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzuh$zzg;->name:Ljava/lang/String;

    if-eqz v0, :cond_18

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzuh$zzg;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzapo;->zzr(ILjava/lang/String;)V

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/zzuh$zzg;->zD:Ljava/lang/String;

    if-eqz v0, :cond_22

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzuh$zzg;->zD:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzapo;->zzr(ILjava/lang/String;)V

    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/internal/zzuh$zzg;->anr:Ljava/lang/Long;

    if-eqz v0, :cond_30

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzuh$zzg;->anr:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzapo;->zzb(IJ)V

    :cond_30
    iget-object v0, p0, Lcom/google/android/gms/internal/zzuh$zzg;->amv:Ljava/lang/Float;

    if-eqz v0, :cond_3e

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzuh$zzg;->amv:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzapo;->zzc(IF)V

    :cond_3e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzuh$zzg;->amw:Ljava/lang/Double;

    if-eqz v0, :cond_4c

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzuh$zzg;->amw:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzapo;->zza(ID)V

    :cond_4c
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzapv;->zza(Lcom/google/android/gms/internal/zzapo;)V

    return-void
.end method

.method public zzar(Lcom/google/android/gms/internal/zzapn;)Lcom/google/android/gms/internal/zzuh$zzg;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->ah()I

    move-result v0

    sparse-switch v0, :sswitch_data_48

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzapy;->zzb(Lcom/google/android/gms/internal/zzapn;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_d
    return-object p0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->ak()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzuh$zzg;->anW:Ljava/lang/Long;

    goto :goto_0

    :sswitch_19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzuh$zzg;->name:Ljava/lang/String;

    goto :goto_0

    :sswitch_20
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzuh$zzg;->zD:Ljava/lang/String;

    goto :goto_0

    :sswitch_27
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->ak()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzuh$zzg;->anr:Ljava/lang/Long;

    goto :goto_0

    :sswitch_32
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzuh$zzg;->amv:Ljava/lang/Float;

    goto :goto_0

    :sswitch_3d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzuh$zzg;->amw:Ljava/lang/Double;

    goto :goto_0

    :sswitch_data_48
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_19
        0x1a -> :sswitch_20
        0x20 -> :sswitch_27
        0x2d -> :sswitch_32
        0x31 -> :sswitch_3d
    .end sparse-switch
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzapn;)Lcom/google/android/gms/internal/zzapv;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzuh$zzg;->zzar(Lcom/google/android/gms/internal/zzapn;)Lcom/google/android/gms/internal/zzuh$zzg;

    move-result-object v0

    return-object v0
.end method

.method public zzbwd()Lcom/google/android/gms/internal/zzuh$zzg;
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzuh$zzg;->anW:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzuh$zzg;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzuh$zzg;->zD:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzuh$zzg;->anr:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzuh$zzg;->amv:Ljava/lang/Float;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzuh$zzg;->amw:Ljava/lang/Double;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzuh$zzg;->bjG:I

    return-object p0
.end method

.method protected zzx()I
    .registers 5

    invoke-super {p0}, Lcom/google/android/gms/internal/zzapv;->zzx()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzuh$zzg;->anW:Ljava/lang/Long;

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzuh$zzg;->anW:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzapo;->zze(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_14
    iget-object v1, p0, Lcom/google/android/gms/internal/zzuh$zzg;->name:Ljava/lang/String;

    if-eqz v1, :cond_20

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzuh$zzg;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzapo;->zzs(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_20
    iget-object v1, p0, Lcom/google/android/gms/internal/zzuh$zzg;->zD:Ljava/lang/String;

    if-eqz v1, :cond_2c

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzuh$zzg;->zD:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzapo;->zzs(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2c
    iget-object v1, p0, Lcom/google/android/gms/internal/zzuh$zzg;->anr:Ljava/lang/Long;

    if-eqz v1, :cond_3c

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzuh$zzg;->anr:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzapo;->zze(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3c
    iget-object v1, p0, Lcom/google/android/gms/internal/zzuh$zzg;->amv:Ljava/lang/Float;

    if-eqz v1, :cond_4c

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzuh$zzg;->amv:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzapo;->zzd(IF)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4c
    iget-object v1, p0, Lcom/google/android/gms/internal/zzuh$zzg;->amw:Ljava/lang/Double;

    if-eqz v1, :cond_5c

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/zzuh$zzg;->amw:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzapo;->zzb(ID)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5c
    return v0
.end method
