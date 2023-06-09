.class public Lcom/paypal/android/sdk/bt;
.super Lcom/paypal/android/sdk/cv;


# instance fields
.field private final a:Lcom/paypal/android/sdk/bu;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/paypal/android/sdk/bt;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/paypal/android/sdk/cu;Lcom/paypal/android/sdk/cx;Lcom/paypal/android/sdk/b;Lcom/paypal/android/sdk/bu;)V
    .registers 7

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/paypal/android/sdk/cv;-><init>(Lcom/paypal/android/sdk/cu;Lcom/paypal/android/sdk/cx;Lcom/paypal/android/sdk/b;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/paypal/android/sdk/bt;->a:Lcom/paypal/android/sdk/bu;

    const-string v0, "Accept"

    const-string v1, "application/json; charset=utf-8"

    invoke-virtual {p0, v0, v1}, Lcom/paypal/android/sdk/bt;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Accept-Language"

    const-string v1, "en_US"

    invoke-virtual {p0, v0, v1}, Lcom/paypal/android/sdk/bt;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Content-Type"

    const-string v1, "application/json"

    invoke-virtual {p0, v0, v1}, Lcom/paypal/android/sdk/bt;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/util/Map;)Lorg/json/JSONObject;
    .registers 5

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_d

    :cond_21
    return-object v1
.end method


# virtual methods
.method public final a(Lcom/paypal/android/sdk/cu;)Ljava/lang/String;
    .registers 3

    const-string v0, "https://api.paypal.com/v1/tracking/events"

    return-object v0
.end method

.method public final a()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final b()Ljava/lang/String;
    .registers 9

    invoke-virtual {p0}, Lcom/paypal/android/sdk/bt;->s()Lcom/paypal/android/sdk/cx;

    move-result-object v0

    invoke-interface {v0}, Lcom/paypal/android/sdk/cx;->d()Lcom/paypal/android/sdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/paypal/android/sdk/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/bt;->a:Lcom/paypal/android/sdk/bu;

    iget-object v1, v1, Lcom/paypal/android/sdk/bu;->a:Ljava/lang/String;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "tracking_visitor_id"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "tracking_visit_id"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "actor"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "channel"

    const-string v4, "mobile"

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v2, "tracking_event"

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v2, v6}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    int-to-long v6, v2

    sub-long/2addr v4, v6

    iget-object v2, p0, Lcom/paypal/android/sdk/bt;->a:Lcom/paypal/android/sdk/bu;

    iget-object v2, v2, Lcom/paypal/android/sdk/bu;->b:Ljava/util/Map;

    const-string v6, "t"

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/paypal/android/sdk/bt;->a:Lcom/paypal/android/sdk/bu;

    iget-object v2, v2, Lcom/paypal/android/sdk/bu;->b:Ljava/util/Map;

    const-string v4, "dsid"

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/paypal/android/sdk/bt;->a:Lcom/paypal/android/sdk/bu;

    iget-object v0, v0, Lcom/paypal/android/sdk/bu;->b:Ljava/util/Map;

    const-string v2, "vid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "event_params"

    iget-object v1, p0, Lcom/paypal/android/sdk/bt;->a:Lcom/paypal/android/sdk/bu;

    iget-object v1, v1, Lcom/paypal/android/sdk/bu;->b:Ljava/util/Map;

    invoke-static {v1}, Lcom/paypal/android/sdk/bt;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "events"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .registers 1

    return-void
.end method

.method public final d()V
    .registers 1

    return-void
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    const-string v0, "mockResponse"

    return-object v0
.end method
