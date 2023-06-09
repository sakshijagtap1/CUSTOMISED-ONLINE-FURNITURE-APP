.class public final Lcom/paypal/android/sdk/fd;
.super Lcom/paypal/android/sdk/fq;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Z

.field private final d:Lorg/json/JSONObject;

.field private final e:Lorg/json/JSONObject;

.field private f:Lorg/json/JSONObject;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/paypal/android/sdk/cx;Lcom/paypal/android/sdk/b;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .registers 13

    sget-object v0, Lcom/paypal/android/sdk/df;->h:Lcom/paypal/android/sdk/df;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/paypal/android/sdk/fq;-><init>(Lcom/paypal/android/sdk/df;Lcom/paypal/android/sdk/cx;Lcom/paypal/android/sdk/b;Ljava/lang/String;)V

    iput-boolean p5, p0, Lcom/paypal/android/sdk/fd;->c:Z

    iput-object p8, p0, Lcom/paypal/android/sdk/fd;->a:Ljava/lang/String;

    iput-object p9, p0, Lcom/paypal/android/sdk/fd;->b:Ljava/lang/String;

    iput-object p10, p0, Lcom/paypal/android/sdk/fd;->d:Lorg/json/JSONObject;

    iput-object p11, p0, Lcom/paypal/android/sdk/fd;->e:Lorg/json/JSONObject;

    const-string v0, "PayPal-Request-Id"

    invoke-virtual {p0, v0, p4}, Lcom/paypal/android/sdk/fd;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p6}, Lcom/paypal/android/sdk/d;->d(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, "PayPal-Partner-Attribution-Id"

    invoke-virtual {p0, v0, p6}, Lcom/paypal/android/sdk/fd;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    invoke-static {p7}, Lcom/paypal/android/sdk/d;->d(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string v0, "PayPal-Client-Metadata-Id"

    invoke-virtual {p0, v0, p7}, Lcom/paypal/android/sdk/fd;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
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

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_29

    const-string v1, "id"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_29
    const-string v2, "order"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_36
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_36} :catch_38

    move-result-object v0

    goto :goto_3

    :catch_38
    move-exception v1

    goto :goto_3
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .registers 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "payment_id"

    iget-object v2, p0, Lcom/paypal/android/sdk/fd;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "session_id"

    iget-object v2, p0, Lcom/paypal/android/sdk/fd;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/paypal/android/sdk/fd;->e:Lorg/json/JSONObject;

    if-eqz v1, :cond_1e

    const-string v1, "funding_option"

    iget-object v2, p0, Lcom/paypal/android/sdk/fd;->e:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1e
    iget-object v1, p0, Lcom/paypal/android/sdk/fd;->d:Lorg/json/JSONObject;

    if-eqz v1, :cond_29

    const-string v1, "shipping_address"

    iget-object v2, p0, Lcom/paypal/android/sdk/fd;->d:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_29
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "device_info"

    invoke-static {}, Lcom/paypal/android/sdk/em;->a()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/paypal/android/sdk/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "app_info"

    invoke-static {}, Lcom/paypal/android/sdk/eh;->a()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/paypal/android/sdk/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "risk_data"

    invoke-static {}, Lcom/paypal/android/sdk/at;->a()Lcom/paypal/android/sdk/at;

    move-result-object v3

    invoke-virtual {v3}, Lcom/paypal/android/sdk/at;->c()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/paypal/android/sdk/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "client_info"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .registers 3

    invoke-virtual {p0}, Lcom/paypal/android/sdk/fd;->m()Lorg/json/JSONObject;

    move-result-object v0

    :try_start_4
    const-string v1, "payment"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/fd;->f:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/paypal/android/sdk/fd;->f:Lorg/json/JSONObject;

    const-string v1, "state"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/fd;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/paypal/android/sdk/fd;->f:Lorg/json/JSONObject;

    const-string v1, "create_time"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/fd;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/paypal/android/sdk/fd;->f:Lorg/json/JSONObject;

    const-string v1, "intent"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/fd;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/paypal/android/sdk/fd;->f:Lorg/json/JSONObject;

    const-string v1, "transactions"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/paypal/android/sdk/fd;->a(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/fd;->j:Ljava/lang/String;
    :try_end_38
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_38} :catch_39

    :goto_38
    return-void

    :catch_39
    move-exception v0

    invoke-virtual {p0}, Lcom/paypal/android/sdk/fd;->d()V

    goto :goto_38
.end method

.method public final d()V
    .registers 2

    invoke-virtual {p0}, Lcom/paypal/android/sdk/fd;->m()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/paypal/android/sdk/fd;->b(Lorg/json/JSONObject;)V

    return-void
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    const-string v0, "{     \"payment\": {         \"id\": \"PAY-6PU626847B294842SKPEWXHY\",         \"transactions\": [             {                 \"amount\": {                     \"total\": \"2.85\",                     \"details\": {                         \"subtotal\": \"2.85\"                     },                     \"currency\": \"USD\"                 },                 \"description\": \"Awesome Sauce\",                 \"related_resources\": [                     {                         \"sale\": {                             \"amount\": {                                 \"total\": \"2.85\",                                 \"currency\": \"USD\"                             },                             \"id\": \"5LR21373K59921925\",                             \"parent_payment\": \"PAY-6PU626847B294842SKPEWXHY\",                             \"update_time\": \"2014-07-18T18:47:06Z\",                             \"state\": \"completed\",                             \"create_time\": \"2014-07-18T18:46:55Z\",                             \"links\": [                                 {                                     \"method\": \"GET\",                                     \"rel\": \"self\",                                     \"href\": \"https://www.stage2std019.stage.\"                                 },                                 {                                     \"method\": \"POST\",                                     \"rel\": \"refund\",                                     \"href\": \"https://www.stage2std019.stage. \"                                 },                                 {                                     \"method\": \"GET\",                                     \"rel\": \"parent_payment\",                                     \"href\": \"https://www.stage2std019.stage.PEWXHY \"                                 }                             ]                         }                     }                 ]             }         ],         \"update_time\": \"2014-07-18T18:47:06Z\",         \"payer\": {             \"payer_info\": {                 \"shipping_address\": {                                      }             },             \"payment_method\": \"paypal\"         },         \"state\": \"approved\",         \"create_time\": \"2014-07-18T18:46:55Z\",         \"links\": [             {                 \"method\": \"GET\",                 \"rel\": \"self\",                 \"href\": \"https://www.stage2std019.stage.paypal.\"             }         ],         \"intent\": \"sale\"     } } "

    return-object v0
.end method

.method public final l()V
    .registers 2

    invoke-static {}, Lcom/paypal/android/sdk/at;->a()Lcom/paypal/android/sdk/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/at;->g()Ljava/lang/String;

    return-void
.end method

.method public final t()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/fd;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final u()Z
    .registers 2

    iget-boolean v0, p0, Lcom/paypal/android/sdk/fd;->c:Z

    return v0
.end method

.method public final v()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/fd;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final w()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/fd;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final x()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/fd;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final y()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/fd;->j:Ljava/lang/String;

    return-object v0
.end method
