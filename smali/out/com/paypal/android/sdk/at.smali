.class public Lcom/paypal/android/sdk/at;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field public static a:Lcom/paypal/android/sdk/bc;

.field private static final b:Ljava/lang/String;

.field private static x:Lcom/paypal/android/sdk/ar;

.field private static final y:Ljava/lang/Object;

.field private static z:Lcom/paypal/android/sdk/at;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:J

.field private f:J

.field private g:I

.field private h:I

.field private i:J

.field private j:Ljava/lang/String;

.field private k:Lcom/paypal/android/sdk/ap;

.field private l:Lcom/paypal/android/sdk/as;

.field private m:Lcom/paypal/android/sdk/as;

.field private n:Ljava/lang/String;

.field private o:Ljava/util/Map;

.field private p:Landroid/location/Location;

.field private q:Ljava/util/Timer;

.field private r:Landroid/os/Handler;

.field private s:Lcom/paypal/android/sdk/ay;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Z

.field private w:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/paypal/android/sdk/at;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v0, Lcom/paypal/android/sdk/ar;

    invoke-direct {v0}, Lcom/paypal/android/sdk/ar;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/at;->x:Lcom/paypal/android/sdk/ar;

    const/4 v0, 0x0

    sput-object v0, Lcom/paypal/android/sdk/at;->a:Lcom/paypal/android/sdk/bc;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/at;->y:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/paypal/android/sdk/at;)I
    .registers 3

    iget v0, p0, Lcom/paypal/android/sdk/at;->g:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/paypal/android/sdk/at;->g:I

    return v0
.end method

.method private static a(Landroid/content/Context;)J
    .registers 6

    const-wide/16 v0, 0x0

    if-nez p0, :cond_5

    :cond_4
    :goto_4
    return-wide v0

    :cond_5
    :try_start_5
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-le v2, v3, :cond_1b

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-wide v0, v2, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    goto :goto_4

    :cond_1b
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v2, :cond_4

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J
    :try_end_34
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_34} :catch_36

    move-result-wide v0

    goto :goto_4

    :catch_36
    move-exception v2

    goto :goto_4
.end method

.method public static a()Lcom/paypal/android/sdk/at;
    .registers 2

    sget-object v1, Lcom/paypal/android/sdk/at;->y:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/paypal/android/sdk/at;->z:Lcom/paypal/android/sdk/at;

    if-nez v0, :cond_e

    new-instance v0, Lcom/paypal/android/sdk/at;

    invoke-direct {v0}, Lcom/paypal/android/sdk/at;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/at;->z:Lcom/paypal/android/sdk/at;

    :cond_e
    sget-object v0, Lcom/paypal/android/sdk/at;->z:Lcom/paypal/android/sdk/at;

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method private static a(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    :goto_4
    return-object v0

    :catch_5
    move-exception v0

    sget-object v1, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    const-string v2, "Known SecurityException on some devices"

    invoke-static {v1, v2, v0}, Lcom/paypal/android/sdk/bn;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_4
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/paypal/android/sdk/at;->o:Ljava/util/Map;

    if-eqz p1, :cond_12

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->u:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->u:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    :goto_11
    return-object p1

    :cond_12
    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2c

    :cond_1e
    invoke-static {}, Lcom/paypal/android/sdk/at;->i()Ljava/lang/String;

    move-result-object v0

    :goto_22
    iput-object v0, p0, Lcom/paypal/android/sdk/at;->u:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/paypal/android/sdk/at;->e()V

    invoke-direct {p0}, Lcom/paypal/android/sdk/at;->j()Ljava/lang/String;

    move-object p1, v0

    goto :goto_11

    :cond_2c
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "PRD"

    const-string v3, "Using custom pairing id"

    invoke-static {v1, v2, v3}, Lcom/paypal/android/sdk/bn;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_22
.end method

.method private a(Lcom/paypal/android/sdk/ap;)V
    .registers 14

    const-wide/16 v10, 0x3e8

    iput-object p1, p0, Lcom/paypal/android/sdk/at;->k:Lcom/paypal/android/sdk/ap;

    sget-object v0, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    const-string v1, "Configuration loaded"

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/bn;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "URL:     "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/paypal/android/sdk/at;->k:Lcom/paypal/android/sdk/ap;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/ap;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/bn;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Version: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/paypal/android/sdk/at;->k:Lcom/paypal/android/sdk/ap;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/ap;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/bn;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/paypal/android/sdk/at;->k()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/paypal/android/sdk/at;->q:Ljava/util/Timer;

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->k:Lcom/paypal/android/sdk/ap;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/ap;->c()J

    move-result-wide v0

    iget-object v2, p0, Lcom/paypal/android/sdk/at;->k:Lcom/paypal/android/sdk/ap;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/ap;->d()J

    move-result-wide v2

    iget-object v4, p0, Lcom/paypal/android/sdk/at;->k:Lcom/paypal/android/sdk/ap;

    invoke-virtual {v4}, Lcom/paypal/android/sdk/ap;->e()J

    move-result-wide v4

    sget-object v6, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Sending logRiskMetadata every "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " seconds."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/paypal/android/sdk/bn;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "sessionTimeout set to "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " seconds."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/paypal/android/sdk/bn;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "compTimeout set to    "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " seconds."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/paypal/android/sdk/bn;->a(Ljava/lang/String;Ljava/lang/String;)V

    mul-long/2addr v0, v10

    iput-wide v0, p0, Lcom/paypal/android/sdk/at;->e:J

    mul-long v0, v4, v10

    iput-wide v0, p0, Lcom/paypal/android/sdk/at;->f:J

    mul-long v0, v2, v10

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/ax;->a(J)V

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->k:Lcom/paypal/android/sdk/ap;

    if-eqz v0, :cond_dc

    iget-boolean v0, p0, Lcom/paypal/android/sdk/at;->v:Z

    if-eqz v0, :cond_dc

    invoke-direct {p0}, Lcom/paypal/android/sdk/at;->k()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/paypal/android/sdk/at;->q:Ljava/util/Timer;

    sget-object v0, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    const-string v1, "Starting LogRiskMetadataTask"

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/bn;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->q:Ljava/util/Timer;

    new-instance v1, Lcom/paypal/android/sdk/au;

    invoke-direct {v1, p0}, Lcom/paypal/android/sdk/au;-><init>(Lcom/paypal/android/sdk/at;)V

    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lcom/paypal/android/sdk/at;->e:J

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    :cond_dc
    return-void
.end method

.method private a(Lcom/paypal/android/sdk/as;Lcom/paypal/android/sdk/as;)V
    .registers 11

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/paypal/android/sdk/at;->o:Ljava/util/Map;

    iput-object v0, p1, Lcom/paypal/android/sdk/as;->ah:Ljava/util/Map;

    if-eqz p2, :cond_a2

    invoke-virtual {p1, p2}, Lcom/paypal/android/sdk/as;->a(Lcom/paypal/android/sdk/as;)Lorg/json/JSONObject;

    move-result-object v0

    :goto_f
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "appGuid"

    iget-object v5, p0, Lcom/paypal/android/sdk/at;->d:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "libraryVersion"

    invoke-static {}, Lcom/paypal/android/sdk/at;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "additionalData"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Dyson Risk Data "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/paypal/android/sdk/bn;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->k:Lcom/paypal/android/sdk/ap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->k:Lcom/paypal/android/sdk/ap;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/ap;->g()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->k:Lcom/paypal/android/sdk/ap;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/ap;->h()Z

    move-result v5

    sget-object v0, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "new LogRiskMetadataRequest to: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/paypal/android/sdk/bn;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "endpointIsStage: "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " (using SSL: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v5, :cond_a8

    move v0, v1

    :goto_7f
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ")"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/paypal/android/sdk/bn;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/paypal/android/sdk/be;

    iget-object v6, p0, Lcom/paypal/android/sdk/at;->r:Landroid/os/Handler;

    if-nez v5, :cond_aa

    :goto_96
    invoke-direct {v0, v4, v3, v6, v1}, Lcom/paypal/android/sdk/be;-><init>(Ljava/lang/String;Ljava/util/HashMap;Landroid/os/Handler;Z)V

    invoke-static {}, Lcom/paypal/android/sdk/bi;->a()Lcom/paypal/android/sdk/bi;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/paypal/android/sdk/bi;->a(Lcom/paypal/android/sdk/bh;)V

    goto/16 :goto_4

    :cond_a2
    invoke-virtual {p1}, Lcom/paypal/android/sdk/as;->a()Lorg/json/JSONObject;

    move-result-object v0

    goto/16 :goto_f

    :cond_a8
    move v0, v2

    goto :goto_7f

    :cond_aa
    move v1, v2

    goto :goto_96
.end method

.method static synthetic b(Lcom/paypal/android/sdk/at;)I
    .registers 2

    iget v0, p0, Lcom/paypal/android/sdk/at;->g:I

    return v0
.end method

.method private static b(Landroid/content/Context;)J
    .registers 6

    const-wide/16 v0, 0x0

    if-nez p0, :cond_5

    :cond_4
    :goto_4
    return-wide v0

    :cond_5
    :try_start_5
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-le v2, v3, :cond_1b

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-wide v0, v2, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    goto :goto_4

    :cond_1b
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v2, :cond_4

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J
    :try_end_34
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_34} :catch_36

    move-result-wide v0

    goto :goto_4

    :catch_36
    move-exception v2

    goto :goto_4
.end method

.method static synthetic c(Lcom/paypal/android/sdk/at;)Z
    .registers 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/paypal/android/sdk/at;->i:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/paypal/android/sdk/at;->f:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method static synthetic d(Lcom/paypal/android/sdk/at;)J
    .registers 3

    iget-wide v0, p0, Lcom/paypal/android/sdk/at;->f:J

    return-wide v0
.end method

.method public static d()Ljava/lang/String;
    .registers 5

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Dyson/%S (%S %S)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "3.5.4.release"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "Android"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/paypal/android/sdk/at;)Ljava/util/Timer;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->q:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic f(Lcom/paypal/android/sdk/at;)V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->m:Lcom/paypal/android/sdk/as;

    if-eqz v0, :cond_39

    sget-object v0, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/paypal/android/sdk/at;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " update not sent correctly, retrying..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/bn;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "full"

    iget-object v1, p0, Lcom/paypal/android/sdk/at;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->m:Lcom/paypal/android/sdk/as;

    invoke-direct {p0, v0, v3}, Lcom/paypal/android/sdk/at;->a(Lcom/paypal/android/sdk/as;Lcom/paypal/android/sdk/as;)V

    :goto_2e
    return-void

    :cond_2f
    invoke-direct {p0}, Lcom/paypal/android/sdk/at;->l()Lcom/paypal/android/sdk/as;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/at;->m:Lcom/paypal/android/sdk/as;

    invoke-direct {p0, v1, v0}, Lcom/paypal/android/sdk/at;->a(Lcom/paypal/android/sdk/as;Lcom/paypal/android/sdk/as;)V

    goto :goto_2e

    :cond_39
    invoke-static {}, Lcom/paypal/android/sdk/ax;->c()Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->l:Lcom/paypal/android/sdk/as;

    if-nez v0, :cond_54

    :cond_43
    invoke-static {}, Lcom/paypal/android/sdk/ax;->a()V

    const-string v0, "full"

    iput-object v0, p0, Lcom/paypal/android/sdk/at;->n:Ljava/lang/String;

    invoke-direct {p0}, Lcom/paypal/android/sdk/at;->l()Lcom/paypal/android/sdk/as;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/paypal/android/sdk/at;->a(Lcom/paypal/android/sdk/as;Lcom/paypal/android/sdk/as;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/at;->m:Lcom/paypal/android/sdk/as;

    goto :goto_2e

    :cond_54
    const-string v0, "incremental"

    iput-object v0, p0, Lcom/paypal/android/sdk/at;->n:Ljava/lang/String;

    invoke-direct {p0}, Lcom/paypal/android/sdk/at;->l()Lcom/paypal/android/sdk/as;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/at;->l:Lcom/paypal/android/sdk/as;

    invoke-direct {p0, v1, v0}, Lcom/paypal/android/sdk/at;->a(Lcom/paypal/android/sdk/as;Lcom/paypal/android/sdk/as;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/at;->m:Lcom/paypal/android/sdk/as;

    goto :goto_2e
.end method

.method static synthetic g(Lcom/paypal/android/sdk/at;)I
    .registers 3

    iget v0, p0, Lcom/paypal/android/sdk/at;->h:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/paypal/android/sdk/at;->h:I

    return v0
.end method

.method static synthetic h(Lcom/paypal/android/sdk/at;)I
    .registers 2

    iget v0, p0, Lcom/paypal/android/sdk/at;->h:I

    return v0
.end method

.method static synthetic h()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/paypal/android/sdk/at;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->c:Landroid/content/Context;

    return-object v0
.end method

.method private static i()Ljava/lang/String;
    .registers 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/paypal/android/sdk/bn;->b(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private j()Ljava/lang/String;
    .registers 8

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v0, "https://b.stats.paypal.com/counter.cgi?p="

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->s:Lcom/paypal/android/sdk/ay;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->s:Lcom/paypal/android/sdk/ay;

    sget-object v1, Lcom/paypal/android/sdk/ay;->a:Lcom/paypal/android/sdk/ay;

    if-ne v0, v1, :cond_14

    :cond_11
    const-string v0, "Beacon not recognize host app"

    :goto_13
    return-object v0

    :cond_14
    iget-object v0, p0, Lcom/paypal/android/sdk/at;->s:Lcom/paypal/android/sdk/ay;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/ay;->a()I

    move-result v1

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->u:Ljava/lang/String;

    if-nez v0, :cond_21

    const-string v0, "Beacon pairing id empty"

    goto :goto_13

    :cond_21
    iget-object v0, p0, Lcom/paypal/android/sdk/at;->u:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&i="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/paypal/android/sdk/bn;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a2

    :try_start_38
    const-string v0, "emptyIp"

    invoke-static {v0}, Lcom/paypal/android/sdk/ar;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&t="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_47} :catch_99

    :goto_47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&a="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Beacon Request URL "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/bn;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/paypal/android/sdk/ba;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/paypal/android/sdk/at;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/paypal/android/sdk/at;->t:Ljava/lang/String;

    iget-object v4, p0, Lcom/paypal/android/sdk/at;->c:Landroid/content/Context;

    invoke-static {v4}, Lcom/paypal/android/sdk/bn;->a(Landroid/content/Context;)Lcom/paypal/android/sdk/ao;

    move-result-object v4

    iget-object v5, p0, Lcom/paypal/android/sdk/at;->r:Landroid/os/Handler;

    invoke-direct/range {v0 .. v5}, Lcom/paypal/android/sdk/ba;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/paypal/android/sdk/ao;Landroid/os/Handler;)V

    invoke-static {}, Lcom/paypal/android/sdk/bi;->a()Lcom/paypal/android/sdk/bi;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/paypal/android/sdk/bi;->a(Lcom/paypal/android/sdk/bh;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_13

    :catch_99
    move-exception v0

    sget-object v2, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    const-string v3, "error reading property file"

    invoke-static {v2, v3, v0}, Lcom/paypal/android/sdk/bn;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_47

    :cond_a2
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&t="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_47
.end method

.method static synthetic j(Lcom/paypal/android/sdk/at;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/paypal/android/sdk/at;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->r:Landroid/os/Handler;

    return-object v0
.end method

.method private k()V
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->q:Ljava/util/Timer;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->q:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_9
    return-void
.end method

.method private l()Lcom/paypal/android/sdk/as;
    .registers 15

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->c:Landroid/content/Context;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    new-instance v3, Lcom/paypal/android/sdk/as;

    invoke-direct {v3}, Lcom/paypal/android/sdk/as;-><init>()V

    :try_start_b
    iget-object v0, p0, Lcom/paypal/android/sdk/at;->k:Lcom/paypal/android/sdk/ap;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/ap;->i()Lcom/paypal/android/sdk/bl;

    move-result-object v8

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->c:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/paypal/android/sdk/at;->c:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/paypal/android/sdk/at;->c:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/paypal/android/sdk/at;->c:Landroid/content/Context;

    const-string v7, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {v6, v7}, Lcom/paypal/android/sdk/bn;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4a1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    move-object v7, v1

    :goto_40
    iget-object v1, p0, Lcom/paypal/android/sdk/at;->c:Landroid/content/Context;

    const-string v6, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v1, v6}, Lcom/paypal/android/sdk/bn;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4a5

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    move-object v6, v1

    :goto_4f
    iget-object v1, p0, Lcom/paypal/android/sdk/at;->c:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v1, v2}, Lcom/paypal/android/sdk/bn;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_63

    iget-object v1, p0, Lcom/paypal/android/sdk/at;->c:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v1, v2}, Lcom/paypal/android/sdk/bn;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4a9

    :cond_63
    const/4 v1, 0x1

    :goto_64
    iget-object v2, p0, Lcom/paypal/android/sdk/at;->c:Landroid/content/Context;

    const-string v9, "android.permission.READ_PHONE_STATE"

    invoke-static {v2, v9}, Lcom/paypal/android/sdk/bn;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    packed-switch v2, :pswitch_data_554

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/paypal/android/sdk/as;->A:Ljava/lang/String;

    move-object v2, v4

    move-object v4, v5

    :goto_95
    sget-object v1, Lcom/paypal/android/sdk/bm;->w:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v8, v1}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v1

    if-nez v1, :cond_a0

    const/4 v1, 0x0

    iput-object v1, v3, Lcom/paypal/android/sdk/as;->A:Ljava/lang/String;

    :cond_a0
    sget-object v1, Lcom/paypal/android/sdk/bm;->a:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v8, v1}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v1

    if-eqz v1, :cond_ac

    iget-object v1, p0, Lcom/paypal/android/sdk/at;->d:Ljava/lang/String;

    iput-object v1, v3, Lcom/paypal/android/sdk/as;->a:Ljava/lang/String;

    :cond_ac
    sget-object v1, Lcom/paypal/android/sdk/bm;->O:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v8, v1}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v1

    if-eqz v1, :cond_b8

    iget-object v1, p0, Lcom/paypal/android/sdk/at;->u:Ljava/lang/String;

    iput-object v1, v3, Lcom/paypal/android/sdk/as;->U:Ljava/lang/String;

    :cond_b8
    sget-object v1, Lcom/paypal/android/sdk/bm;->M:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v8, v1}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v1

    if-eqz v1, :cond_cc

    iget-object v1, p0, Lcom/paypal/android/sdk/at;->s:Lcom/paypal/android/sdk/ay;

    if-nez v1, :cond_4e4

    sget-object v1, Lcom/paypal/android/sdk/ay;->a:Lcom/paypal/android/sdk/ay;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/ay;->a()I

    move-result v1

    iput v1, v3, Lcom/paypal/android/sdk/as;->Q:I

    :cond_cc
    :goto_cc
    sget-object v1, Lcom/paypal/android/sdk/bm;->N:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v8, v1}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v1

    if-eqz v1, :cond_d8

    iget-object v1, p0, Lcom/paypal/android/sdk/at;->t:Ljava/lang/String;

    iput-object v1, v3, Lcom/paypal/android/sdk/as;->R:Ljava/lang/String;

    :cond_d8
    sget-object v1, Lcom/paypal/android/sdk/bm;->u:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v8, v1}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v1

    if-eqz v1, :cond_e4

    iget-object v1, p0, Lcom/paypal/android/sdk/at;->w:Ljava/lang/String;

    iput-object v1, v3, Lcom/paypal/android/sdk/as;->Z:Ljava/lang/String;

    :cond_e4
    sget-object v1, Lcom/paypal/android/sdk/bm;->S:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v8, v1}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v1

    if-eqz v1, :cond_fa

    iget-object v1, p0, Lcom/paypal/android/sdk/at;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "android_id"

    invoke-static {v1, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/paypal/android/sdk/as;->X:Ljava/lang/String;

    :cond_fa
    iget-object v1, p0, Lcom/paypal/android/sdk/at;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/paypal/android/sdk/bn;->a(Landroid/content/Context;)Lcom/paypal/android/sdk/ao;

    move-result-object v1

    sget-object v5, Lcom/paypal/android/sdk/bm;->b:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v8, v5}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v5

    if-eqz v5, :cond_10e

    invoke-virtual {v1}, Lcom/paypal/android/sdk/ao;->a()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/paypal/android/sdk/as;->b:Ljava/lang/String;

    :cond_10e
    sget-object v5, Lcom/paypal/android/sdk/bm;->c:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v8, v5}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v5

    if-eqz v5, :cond_11c

    invoke-virtual {v1}, Lcom/paypal/android/sdk/ao;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/paypal/android/sdk/as;->c:Ljava/lang/String;

    :cond_11c
    sget-object v1, Lcom/paypal/android/sdk/bm;->d:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v8, v1}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v1

    if-eqz v1, :cond_129

    if-nez v2, :cond_4f0

    const/4 v1, -0x1

    :goto_127
    iput v1, v3, Lcom/paypal/android/sdk/as;->d:I

    :cond_129
    sget-object v1, Lcom/paypal/android/sdk/bm;->I:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v8, v1}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v1

    if-eqz v1, :cond_136

    if-nez v2, :cond_4f6

    const/4 v1, -0x1

    :goto_134
    iput v1, v3, Lcom/paypal/android/sdk/as;->O:I

    :cond_136
    sget-object v1, Lcom/paypal/android/sdk/bm;->J:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v8, v1}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v1

    if-eqz v1, :cond_143

    if-nez v2, :cond_4fc

    const/4 v1, -0x1

    :goto_141
    iput v1, v3, Lcom/paypal/android/sdk/as;->N:I

    :cond_143
    sget-object v1, Lcom/paypal/android/sdk/bm;->e:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v8, v1}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v1

    if-eqz v1, :cond_150

    if-nez v7, :cond_502

    const/4 v1, 0x0

    :goto_14e
    iput-object v1, v3, Lcom/paypal/android/sdk/as;->e:Ljava/lang/String;

    :cond_150
    sget-object v1, Lcom/paypal/android/sdk/bm;->f:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v8, v1}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v1

    if-eqz v1, :cond_15d

    if-nez v4, :cond_508

    const/4 v1, -0x1

    :goto_15b
    iput v1, v3, Lcom/paypal/android/sdk/as;->f:I

    :cond_15d
    sget-object v1, Lcom/paypal/android/sdk/bm;->H:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v8, v1}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v1

    if-eqz v1, :cond_16b

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/paypal/android/sdk/as;->P:Ljava/lang/String;

    :cond_16b
    const-string v1, "3.5.4.release"

    iput-object v1, v3, Lcom/paypal/android/sdk/as;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/paypal/android/sdk/at;->j:Ljava/lang/String;

    iput-object v1, v3, Lcom/paypal/android/sdk/as;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/paypal/android/sdk/at;->k:Lcom/paypal/android/sdk/ap;

    if-nez v1, :cond_50e

    const/4 v1, 0x0

    :goto_178
    iput-object v1, v3, Lcom/paypal/android/sdk/as;->i:Ljava/lang/String;

    sget-object v1, Lcom/paypal/android/sdk/bm;->g:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v8, v1}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v1

    if-eqz v1, :cond_187

    if-nez v6, :cond_516

    const/4 v1, 0x0

    :goto_185
    iput-object v1, v3, Lcom/paypal/android/sdk/as;->j:Ljava/lang/String;

    :cond_187
    sget-object v1, Lcom/paypal/android/sdk/bm;->h:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v8, v1}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v1

    if-eqz v1, :cond_197

    if-eqz v9, :cond_51c

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    :goto_195
    iput-object v1, v3, Lcom/paypal/android/sdk/as;->k:Ljava/lang/String;

    :cond_197
    sget-object v1, Lcom/paypal/android/sdk/bm;->i:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v8, v1}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v1

    if-eqz v1, :cond_1a3

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v1, v3, Lcom/paypal/android/sdk/as;->l:Ljava/lang/String;

    :cond_1a3
    sget-object v1, Lcom/paypal/android/sdk/bm;->j:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v8, v1}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v1

    if-eqz v1, :cond_1af

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v1, v3, Lcom/paypal/android/sdk/as;->m:Ljava/lang/String;

    :cond_1af
    sget-object v1, Lcom/paypal/android/sdk/bm;->k:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v8, v1}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v1

    if-eqz v1, :cond_1bd

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    iput-wide v12, v3, Lcom/paypal/android/sdk/as;->n:J

    :cond_1bd
    sget-object v1, Lcom/paypal/android/sdk/bm;->l:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v8, v1}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v1

    if-eqz v1, :cond_1cb

    invoke-static {}, Lcom/paypal/android/sdk/bn;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/paypal/android/sdk/as;->o:Ljava/lang/String;

    :cond_1cb
    sget-object v1, Lcom/paypal/android/sdk/bm;->l:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v8, v1}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v1

    if-eqz v1, :cond_1da

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/paypal/android/sdk/bn;->a(Z)Ljava/util/List;

    move-result-object v1

    iput-object v1, v3, Lcom/paypal/android/sdk/as;->p:Ljava/util/List;

    :cond_1da
    sget-object v1, Lcom/paypal/android/sdk/bm;->n:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v8, v1}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v1

    if-eqz v1, :cond_1ea

    if-eqz v9, :cond_51f

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    :goto_1e8
    iput-object v1, v3, Lcom/paypal/android/sdk/as;->r:Ljava/lang/String;

    :cond_1ea
    sget-object v1, Lcom/paypal/android/sdk/bm;->o:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v8, v1}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v1

    if-eqz v1, :cond_1f8

    invoke-static {}, Lcom/paypal/android/sdk/bn;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/paypal/android/sdk/as;->s:Ljava/lang/String;

    :cond_1f8
    sget-object v1, Lcom/paypal/android/sdk/bm;->p:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v8, v1}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v1

    if-eqz v1, :cond_20a

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/paypal/android/sdk/as;->t:Ljava/lang/String;

    :cond_20a
    sget-object v1, Lcom/paypal/android/sdk/bm;->q:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v8, v1}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v1

    if-eqz v1, :cond_21c

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/paypal/android/sdk/as;->u:Ljava/lang/String;

    :cond_21c
    sget-object v1, Lcom/paypal/android/sdk/bm;->r:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v8, v1}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v1

    if-eqz v1, :cond_22b

    iget-object v1, p0, Lcom/paypal/android/sdk/at;->p:Landroid/location/Location;

    if-nez v1, :cond_522

    const/4 v1, 0x0

    :goto_229
    iput-object v1, v3, Lcom/paypal/android/sdk/as;->v:Landroid/location/Location;

    :cond_22b
    sget-object v1, Lcom/paypal/android/sdk/bm;->s:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v8, v1}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v1

    if-eqz v1, :cond_238

    if-nez v4, :cond_535

    const/4 v1, -0x1

    :goto_236
    iput v1, v3, Lcom/paypal/android/sdk/as;->w:I

    :cond_238
    sget-object v1, Lcom/paypal/android/sdk/bm;->t:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v8, v1}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v1

    if-eqz v1, :cond_245

    if-nez v7, :cond_53b

    const/4 v1, 0x0

    :goto_243
    iput-object v1, v3, Lcom/paypal/android/sdk/as;->x:Ljava/lang/String;

    :cond_245
    sget-object v1, Lcom/paypal/android/sdk/bm;->v:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v8, v1}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v1

    if-eqz v1, :cond_251

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v1, v3, Lcom/paypal/android/sdk/as;->z:Ljava/lang/String;

    :cond_251
    sget-object v1, Lcom/paypal/android/sdk/bm;->x:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v8, v1}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v1

    if-eqz v1, :cond_25f

    invoke-static {}, Lcom/paypal/android/sdk/ax;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/paypal/android/sdk/as;->B:Ljava/lang/String;

    :cond_25f
    sget-object v1, Lcom/paypal/android/sdk/bm;->y:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v8, v1}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v1

    if-eqz v1, :cond_276

    new-instance v1, Landroid/telephony/ServiceState;

    invoke-direct {v1}, Landroid/telephony/ServiceState;-><init>()V

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v3, Lcom/paypal/android/sdk/as;->C:Ljava/lang/Boolean;

    :cond_276
    sget-object v1, Lcom/paypal/android/sdk/bm;->z:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v8, v1}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v1

    if-eqz v1, :cond_284

    invoke-static {v0}, Lcom/paypal/android/sdk/at;->a(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/paypal/android/sdk/as;->D:Ljava/lang/String;

    :cond_284
    sget-object v1, Lcom/paypal/android/sdk/bm;->R:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v8, v1}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v1

    if-eqz v1, :cond_294

    if-eqz v9, :cond_541

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v1

    :goto_292
    iput-object v1, v3, Lcom/paypal/android/sdk/as;->E:Ljava/lang/String;

    :cond_294
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_29e

    sget-object v1, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    iput-object v1, v3, Lcom/paypal/android/sdk/as;->aa:Ljava/lang/String;

    :cond_29e
    sget-object v1, Lcom/paypal/android/sdk/bm;->A:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v8, v1}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v1

    if-eqz v1, :cond_2b8

    iget-object v1, p0, Lcom/paypal/android/sdk/at;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.telephony"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v3, Lcom/paypal/android/sdk/as;->F:Ljava/lang/Boolean;

    :cond_2b8
    sget-object v1, Lcom/paypal/android/sdk/bm;->B:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v8, v1}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v1

    if-eqz v1, :cond_2c5

    if-nez v7, :cond_544

    const/4 v1, 0x0

    :goto_2c3
    iput-object v1, v3, Lcom/paypal/android/sdk/as;->G:Ljava/lang/String;

    :cond_2c5
    sget-object v1, Lcom/paypal/android/sdk/bm;->C:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v8, v1}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v1

    if-eqz v1, :cond_2d5

    if-eqz v9, :cond_54a

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    :goto_2d3
    iput-object v0, v3, Lcom/paypal/android/sdk/as;->H:Ljava/lang/String;

    :cond_2d5
    sget-object v0, Lcom/paypal/android/sdk/bm;->D:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v8, v0}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v0

    if-eqz v0, :cond_2e3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v3, Lcom/paypal/android/sdk/as;->I:J

    :cond_2e3
    sget-object v0, Lcom/paypal/android/sdk/bm;->E:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v8, v0}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v0

    if-eqz v0, :cond_2f1

    invoke-static {}, Lcom/paypal/android/sdk/bn;->c()J

    move-result-wide v0

    iput-wide v0, v3, Lcom/paypal/android/sdk/as;->J:J

    :cond_2f1
    sget-object v0, Lcom/paypal/android/sdk/bm;->F:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v8, v0}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v0

    if-eqz v0, :cond_30e

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v1

    const/4 v2, 0x1

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1, v2, v4}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/paypal/android/sdk/as;->K:Ljava/lang/String;

    :cond_30e
    sget-object v0, Lcom/paypal/android/sdk/bm;->W:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v8, v0}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v0

    if-eqz v0, :cond_324

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v3, Lcom/paypal/android/sdk/as;->L:Ljava/lang/Boolean;

    :cond_324
    sget-object v0, Lcom/paypal/android/sdk/bm;->X:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v8, v0}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v0

    if-eqz v0, :cond_33e

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v3, Lcom/paypal/android/sdk/as;->M:Ljava/lang/Integer;

    :cond_33e
    sget-object v0, Lcom/paypal/android/sdk/bm;->K:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v8, v0}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v0

    if-eqz v0, :cond_389

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "generic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_382

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "sdk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_382

    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v1, "goldfish"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_382

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v1, "generic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_382

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_382

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, ".*_?sdk_?.*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_54d

    :cond_382
    const/4 v0, 0x1

    :goto_383
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v3, Lcom/paypal/android/sdk/as;->S:Ljava/lang/Boolean;

    :cond_389
    sget-object v0, Lcom/paypal/android/sdk/bm;->L:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v8, v0}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v0

    if-eqz v0, :cond_39b

    invoke-static {}, Lcom/paypal/android/sdk/az;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v3, Lcom/paypal/android/sdk/as;->T:Ljava/lang/Boolean;

    :cond_39b
    sget-object v0, Lcom/paypal/android/sdk/bm;->m:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v8, v0}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v0

    if-eqz v0, :cond_3f1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->k:Lcom/paypal/android/sdk/ap;

    if-eqz v0, :cond_3e8

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->k:Lcom/paypal/android/sdk/ap;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/ap;->f()Ljava/util/List;
    :try_end_3b1
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_3b1} :catch_4ee
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_3b1} :catch_52b

    move-result-object v0

    :try_start_3b2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3b6
    :goto_3b6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/paypal/android/sdk/at;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/paypal/android/sdk/bn;->a(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_3b6

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3de
    .catch Ljava/lang/Exception; {:try_start_3b2 .. :try_end_3de} :catch_3df
    .catch Ljava/lang/RuntimeException; {:try_start_3b2 .. :try_end_3de} :catch_4ee

    goto :goto_3b6

    :catch_3df
    move-exception v0

    :try_start_3e0
    sget-object v0, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    const-string v2, "knownApps error"

    const/4 v4, 0x0

    invoke-static {v0, v2, v4}, Lcom/paypal/android/sdk/bn;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3e8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_550

    const/4 v0, 0x0

    :goto_3ef
    iput-object v0, v3, Lcom/paypal/android/sdk/as;->q:Ljava/util/List;

    :cond_3f1
    sget-object v0, Lcom/paypal/android/sdk/bm;->P:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v8, v0}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v0

    if-eqz v0, :cond_401

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/paypal/android/sdk/at;->a(Landroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/paypal/android/sdk/as;->V:J

    :cond_401
    sget-object v0, Lcom/paypal/android/sdk/bm;->Q:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v8, v0}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v0

    if-eqz v0, :cond_411

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/paypal/android/sdk/at;->b(Landroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/paypal/android/sdk/as;->W:J

    :cond_411
    iget-object v0, p0, Lcom/paypal/android/sdk/at;->o:Ljava/util/Map;

    iput-object v0, v3, Lcom/paypal/android/sdk/as;->ah:Ljava/util/Map;

    sget-object v0, Lcom/paypal/android/sdk/bm;->T:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v8, v0}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v0

    if-eqz v0, :cond_425

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/paypal/android/sdk/bn;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/paypal/android/sdk/as;->ab:Ljava/lang/String;

    :cond_425
    sget-object v0, Lcom/paypal/android/sdk/bm;->U:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v8, v0}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v0

    if-eqz v0, :cond_433

    invoke-static {}, Lcom/paypal/android/sdk/bn;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/paypal/android/sdk/as;->ad:Ljava/lang/String;

    :cond_433
    sget-object v0, Lcom/paypal/android/sdk/bm;->V:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v8, v0}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v0

    if-eqz v0, :cond_441

    invoke-static {}, Lcom/paypal/android/sdk/bn;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/paypal/android/sdk/as;->ac:Ljava/lang/String;

    :cond_441
    sget-object v0, Lcom/paypal/android/sdk/bm;->G:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v8, v0}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v0

    if-eqz v0, :cond_451

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->c:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/paypal/android/sdk/bn;->a(Landroid/content/Context;Lcom/paypal/android/sdk/as;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/paypal/android/sdk/as;->Y:Ljava/lang/String;

    :cond_451
    sget-object v0, Lcom/paypal/android/sdk/bm;->v:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v8, v0}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v0

    if-nez v0, :cond_45c

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/paypal/android/sdk/as;->y:Ljava/lang/String;

    :cond_45c
    sget-object v0, Lcom/paypal/android/sdk/bm;->Y:Lcom/paypal/android/sdk/bm;

    invoke-virtual {v8, v0}, Lcom/paypal/android/sdk/bl;->a(Lcom/paypal/android/sdk/bm;)Z

    move-result v0

    if-eqz v0, :cond_47b

    iget v0, v3, Lcom/paypal/android/sdk/as;->Q:I

    sget-object v1, Lcom/paypal/android/sdk/ay;->b:Lcom/paypal/android/sdk/ay;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/ay;->a()I

    move-result v1

    if-ne v0, v1, :cond_47b

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/paypal/android/sdk/bn;->c(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/paypal/android/sdk/bn;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/paypal/android/sdk/as;->ae:Ljava/lang/String;

    :cond_47b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/paypal/android/sdk/at;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, v3, Lcom/paypal/android/sdk/as;->I:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/paypal/android/sdk/bn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/paypal/android/sdk/as;->af:Ljava/lang/String;

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->u:Ljava/lang/String;

    invoke-static {v0}, Lcom/paypal/android/sdk/bn;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/paypal/android/sdk/as;->ag:Ljava/lang/String;

    :goto_49e
    move-object v0, v3

    goto/16 :goto_5

    :cond_4a1
    const/4 v1, 0x0

    move-object v7, v1

    goto/16 :goto_40

    :cond_4a5
    const/4 v1, 0x0

    move-object v6, v1

    goto/16 :goto_4f

    :cond_4a9
    const/4 v1, 0x0

    goto/16 :goto_64

    :pswitch_4ac
    const-string v1, "none"

    iput-object v1, v3, Lcom/paypal/android/sdk/as;->A:Ljava/lang/String;

    move-object v2, v4

    move-object v4, v5

    goto/16 :goto_95

    :pswitch_4b4
    const-string v2, "gsm"

    iput-object v2, v3, Lcom/paypal/android/sdk/as;->A:Ljava/lang/String;

    if-eqz v1, :cond_4ca

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    const-class v2, Landroid/telephony/gsm/GsmCellLocation;

    invoke-static {v1, v2}, Lcom/paypal/android/sdk/bn;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/gsm/GsmCellLocation;

    :goto_4c6
    move-object v2, v4

    move-object v4, v1

    goto/16 :goto_95

    :cond_4ca
    const/4 v1, 0x0

    goto :goto_4c6

    :pswitch_4cc
    const-string v2, "cdma"

    iput-object v2, v3, Lcom/paypal/android/sdk/as;->A:Ljava/lang/String;

    if-eqz v1, :cond_4e2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    const-class v2, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-static {v1, v2}, Lcom/paypal/android/sdk/bn;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/cdma/CdmaCellLocation;

    :goto_4de
    move-object v2, v1

    move-object v4, v5

    goto/16 :goto_95

    :cond_4e2
    const/4 v1, 0x0

    goto :goto_4de

    :cond_4e4
    iget-object v1, p0, Lcom/paypal/android/sdk/at;->s:Lcom/paypal/android/sdk/ay;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/ay;->a()I

    move-result v1

    iput v1, v3, Lcom/paypal/android/sdk/as;->Q:I
    :try_end_4ec
    .catch Ljava/lang/RuntimeException; {:try_start_3e0 .. :try_end_4ec} :catch_4ee
    .catch Ljava/lang/Exception; {:try_start_3e0 .. :try_end_4ec} :catch_52b

    goto/16 :goto_cc

    :catch_4ee
    move-exception v0

    throw v0

    :cond_4f0
    :try_start_4f0
    invoke-virtual {v2}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v1

    goto/16 :goto_127

    :cond_4f6
    invoke-virtual {v2}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v1

    goto/16 :goto_134

    :cond_4fc
    invoke-virtual {v2}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v1

    goto/16 :goto_141

    :cond_502
    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_14e

    :cond_508
    invoke-virtual {v4}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    goto/16 :goto_15b

    :cond_50e
    iget-object v1, p0, Lcom/paypal/android/sdk/at;->k:Lcom/paypal/android/sdk/ap;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/ap;->b()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_178

    :cond_516
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_185

    :cond_51c
    const/4 v1, 0x0

    goto/16 :goto_195

    :cond_51f
    const/4 v1, 0x0

    goto/16 :goto_1e8

    :cond_522
    new-instance v1, Landroid/location/Location;

    iget-object v2, p0, Lcom/paypal/android/sdk/at;->p:Landroid/location/Location;

    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Landroid/location/Location;)V
    :try_end_529
    .catch Ljava/lang/RuntimeException; {:try_start_4f0 .. :try_end_529} :catch_4ee
    .catch Ljava/lang/Exception; {:try_start_4f0 .. :try_end_529} :catch_52b

    goto/16 :goto_229

    :catch_52b
    move-exception v0

    sget-object v1, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    const-string v2, "Unknown error in RiskComponent"

    invoke-static {v1, v2, v0}, Lcom/paypal/android/sdk/bn;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_49e

    :cond_535
    :try_start_535
    invoke-virtual {v4}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    goto/16 :goto_236

    :cond_53b
    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_243

    :cond_541
    const/4 v1, 0x0

    goto/16 :goto_292

    :cond_544
    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;
    :try_end_547
    .catch Ljava/lang/RuntimeException; {:try_start_535 .. :try_end_547} :catch_4ee
    .catch Ljava/lang/Exception; {:try_start_535 .. :try_end_547} :catch_52b

    move-result-object v1

    goto/16 :goto_2c3

    :cond_54a
    const/4 v0, 0x0

    goto/16 :goto_2d3

    :cond_54d
    const/4 v0, 0x0

    goto/16 :goto_383

    :cond_550
    move-object v0, v1

    goto/16 :goto_3ef

    nop

    :pswitch_data_554
    .packed-switch 0x0
        :pswitch_4ac
        :pswitch_4b4
        :pswitch_4cc
    .end packed-switch
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Lcom/paypal/android/sdk/ay;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 15

    const/4 v6, 0x0

    const/4 v8, 0x0

    const-string v0, "RISK_MANAGER_CONF_URL"

    invoke-static {p5, v0, v8}, Lcom/paypal/android/sdk/bn;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "RISK_MANAGER_IS_START_ASYNC_SERVICE"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p5, v0, v2}, Lcom/paypal/android/sdk/bn;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/paypal/android/sdk/at;->v:Z

    const-string v0, "RISK_MANAGER_PAIRING_ID"

    invoke-static {p5, v0, v8}, Lcom/paypal/android/sdk/bn;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "RISK_MANAGER_NOTIF_TOKEN"

    invoke-static {p5, v0, v8}, Lcom/paypal/android/sdk/bn;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/at;->w:Ljava/lang/String;

    const-class v0, Lcom/paypal/android/sdk/bc;

    const-string v3, "RISK_MANAGER_NETWORK_ADAPTER"

    new-instance v4, Lcom/paypal/android/sdk/bf;

    invoke-direct {v4}, Lcom/paypal/android/sdk/bf;-><init>()V

    invoke-static {p5, v0, v3, v4}, Lcom/paypal/android/sdk/bn;->a(Ljava/util/Map;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/bc;

    sput-object v0, Lcom/paypal/android/sdk/at;->a:Lcom/paypal/android/sdk/bc;

    const-string v0, "RISK_MANAGER_IS_DISABLE_REMOTE_CONFIG"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p5, v0, v3}, Lcom/paypal/android/sdk/bn;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v7

    iput-object p1, p0, Lcom/paypal/android/sdk/at;->c:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/paypal/android/sdk/bn;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/at;->d:Ljava/lang/String;

    if-nez p3, :cond_b5

    sget-object v0, Lcom/paypal/android/sdk/ay;->a:Lcom/paypal/android/sdk/ay;

    iput-object v0, p0, Lcom/paypal/android/sdk/at;->s:Lcom/paypal/android/sdk/ay;

    :goto_49
    iput-object p4, p0, Lcom/paypal/android/sdk/at;->t:Ljava/lang/String;

    iput-object v8, p0, Lcom/paypal/android/sdk/at;->l:Lcom/paypal/android/sdk/as;

    iput-object v8, p0, Lcom/paypal/android/sdk/at;->m:Lcom/paypal/android/sdk/as;

    iput v6, p0, Lcom/paypal/android/sdk/at;->h:I

    iput v6, p0, Lcom/paypal/android/sdk/at;->g:I

    if-eqz v2, :cond_5f

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b8

    :cond_5f
    invoke-static {}, Lcom/paypal/android/sdk/at;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/at;->u:Ljava/lang/String;

    :goto_65
    if-nez v1, :cond_c7

    :try_start_67
    const-string v0, "https://www.paypalobjects.com/webstatic/risk/dyson_config_android_v3.json"

    :goto_69
    iput-object v0, p0, Lcom/paypal/android/sdk/at;->j:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/paypal/android/sdk/at;->f()V

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->r:Landroid/os/Handler;

    if-nez v0, :cond_9f

    new-instance v0, Lcom/paypal/android/sdk/aw;

    invoke-direct {v0, p0}, Lcom/paypal/android/sdk/aw;-><init>(Lcom/paypal/android/sdk/at;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/at;->r:Landroid/os/Handler;

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->c:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    if-eqz v0, :cond_9f

    invoke-static {v0}, Lcom/paypal/android/sdk/bn;->a(Landroid/location/LocationManager;)Landroid/location/Location;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/paypal/android/sdk/at;->onLocationChanged(Landroid/location/Location;)V

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9f

    const-string v1, "network"

    const-wide/32 v2, 0x36ee80

    const/high16 v4, 0x41200000    # 10.0f

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    :cond_9f
    invoke-direct {p0}, Lcom/paypal/android/sdk/at;->k()V
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_a2} :catch_c9

    :goto_a2
    invoke-direct {p0}, Lcom/paypal/android/sdk/at;->j()Ljava/lang/String;

    new-instance v1, Lcom/paypal/android/sdk/ap;

    iget-object v2, p0, Lcom/paypal/android/sdk/at;->c:Landroid/content/Context;

    if-nez v7, :cond_d0

    const/4 v0, 0x1

    :goto_ac
    invoke-direct {v1, v2, v0}, Lcom/paypal/android/sdk/ap;-><init>(Landroid/content/Context;Z)V

    invoke-direct {p0, v1}, Lcom/paypal/android/sdk/at;->a(Lcom/paypal/android/sdk/ap;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->u:Ljava/lang/String;

    return-object v0

    :cond_b5
    iput-object p3, p0, Lcom/paypal/android/sdk/at;->s:Lcom/paypal/android/sdk/ay;

    goto :goto_49

    :cond_b8
    const/4 v0, 0x3

    const-string v3, "PRD"

    const-string v4, "Using custom pairing id"

    invoke-static {v0, v3, v4}, Lcom/paypal/android/sdk/bn;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/at;->u:Ljava/lang/String;

    goto :goto_65

    :cond_c7
    move-object v0, v1

    goto :goto_69

    :catch_c9
    move-exception v0

    sget-object v1, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    invoke-static {v1, v8, v0}, Lcom/paypal/android/sdk/bn;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a2

    :cond_d0
    move v0, v6

    goto :goto_ac
.end method

.method public final a(Landroid/os/Message;)V
    .registers 7

    const/4 v1, 0x0

    :try_start_1
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_100

    :cond_6
    :goto_6
    return-void

    :sswitch_7
    sget-object v0, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Load Configuration URL: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/paypal/android/sdk/bn;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1d} :catch_1e

    goto :goto_6

    :catch_1e
    move-exception v0

    sget-object v2, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lcom/paypal/android/sdk/bn;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :sswitch_25
    :try_start_25
    sget-object v0, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Dyson Async URL: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/paypal/android/sdk/bn;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :sswitch_3c
    sget-object v0, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Beacon URL: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/paypal/android/sdk/bn;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :sswitch_53
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/paypal/android/sdk/ap;

    if-eqz v0, :cond_6

    invoke-direct {p0, v0}, Lcom/paypal/android/sdk/at;->a(Lcom/paypal/android/sdk/ap;)V

    goto :goto_6

    :sswitch_5d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "LogRiskMetadataRequest Server returned: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/paypal/android/sdk/bn;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "?"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_87} :catch_1e

    move-result-object v0

    :try_start_88
    const-string v2, "responseEnvelope.ack"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_8d
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_88 .. :try_end_8d} :catch_9f
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_8d} :catch_1e

    move-result-object v0

    :goto_8e
    :try_start_8e
    const-string v2, "Success"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    const-string v2, "LogRiskMetadataRequest Success"

    invoke-static {v0, v2}, Lcom/paypal/android/sdk/bn;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :catch_9f
    move-exception v0

    move-object v0, v1

    goto :goto_8e

    :sswitch_a2
    sget-object v0, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Beacon returned: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/paypal/android/sdk/bn;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :sswitch_ba
    sget-object v0, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    const-string v2, "LoadConfigurationRequest failed."

    invoke-static {v0, v2}, Lcom/paypal/android/sdk/bn;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :sswitch_c3
    sget-object v2, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "LogRiskMetadataRequest failed."

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/paypal/android/sdk/bn;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :sswitch_e1
    sget-object v2, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "BeaconRequest failed "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/paypal/android/sdk/bn;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_fd
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_fd} :catch_1e

    goto/16 :goto_6

    nop

    :sswitch_data_100
    .sparse-switch
        0x0 -> :sswitch_25
        0x1 -> :sswitch_c3
        0x2 -> :sswitch_5d
        0xa -> :sswitch_7
        0xb -> :sswitch_ba
        0xc -> :sswitch_53
        0x14 -> :sswitch_3c
        0x15 -> :sswitch_e1
        0x16 -> :sswitch_a2
    .end sparse-switch
.end method

.method public final b()V
    .registers 5

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/paypal/android/sdk/av;

    invoke-direct {v1, p0}, Lcom/paypal/android/sdk/av;-><init>(Lcom/paypal/android/sdk/at;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public final c()Lorg/json/JSONObject;
    .registers 2

    invoke-static {}, Lcom/paypal/android/sdk/ax;->a()V

    invoke-direct {p0}, Lcom/paypal/android/sdk/at;->l()Lcom/paypal/android/sdk/as;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/at;->l:Lcom/paypal/android/sdk/as;

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->l:Lcom/paypal/android/sdk/as;

    if-nez v0, :cond_f

    const/4 v0, 0x0

    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/paypal/android/sdk/at;->l:Lcom/paypal/android/sdk/as;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/as;->a()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_e
.end method

.method public final e()V
    .registers 3

    invoke-static {}, Lcom/paypal/android/sdk/ax;->a()V

    invoke-direct {p0}, Lcom/paypal/android/sdk/at;->l()Lcom/paypal/android/sdk/as;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/at;->l:Lcom/paypal/android/sdk/as;

    iget-object v0, p0, Lcom/paypal/android/sdk/at;->l:Lcom/paypal/android/sdk/as;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/paypal/android/sdk/at;->a(Lcom/paypal/android/sdk/as;Lcom/paypal/android/sdk/as;)V

    return-void
.end method

.method public final f()V
    .registers 3

    sget-object v0, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    const-string v1, "Host activity detected"

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/bn;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/paypal/android/sdk/at;->i:J

    return-void
.end method

.method public final g()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/paypal/android/sdk/at;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 5

    if-eqz p1, :cond_21

    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/at;->p:Landroid/location/Location;

    sget-object v0, Lcom/paypal/android/sdk/at;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Location Update: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/bn;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_21
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4

    return-void
.end method
