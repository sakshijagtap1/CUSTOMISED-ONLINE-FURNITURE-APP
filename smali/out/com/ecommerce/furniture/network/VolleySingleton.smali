.class public Lcom/ecommerce/furniture/network/VolleySingleton;
.super Ljava/lang/Object;
.source "VolleySingleton.java"


# static fields
.field private static mCtx:Landroid/content/Context;

.field private static mInstance:Lcom/ecommerce/furniture/network/VolleySingleton;


# instance fields
.field private mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

.field private mRequestQueue:Lcom/android/volley/RequestQueue;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sput-object p1, Lcom/ecommerce/furniture/network/VolleySingleton;->mCtx:Landroid/content/Context;

    .line 22
    invoke-virtual {p0}, Lcom/ecommerce/furniture/network/VolleySingleton;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/ecommerce/furniture/network/VolleySingleton;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 24
    new-instance v0, Lcom/android/volley/toolbox/ImageLoader;

    iget-object v1, p0, Lcom/ecommerce/furniture/network/VolleySingleton;->mRequestQueue:Lcom/android/volley/RequestQueue;

    new-instance v2, Lcom/ecommerce/furniture/network/VolleySingleton$1;

    invoke-direct {v2, p0}, Lcom/ecommerce/furniture/network/VolleySingleton$1;-><init>(Lcom/ecommerce/furniture/network/VolleySingleton;)V

    invoke-direct {v0, v1, v2}, Lcom/android/volley/toolbox/ImageLoader;-><init>(Lcom/android/volley/RequestQueue;Lcom/android/volley/toolbox/ImageLoader$ImageCache;)V

    iput-object v0, p0, Lcom/ecommerce/furniture/network/VolleySingleton;->mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

    .line 37
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/ecommerce/furniture/network/VolleySingleton;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    const-class v1, Lcom/ecommerce/furniture/network/VolleySingleton;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/ecommerce/furniture/network/VolleySingleton;->mInstance:Lcom/ecommerce/furniture/network/VolleySingleton;

    if-nez v0, :cond_e

    .line 41
    new-instance v0, Lcom/ecommerce/furniture/network/VolleySingleton;

    invoke-direct {v0, p0}, Lcom/ecommerce/furniture/network/VolleySingleton;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ecommerce/furniture/network/VolleySingleton;->mInstance:Lcom/ecommerce/furniture/network/VolleySingleton;

    .line 43
    :cond_e
    sget-object v0, Lcom/ecommerce/furniture/network/VolleySingleton;->mInstance:Lcom/ecommerce/furniture/network/VolleySingleton;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 40
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addToRequestQueue(Lcom/android/volley/Request;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/volley/Request",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "req":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    invoke-virtual {p0}, Lcom/ecommerce/furniture/network/VolleySingleton;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 55
    return-void
.end method

.method public getImageLoader()Lcom/android/volley/toolbox/ImageLoader;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ecommerce/furniture/network/VolleySingleton;->mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

    return-object v0
.end method

.method public getRequestQueue()Lcom/android/volley/RequestQueue;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ecommerce/furniture/network/VolleySingleton;->mRequestQueue:Lcom/android/volley/RequestQueue;

    if-nez v0, :cond_10

    .line 48
    sget-object v0, Lcom/ecommerce/furniture/network/VolleySingleton;->mCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/ecommerce/furniture/network/VolleySingleton;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 50
    :cond_10
    iget-object v0, p0, Lcom/ecommerce/furniture/network/VolleySingleton;->mRequestQueue:Lcom/android/volley/RequestQueue;

    return-object v0
.end method
