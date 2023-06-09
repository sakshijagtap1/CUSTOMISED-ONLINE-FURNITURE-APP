.class final Lcom/paypal/android/sdk/cq;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/Callback;


# instance fields
.field private final a:Lcom/paypal/android/sdk/cw;

.field private synthetic b:Lcom/paypal/android/sdk/cm;


# direct methods
.method private constructor <init>(Lcom/paypal/android/sdk/cm;Lcom/paypal/android/sdk/cw;)V
    .registers 3

    iput-object p1, p0, Lcom/paypal/android/sdk/cq;->b:Lcom/paypal/android/sdk/cm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/paypal/android/sdk/cq;->a:Lcom/paypal/android/sdk/cw;

    return-void
.end method

.method synthetic constructor <init>(Lcom/paypal/android/sdk/cm;Lcom/paypal/android/sdk/cw;B)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/paypal/android/sdk/cq;-><init>(Lcom/paypal/android/sdk/cm;Lcom/paypal/android/sdk/cw;)V

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/paypal/android/sdk/cq;->a:Lcom/paypal/android/sdk/cw;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/cw;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " PayPal Debug-ID: %s [%s, %s]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/paypal/android/sdk/cq;->b:Lcom/paypal/android/sdk/cm;

    invoke-static {v4}, Lcom/paypal/android/sdk/cm;->d(Lcom/paypal/android/sdk/cm;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/paypal/android/sdk/cq;->b:Lcom/paypal/android/sdk/cm;

    invoke-static {v5}, Lcom/paypal/android/sdk/cm;->e(Lcom/paypal/android/sdk/cm;)Lcom/paypal/android/sdk/b;

    move-result-object v5

    invoke-interface {v5}, Lcom/paypal/android/sdk/b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/paypal/android/sdk/cq;->b:Lcom/paypal/android/sdk/cm;

    invoke-static {v5}, Lcom/paypal/android/sdk/cm;->e(Lcom/paypal/android/sdk/cm;)Lcom/paypal/android/sdk/b;

    const-string v5, "release"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/paypal/android/sdk/cq;->a:Lcom/paypal/android/sdk/cw;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/cw;->b(Ljava/lang/String;)V

    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v0

    const-string v1, "PayPal-Debug-Id"

    invoke-virtual {v0, v1}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_22

    const-string v1, "paypal.sdk"

    invoke-direct {p0, v0}, Lcom/paypal/android/sdk/cq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    iget-object v0, p0, Lcom/paypal/android/sdk/cq;->b:Lcom/paypal/android/sdk/cm;

    iget-object v1, p0, Lcom/paypal/android/sdk/cq;->a:Lcom/paypal/android/sdk/cw;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p2}, Lcom/paypal/android/sdk/cm;->a(Lcom/paypal/android/sdk/cm;Lcom/paypal/android/sdk/cw;Lokhttp3/Response;Ljava/io/IOException;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2a} :catch_2b

    return-void

    :catch_2b
    move-exception v0

    const-string v1, "paypal.sdk"

    const-string v2, "exception in response handler"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0
.end method

.method public final onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .registers 6

    :try_start_0
    const-string v0, "paypal-debug-id"

    invoke-virtual {p2, v0}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/cq;->a:Lcom/paypal/android/sdk/cw;

    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/paypal/android/sdk/cw;->b(Ljava/lang/String;)V

    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result v1

    if-nez v1, :cond_31

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_28

    const-string v1, "paypal.sdk"

    invoke-direct {p0, v0}, Lcom/paypal/android/sdk/cq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    iget-object v0, p0, Lcom/paypal/android/sdk/cq;->b:Lcom/paypal/android/sdk/cm;

    iget-object v1, p0, Lcom/paypal/android/sdk/cq;->a:Lcom/paypal/android/sdk/cw;

    const/4 v2, 0x0

    invoke-static {v0, v1, p2, v2}, Lcom/paypal/android/sdk/cm;->a(Lcom/paypal/android/sdk/cm;Lcom/paypal/android/sdk/cw;Lokhttp3/Response;Ljava/io/IOException;)V

    :goto_30
    return-void

    :cond_31
    iget-object v1, p0, Lcom/paypal/android/sdk/cq;->a:Lcom/paypal/android/sdk/cw;

    invoke-virtual {v1, v0}, Lcom/paypal/android/sdk/cw;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/paypal/android/sdk/cm;->b()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/paypal/android/sdk/cq;->a:Lcom/paypal/android/sdk/cw;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/cw;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " success. response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/paypal/android/sdk/cq;->a:Lcom/paypal/android/sdk/cw;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/cw;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_66

    const-string v1, "paypal.sdk"

    invoke-direct {p0, v0}, Lcom/paypal/android/sdk/cq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_66
    iget-object v0, p0, Lcom/paypal/android/sdk/cq;->a:Lcom/paypal/android/sdk/cw;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/cw;->q()Z

    move-result v0

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/paypal/android/sdk/cq;->a:Lcom/paypal/android/sdk/cw;

    invoke-static {v0}, Lcom/paypal/android/sdk/cm;->a(Lcom/paypal/android/sdk/cw;)V

    :cond_73
    iget-object v0, p0, Lcom/paypal/android/sdk/cq;->b:Lcom/paypal/android/sdk/cm;

    invoke-static {v0}, Lcom/paypal/android/sdk/cm;->c(Lcom/paypal/android/sdk/cm;)Lcom/paypal/android/sdk/cx;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/cq;->a:Lcom/paypal/android/sdk/cw;

    invoke-interface {v0, v1}, Lcom/paypal/android/sdk/cx;->a(Lcom/paypal/android/sdk/cw;)V
    :try_end_7e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7e} :catch_7f

    goto :goto_30

    :catch_7f
    move-exception v0

    const-string v1, "paypal.sdk"

    const-string v2, "exception in response handler"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0
.end method
