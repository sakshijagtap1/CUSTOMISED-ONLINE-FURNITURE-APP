.class final Lcom/paypal/android/sdk/en;
.super Ljava/util/HashMap;


# direct methods
.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "ANDROIDCDMA_PHONE"

    invoke-virtual {p0, v0, v1}, Lcom/paypal/android/sdk/en;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "ANDROIDGSM_PHONE"

    invoke-virtual {p0, v0, v1}, Lcom/paypal/android/sdk/en;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "ANDROIDGSM_UNDEFINED"

    invoke-virtual {p0, v0, v1}, Lcom/paypal/android/sdk/en;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "ANDROIDGSM_UNDEFINED"

    invoke-virtual {p0, v0, v1}, Lcom/paypal/android/sdk/en;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
