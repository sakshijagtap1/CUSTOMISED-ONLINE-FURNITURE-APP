.class public final Lcom/paypal/android/sdk/fm;
.super Lcom/paypal/android/sdk/fn;


# instance fields
.field public a:Lcom/paypal/android/sdk/ep;

.field public b:Z

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:J

.field private j:Ljava/lang/String;

.field private final k:Z

.field private final l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/paypal/android/sdk/cx;Lcom/paypal/android/sdk/b;Ljava/lang/String;Ljava/lang/String;Lcom/paypal/android/sdk/ep;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V
    .registers 23

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p8

    move-object/from16 v8, p9

    move/from16 v9, p10

    move-object/from16 v10, p11

    invoke-direct/range {v1 .. v10}, Lcom/paypal/android/sdk/fm;-><init>(Lcom/paypal/android/sdk/cx;Lcom/paypal/android/sdk/b;Ljava/lang/String;Ljava/lang/String;Lcom/paypal/android/sdk/ep;ZLjava/lang/String;ZLjava/lang/String;)V

    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/paypal/android/sdk/fm;->m:Ljava/lang/String;

    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/paypal/android/sdk/fm;->n:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/paypal/android/sdk/cx;Lcom/paypal/android/sdk/b;Ljava/lang/String;Ljava/lang/String;Lcom/paypal/android/sdk/ep;ZLjava/lang/String;ZLjava/lang/String;)V
    .registers 12

    sget-object v0, Lcom/paypal/android/sdk/df;->c:Lcom/paypal/android/sdk/df;

    invoke-static {p3, p4}, Lcom/paypal/android/sdk/fm;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/paypal/android/sdk/fn;-><init>(Lcom/paypal/android/sdk/df;Lcom/paypal/android/sdk/cx;Lcom/paypal/android/sdk/b;Ljava/lang/String;)V

    iput-object p5, p0, Lcom/paypal/android/sdk/fm;->a:Lcom/paypal/android/sdk/ep;

    iput-boolean p6, p0, Lcom/paypal/android/sdk/fm;->b:Z

    iput-object p7, p0, Lcom/paypal/android/sdk/fm;->j:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/paypal/android/sdk/fm;->k:Z

    iput-object p9, p0, Lcom/paypal/android/sdk/fm;->l:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "response_type"

    iget-object v2, p0, Lcom/paypal/android/sdk/fm;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/paypal/android/sdk/fm;->j:Ljava/lang/String;

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/paypal/android/sdk/fm;->j:Ljava/lang/String;

    const-string v2, "token"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    const-string v1, "scope_consent_context"

    const-string v2, "access_token"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/paypal/android/sdk/fm;->l:Ljava/lang/String;

    invoke-static {v1}, Lcom/paypal/android/sdk/d;->c(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_30

    const-string v1, "scope"

    iget-object v2, p0, Lcom/paypal/android/sdk/fm;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_30
    const-string v1, "risk_data"

    invoke-static {}, Lcom/paypal/android/sdk/at;->a()Lcom/paypal/android/sdk/at;

    move-result-object v2

    invoke-virtual {v2}, Lcom/paypal/android/sdk/at;->c()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/paypal/android/sdk/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/paypal/android/sdk/fm;->m:Ljava/lang/String;

    if-eqz v1, :cond_8e

    const-string v1, "grant_type"

    const-string v2, "urn:paypal:params:oauth2:grant_type:otp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "nonce"

    iget-object v2, p0, Lcom/paypal/android/sdk/fm;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "token_identifier"

    const-string v3, "otp"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "token_value"

    iget-object v3, p0, Lcom/paypal/android/sdk/fm;->m:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/paypal/android/sdk/fm;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "2fa_token_claims"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_73
    const-string v1, "device_name"

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v2}, Lcom/paypal/android/sdk/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "redirect_uri"

    const-string v2, "urn:ietf:wg:oauth:2.0:oob"

    invoke-static {v2}, Lcom/paypal/android/sdk/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/paypal/android/sdk/d;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_8e
    iget-object v1, p0, Lcom/paypal/android/sdk/fm;->a:Lcom/paypal/android/sdk/ep;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/ep;->a()Z

    move-result v1

    if-eqz v1, :cond_bc

    const-string v1, "grant_type"

    const-string v2, "password"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "email"

    iget-object v2, p0, Lcom/paypal/android/sdk/fm;->a:Lcom/paypal/android/sdk/ep;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/ep;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/paypal/android/sdk/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "password"

    iget-object v2, p0, Lcom/paypal/android/sdk/fm;->a:Lcom/paypal/android/sdk/ep;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/ep;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/paypal/android/sdk/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_73

    :cond_bc
    const-string v1, "grant_type"

    const-string v2, "password"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/paypal/android/sdk/fm;->a:Lcom/paypal/android/sdk/ep;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/ep;->d()Lcom/paypal/android/sdk/ev;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/sdk/ev;->c()Ljava/lang/String;

    const-string v1, "phone"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "+"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/paypal/android/sdk/fm;->a:Lcom/paypal/android/sdk/ep;

    invoke-virtual {v3}, Lcom/paypal/android/sdk/ep;->d()Lcom/paypal/android/sdk/ev;

    move-result-object v3

    invoke-virtual {v3}, Lcom/paypal/android/sdk/ev;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/paypal/android/sdk/fm;->a:Lcom/paypal/android/sdk/ep;

    invoke-virtual {v3}, Lcom/paypal/android/sdk/ep;->d()Lcom/paypal/android/sdk/ev;

    move-result-object v3

    invoke-virtual {v3}, Lcom/paypal/android/sdk/ev;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/paypal/android/sdk/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pin"

    iget-object v2, p0, Lcom/paypal/android/sdk/fm;->a:Lcom/paypal/android/sdk/ep;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/ep;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_73
.end method

.method public final c()V
    .registers 5

    invoke-virtual {p0}, Lcom/paypal/android/sdk/fm;->m()Lorg/json/JSONObject;

    move-result-object v0

    :try_start_4
    const-string v1, "scope"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "scope"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/paypal/android/sdk/fm;->e:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/paypal/android/sdk/fm;->k:Z

    if-eqz v1, :cond_26

    const-string v1, "code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/paypal/android/sdk/fm;->c:Ljava/lang/String;

    const-string v1, "nonce"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/paypal/android/sdk/fm;->g:Ljava/lang/String;

    :goto_25
    return-void

    :cond_26
    const-string v1, "access_token"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/paypal/android/sdk/fm;->d:Ljava/lang/String;

    const-string v1, "expires_in"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/paypal/android/sdk/fm;->f:J
    :try_end_36
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_36} :catch_37

    goto :goto_25

    :catch_37
    move-exception v1

    invoke-virtual {p0, v0}, Lcom/paypal/android/sdk/fm;->b(Lorg/json/JSONObject;)V

    goto :goto_25
.end method

.method public final d()V
    .registers 2

    invoke-virtual {p0}, Lcom/paypal/android/sdk/fm;->m()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/paypal/android/sdk/fm;->b(Lorg/json/JSONObject;)V

    return-void
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    const-string v0, "{ \"access_token\": \"mock_access_token\", \"code\": \"mock_code_EJhi9jOPswug9TDOv93qg4Y28xIlqPDpAoqd7biDLpeGCPvORHjP1Fh4CbFPgKMGCHejdDwe9w1uDWnjPCp1lkaFBjVmjvjpFtnr6z1YeBbmfZYqa9faQT_71dmgZhMIFVkbi4yO7hk0LBHXt_wtdsw\", \"scope\": \"https://api.paypal.com/v1/payments/.*\", \"nonce\": \"mock_nonce\", \"token_type\": \"Bearer\",\"expires_in\":28800,\"visitor_id\":\"zVxjDBTRRNfYXdOb19-lcTblxm-6bzXGvSlP76ZiHOudKaAvoxrW8Cg5pA6EjIPpiz4zlw\" }"

    return-object v0
.end method

.method public final t()Z
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/fm;->m:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
