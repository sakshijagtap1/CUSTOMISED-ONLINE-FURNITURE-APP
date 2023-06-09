.class final Lcom/paypal/android/sdk/bo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Lcom/paypal/android/sdk/as;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/paypal/android/sdk/as;)V
    .registers 3

    iput-object p1, p0, Lcom/paypal/android/sdk/bo;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/paypal/android/sdk/bo;->b:Lcom/paypal/android/sdk/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/paypal/android/sdk/bo;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/bo;->b:Lcom/paypal/android/sdk/as;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/paypal/android/sdk/as;->Y:Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_e} :catch_f

    :goto_e
    return-void

    :catch_f
    move-exception v0

    invoke-static {}, Lcom/paypal/android/sdk/bn;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/paypal/android/sdk/bn;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e
.end method
