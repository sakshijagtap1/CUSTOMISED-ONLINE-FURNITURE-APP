.class public Lcom/paypal/android/sdk/eh;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/paypal/android/sdk/eh;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_10} :catch_11

    :goto_10
    return-object v0

    :catch_11
    move-exception v0

    const-string v0, "unknown versionName"

    goto :goto_10
.end method

.method public static a()Lorg/json/JSONObject;
    .registers 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    sget-object v0, Lcom/paypal/android/sdk/eh;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v3, Lcom/paypal/android/sdk/eh;->a:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_24} :catch_25

    goto :goto_f

    :catch_25
    move-exception v0

    const-string v1, "paypal.sdk"

    const-string v2, "Error encoding JSON"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_2e
    return-object v0

    :cond_2f
    move-object v0, v1

    goto :goto_2e
.end method

.method public static a(Lcom/paypal/android/sdk/a;)V
    .registers 4

    sget-object v0, Lcom/paypal/android/sdk/eh;->a:Ljava/util/Map;

    if-nez v0, :cond_3c

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/eh;->a:Ljava/util/Map;

    const-string v1, "app_version"

    invoke-virtual {p0}, Lcom/paypal/android/sdk/a;->f()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/paypal/android/sdk/eh;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/eh;->a:Ljava/util/Map;

    const-string v1, "app_category"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/paypal/android/sdk/a;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3d

    sget-object v0, Lcom/paypal/android/sdk/eh;->a:Ljava/util/Map;

    const-string v1, "client_platform"

    const-string v2, "AndroidGSM"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_31
    sget-object v0, Lcom/paypal/android/sdk/eh;->a:Ljava/util/Map;

    const-string v1, "device_app_id"

    invoke-virtual {p0}, Lcom/paypal/android/sdk/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3c
    return-void

    :cond_3d
    invoke-virtual {p0}, Lcom/paypal/android/sdk/a;->b()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4e

    sget-object v0, Lcom/paypal/android/sdk/eh;->a:Ljava/util/Map;

    const-string v1, "client_platform"

    const-string v2, "AndroidCDMA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_31

    :cond_4e
    sget-object v0, Lcom/paypal/android/sdk/eh;->a:Ljava/util/Map;

    const-string v1, "client_platform"

    const-string v2, "AndroidOther"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_31
.end method
