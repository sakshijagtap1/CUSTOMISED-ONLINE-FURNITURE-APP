.class public final Lcom/google/android/gms/internal/zzah$zza;
.super Lcom/google/android/gms/internal/zzapp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzapp",
        "<",
        "Lcom/google/android/gms/internal/zzah$zza;",
        ">;"
    }
.end annotation


# instance fields
.field public level:I

.field public zzun:I

.field public zzuo:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapp;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzah$zza;->zzaa()Lcom/google/android/gms/internal/zzah$zza;

    return-void
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
    instance-of v2, p1, Lcom/google/android/gms/internal/zzah$zza;

    if-eqz v2, :cond_5

    check-cast p1, Lcom/google/android/gms/internal/zzah$zza;

    iget v2, p0, Lcom/google/android/gms/internal/zzah$zza;->level:I

    iget v3, p1, Lcom/google/android/gms/internal/zzah$zza;->level:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/google/android/gms/internal/zzah$zza;->zzun:I

    iget v3, p1, Lcom/google/android/gms/internal/zzah$zza;->zzun:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/google/android/gms/internal/zzah$zza;->zzuo:I

    iget v3, p1, Lcom/google/android/gms/internal/zzah$zza;->zzuo:I

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzah$zza;->bjx:Lcom/google/android/gms/internal/zzapr;

    if-eqz v2, :cond_2a

    iget-object v2, p0, Lcom/google/android/gms/internal/zzah$zza;->bjx:Lcom/google/android/gms/internal/zzapr;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzapr;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_38

    :cond_2a
    iget-object v2, p1, Lcom/google/android/gms/internal/zzah$zza;->bjx:Lcom/google/android/gms/internal/zzapr;

    if-eqz v2, :cond_36

    iget-object v2, p1, Lcom/google/android/gms/internal/zzah$zza;->bjx:Lcom/google/android/gms/internal/zzapr;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzapr;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_36
    move v0, v1

    goto :goto_5

    :cond_38
    iget-object v0, p0, Lcom/google/android/gms/internal/zzah$zza;->bjx:Lcom/google/android/gms/internal/zzapr;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzah$zza;->bjx:Lcom/google/android/gms/internal/zzapr;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzapr;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public hashCode()I
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/zzah$zza;->level:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/zzah$zza;->zzun:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/zzah$zza;->zzuo:I

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzah$zza;->bjx:Lcom/google/android/gms/internal/zzapr;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzah$zza;->bjx:Lcom/google/android/gms/internal/zzapr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzapr;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2e

    :cond_2b
    const/4 v0, 0x0

    :goto_2c
    add-int/2addr v0, v1

    return v0

    :cond_2e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzah$zza;->bjx:Lcom/google/android/gms/internal/zzapr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzapr;->hashCode()I

    move-result v0

    goto :goto_2c
.end method

.method public zza(Lcom/google/android/gms/internal/zzapo;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    iget v0, p0, Lcom/google/android/gms/internal/zzah$zza;->level:I

    if-eq v0, v1, :cond_a

    iget v0, p0, Lcom/google/android/gms/internal/zzah$zza;->level:I

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/zzapo;->zzae(II)V

    :cond_a
    iget v0, p0, Lcom/google/android/gms/internal/zzah$zza;->zzun:I

    if-eqz v0, :cond_14

    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/gms/internal/zzah$zza;->zzun:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzapo;->zzae(II)V

    :cond_14
    iget v0, p0, Lcom/google/android/gms/internal/zzah$zza;->zzuo:I

    if-eqz v0, :cond_1e

    const/4 v0, 0x3

    iget v1, p0, Lcom/google/android/gms/internal/zzah$zza;->zzuo:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzapo;->zzae(II)V

    :cond_1e
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzapp;->zza(Lcom/google/android/gms/internal/zzapo;)V

    return-void
.end method

.method public zzaa()Lcom/google/android/gms/internal/zzah$zza;
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzah$zza;->level:I

    iput v1, p0, Lcom/google/android/gms/internal/zzah$zza;->zzun:I

    iput v1, p0, Lcom/google/android/gms/internal/zzah$zza;->zzuo:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzah$zza;->bjx:Lcom/google/android/gms/internal/zzapr;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzah$zza;->bjG:I

    return-object p0
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzapn;)Lcom/google/android/gms/internal/zzapv;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzah$zza;->zzj(Lcom/google/android/gms/internal/zzapn;)Lcom/google/android/gms/internal/zzah$zza;

    move-result-object v0

    return-object v0
.end method

.method public zzj(Lcom/google/android/gms/internal/zzapn;)Lcom/google/android/gms/internal/zzah$zza;
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

    sparse-switch v0, :sswitch_data_28

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/zzapp;->zza(Lcom/google/android/gms/internal/zzapn;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_d
    return-object p0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->al()I

    move-result v0

    packed-switch v0, :pswitch_data_3a

    goto :goto_0

    :pswitch_16
    iput v0, p0, Lcom/google/android/gms/internal/zzah$zza;->level:I

    goto :goto_0

    :sswitch_19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->al()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzah$zza;->zzun:I

    goto :goto_0

    :sswitch_20
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->al()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzah$zza;->zzuo:I

    goto :goto_0

    nop

    :sswitch_data_28
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_19
        0x18 -> :sswitch_20
    .end sparse-switch

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_16
        :pswitch_16
        :pswitch_16
    .end packed-switch
.end method

.method protected zzx()I
    .registers 4

    const/4 v2, 0x1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzapp;->zzx()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/zzah$zza;->level:I

    if-eq v1, v2, :cond_10

    iget v1, p0, Lcom/google/android/gms/internal/zzah$zza;->level:I

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzapo;->zzag(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
    iget v1, p0, Lcom/google/android/gms/internal/zzah$zza;->zzun:I

    if-eqz v1, :cond_1c

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/internal/zzah$zza;->zzun:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzapo;->zzag(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1c
    iget v1, p0, Lcom/google/android/gms/internal/zzah$zza;->zzuo:I

    if-eqz v1, :cond_28

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/internal/zzah$zza;->zzuo:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzapo;->zzag(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_28
    return v0
.end method
