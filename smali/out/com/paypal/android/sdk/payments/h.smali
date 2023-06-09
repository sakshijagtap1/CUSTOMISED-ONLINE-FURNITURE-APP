.class final Lcom/paypal/android/sdk/payments/h;
.super Lcom/paypal/android/sdk/payments/i;


# direct methods
.method public constructor <init>(Lcom/paypal/android/sdk/payments/PayPalService;)V
    .registers 3

    new-instance v0, Lcom/paypal/android/sdk/payments/ci;

    invoke-direct {v0, p1}, Lcom/paypal/android/sdk/payments/ci;-><init>(Lcom/paypal/android/sdk/payments/PayPalService;)V

    invoke-direct {p0, v0}, Lcom/paypal/android/sdk/payments/i;-><init>(Lcom/paypal/android/sdk/payments/ci;)V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .registers 2

    const-string v0, "msdk"

    return-object v0
.end method

.method protected final a(Ljava/lang/String;Ljava/util/Map;)V
    .registers 6

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/h;->b()Lcom/paypal/android/sdk/payments/ci;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/ci;->a()Lcom/paypal/android/sdk/dg;

    move-result-object v0

    iget-object v0, v0, Lcom/paypal/android/sdk/dg;->a:Lcom/paypal/android/sdk/ey;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/ey;->b()Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/h;->b()Lcom/paypal/android/sdk/payments/ci;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/ci;->a()Lcom/paypal/android/sdk/dg;

    move-result-object v0

    new-instance v1, Lcom/paypal/android/sdk/ey;

    invoke-direct {v1}, Lcom/paypal/android/sdk/ey;-><init>()V

    iput-object v1, v0, Lcom/paypal/android/sdk/dg;->a:Lcom/paypal/android/sdk/ey;

    :cond_1f
    const-string v0, "v49"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "v51"

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/h;->b()Lcom/paypal/android/sdk/payments/ci;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/ci;->c()Lcom/paypal/android/sdk/br;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/sdk/br;->d()Lcom/paypal/android/sdk/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/sdk/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "v52"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/paypal/android/sdk/fb;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/paypal/android/sdk/fb;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "v53"

    sget-object v1, Lcom/paypal/android/sdk/fb;->d:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "clid"

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/h;->b()Lcom/paypal/android/sdk/payments/ci;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/ci;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "apid"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/h;->b()Lcom/paypal/android/sdk/payments/ci;

    move-result-object v2

    invoke-virtual {v2}, Lcom/paypal/android/sdk/payments/ci;->c()Lcom/paypal/android/sdk/br;

    move-result-object v2

    invoke-virtual {v2}, Lcom/paypal/android/sdk/br;->d()Lcom/paypal/android/sdk/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/paypal/android/sdk/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/h;->b()Lcom/paypal/android/sdk/payments/ci;

    move-result-object v2

    invoke-virtual {v2}, Lcom/paypal/android/sdk/payments/ci;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/paypal/android/sdk/bu;

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/h;->b()Lcom/paypal/android/sdk/payments/ci;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/ci;->a()Lcom/paypal/android/sdk/dg;

    move-result-object v1

    iget-object v1, v1, Lcom/paypal/android/sdk/dg;->a:Lcom/paypal/android/sdk/ey;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/ey;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/paypal/android/sdk/bu;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/h;->b()Lcom/paypal/android/sdk/payments/ci;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/paypal/android/sdk/payments/ci;->a(Lcom/paypal/android/sdk/bu;)V

    return-void
.end method

.method protected final a(Ljava/util/Map;Lcom/paypal/android/sdk/fc;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const-string v0, "g"

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/h;->b()Lcom/paypal/android/sdk/payments/ci;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/ci;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "vers"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/paypal/android/sdk/fb;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/h;->b()Lcom/paypal/android/sdk/payments/ci;

    move-result-object v2

    invoke-virtual {v2}, Lcom/paypal/android/sdk/payments/ci;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "srce"

    const-string v1, "msdk"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sv"

    const-string v1, "mobile"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "bchn"

    const-string v1, "msdk"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "adte"

    const-string v1, "FALSE"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "bzsr"

    const-string v1, "mobile"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/paypal/android/sdk/d;->d(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_67

    const-string v0, "calc"

    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_67
    invoke-static {p4}, Lcom/paypal/android/sdk/d;->d(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_72

    const-string v0, "prid"

    invoke-interface {p1, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_72
    const-string v1, "e"

    invoke-virtual {p2}, Lcom/paypal/android/sdk/fc;->b()Z

    move-result v0

    if-eqz v0, :cond_80

    const-string v0, "cl"

    :goto_7c
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_80
    const-string v0, "im"

    goto :goto_7c
.end method
