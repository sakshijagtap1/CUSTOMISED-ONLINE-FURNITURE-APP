.class Lokhttp3/internal/DiskLruCache$3;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/DiskLruCache;->snapshots()Ljava/util/Iterator;
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
        "Lokhttp3/internal/DiskLruCache$Snapshot;",
        ">;"
    }
.end annotation


# instance fields
.field final delegate:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lokhttp3/internal/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field nextSnapshot:Lokhttp3/internal/DiskLruCache$Snapshot;

.field removeSnapshot:Lokhttp3/internal/DiskLruCache$Snapshot;

.field final synthetic this$0:Lokhttp3/internal/DiskLruCache;


# direct methods
.method constructor <init>(Lokhttp3/internal/DiskLruCache;)V
    .registers 4
    .param p1, "this$0"    # Lokhttp3/internal/DiskLruCache;

    .prologue
    .line 730
    iput-object p1, p0, Lokhttp3/internal/DiskLruCache$3;->this$0:Lokhttp3/internal/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 732
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lokhttp3/internal/DiskLruCache$3;->this$0:Lokhttp3/internal/DiskLruCache;

    invoke-static {v1}, Lokhttp3/internal/DiskLruCache;->access$2300(Lokhttp3/internal/DiskLruCache;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/DiskLruCache$3;->delegate:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 741
    iget-object v4, p0, Lokhttp3/internal/DiskLruCache$3;->nextSnapshot:Lokhttp3/internal/DiskLruCache$Snapshot;

    if-eqz v4, :cond_7

    .line 756
    :goto_6
    return v2

    .line 743
    :cond_7
    iget-object v4, p0, Lokhttp3/internal/DiskLruCache$3;->this$0:Lokhttp3/internal/DiskLruCache;

    monitor-enter v4

    .line 745
    :try_start_a
    iget-object v5, p0, Lokhttp3/internal/DiskLruCache$3;->this$0:Lokhttp3/internal/DiskLruCache;

    invoke-static {v5}, Lokhttp3/internal/DiskLruCache;->access$100(Lokhttp3/internal/DiskLruCache;)Z

    move-result v5

    if-eqz v5, :cond_15

    monitor-exit v4

    move v2, v3

    goto :goto_6

    .line 747
    :cond_15
    iget-object v5, p0, Lokhttp3/internal/DiskLruCache$3;->delegate:Ljava/util/Iterator;

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_32

    .line 748
    iget-object v5, p0, Lokhttp3/internal/DiskLruCache$3;->delegate:Ljava/util/Iterator;

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/DiskLruCache$Entry;

    .line 749
    .local v0, "entry":Lokhttp3/internal/DiskLruCache$Entry;
    invoke-virtual {v0}, Lokhttp3/internal/DiskLruCache$Entry;->snapshot()Lokhttp3/internal/DiskLruCache$Snapshot;

    move-result-object v1

    .line 750
    .local v1, "snapshot":Lokhttp3/internal/DiskLruCache$Snapshot;
    if-eqz v1, :cond_15

    .line 751
    iput-object v1, p0, Lokhttp3/internal/DiskLruCache$3;->nextSnapshot:Lokhttp3/internal/DiskLruCache$Snapshot;

    .line 752
    monitor-exit v4

    goto :goto_6

    .line 754
    .end local v0    # "entry":Lokhttp3/internal/DiskLruCache$Entry;
    .end local v1    # "snapshot":Lokhttp3/internal/DiskLruCache$Snapshot;
    :catchall_2f
    move-exception v2

    monitor-exit v4
    :try_end_31
    .catchall {:try_start_a .. :try_end_31} :catchall_2f

    throw v2

    :cond_32
    :try_start_32
    monitor-exit v4
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_2f

    move v2, v3

    .line 756
    goto :goto_6
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 730
    invoke-virtual {p0}, Lokhttp3/internal/DiskLruCache$3;->next()Lokhttp3/internal/DiskLruCache$Snapshot;

    move-result-object v0

    return-object v0
.end method

.method public next()Lokhttp3/internal/DiskLruCache$Snapshot;
    .registers 2

    .prologue
    .line 760
    invoke-virtual {p0}, Lokhttp3/internal/DiskLruCache$3;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 761
    :cond_c
    iget-object v0, p0, Lokhttp3/internal/DiskLruCache$3;->nextSnapshot:Lokhttp3/internal/DiskLruCache$Snapshot;

    iput-object v0, p0, Lokhttp3/internal/DiskLruCache$3;->removeSnapshot:Lokhttp3/internal/DiskLruCache$Snapshot;

    .line 762
    const/4 v0, 0x0

    iput-object v0, p0, Lokhttp3/internal/DiskLruCache$3;->nextSnapshot:Lokhttp3/internal/DiskLruCache$Snapshot;

    .line 763
    iget-object v0, p0, Lokhttp3/internal/DiskLruCache$3;->removeSnapshot:Lokhttp3/internal/DiskLruCache$Snapshot;

    return-object v0
.end method

.method public remove()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 767
    iget-object v0, p0, Lokhttp3/internal/DiskLruCache$3;->removeSnapshot:Lokhttp3/internal/DiskLruCache$Snapshot;

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() before next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 769
    :cond_d
    :try_start_d
    iget-object v0, p0, Lokhttp3/internal/DiskLruCache$3;->this$0:Lokhttp3/internal/DiskLruCache;

    iget-object v1, p0, Lokhttp3/internal/DiskLruCache$3;->removeSnapshot:Lokhttp3/internal/DiskLruCache$Snapshot;

    invoke-static {v1}, Lokhttp3/internal/DiskLruCache$Snapshot;->access$2400(Lokhttp3/internal/DiskLruCache$Snapshot;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/internal/DiskLruCache;->remove(Ljava/lang/String;)Z
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_18} :catch_1b
    .catchall {:try_start_d .. :try_end_18} :catchall_1f

    .line 774
    iput-object v2, p0, Lokhttp3/internal/DiskLruCache$3;->removeSnapshot:Lokhttp3/internal/DiskLruCache$Snapshot;

    .line 776
    :goto_1a
    return-void

    .line 770
    :catch_1b
    move-exception v0

    .line 774
    iput-object v2, p0, Lokhttp3/internal/DiskLruCache$3;->removeSnapshot:Lokhttp3/internal/DiskLruCache$Snapshot;

    goto :goto_1a

    :catchall_1f
    move-exception v0

    iput-object v2, p0, Lokhttp3/internal/DiskLruCache$3;->removeSnapshot:Lokhttp3/internal/DiskLruCache$Snapshot;

    throw v0
.end method
