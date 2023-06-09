.class public final Lcom/google/android/gms/internal/zzah$zzi;
.super Lcom/google/android/gms/internal/zzapp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzi"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzapp",
        "<",
        "Lcom/google/android/gms/internal/zzah$zzi;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzwn:[Lcom/google/android/gms/internal/zzah$zzi;


# instance fields
.field public name:Ljava/lang/String;

.field public zzwo:Lcom/google/android/gms/internal/zzai$zza;

.field public zzwp:Lcom/google/android/gms/internal/zzah$zzd;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapp;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzah$zzi;->zzan()Lcom/google/android/gms/internal/zzah$zzi;

    return-void
.end method

.method public static zzam()[Lcom/google/android/gms/internal/zzah$zzi;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/zzah$zzi;->zzwn:[Lcom/google/android/gms/internal/zzah$zzi;

    if-nez v0, :cond_11

    sget-object v1, Lcom/google/android/gms/internal/zzapt;->bjF:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/google/android/gms/internal/zzah$zzi;->zzwn:[Lcom/google/android/gms/internal/zzah$zzi;

    if-nez v0, :cond_10

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/zzah$zzi;

    sput-object v0, Lcom/google/android/gms/internal/zzah$zzi;->zzwn:[Lcom/google/android/gms/internal/zzah$zzi;

    :cond_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_14

    :cond_11
    sget-object v0, Lcom/google/android/gms/internal/zzah$zzi;->zzwn:[Lcom/google/android/gms/internal/zzah$zzi;

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

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-ne p1, p0, :cond_6

    move v0, v1

    :cond_5
    :goto_5
    return v0

    :cond_6
    instance-of v2, p1, Lcom/google/android/gms/internal/zzah$zzi;

    if-eqz v2, :cond_5

    check-cast p1, Lcom/google/android/gms/internal/zzah$zzi;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzah$zzi;->name:Ljava/lang/String;

    if-nez v2, :cond_3e

    iget-object v2, p1, Lcom/google/android/gms/internal/zzah$zzi;->name:Ljava/lang/String;

    if-nez v2, :cond_5

    :cond_14
    iget-object v2, p0, Lcom/google/android/gms/internal/zzah$zzi;->zzwo:Lcom/google/android/gms/internal/zzai$zza;

    if-nez v2, :cond_49

    iget-object v2, p1, Lcom/google/android/gms/internal/zzah$zzi;->zzwo:Lcom/google/android/gms/internal/zzai$zza;

    if-nez v2, :cond_5

    :cond_1c
    iget-object v2, p0, Lcom/google/android/gms/internal/zzah$zzi;->zzwp:Lcom/google/android/gms/internal/zzah$zzd;

    if-nez v2, :cond_54

    iget-object v2, p1, Lcom/google/android/gms/internal/zzah$zzi;->zzwp:Lcom/google/android/gms/internal/zzah$zzd;

    if-nez v2, :cond_5

    :cond_24
    iget-object v2, p0, Lcom/google/android/gms/internal/zzah$zzi;->bjx:Lcom/google/android/gms/internal/zzapr;

    if-eqz v2, :cond_30

    iget-object v2, p0, Lcom/google/android/gms/internal/zzah$zzi;->bjx:Lcom/google/android/gms/internal/zzapr;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzapr;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5f

    :cond_30
    iget-object v2, p1, Lcom/google/android/gms/internal/zzah$zzi;->bjx:Lcom/google/android/gms/internal/zzapr;

    if-eqz v2, :cond_3c

    iget-object v2, p1, Lcom/google/android/gms/internal/zzah$zzi;->bjx:Lcom/google/android/gms/internal/zzapr;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzapr;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3c
    move v0, v1

    goto :goto_5

    :cond_3e
    iget-object v2, p0, Lcom/google/android/gms/internal/zzah$zzi;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzah$zzi;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_5

    :cond_49
    iget-object v2, p0, Lcom/google/android/gms/internal/zzah$zzi;->zzwo:Lcom/google/android/gms/internal/zzai$zza;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzah$zzi;->zzwo:Lcom/google/android/gms/internal/zzai$zza;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzai$zza;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    goto :goto_5

    :cond_54
    iget-object v2, p0, Lcom/google/android/gms/internal/zzah$zzi;->zzwp:Lcom/google/android/gms/internal/zzah$zzd;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzah$zzi;->zzwp:Lcom/google/android/gms/internal/zzah$zzd;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzah$zzd;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    goto :goto_5

    :cond_5f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzah$zzi;->bjx:Lcom/google/android/gms/internal/zzapr;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzah$zzi;->bjx:Lcom/google/android/gms/internal/zzapr;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzapr;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzah$zzi;->name:Ljava/lang/String;

    if-nez v0, :cond_37

    move v0, v1

    :goto_16
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzah$zzi;->zzwo:Lcom/google/android/gms/internal/zzai$zza;

    if-nez v0, :cond_3e

    move v0, v1

    :goto_1e
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzah$zzi;->zzwp:Lcom/google/android/gms/internal/zzah$zzd;

    if-nez v0, :cond_45

    move v0, v1

    :goto_26
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzah$zzi;->bjx:Lcom/google/android/gms/internal/zzapr;

    if-eqz v2, :cond_35

    iget-object v2, p0, Lcom/google/android/gms/internal/zzah$zzi;->bjx:Lcom/google/android/gms/internal/zzapr;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzapr;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4c

    :cond_35
    :goto_35
    add-int/2addr v0, v1

    return v0

    :cond_37
    iget-object v0, p0, Lcom/google/android/gms/internal/zzah$zzi;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_16

    :cond_3e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzah$zzi;->zzwo:Lcom/google/android/gms/internal/zzai$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzai$zza;->hashCode()I

    move-result v0

    goto :goto_1e

    :cond_45
    iget-object v0, p0, Lcom/google/android/gms/internal/zzah$zzi;->zzwp:Lcom/google/android/gms/internal/zzah$zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzah$zzd;->hashCode()I

    move-result v0

    goto :goto_26

    :cond_4c
    iget-object v1, p0, Lcom/google/android/gms/internal/zzah$zzi;->bjx:Lcom/google/android/gms/internal/zzapr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzapr;->hashCode()I

    move-result v1

    goto :goto_35
.end method

.method public zza(Lcom/google/android/gms/internal/zzapo;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzah$zzi;->name:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzah$zzi;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzapo;->zzr(ILjava/lang/String;)V

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/zzah$zzi;->zzwo:Lcom/google/android/gms/internal/zzai$zza;

    if-eqz v0, :cond_1a

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzah$zzi;->zzwo:Lcom/google/android/gms/internal/zzai$zza;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzapo;->zza(ILcom/google/android/gms/internal/zzapv;)V

    :cond_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzah$zzi;->zzwp:Lcom/google/android/gms/internal/zzah$zzd;

    if-eqz v0, :cond_24

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzah$zzi;->zzwp:Lcom/google/android/gms/internal/zzah$zzd;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzapo;->zza(ILcom/google/android/gms/internal/zzapv;)V

    :cond_24
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzapp;->zza(Lcom/google/android/gms/internal/zzapo;)V

    return-void
.end method

.method public zzan()Lcom/google/android/gms/internal/zzah$zzi;
    .registers 3

    const/4 v1, 0x0

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzah$zzi;->name:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzah$zzi;->zzwo:Lcom/google/android/gms/internal/zzai$zza;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzah$zzi;->zzwp:Lcom/google/android/gms/internal/zzah$zzd;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzah$zzi;->bjx:Lcom/google/android/gms/internal/zzapr;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzah$zzi;->bjG:I

    return-object p0
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzapn;)Lcom/google/android/gms/internal/zzapv;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzah$zzi;->zzr(Lcom/google/android/gms/internal/zzapn;)Lcom/google/android/gms/internal/zzah$zzi;

    move-result-object v0

    return-object v0
.end method

.method public zzr(Lcom/google/android/gms/internal/zzapn;)Lcom/google/android/gms/internal/zzah$zzi;
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

    sparse-switch v0, :sswitch_data_38

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/zzapp;->zza(Lcom/google/android/gms/internal/zzapn;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_d
    return-object p0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzah$zzi;->name:Ljava/lang/String;

    goto :goto_0

    :sswitch_15
    iget-object v0, p0, Lcom/google/android/gms/internal/zzah$zzi;->zzwo:Lcom/google/android/gms/internal/zzai$zza;

    if-nez v0, :cond_20

    new-instance v0, Lcom/google/android/gms/internal/zzai$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzai$zza;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzah$zzi;->zzwo:Lcom/google/android/gms/internal/zzai$zza;

    :cond_20
    iget-object v0, p0, Lcom/google/android/gms/internal/zzah$zzi;->zzwo:Lcom/google/android/gms/internal/zzai$zza;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzapn;->zza(Lcom/google/android/gms/internal/zzapv;)V

    goto :goto_0

    :sswitch_26
    iget-object v0, p0, Lcom/google/android/gms/internal/zzah$zzi;->zzwp:Lcom/google/android/gms/internal/zzah$zzd;

    if-nez v0, :cond_31

    new-instance v0, Lcom/google/android/gms/internal/zzah$zzd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzah$zzd;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzah$zzi;->zzwp:Lcom/google/android/gms/internal/zzah$zzd;

    :cond_31
    iget-object v0, p0, Lcom/google/android/gms/internal/zzah$zzi;->zzwp:Lcom/google/android/gms/internal/zzah$zzd;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzapn;->zza(Lcom/google/android/gms/internal/zzapv;)V

    goto :goto_0

    nop

    :sswitch_data_38
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_15
        0x1a -> :sswitch_26
    .end sparse-switch
.end method

.method protected zzx()I
    .registers 4

    invoke-super {p0}, Lcom/google/android/gms/internal/zzapp;->zzx()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzah$zzi;->name:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzah$zzi;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzapo;->zzs(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_16
    iget-object v1, p0, Lcom/google/android/gms/internal/zzah$zzi;->zzwo:Lcom/google/android/gms/internal/zzai$zza;

    if-eqz v1, :cond_22

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzah$zzi;->zzwo:Lcom/google/android/gms/internal/zzai$zza;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzapo;->zzc(ILcom/google/android/gms/internal/zzapv;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_22
    iget-object v1, p0, Lcom/google/android/gms/internal/zzah$zzi;->zzwp:Lcom/google/android/gms/internal/zzah$zzd;

    if-eqz v1, :cond_2e

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzah$zzi;->zzwp:Lcom/google/android/gms/internal/zzah$zzd;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzapo;->zzc(ILcom/google/android/gms/internal/zzapv;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2e
    return v0
.end method
