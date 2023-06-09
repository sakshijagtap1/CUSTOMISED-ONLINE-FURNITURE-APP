.class final Lcom/paypal/android/sdk/am;
.super Ljava/util/HashSet;


# direct methods
.method constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    invoke-static {}, Lcom/paypal/android/sdk/ak;->values()[Lcom/paypal/android/sdk/ak;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_9
    if-ge v0, v2, :cond_17

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/paypal/android/sdk/ak;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/paypal/android/sdk/am;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_17
    return-void
.end method
