.class public final Lcom/paypal/android/sdk/az;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/paypal/android/sdk/ar;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/paypal/android/sdk/ar;

    invoke-direct {v0}, Lcom/paypal/android/sdk/ar;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/az;->a:Lcom/paypal/android/sdk/ar;

    return-void
.end method

.method public static a()Z
    .registers 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-object v2, Landroid/os/Build;->TAGS:Ljava/lang/String;

    if-eqz v2, :cond_21

    sget-object v2, Landroid/os/Build;->TAGS:Ljava/lang/String;

    const-string v3, "test-keys"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_21

    move v2, v1

    :goto_11
    if-nez v2, :cond_1f

    invoke-static {}, Lcom/paypal/android/sdk/az;->b()Z

    move-result v2

    if-nez v2, :cond_1f

    invoke-static {}, Lcom/paypal/android/sdk/az;->c()Z

    move-result v2

    if-eqz v2, :cond_20

    :cond_1f
    move v0, v1

    :cond_20
    return v0

    :cond_21
    move v2, v0

    goto :goto_11
.end method

.method private static b()Z
    .registers 2

    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "suFileName"

    invoke-static {v1}, Lcom/paypal/android/sdk/ar;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_10

    move-result v0

    :goto_f
    return v0

    :catch_10
    move-exception v0

    const/4 v0, 0x0

    goto :goto_f
.end method

.method private static c()Z
    .registers 2

    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "superUserApk"

    invoke-static {v1}, Lcom/paypal/android/sdk/ar;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_10

    move-result v0

    :goto_f
    return v0

    :catch_10
    move-exception v0

    const/4 v0, 0x0

    goto :goto_f
.end method
