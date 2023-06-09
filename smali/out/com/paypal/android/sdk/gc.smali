.class final Lcom/paypal/android/sdk/gc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field private a:Ljava/util/List;

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/paypal/android/sdk/gc;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONArray;Lorg/json/JSONObject;)V
    .registers 9

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/paypal/android/sdk/gc;->a:Ljava/util/List;

    const/4 v0, 0x0

    :goto_c
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_3f

    :try_start_12
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/paypal/android/sdk/gb;->a(Lorg/json/JSONObject;)Lcom/paypal/android/sdk/gb;
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_19} :catch_24

    move-result-object v1

    :goto_1a
    if-eqz v1, :cond_21

    iget-object v3, p0, Lcom/paypal/android/sdk/gc;->a:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :catch_24
    move-exception v1

    const-string v3, "paypal.sdk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error extracting funding source: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    goto :goto_1a

    :cond_3f
    if-eqz p2, :cond_4c

    :try_start_41
    invoke-static {p2}, Lcom/paypal/android/sdk/gb;->a(Lorg/json/JSONObject;)Lcom/paypal/android/sdk/gb;
    :try_end_44
    .catch Lorg/json/JSONException; {:try_start_41 .. :try_end_44} :catch_53

    move-result-object v0

    :goto_45
    if-eqz v0, :cond_4c

    iget-object v1, p0, Lcom/paypal/android/sdk/gc;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4c
    invoke-direct {p0}, Lcom/paypal/android/sdk/gc;->f()I

    move-result v0

    iput v0, p0, Lcom/paypal/android/sdk/gc;->b:I

    return-void

    :catch_53
    move-exception v0

    const-string v1, "paypal.sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error parsing backup funding instrument: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    goto :goto_45
.end method

.method private f()I
    .registers 9

    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    move-object v2, v1

    move v3, v0

    move v1, v0

    :goto_a
    iget-object v0, p0, Lcom/paypal/android/sdk/gc;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3b

    iget-object v0, p0, Lcom/paypal/android/sdk/gc;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/gb;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/gb;->d()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpl-double v0, v4, v6

    if-lez v0, :cond_37

    iget-object v0, p0, Lcom/paypal/android/sdk/gc;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/gb;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/gb;->d()Ljava/lang/Double;

    move-result-object v2

    move v3, v1

    :cond_37
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    :cond_3b
    return v3
.end method


# virtual methods
.method public final a(I)Lcom/paypal/android/sdk/gb;
    .registers 4

    iget-object v0, p0, Lcom/paypal/android/sdk/gc;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    iget-object v0, p0, Lcom/paypal/android/sdk/gc;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/gb;

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/paypal/android/sdk/gc;->a:Ljava/util/List;

    iget v1, p0, Lcom/paypal/android/sdk/gc;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/gb;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/gb;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Z
    .registers 3

    iget-object v0, p0, Lcom/paypal/android/sdk/gc;->a:Ljava/util/List;

    iget v1, p0, Lcom/paypal/android/sdk/gc;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/gb;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/gb;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/paypal/android/sdk/d;->d(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DELAYED_TRANSFER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public final c()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/paypal/android/sdk/gc;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    iget-object v0, p0, Lcom/paypal/android/sdk/gc;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/gb;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/gb;->b()Ljava/lang/String;

    move-result-object v0

    :goto_16
    return-object v0

    :cond_17
    sget-object v0, Lcom/paypal/android/sdk/fw;->b:Lcom/paypal/android/sdk/fw;

    invoke-static {v0}, Lcom/paypal/android/sdk/fu;->a(Lcom/paypal/android/sdk/fw;)Ljava/lang/String;

    move-result-object v0

    goto :goto_16
.end method

.method public final d()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/paypal/android/sdk/gc;->a:Ljava/util/List;

    iget v1, p0, Lcom/paypal/android/sdk/gc;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/gb;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/gb;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()I
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/gc;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/gc;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
