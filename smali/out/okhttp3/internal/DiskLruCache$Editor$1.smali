.class Lokhttp3/internal/DiskLruCache$Editor$1;
.super Lokhttp3/internal/FaultHidingSink;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/DiskLruCache$Editor;->newSink(I)Lokio/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lokhttp3/internal/DiskLruCache$Editor;


# direct methods
.method constructor <init>(Lokhttp3/internal/DiskLruCache$Editor;Lokio/Sink;)V
    .registers 3
    .param p1, "this$1"    # Lokhttp3/internal/DiskLruCache$Editor;
    .param p2, "delegate"    # Lokio/Sink;

    .prologue
    .line 912
    iput-object p1, p0, Lokhttp3/internal/DiskLruCache$Editor$1;->this$1:Lokhttp3/internal/DiskLruCache$Editor;

    invoke-direct {p0, p2}, Lokhttp3/internal/FaultHidingSink;-><init>(Lokio/Sink;)V

    return-void
.end method


# virtual methods
.method protected onException(Ljava/io/IOException;)V
    .registers 4
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    .line 914
    iget-object v0, p0, Lokhttp3/internal/DiskLruCache$Editor$1;->this$1:Lokhttp3/internal/DiskLruCache$Editor;

    iget-object v1, v0, Lokhttp3/internal/DiskLruCache$Editor;->this$0:Lokhttp3/internal/DiskLruCache;

    monitor-enter v1

    .line 915
    :try_start_5
    iget-object v0, p0, Lokhttp3/internal/DiskLruCache$Editor$1;->this$1:Lokhttp3/internal/DiskLruCache$Editor;

    invoke-virtual {v0}, Lokhttp3/internal/DiskLruCache$Editor;->detach()V

    .line 916
    monitor-exit v1

    .line 917
    return-void

    .line 916
    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw v0
.end method
