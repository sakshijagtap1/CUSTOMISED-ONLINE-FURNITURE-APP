.class public final Lcom/google/android/gms/common/util/zzi;
.super Ljava/lang/Object;


# static fields
.field private static AX:Ljava/lang/Boolean;

.field private static AY:Ljava/lang/Boolean;

.field private static AZ:Ljava/lang/Boolean;

.field private static Ba:Ljava/lang/Boolean;


# direct methods
.method public static zzb(Landroid/content/res/Resources;)Z
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_5

    :goto_4
    return v2

    :cond_5
    sget-object v0, Lcom/google/android/gms/common/util/zzi;->AX:Ljava/lang/Boolean;

    if-nez v0, :cond_2a

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v3, 0x3

    if-le v0, v3, :cond_31

    move v0, v1

    :goto_15
    invoke-static {}, Lcom/google/android/gms/common/util/zzs;->zzavn()Z

    move-result v3

    if-eqz v3, :cond_1d

    if-nez v0, :cond_23

    :cond_1d
    invoke-static {p0}, Lcom/google/android/gms/common/util/zzi;->zzc(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_24

    :cond_23
    move v2, v1

    :cond_24
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/zzi;->AX:Ljava/lang/Boolean;

    :cond_2a
    sget-object v0, Lcom/google/android/gms/common/util/zzi;->AX:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_4

    :cond_31
    move v0, v2

    goto :goto_15
.end method

.method private static zzc(Landroid/content/res/Resources;)Z
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xd
    .end annotation

    sget-object v0, Lcom/google/android/gms/common/util/zzi;->AY:Ljava/lang/Boolean;

    if-nez v0, :cond_22

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/common/util/zzs;->zzavp()Z

    move-result v1

    if-eqz v1, :cond_29

    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x3

    if-gt v1, v2, :cond_29

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v1, 0x258

    if-lt v0, v1, :cond_29

    const/4 v0, 0x1

    :goto_1c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/zzi;->AY:Ljava/lang/Boolean;

    :cond_22
    sget-object v0, Lcom/google/android/gms/common/util/zzi;->AY:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_29
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public static zzck(Landroid/content/Context;)Z
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x14
    .end annotation

    sget-object v0, Lcom/google/android/gms/common/util/zzi;->AZ:Ljava/lang/Boolean;

    if-nez v0, :cond_1d

    invoke-static {}, Lcom/google/android/gms/common/util/zzs;->zzavv()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.watch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    :goto_17
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/zzi;->AZ:Ljava/lang/Boolean;

    :cond_1d
    sget-object v0, Lcom/google/android/gms/common/util/zzi;->AZ:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public static zzcl(Landroid/content/Context;)Z
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    sget-object v0, Lcom/google/android/gms/common/util/zzi;->Ba:Ljava/lang/Boolean;

    if-nez v0, :cond_1d

    invoke-static {}, Lcom/google/android/gms/common/util/zzs;->zzavx()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "cn.google"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    :goto_17
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/zzi;->Ba:Ljava/lang/Boolean;

    :cond_1d
    sget-object v0, Lcom/google/android/gms/common/util/zzi;->Ba:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_17
.end method
