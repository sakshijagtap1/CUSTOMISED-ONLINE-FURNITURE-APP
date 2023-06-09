.class Lcom/ecommerce/furniture/network/VolleySingleton$1;
.super Ljava/lang/Object;
.source "VolleySingleton.java"

# interfaces
.implements Lcom/android/volley/toolbox/ImageLoader$ImageCache;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecommerce/furniture/network/VolleySingleton;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final cache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ecommerce/furniture/network/VolleySingleton;


# direct methods
.method constructor <init>(Lcom/ecommerce/furniture/network/VolleySingleton;)V
    .registers 4
    .param p1, "this$0"    # Lcom/ecommerce/furniture/network/VolleySingleton;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/ecommerce/furniture/network/VolleySingleton$1;->this$0:Lcom/ecommerce/furniture/network/VolleySingleton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/ecommerce/furniture/network/VolleySingleton$1;->cache:Landroid/util/LruCache;

    return-void
.end method


# virtual methods
.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/ecommerce/furniture/network/VolleySingleton$1;->cache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ecommerce/furniture/network/VolleySingleton$1;->cache:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    return-void
.end method
