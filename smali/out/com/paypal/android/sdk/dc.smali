.class public Lcom/paypal/android/sdk/dc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/paypal/android/sdk/cu;


# instance fields
.field final a:Lcom/paypal/android/sdk/df;


# direct methods
.method public constructor <init>(Lcom/paypal/android/sdk/df;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/paypal/android/sdk/dc;->a:Lcom/paypal/android/sdk/df;

    return-void
.end method

.method public static d()Ljava/util/List;
    .registers 6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/paypal/android/sdk/df;->values()[Lcom/paypal/android/sdk/df;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_b
    if-ge v0, v3, :cond_1a

    aget-object v4, v2, v0

    new-instance v5, Lcom/paypal/android/sdk/dc;

    invoke-direct {v5, v4}, Lcom/paypal/android/sdk/dc;-><init>(Lcom/paypal/android/sdk/df;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1a
    return-object v1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/dc;->a:Lcom/paypal/android/sdk/df;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/df;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/paypal/android/sdk/cb;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/dc;->a:Lcom/paypal/android/sdk/df;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/df;->a()Lcom/paypal/android/sdk/cb;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/dc;->a:Lcom/paypal/android/sdk/df;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/df;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
