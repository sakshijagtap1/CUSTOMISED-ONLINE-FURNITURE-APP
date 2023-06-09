.class public final Lcom/paypal/android/sdk/fz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/paypal/android/sdk/go;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/paypal/android/sdk/gc;


# direct methods
.method private constructor <init>(Lorg/json/JSONObject;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/paypal/android/sdk/fw;->aC:Lcom/paypal/android/sdk/fw;

    invoke-static {v0}, Lcom/paypal/android/sdk/fu;->a(Lcom/paypal/android/sdk/fw;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/fz;->a:Ljava/lang/String;

    new-instance v0, Lcom/paypal/android/sdk/gc;

    const-string v1, "funding_sources"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "backup_funding_instrument"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/paypal/android/sdk/gc;-><init>(Lorg/json/JSONArray;Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/fz;->b:Lcom/paypal/android/sdk/gc;

    return-void
.end method

.method public static a(Lorg/json/JSONObject;Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .registers 6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_15

    new-instance v0, Lcom/paypal/android/sdk/fz;

    invoke-direct {v0, p0}, Lcom/paypal/android/sdk/fz;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v0}, Lcom/paypal/android/sdk/fz;->h()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    if-eqz p1, :cond_33

    const/4 v0, 0x0

    :goto_18
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_33

    :try_start_1e
    new-instance v2, Lcom/paypal/android/sdk/fz;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/paypal/android/sdk/fz;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v2}, Lcom/paypal/android/sdk/fz;->h()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_30
    .catch Lorg/json/JSONException; {:try_start_1e .. :try_end_30} :catch_34

    :cond_30
    :goto_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_33
    return-object v1

    :catch_34
    move-exception v2

    goto :goto_30
.end method

.method private h()Z
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/fz;->b:Lcom/paypal/android/sdk/gc;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/gc;->e()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/fz;->b:Lcom/paypal/android/sdk/gc;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/gc;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/fz;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/fz;->b:Lcom/paypal/android/sdk/gc;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/gc;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/fz;->b:Lcom/paypal/android/sdk/gc;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/gc;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Z
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/fz;->b:Lcom/paypal/android/sdk/gc;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/gc;->b()Z

    move-result v0

    return v0
.end method

.method public final f()Lcom/paypal/android/sdk/gc;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/fz;->b:Lcom/paypal/android/sdk/gc;

    return-object v0
.end method

.method public final g()Z
    .registers 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/paypal/android/sdk/fz;->b:Lcom/paypal/android/sdk/gc;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/gc;->e()I

    move-result v1

    if-ne v1, v0, :cond_a

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
