.class final Lcom/paypal/android/sdk/au;
.super Ljava/util/TimerTask;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/at;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/at;)V
    .registers 2

    iput-object p1, p0, Lcom/paypal/android/sdk/au;->a:Lcom/paypal/android/sdk/at;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Lcom/paypal/android/sdk/au;->a:Lcom/paypal/android/sdk/at;

    invoke-static {v0}, Lcom/paypal/android/sdk/at;->a(Lcom/paypal/android/sdk/at;)I

    invoke-static {}, Lcom/paypal/android/sdk/at;->h()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "****** LogRiskMetadataTask #"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/paypal/android/sdk/au;->a:Lcom/paypal/android/sdk/at;

    invoke-static {v2}, Lcom/paypal/android/sdk/at;->b(Lcom/paypal/android/sdk/at;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/bn;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/au;->a:Lcom/paypal/android/sdk/at;

    invoke-static {v0}, Lcom/paypal/android/sdk/at;->c(Lcom/paypal/android/sdk/at;)Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-static {}, Lcom/paypal/android/sdk/at;->h()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No host activity in the last "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/paypal/android/sdk/au;->a:Lcom/paypal/android/sdk/at;

    invoke-static {v2}, Lcom/paypal/android/sdk/at;->d(Lcom/paypal/android/sdk/at;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seconds. Stopping update interval."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/bn;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/au;->a:Lcom/paypal/android/sdk/at;

    invoke-static {v0}, Lcom/paypal/android/sdk/at;->e(Lcom/paypal/android/sdk/at;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :goto_57
    return-void

    :cond_58
    :try_start_58
    iget-object v0, p0, Lcom/paypal/android/sdk/au;->a:Lcom/paypal/android/sdk/at;

    invoke-static {v0}, Lcom/paypal/android/sdk/at;->f(Lcom/paypal/android/sdk/at;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5d} :catch_5e

    goto :goto_57

    :catch_5e
    move-exception v0

    invoke-static {}, Lcom/paypal/android/sdk/at;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error in logRiskMetadataTask: "

    invoke-static {v1, v2, v0}, Lcom/paypal/android/sdk/bn;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_57
.end method
