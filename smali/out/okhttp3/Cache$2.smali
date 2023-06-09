.class Lokhttp3/Cache$2;
.super Ljava/lang/Object;
.source "Cache.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/Cache;->urls()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field canRemove:Z

.field final delegate:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lokhttp3/internal/DiskLruCache$Snapshot;",
            ">;"
        }
    .end annotation
.end field

.field nextUrl:Ljava/lang/String;

.field final synthetic this$0:Lokhttp3/Cache;


# direct methods
.method constructor <init>(Lokhttp3/Cache;)V
    .registers 3
    .param p1, "this$0"    # Lokhttp3/Cache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 326
    iput-object p1, p0, Lokhttp3/Cache$2;->this$0:Lokhttp3/Cache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    iget-object v0, p0, Lokhttp3/Cache$2;->this$0:Lokhttp3/Cache;

    invoke-static {v0}, Lokhttp3/Cache;->access$600(Lokhttp3/Cache;)Lokhttp3/internal/DiskLruCache;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/DiskLruCache;->snapshots()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache$2;->delegate:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 333
    iget-object v4, p0, Lokhttp3/Cache$2;->nextUrl:Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 350
    :goto_6
    return v2

    .line 335
    :cond_7
    iput-boolean v3, p0, Lokhttp3/Cache$2;->canRemove:Z

    .line 336
    :goto_9
    iget-object v4, p0, Lokhttp3/Cache$2;->delegate:Ljava/util/Iterator;

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_36

    .line 337
    iget-object v4, p0, Lokhttp3/Cache$2;->delegate:Ljava/util/Iterator;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/internal/DiskLruCache$Snapshot;

    .line 339
    .local v1, "snapshot":Lokhttp3/internal/DiskLruCache$Snapshot;
    const/4 v4, 0x0

    :try_start_1a
    invoke-virtual {v1, v4}, Lokhttp3/internal/DiskLruCache$Snapshot;->getSource(I)Lokio/Source;

    move-result-object v4

    invoke-static {v4}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    .line 340
    .local v0, "metadata":Lokio/BufferedSource;
    invoke-interface {v0}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lokhttp3/Cache$2;->nextUrl:Ljava/lang/String;
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_28} :catch_2c
    .catchall {:try_start_1a .. :try_end_28} :catchall_31

    .line 346
    invoke-virtual {v1}, Lokhttp3/internal/DiskLruCache$Snapshot;->close()V

    goto :goto_6

    .line 342
    .end local v0    # "metadata":Lokio/BufferedSource;
    :catch_2c
    move-exception v4

    .line 346
    invoke-virtual {v1}, Lokhttp3/internal/DiskLruCache$Snapshot;->close()V

    goto :goto_9

    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Lokhttp3/internal/DiskLruCache$Snapshot;->close()V

    throw v2

    .end local v1    # "snapshot":Lokhttp3/internal/DiskLruCache$Snapshot;
    :cond_36
    move v2, v3

    .line 350
    goto :goto_6
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 326
    invoke-virtual {p0}, Lokhttp3/Cache$2;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .registers 3

    .prologue
    .line 354
    invoke-virtual {p0}, Lokhttp3/Cache$2;->hasNext()Z

    move-result v1

    if-nez v1, :cond_c

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 355
    :cond_c
    iget-object v0, p0, Lokhttp3/Cache$2;->nextUrl:Ljava/lang/String;

    .line 356
    .local v0, "result":Ljava/lang/String;
    const/4 v1, 0x0

    iput-object v1, p0, Lokhttp3/Cache$2;->nextUrl:Ljava/lang/String;

    .line 357
    const/4 v1, 0x1

    iput-boolean v1, p0, Lokhttp3/Cache$2;->canRemove:Z

    .line 358
    return-object v0
.end method

.method public remove()V
    .registers 3

    .prologue
    .line 362
    iget-boolean v0, p0, Lokhttp3/Cache$2;->canRemove:Z

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() before next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 363
    :cond_c
    iget-object v0, p0, Lokhttp3/Cache$2;->delegate:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 364
    return-void
.end method
