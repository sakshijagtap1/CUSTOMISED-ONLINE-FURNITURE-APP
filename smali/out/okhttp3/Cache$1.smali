.class Lokhttp3/Cache$1;
.super Ljava/lang/Object;
.source "Cache.java"

# interfaces
.implements Lokhttp3/internal/InternalCache;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lokhttp3/Cache;


# direct methods
.method constructor <init>(Lokhttp3/Cache;)V
    .registers 2
    .param p1, "this$0"    # Lokhttp3/Cache;

    .prologue
    .line 141
    iput-object p1, p0, Lokhttp3/Cache$1;->this$0:Lokhttp3/Cache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lokhttp3/Request;)Lokhttp3/Response;
    .registers 3
    .param p1, "request"    # Lokhttp3/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lokhttp3/Cache$1;->this$0:Lokhttp3/Cache;

    invoke-virtual {v0, p1}, Lokhttp3/Cache;->get(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v0

    return-object v0
.end method

.method public put(Lokhttp3/Response;)Lokhttp3/internal/http/CacheRequest;
    .registers 3
    .param p1, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lokhttp3/Cache$1;->this$0:Lokhttp3/Cache;

    invoke-static {v0, p1}, Lokhttp3/Cache;->access$000(Lokhttp3/Cache;Lokhttp3/Response;)Lokhttp3/internal/http/CacheRequest;

    move-result-object v0

    return-object v0
.end method

.method public remove(Lokhttp3/Request;)V
    .registers 3
    .param p1, "request"    # Lokhttp3/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lokhttp3/Cache$1;->this$0:Lokhttp3/Cache;

    invoke-static {v0, p1}, Lokhttp3/Cache;->access$100(Lokhttp3/Cache;Lokhttp3/Request;)V

    .line 152
    return-void
.end method

.method public trackConditionalCacheHit()V
    .registers 2

    .prologue
    .line 159
    iget-object v0, p0, Lokhttp3/Cache$1;->this$0:Lokhttp3/Cache;

    invoke-static {v0}, Lokhttp3/Cache;->access$300(Lokhttp3/Cache;)V

    .line 160
    return-void
.end method

.method public trackResponse(Lokhttp3/internal/http/CacheStrategy;)V
    .registers 3
    .param p1, "cacheStrategy"    # Lokhttp3/internal/http/CacheStrategy;

    .prologue
    .line 163
    iget-object v0, p0, Lokhttp3/Cache$1;->this$0:Lokhttp3/Cache;

    invoke-static {v0, p1}, Lokhttp3/Cache;->access$400(Lokhttp3/Cache;Lokhttp3/internal/http/CacheStrategy;)V

    .line 164
    return-void
.end method

.method public update(Lokhttp3/Response;Lokhttp3/Response;)V
    .registers 4
    .param p1, "cached"    # Lokhttp3/Response;
    .param p2, "network"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lokhttp3/Cache$1;->this$0:Lokhttp3/Cache;

    invoke-static {v0, p1, p2}, Lokhttp3/Cache;->access$200(Lokhttp3/Cache;Lokhttp3/Response;Lokhttp3/Response;)V

    .line 156
    return-void
.end method
