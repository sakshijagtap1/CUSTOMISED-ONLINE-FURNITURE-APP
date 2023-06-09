.class public final Lcom/google/android/gms/common/util/zzs;
.super Ljava/lang/Object;


# direct methods
.method public static zzavn()Z
    .registers 1

    const/16 v0, 0xb

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzs;->zzhb(I)Z

    move-result v0

    return v0
.end method

.method public static zzavo()Z
    .registers 1

    const/16 v0, 0xc

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzs;->zzhb(I)Z

    move-result v0

    return v0
.end method

.method public static zzavp()Z
    .registers 1

    const/16 v0, 0xd

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzs;->zzhb(I)Z

    move-result v0

    return v0
.end method

.method public static zzavq()Z
    .registers 1

    const/16 v0, 0xe

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzs;->zzhb(I)Z

    move-result v0

    return v0
.end method

.method public static zzavr()Z
    .registers 1

    const/16 v0, 0x10

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzs;->zzhb(I)Z

    move-result v0

    return v0
.end method

.method public static zzavs()Z
    .registers 1

    const/16 v0, 0x11

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzs;->zzhb(I)Z

    move-result v0

    return v0
.end method

.method public static zzavt()Z
    .registers 1

    const/16 v0, 0x12

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzs;->zzhb(I)Z

    move-result v0

    return v0
.end method

.method public static zzavu()Z
    .registers 1

    const/16 v0, 0x13

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzs;->zzhb(I)Z

    move-result v0

    return v0
.end method

.method public static zzavv()Z
    .registers 1

    const/16 v0, 0x14

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzs;->zzhb(I)Z

    move-result v0

    return v0
.end method

.method public static zzavw()Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/google/android/gms/common/util/zzs;->zzavx()Z

    move-result v0

    return v0
.end method

.method public static zzavx()Z
    .registers 1

    const/16 v0, 0x15

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzs;->zzhb(I)Z

    move-result v0

    return v0
.end method

.method public static zzavy()Z
    .registers 1

    const/16 v0, 0x17

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzs;->zzhb(I)Z

    move-result v0

    return v0
.end method

.method private static zzhb(I)Z
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, p0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
