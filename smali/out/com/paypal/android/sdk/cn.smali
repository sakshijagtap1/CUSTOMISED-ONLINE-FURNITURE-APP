.class final Lcom/paypal/android/sdk/cn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/cw;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Lcom/paypal/android/sdk/cm;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/cm;Lcom/paypal/android/sdk/cw;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/paypal/android/sdk/cn;->c:Lcom/paypal/android/sdk/cm;

    iput-object p2, p0, Lcom/paypal/android/sdk/cn;->a:Lcom/paypal/android/sdk/cw;

    iput-object p3, p0, Lcom/paypal/android/sdk/cn;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    :try_start_0
    iget-object v0, p0, Lcom/paypal/android/sdk/cn;->c:Lcom/paypal/android/sdk/cm;

    iget-object v1, p0, Lcom/paypal/android/sdk/cn;->a:Lcom/paypal/android/sdk/cw;

    iget-object v2, p0, Lcom/paypal/android/sdk/cn;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/paypal/android/sdk/cn;->c:Lcom/paypal/android/sdk/cm;

    invoke-static {v3}, Lcom/paypal/android/sdk/cm;->a(Lcom/paypal/android/sdk/cm;)Lokhttp3/OkHttpClient;

    move-result-object v3

    new-instance v4, Lcom/paypal/android/sdk/cr;

    iget-object v5, p0, Lcom/paypal/android/sdk/cn;->c:Lcom/paypal/android/sdk/cm;

    iget-object v6, p0, Lcom/paypal/android/sdk/cn;->a:Lcom/paypal/android/sdk/cw;

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/paypal/android/sdk/cr;-><init>(Lcom/paypal/android/sdk/cm;Lcom/paypal/android/sdk/cw;B)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/paypal/android/sdk/cm;->a(Lcom/paypal/android/sdk/cm;Lcom/paypal/android/sdk/cw;Ljava/lang/String;Lokhttp3/OkHttpClient;Lokhttp3/Callback;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_19} :catch_1a

    :goto_19
    return-void

    :catch_1a
    move-exception v0

    goto :goto_19
.end method
