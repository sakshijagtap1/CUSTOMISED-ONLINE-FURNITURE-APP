.class public final Lcom/paypal/android/sdk/be;
.super Lcom/paypal/android/sdk/bh;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/HashMap;

.field private c:Ljava/util/Map;

.field private d:Landroid/os/Handler;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/paypal/android/sdk/at;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/HashMap;Landroid/os/Handler;Z)V
    .registers 6

    invoke-direct {p0}, Lcom/paypal/android/sdk/bh;-><init>()V

    iput-object p1, p0, Lcom/paypal/android/sdk/be;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/paypal/android/sdk/be;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/paypal/android/sdk/be;->c:Ljava/util/Map;

    iput-object p3, p0, Lcom/paypal/android/sdk/be;->d:Landroid/os/Handler;

    iput-boolean p4, p0, Lcom/paypal/android/sdk/be;->e:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    const/4 v1, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/paypal/android/sdk/be;->d:Landroid/os/Handler;

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/paypal/android/sdk/be;->d:Landroid/os/Handler;

    iget-object v2, p0, Lcom/paypal/android/sdk/be;->d:Landroid/os/Handler;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/paypal/android/sdk/be;->a:Ljava/lang/String;

    invoke-static {v2, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-boolean v0, p0, Lcom/paypal/android/sdk/be;->e:Z

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/paypal/android/sdk/be;->c:Ljava/util/Map;

    const-string v2, "CLIENT-AUTH"

    const-string v4, "No cert"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22
    iget-object v0, p0, Lcom/paypal/android/sdk/be;->c:Ljava/util/Map;

    const-string v2, "X-PAYPAL-RESPONSE-DATA-FORMAT"

    const-string v4, "NV"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/paypal/android/sdk/be;->c:Ljava/util/Map;

    const-string v2, "X-PAYPAL-REQUEST-DATA-FORMAT"

    const-string v4, "NV"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/paypal/android/sdk/be;->c:Ljava/util/Map;

    const-string v2, "X-PAYPAL-SERVICE-VERSION"

    const-string v4, "1.0.0"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/paypal/android/sdk/be;->e:Z

    if-eqz v0, :cond_fc

    sget-object v0, Lcom/paypal/android/sdk/at;->a:Lcom/paypal/android/sdk/bc;

    invoke-interface {v0}, Lcom/paypal/android/sdk/bc;->a()Lcom/paypal/android/sdk/bb;

    move-result-object v4

    iget-object v0, p0, Lcom/paypal/android/sdk/be;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/paypal/android/sdk/bb;->a(Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/be;->c:Ljava/util/Map;

    invoke-interface {v4, v0}, Lcom/paypal/android/sdk/bb;->a(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/be;->b:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_64
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-eqz v1, :cond_98

    move v2, v3

    :goto_73
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-static {v1, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    goto :goto_64

    :cond_98
    const-string v2, "&"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v1

    goto :goto_73

    :cond_9f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/paypal/android/sdk/bb;->a([B)I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_dc

    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Network Connection Error with wrong http code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c6} :catch_c6
    .catchall {:try_start_7 .. :try_end_c6} :catchall_10b

    :catch_c6
    move-exception v0

    :try_start_c7
    iget-object v1, p0, Lcom/paypal/android/sdk/be;->d:Landroid/os/Handler;

    iget-object v2, p0, Lcom/paypal/android/sdk/be;->d:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_d3
    .catchall {:try_start_c7 .. :try_end_d3} :catchall_10b

    invoke-static {}, Lcom/paypal/android/sdk/bi;->a()Lcom/paypal/android/sdk/bi;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/paypal/android/sdk/bi;->b(Lcom/paypal/android/sdk/bh;)V

    goto/16 :goto_6

    :cond_dc
    :try_start_dc
    new-instance v0, Ljava/lang/String;

    invoke-interface {v4}, Lcom/paypal/android/sdk/bb;->a()[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iget-object v1, p0, Lcom/paypal/android/sdk/be;->d:Landroid/os/Handler;

    iget-object v2, p0, Lcom/paypal/android/sdk/be;->d:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_f3} :catch_c6
    .catchall {:try_start_dc .. :try_end_f3} :catchall_10b

    :goto_f3
    invoke-static {}, Lcom/paypal/android/sdk/bi;->a()Lcom/paypal/android/sdk/bi;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/paypal/android/sdk/bi;->b(Lcom/paypal/android/sdk/bh;)V

    goto/16 :goto_6

    :cond_fc
    :try_start_fc
    iget-object v0, p0, Lcom/paypal/android/sdk/be;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/paypal/android/sdk/be;->d:Landroid/os/Handler;

    const/4 v2, 0x2

    const-string v3, "not supported"

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_10a
    .catch Ljava/lang/Exception; {:try_start_fc .. :try_end_10a} :catch_c6
    .catchall {:try_start_fc .. :try_end_10a} :catchall_10b

    goto :goto_f3

    :catchall_10b
    move-exception v0

    invoke-static {}, Lcom/paypal/android/sdk/bi;->a()Lcom/paypal/android/sdk/bi;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/paypal/android/sdk/bi;->b(Lcom/paypal/android/sdk/bh;)V

    throw v0
.end method
