.class public final Lcom/google/android/gms/internal/zzah$zzd;
.super Lcom/google/android/gms/internal/zzapp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzapp",
        "<",
        "Lcom/google/android/gms/internal/zzah$zzd;",
        ">;"
    }
.end annotation


# instance fields
.field public zzuz:[Lcom/google/android/gms/internal/zzai$zza;

.field public zzva:[Lcom/google/android/gms/internal/zzai$zza;

.field public zzvb:[Lcom/google/android/gms/internal/zzah$zzc;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapp;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzah$zzd;->zzaf()Lcom/google/android/gms/internal/zzah$zzd;

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
    instance-of v2, p1, Lcom/google/android/gms/internal/zzah$zzd;

    if-eqz v2, :cond_5

    check-cast p1, Lcom/google/android/gms/internal/zzah$zzd;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzah$zzd;->zzuz:[Lcom/google/android/gms/internal/zzai$zza;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzah$zzd;->zzuz:[Lcom/google/android/gms/internal/zzai$zza;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzapt;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzah$zzd;->zzva:[Lcom/google/android/gms/internal/zzai$zza;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzah$zzd;->zzva:[Lcom/google/android/gms/internal/zzai$zza;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzapt;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzah$zzd;->zzvb:[Lcom/google/android/gms/internal/zzah$zzc;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzah$zzd;->zzvb:[Lcom/google/android/gms/internal/zzah$zzc;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzapt;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzah$zzd;->bjx:Lcom/google/android/gms/internal/zzapr;

    if-eqz v2, :cond_36

    iget-object v2, p0, Lcom/google/android/gms/internal/zzah$zzd;->bjx:Lcom/google/android/gms/internal/zzapr;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzapr;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_44

    :cond_36
    iget-object v2, p1, Lcom/google/android/gms/internal/zzah$zzd;->bjx:Lcom/google/android/gms/internal/zzapr;

    if-eqz v2, :cond_42

    iget-object v2, p1, Lcom/google/android/gms/internal/zzah$zzd;->bjx:Lcom/google/android/gms/internal/zzapr;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzapr;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_42
    move v0, v1

    goto :goto_5

    :cond_44
    iget-object v0, p0, Lcom/google/android/gms/internal/zzah$zzd;->bjx:Lcom/google/android/gms/internal/zzapr;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzah$zzd;->bjx:Lcom/google/android/gms/internal/zzapr;

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

    iget-object v1, p0, Lcom/google/android/gms/internal/zzah$zzd;->zzuz:[Lcom/google/android/gms/internal/zzai$zza;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzapt;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzah$zzd;->zzva:[Lcom/google/android/gms/internal/zzai$zza;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzapt;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzah$zzd;->zzvb:[Lcom/google/android/gms/internal/zzah$zzc;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzapt;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzah$zzd;->bjx:Lcom/google/android/gms/internal/zzapr;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/google/android/gms/internal/zzah$zzd;->bjx:Lcom/google/android/gms/internal/zzapr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzapr;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3a

    :cond_37
    const/4 v0, 0x0

    :goto_38
    add-int/2addr v0, v1

    return v0

    :cond_3a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzah$zzd;->bjx:Lcom/google/android/gms/internal/zzapr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzapr;->hashCode()I

    move-result v0

    goto :goto_38
.end method

.method public zza(Lcom/google/android/gms/internal/zzapo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzah$zzd;->zzuz:[Lcom/google/android/gms/internal/zzai$zza;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzah$zzd;->zzuz:[Lcom/google/android/gms/internal/zzai$zza;

    array-length v0, v0

    if-lez v0, :cond_1d

    move v0, v1

    :goto_b
    iget-object v2, p0, Lcom/google/android/gms/internal/zzah$zzd;->zzuz:[Lcom/google/android/gms/internal/zzai$zza;

    array-length v2, v2

    if-ge v0, v2, :cond_1d

    iget-object v2, p0, Lcom/google/android/gms/internal/zzah$zzd;->zzuz:[Lcom/google/android/gms/internal/zzai$zza;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1a

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/zzapo;->zza(ILcom/google/android/gms/internal/zzapv;)V

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzah$zzd;->zzva:[Lcom/google/android/gms/internal/zzai$zza;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/google/android/gms/internal/zzah$zzd;->zzva:[Lcom/google/android/gms/internal/zzai$zza;

    array-length v0, v0

    if-lez v0, :cond_39

    move v0, v1

    :goto_27
    iget-object v2, p0, Lcom/google/android/gms/internal/zzah$zzd;->zzva:[Lcom/google/android/gms/internal/zzai$zza;

    array-length v2, v2

    if-ge v0, v2, :cond_39

    iget-object v2, p0, Lcom/google/android/gms/internal/zzah$zzd;->zzva:[Lcom/google/android/gms/internal/zzai$zza;

    aget-object v2, v2, v0

    if-eqz v2, :cond_36

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/zzapo;->zza(ILcom/google/android/gms/internal/zzapv;)V

    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :cond_39
    iget-object v0, p0, Lcom/google/android/gms/internal/zzah$zzd;->zzvb:[Lcom/google/android/gms/internal/zzah$zzc;

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/google/android/gms/internal/zzah$zzd;->zzvb:[Lcom/google/android/gms/internal/zzah$zzc;

    array-length v0, v0

    if-lez v0, :cond_54

    :goto_42
    iget-object v0, p0, Lcom/google/android/gms/internal/zzah$zzd;->zzvb:[Lcom/google/android/gms/internal/zzah$zzc;

    array-length v0, v0

    if-ge v1, v0, :cond_54

    iget-object v0, p0, Lcom/google/android/gms/internal/zzah$zzd;->zzvb:[Lcom/google/android/gms/internal/zzah$zzc;

    aget-object v0, v0, v1

    if-eqz v0, :cond_51

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/zzapo;->zza(ILcom/google/android/gms/internal/zzapv;)V

    :cond_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    :cond_54
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzapp;->zza(Lcom/google/android/gms/internal/zzapo;)V

    return-void
.end method

.method public zzaf()Lcom/google/android/gms/internal/zzah$zzd;
    .registers 2

    invoke-static {}, Lcom/google/android/gms/internal/zzai$zza;->zzap()[Lcom/google/android/gms/internal/zzai$zza;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzah$zzd;->zzuz:[Lcom/google/android/gms/internal/zzai$zza;

    invoke-static {}, Lcom/google/android/gms/internal/zzai$zza;->zzap()[Lcom/google/android/gms/internal/zzai$zza;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzah$zzd;->zzva:[Lcom/google/android/gms/internal/zzai$zza;

    invoke-static {}, Lcom/google/android/gms/internal/zzah$zzc;->zzad()[Lcom/google/android/gms/internal/zzah$zzc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzah$zzd;->zzvb:[Lcom/google/android/gms/internal/zzah$zzc;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzah$zzd;->bjx:Lcom/google/android/gms/internal/zzapr;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzah$zzd;->bjG:I

    return-object p0
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzapn;)Lcom/google/android/gms/internal/zzapv;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzah$zzd;->zzm(Lcom/google/android/gms/internal/zzapn;)Lcom/google/android/gms/internal/zzah$zzd;

    move-result-object v0

    return-object v0
.end method

.method public zzm(Lcom/google/android/gms/internal/zzapn;)Lcom/google/android/gms/internal/zzah$zzd;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->ah()I

    move-result v0

    sparse-switch v0, :sswitch_data_ce

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/zzapp;->zza(Lcom/google/android/gms/internal/zzapn;I)Z

    move-result v0

    if-nez v0, :cond_1

    :sswitch_e
    return-object p0

    :sswitch_f
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzapy;->zzc(Lcom/google/android/gms/internal/zzapn;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzah$zzd;->zzuz:[Lcom/google/android/gms/internal/zzai$zza;

    if-nez v0, :cond_3b

    move v0, v1

    :goto_1a
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/zzai$zza;

    if-eqz v0, :cond_24

    iget-object v3, p0, Lcom/google/android/gms/internal/zzah$zzd;->zzuz:[Lcom/google/android/gms/internal/zzai$zza;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_24
    :goto_24
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3f

    new-instance v3, Lcom/google/android/gms/internal/zzai$zza;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzai$zza;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzapn;->zza(Lcom/google/android/gms/internal/zzapv;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->ah()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    :cond_3b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzah$zzd;->zzuz:[Lcom/google/android/gms/internal/zzai$zza;

    array-length v0, v0

    goto :goto_1a

    :cond_3f
    new-instance v3, Lcom/google/android/gms/internal/zzai$zza;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzai$zza;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzapn;->zza(Lcom/google/android/gms/internal/zzapv;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzah$zzd;->zzuz:[Lcom/google/android/gms/internal/zzai$zza;

    goto :goto_1

    :sswitch_4e
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzapy;->zzc(Lcom/google/android/gms/internal/zzapn;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzah$zzd;->zzva:[Lcom/google/android/gms/internal/zzai$zza;

    if-nez v0, :cond_7a

    move v0, v1

    :goto_59
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/zzai$zza;

    if-eqz v0, :cond_63

    iget-object v3, p0, Lcom/google/android/gms/internal/zzah$zzd;->zzva:[Lcom/google/android/gms/internal/zzai$zza;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_63
    :goto_63
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_7e

    new-instance v3, Lcom/google/android/gms/internal/zzai$zza;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzai$zza;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzapn;->zza(Lcom/google/android/gms/internal/zzapv;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->ah()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_63

    :cond_7a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzah$zzd;->zzva:[Lcom/google/android/gms/internal/zzai$zza;

    array-length v0, v0

    goto :goto_59

    :cond_7e
    new-instance v3, Lcom/google/android/gms/internal/zzai$zza;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzai$zza;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzapn;->zza(Lcom/google/android/gms/internal/zzapv;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzah$zzd;->zzva:[Lcom/google/android/gms/internal/zzai$zza;

    goto/16 :goto_1

    :sswitch_8e
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzapy;->zzc(Lcom/google/android/gms/internal/zzapn;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzah$zzd;->zzvb:[Lcom/google/android/gms/internal/zzah$zzc;

    if-nez v0, :cond_ba

    move v0, v1

    :goto_99
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/zzah$zzc;

    if-eqz v0, :cond_a3

    iget-object v3, p0, Lcom/google/android/gms/internal/zzah$zzd;->zzvb:[Lcom/google/android/gms/internal/zzah$zzc;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_a3
    :goto_a3
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_be

    new-instance v3, Lcom/google/android/gms/internal/zzah$zzc;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzah$zzc;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzapn;->zza(Lcom/google/android/gms/internal/zzapv;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->ah()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_a3

    :cond_ba
    iget-object v0, p0, Lcom/google/android/gms/internal/zzah$zzd;->zzvb:[Lcom/google/android/gms/internal/zzah$zzc;

    array-length v0, v0

    goto :goto_99

    :cond_be
    new-instance v3, Lcom/google/android/gms/internal/zzah$zzc;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzah$zzc;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzapn;->zza(Lcom/google/android/gms/internal/zzapv;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzah$zzd;->zzvb:[Lcom/google/android/gms/internal/zzah$zzc;

    goto/16 :goto_1

    :sswitch_data_ce
    .sparse-switch
        0x0 -> :sswitch_e
        0xa -> :sswitch_f
        0x12 -> :sswitch_4e
        0x1a -> :sswitch_8e
    .end sparse-switch
.end method

.method protected zzx()I
    .registers 6

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzapp;->zzx()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzah$zzd;->zzuz:[Lcom/google/android/gms/internal/zzai$zza;

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/google/android/gms/internal/zzah$zzd;->zzuz:[Lcom/google/android/gms/internal/zzai$zza;

    array-length v2, v2

    if-lez v2, :cond_25

    move v2, v0

    move v0, v1

    :goto_10
    iget-object v3, p0, Lcom/google/android/gms/internal/zzah$zzd;->zzuz:[Lcom/google/android/gms/internal/zzai$zza;

    array-length v3, v3

    if-ge v0, v3, :cond_24

    iget-object v3, p0, Lcom/google/android/gms/internal/zzah$zzd;->zzuz:[Lcom/google/android/gms/internal/zzai$zza;

    aget-object v3, v3, v0

    if-eqz v3, :cond_21

    const/4 v4, 0x1

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/zzapo;->zzc(ILcom/google/android/gms/internal/zzapv;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_24
    move v0, v2

    :cond_25
    iget-object v2, p0, Lcom/google/android/gms/internal/zzah$zzd;->zzva:[Lcom/google/android/gms/internal/zzai$zza;

    if-eqz v2, :cond_45

    iget-object v2, p0, Lcom/google/android/gms/internal/zzah$zzd;->zzva:[Lcom/google/android/gms/internal/zzai$zza;

    array-length v2, v2

    if-lez v2, :cond_45

    move v2, v0

    move v0, v1

    :goto_30
    iget-object v3, p0, Lcom/google/android/gms/internal/zzah$zzd;->zzva:[Lcom/google/android/gms/internal/zzai$zza;

    array-length v3, v3

    if-ge v0, v3, :cond_44

    iget-object v3, p0, Lcom/google/android/gms/internal/zzah$zzd;->zzva:[Lcom/google/android/gms/internal/zzai$zza;

    aget-object v3, v3, v0

    if-eqz v3, :cond_41

    const/4 v4, 0x2

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/zzapo;->zzc(ILcom/google/android/gms/internal/zzapv;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    :cond_44
    move v0, v2

    :cond_45
    iget-object v2, p0, Lcom/google/android/gms/internal/zzah$zzd;->zzvb:[Lcom/google/android/gms/internal/zzah$zzc;

    if-eqz v2, :cond_62

    iget-object v2, p0, Lcom/google/android/gms/internal/zzah$zzd;->zzvb:[Lcom/google/android/gms/internal/zzah$zzc;

    array-length v2, v2

    if-lez v2, :cond_62

    :goto_4e
    iget-object v2, p0, Lcom/google/android/gms/internal/zzah$zzd;->zzvb:[Lcom/google/android/gms/internal/zzah$zzc;

    array-length v2, v2

    if-ge v1, v2, :cond_62

    iget-object v2, p0, Lcom/google/android/gms/internal/zzah$zzd;->zzvb:[Lcom/google/android/gms/internal/zzah$zzc;

    aget-object v2, v2, v1

    if-eqz v2, :cond_5f

    const/4 v3, 0x3

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzapo;->zzc(ILcom/google/android/gms/internal/zzapv;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_5f
    add-int/lit8 v1, v1, 0x1

    goto :goto_4e

    :cond_62
    return v0
.end method
