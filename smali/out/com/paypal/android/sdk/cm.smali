.class public Lcom/paypal/android/sdk/cm;
.super Lcom/paypal/android/sdk/ci;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Lokhttp3/MediaType;


# instance fields
.field private final c:Lcom/paypal/android/sdk/a;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/paypal/android/sdk/cx;

.field private final f:Lokhttp3/OkHttpClient;

.field private final g:Lokhttp3/OkHttpClient;

.field private final h:Lcom/paypal/android/sdk/b;

.field private final i:Ljava/util/concurrent/ScheduledExecutorService;

.field private final j:Ljava/util/concurrent/ConcurrentLinkedQueue;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/paypal/android/sdk/cm;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/cm;->a:Ljava/lang/String;

    const-string v0, "charset=utf-8"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/cm;->b:Lokhttp3/MediaType;

    return-void
.end method

.method public constructor <init>(Lcom/paypal/android/sdk/a;Ljava/lang/String;Lcom/paypal/android/sdk/b;Lcom/paypal/android/sdk/cx;IZLjava/util/List;)V
    .registers 14

    const/16 v5, 0x5a

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/paypal/android/sdk/ci;-><init>()V

    iput-object p1, p0, Lcom/paypal/android/sdk/cm;->c:Lcom/paypal/android/sdk/a;

    iput-object p2, p0, Lcom/paypal/android/sdk/cm;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/paypal/android/sdk/cm;->h:Lcom/paypal/android/sdk/b;

    iput-object p4, p0, Lcom/paypal/android/sdk/cm;->e:Lcom/paypal/android/sdk/cx;

    invoke-static {p2}, Lcom/paypal/android/sdk/bp;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6f

    if-nez p6, :cond_6f

    move v2, v0

    :goto_18
    if-nez v3, :cond_71

    :goto_1a
    invoke-interface {p3}, Lcom/paypal/android/sdk/b;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/paypal/android/sdk/cm;->e:Lcom/paypal/android/sdk/cx;

    invoke-interface {v3}, Lcom/paypal/android/sdk/cx;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v2, v0, v1, v3}, Lcom/paypal/android/sdk/cc;->a(IZZLjava/lang/String;Ljava/lang/String;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->interceptors()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->interceptors()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/paypal/android/sdk/cj;

    invoke-direct {v4}, Lcom/paypal/android/sdk/cj;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v1

    iput-object v1, p0, Lcom/paypal/android/sdk/cm;->f:Lokhttp3/OkHttpClient;

    invoke-interface {p3}, Lcom/paypal/android/sdk/b;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/paypal/android/sdk/cm;->e:Lcom/paypal/android/sdk/cx;

    invoke-interface {v3}, Lcom/paypal/android/sdk/cx;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v2, v0, v1, v3}, Lcom/paypal/android/sdk/cc;->a(IZZLjava/lang/String;Ljava/lang/String;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->interceptors()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/paypal/android/sdk/cj;

    invoke-direct {v2}, Lcom/paypal/android/sdk/cj;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/cm;->g:Lokhttp3/OkHttpClient;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/cm;->i:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/paypal/android/sdk/cm;->j:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void

    :cond_6f
    move v2, v1

    goto :goto_18

    :cond_71
    move v0, v1

    goto :goto_1a
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_2e

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2e
    return-object p0
.end method

.method static synthetic a(Lcom/paypal/android/sdk/cm;)Lokhttp3/OkHttpClient;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/cm;->g:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method static synthetic a(Lcom/paypal/android/sdk/cm;Lcom/paypal/android/sdk/cw;Ljava/lang/String;Lokhttp3/OkHttpClient;Lokhttp3/Callback;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/paypal/android/sdk/cm;->a(Lcom/paypal/android/sdk/cw;Ljava/lang/String;Lokhttp3/OkHttpClient;Lokhttp3/Callback;)V

    return-void
.end method

.method static synthetic a(Lcom/paypal/android/sdk/cm;Lcom/paypal/android/sdk/cw;Lokhttp3/Response;Ljava/io/IOException;)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/paypal/android/sdk/cw;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " failure."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_86

    const-string v0, "paypal.sdk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "request failure with http statusCode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v0

    invoke-static {p1, v0}, Lcom/paypal/android/sdk/cm;->a(Lcom/paypal/android/sdk/cw;I)V

    invoke-virtual {p1}, Lcom/paypal/android/sdk/cw;->q()Z

    move-result v0

    if-eqz v0, :cond_68

    sget-object v0, Lcom/paypal/android/sdk/bz;->a:Lcom/paypal/android/sdk/bz;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/bz;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " http response received.  Response not parsable."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/paypal/android/sdk/cw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_68
    :goto_68
    const-string v0, "paypal.sdk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "request failed with server response:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/paypal/android/sdk/cw;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/paypal/android/sdk/cm;->e:Lcom/paypal/android/sdk/cx;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/cx;->a(Lcom/paypal/android/sdk/cw;)V

    return-void

    :cond_86
    if-eqz p3, :cond_ae

    instance-of v0, p3, Ljavax/net/ssl/SSLException;

    if-eqz v0, :cond_a3

    const-string v0, "Connection closed by peer"

    invoke-virtual {p3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a3

    new-instance v0, Lcom/paypal/android/sdk/ca;

    sget-object v1, Lcom/paypal/android/sdk/bz;->e:Lcom/paypal/android/sdk/bz;

    invoke-direct {v0, v1, p3}, Lcom/paypal/android/sdk/ca;-><init>(Lcom/paypal/android/sdk/bz;Ljava/lang/Exception;)V

    invoke-virtual {p1, v0}, Lcom/paypal/android/sdk/cw;->a(Lcom/paypal/android/sdk/by;)V

    goto :goto_68

    :cond_a3
    new-instance v0, Lcom/paypal/android/sdk/ca;

    sget-object v1, Lcom/paypal/android/sdk/bz;->b:Lcom/paypal/android/sdk/bz;

    invoke-direct {v0, v1, p3}, Lcom/paypal/android/sdk/ca;-><init>(Lcom/paypal/android/sdk/bz;Ljava/lang/Exception;)V

    invoke-virtual {p1, v0}, Lcom/paypal/android/sdk/cw;->a(Lcom/paypal/android/sdk/by;)V

    goto :goto_68

    :cond_ae
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Both Response or Exception cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Lcom/paypal/android/sdk/cw;Ljava/lang/String;Lokhttp3/OkHttpClient;Lokhttp3/Callback;)V
    .registers 8

    sget-object v0, Lcom/paypal/android/sdk/cp;->a:[I

    invoke-virtual {p1}, Lcom/paypal/android/sdk/cw;->h()Lcom/paypal/android/sdk/cu;

    move-result-object v1

    invoke-interface {v1}, Lcom/paypal/android/sdk/cu;->b()Lcom/paypal/android/sdk/cb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/sdk/cb;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_ae

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/paypal/android/sdk/cw;->h()Lcom/paypal/android/sdk/cu;

    move-result-object v2

    invoke-interface {v2}, Lcom/paypal/android/sdk/cu;->b()Lcom/paypal/android/sdk/cb;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_34
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/paypal/android/sdk/cw;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/paypal/android/sdk/cm;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-static {p1}, Lcom/paypal/android/sdk/cm;->c(Lcom/paypal/android/sdk/cw;)Lokhttp3/Headers;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {p3, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0, p4}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    :goto_58
    return-void

    :pswitch_59
    invoke-virtual {p1}, Lcom/paypal/android/sdk/cw;->f()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/paypal/android/sdk/cm;->b:Lokhttp3/MediaType;

    invoke-static {v1, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v1, p2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-static {p1}, Lcom/paypal/android/sdk/cm;->c(Lcom/paypal/android/sdk/cw;)Lokhttp3/Headers;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {p3, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0, p4}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    goto :goto_58

    :pswitch_84
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/paypal/android/sdk/cw;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/paypal/android/sdk/cm;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-static {p1}, Lcom/paypal/android/sdk/cm;->c(Lcom/paypal/android/sdk/cw;)Lokhttp3/Headers;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->delete()Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {p3, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0, p4}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    goto :goto_58

    nop

    :pswitch_data_ae
    .packed-switch 0x1
        :pswitch_34
        :pswitch_59
        :pswitch_84
    .end packed-switch
.end method

.method static synthetic b()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/paypal/android/sdk/cm;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/paypal/android/sdk/cm;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/cm;->j:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method static synthetic c(Lcom/paypal/android/sdk/cm;)Lcom/paypal/android/sdk/cx;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/cm;->e:Lcom/paypal/android/sdk/cx;

    return-object v0
.end method

.method private static c(Lcom/paypal/android/sdk/cw;)Lokhttp3/Headers;
    .registers 5

    new-instance v2, Lokhttp3/Headers$Builder;

    invoke-direct {v2}, Lokhttp3/Headers$Builder;-><init>()V

    invoke-virtual {p0}, Lcom/paypal/android/sdk/cw;->i()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    goto :goto_11

    :cond_2d
    invoke-virtual {v2}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/paypal/android/sdk/cm;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/cm;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/paypal/android/sdk/cm;)Lcom/paypal/android/sdk/b;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/cm;->h:Lcom/paypal/android/sdk/b;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/cm;->f:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->cancelAll()V

    iget-object v0, p0, Lcom/paypal/android/sdk/cm;->g:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->cancelAll()V

    return-void
.end method

.method public final b(Lcom/paypal/android/sdk/cw;)Z
    .registers 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/paypal/android/sdk/cm;->c:Lcom/paypal/android/sdk/a;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/a;->a()Z

    move-result v1

    if-nez v1, :cond_18

    new-instance v1, Lcom/paypal/android/sdk/ca;

    sget-object v2, Lcom/paypal/android/sdk/bz;->b:Lcom/paypal/android/sdk/bz;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/bz;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/paypal/android/sdk/ca;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/paypal/android/sdk/cw;->a(Lcom/paypal/android/sdk/by;)V

    :goto_17
    return v0

    :cond_18
    invoke-static {}, Lcom/paypal/android/sdk/cw;->k()V

    invoke-virtual {p1}, Lcom/paypal/android/sdk/cw;->h()Lcom/paypal/android/sdk/cu;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/paypal/android/sdk/cw;->a(Lcom/paypal/android/sdk/cu;)Ljava/lang/String;

    move-result-object v1

    :try_start_23
    invoke-virtual {p1}, Lcom/paypal/android/sdk/cw;->a()Z

    move-result v2

    if-eqz v2, :cond_8f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/paypal/android/sdk/cw;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " endpoint: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/paypal/android/sdk/cw;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/paypal/android/sdk/cw;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/paypal/android/sdk/cm;->j:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v3, Lcom/paypal/android/sdk/cn;

    invoke-direct {v3, p0, p1, v1}, Lcom/paypal/android/sdk/cn;-><init>(Lcom/paypal/android/sdk/cm;Lcom/paypal/android/sdk/cw;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v2, 0xbe

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Delaying tracking execution for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " seconds"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/paypal/android/sdk/cm;->i:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lcom/paypal/android/sdk/co;

    invoke-direct {v3, p0}, Lcom/paypal/android/sdk/co;-><init>(Lcom/paypal/android/sdk/cm;)V

    int-to-long v4, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v5, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :goto_8d
    const/4 v0, 0x1

    goto :goto_17

    :cond_8f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/paypal/android/sdk/cw;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " endpoint: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/paypal/android/sdk/cw;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/paypal/android/sdk/cw;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/paypal/android/sdk/cm;->f:Lokhttp3/OkHttpClient;

    new-instance v3, Lcom/paypal/android/sdk/cq;

    const/4 v4, 0x0

    invoke-direct {v3, p0, p1, v4}, Lcom/paypal/android/sdk/cq;-><init>(Lcom/paypal/android/sdk/cm;Lcom/paypal/android/sdk/cw;B)V

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/paypal/android/sdk/cm;->a(Lcom/paypal/android/sdk/cw;Ljava/lang/String;Lokhttp3/OkHttpClient;Lokhttp3/Callback;)V
    :try_end_ca
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_23 .. :try_end_ca} :catch_cb
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_ca} :catch_df

    goto :goto_8d

    :catch_cb
    move-exception v1

    sget-object v2, Lcom/paypal/android/sdk/cm;->a:Ljava/lang/String;

    const-string v3, "encoding failure"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Lcom/paypal/android/sdk/ca;

    sget-object v3, Lcom/paypal/android/sdk/bz;->d:Lcom/paypal/android/sdk/bz;

    invoke-direct {v2, v3, v1}, Lcom/paypal/android/sdk/ca;-><init>(Lcom/paypal/android/sdk/bz;Ljava/lang/Exception;)V

    invoke-virtual {p1, v2}, Lcom/paypal/android/sdk/cw;->a(Lcom/paypal/android/sdk/by;)V

    goto/16 :goto_17

    :catch_df
    move-exception v1

    sget-object v2, Lcom/paypal/android/sdk/cm;->a:Ljava/lang/String;

    const-string v3, "communication failure"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Lcom/paypal/android/sdk/ca;

    sget-object v3, Lcom/paypal/android/sdk/bz;->b:Lcom/paypal/android/sdk/bz;

    invoke-direct {v2, v3, v1}, Lcom/paypal/android/sdk/ca;-><init>(Lcom/paypal/android/sdk/bz;Ljava/lang/Exception;)V

    invoke-virtual {p1, v2}, Lcom/paypal/android/sdk/cw;->a(Lcom/paypal/android/sdk/by;)V

    goto/16 :goto_17
.end method
