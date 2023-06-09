.class public abstract Lcom/paypal/android/sdk/fp;
.super Lcom/paypal/android/sdk/fq;


# instance fields
.field public a:Ljava/lang/String;

.field private b:Lcom/paypal/android/sdk/er;

.field private c:Ljava/util/Map;

.field private d:[Lcom/paypal/android/sdk/fo;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/paypal/android/sdk/df;Lcom/paypal/android/sdk/cx;Lcom/paypal/android/sdk/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/paypal/android/sdk/er;Ljava/util/Map;[Lcom/paypal/android/sdk/fo;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 18

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/paypal/android/sdk/fq;-><init>(Lcom/paypal/android/sdk/df;Lcom/paypal/android/sdk/cx;Lcom/paypal/android/sdk/b;Ljava/lang/String;)V

    iput-object p6, p0, Lcom/paypal/android/sdk/fp;->a:Ljava/lang/String;

    iput-object p7, p0, Lcom/paypal/android/sdk/fp;->b:Lcom/paypal/android/sdk/er;

    iput-object p8, p0, Lcom/paypal/android/sdk/fp;->c:Ljava/util/Map;

    iput-object p9, p0, Lcom/paypal/android/sdk/fp;->d:[Lcom/paypal/android/sdk/fo;

    iput-object p10, p0, Lcom/paypal/android/sdk/fp;->e:Ljava/lang/String;

    iput-boolean p11, p0, Lcom/paypal/android/sdk/fp;->f:Z

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/paypal/android/sdk/fp;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/paypal/android/sdk/fp;->g:Ljava/lang/String;

    invoke-static {v1}, Lcom/paypal/android/sdk/d;->c(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1f

    const-string v1, "sale"

    iput-object v1, p0, Lcom/paypal/android/sdk/fp;->g:Ljava/lang/String;

    :cond_1f
    iget-object v1, p0, Lcom/paypal/android/sdk/fp;->g:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/paypal/android/sdk/fp;->g:Ljava/lang/String;

    const-string v1, "PayPal-Request-Id"

    invoke-virtual {p0, v1, p5}, Lcom/paypal/android/sdk/fp;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p12}, Lcom/paypal/android/sdk/d;->d(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_39

    const-string v1, "PayPal-Partner-Attribution-Id"

    invoke-virtual {p0, v1, p12}, Lcom/paypal/android/sdk/fp;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_39
    invoke-static/range {p13 .. p13}, Lcom/paypal/android/sdk/d;->d(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_46

    const-string v1, "PayPal-Client-Metadata-Id"

    move-object/from16 v0, p13

    invoke-virtual {p0, v1, v0}, Lcom/paypal/android/sdk/fp;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_46
    return-void
.end method

.method private static a(Lorg/json/JSONArray;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return-object v0

    :cond_4
    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "related_resources"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "authorization"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_27
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_27} :catch_29

    move-result-object v0

    goto :goto_3

    :catch_29
    move-exception v1

    goto :goto_3
.end method


# virtual methods
.method public final A()Z
    .registers 2

    iget-boolean v0, p0, Lcom/paypal/android/sdk/fp;->f:Z

    return v0
.end method

.method protected final B()Lcom/paypal/android/sdk/er;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/fp;->b:Lcom/paypal/android/sdk/er;

    return-object v0
.end method

.method public final C()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/fp;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final D()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/fp;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final E()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/fp;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final F()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/fp;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final G()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/fp;->k:Ljava/lang/String;

    return-object v0
.end method

.method abstract a(Lorg/json/JSONObject;)V
.end method

.method public final b()Ljava/lang/String;
    .registers 8

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "intent"

    iget-object v2, p0, Lcom/paypal/android/sdk/fp;->g:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/paypal/android/sdk/fp;->y()Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_1c

    const-string v3, "funding_instruments"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1c
    const-string v2, "payment_method"

    invoke-virtual {p0}, Lcom/paypal/android/sdk/fp;->z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "payer"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/paypal/android/sdk/fp;->b:Lcom/paypal/android/sdk/er;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "currency"

    invoke-virtual {v0}, Lcom/paypal/android/sdk/er;->b()Ljava/util/Currency;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "total"

    invoke-virtual {v0}, Lcom/paypal/android/sdk/er;->a()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/paypal/android/sdk/fp;->c:Ljava/util/Map;

    if-eqz v0, :cond_69

    iget-object v0, p0, Lcom/paypal/android/sdk/fp;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_69

    const-string v3, "details"

    iget-object v0, p0, Lcom/paypal/android/sdk/fp;->c:Ljava/util/Map;

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/paypal/android/sdk/fp;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_ad

    :cond_65
    const/4 v0, 0x0

    :cond_66
    :goto_66
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_69
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "amount"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "description"

    iget-object v3, p0, Lcom/paypal/android/sdk/fp;->e:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/paypal/android/sdk/fp;->d:[Lcom/paypal/android/sdk/fo;

    if-eqz v2, :cond_98

    iget-object v2, p0, Lcom/paypal/android/sdk/fp;->d:[Lcom/paypal/android/sdk/fo;

    array-length v2, v2

    if-lez v2, :cond_98

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "items"

    iget-object v4, p0, Lcom/paypal/android/sdk/fp;->d:[Lcom/paypal/android/sdk/fo;

    invoke-static {v4}, Lcom/paypal/android/sdk/fo;->a([Lcom/paypal/android/sdk/fo;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "item_list"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_98
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {p0, v0}, Lcom/paypal/android/sdk/fp;->a(Lorg/json/JSONObject;)V

    const-string v0, "transactions"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_ad
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v4, p0, Lcom/paypal/android/sdk/fp;->c:Ljava/util/Map;

    const-string v5, "shipping"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c9

    const-string v4, "shipping"

    iget-object v5, p0, Lcom/paypal/android/sdk/fp;->c:Ljava/util/Map;

    const-string v6, "shipping"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_c9
    iget-object v4, p0, Lcom/paypal/android/sdk/fp;->c:Ljava/util/Map;

    const-string v5, "subtotal"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e0

    const-string v4, "subtotal"

    iget-object v5, p0, Lcom/paypal/android/sdk/fp;->c:Ljava/util/Map;

    const-string v6, "subtotal"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_e0
    iget-object v4, p0, Lcom/paypal/android/sdk/fp;->c:Ljava/util/Map;

    const-string v5, "tax"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_66

    const-string v4, "tax"

    iget-object v5, p0, Lcom/paypal/android/sdk/fp;->c:Ljava/util/Map;

    const-string v6, "tax"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_66
.end method

.method public final c()V
    .registers 3

    invoke-virtual {p0}, Lcom/paypal/android/sdk/fp;->m()Lorg/json/JSONObject;

    move-result-object v0

    :try_start_4
    const-string v1, "state"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/paypal/android/sdk/fp;->h:Ljava/lang/String;

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/paypal/android/sdk/fp;->i:Ljava/lang/String;

    const-string v1, "create_time"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/paypal/android/sdk/fp;->j:Ljava/lang/String;

    const-string v1, "transactions"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/paypal/android/sdk/fp;->a(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/fp;->k:Ljava/lang/String;
    :try_end_28
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_28} :catch_29

    :goto_28
    return-void

    :catch_29
    move-exception v0

    invoke-virtual {p0}, Lcom/paypal/android/sdk/fp;->d()V

    goto :goto_28
.end method

.method public final d()V
    .registers 2

    invoke-virtual {p0}, Lcom/paypal/android/sdk/fp;->m()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/paypal/android/sdk/fp;->b(Lorg/json/JSONObject;)V

    return-void
.end method

.method protected y()Lorg/json/JSONArray;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract z()Ljava/lang/String;
.end method
