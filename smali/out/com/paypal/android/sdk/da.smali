.class public Lcom/paypal/android/sdk/da;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/paypal/android/sdk/at;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/paypal/android/sdk/at;->a()Lcom/paypal/android/sdk/at;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/da;->a:Lcom/paypal/android/sdk/at;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 11

    iget-object v0, p0, Lcom/paypal/android/sdk/da;->a:Lcom/paypal/android/sdk/at;

    sget-object v3, Lcom/paypal/android/sdk/ay;->c:Lcom/paypal/android/sdk/ay;

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/paypal/android/sdk/at;->a(Landroid/content/Context;Ljava/lang/String;Lcom/paypal/android/sdk/ay;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/da;->a:Lcom/paypal/android/sdk/at;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/at;->e()V

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/da;->a:Lcom/paypal/android/sdk/at;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/at;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/paypal/android/sdk/at;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
