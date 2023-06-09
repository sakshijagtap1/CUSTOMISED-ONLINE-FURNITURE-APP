.class public final Lokhttp3/ConnectionPool;
.super Ljava/lang/Object;
.source "ConnectionPool.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final executor:Ljava/util/concurrent/Executor;


# instance fields
.field private final cleanupRunnable:Ljava/lang/Runnable;

.field cleanupRunning:Z

.field private final connections:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lokhttp3/internal/io/RealConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final keepAliveDurationNs:J

.field private final maxIdleConnections:I

.field final routeDatabase:Lokhttp3/internal/RouteDatabase;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 43
    const-class v0, Lokhttp3/ConnectionPool;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_27

    move v0, v8

    :goto_b
    sput-boolean v0, Lokhttp3/ConnectionPool;->$assertionsDisabled:Z

    .line 49
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v0, "OkHttp ConnectionPool"

    .line 51
    invoke-static {v0, v8}, Lokhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lokhttp3/ConnectionPool;->executor:Ljava/util/concurrent/Executor;

    .line 49
    return-void

    :cond_27
    move v0, v2

    .line 43
    goto :goto_b
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    .line 85
    const/4 v0, 0x5

    const-wide/16 v2, 0x5

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, v0, v2, v3, v1}, Lokhttp3/ConnectionPool;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    .line 86
    return-void
.end method

.method public constructor <init>(IJLjava/util/concurrent/TimeUnit;)V
    .registers 9
    .param p1, "maxIdleConnections"    # I
    .param p2, "keepAliveDuration"    # J
    .param p4, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lokhttp3/ConnectionPool$1;

    invoke-direct {v0, p0}, Lokhttp3/ConnectionPool$1;-><init>(Lokhttp3/ConnectionPool;)V

    iput-object v0, p0, Lokhttp3/ConnectionPool;->cleanupRunnable:Ljava/lang/Runnable;

    .line 75
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lokhttp3/ConnectionPool;->connections:Ljava/util/Deque;

    .line 76
    new-instance v0, Lokhttp3/internal/RouteDatabase;

    invoke-direct {v0}, Lokhttp3/internal/RouteDatabase;-><init>()V

    iput-object v0, p0, Lokhttp3/ConnectionPool;->routeDatabase:Lokhttp3/internal/RouteDatabase;

    .line 89
    iput p1, p0, Lokhttp3/ConnectionPool;->maxIdleConnections:I

    .line 90
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/ConnectionPool;->keepAliveDurationNs:J

    .line 93
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_3f

    .line 94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keepAliveDuration <= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_3f
    return-void
.end method

.method private pruneAndGetAllocationCount(Lokhttp3/internal/io/RealConnection;J)I
    .registers 12
    .param p1, "connection"    # Lokhttp3/internal/io/RealConnection;
    .param p2, "now"    # J

    .prologue
    .line 239
    iget-object v2, p1, Lokhttp3/internal/io/RealConnection;->allocations:Ljava/util/List;

    .line 240
    .local v2, "references":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/Reference<Lokhttp3/internal/http/StreamAllocation;>;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :cond_3
    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5a

    .line 241
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/Reference;

    .line 243
    .local v1, "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Lokhttp3/internal/http/StreamAllocation;>;"
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_18

    .line 244
    add-int/lit8 v0, v0, 0x1

    .line 245
    goto :goto_3

    .line 249
    :cond_18
    invoke-static {}, Lokhttp3/internal/Platform;->get()Lokhttp3/internal/Platform;

    move-result-object v3

    const/4 v4, 0x5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "A connection to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lokhttp3/internal/io/RealConnection;->route()Lokhttp3/Route;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " was leaked. Did you forget to close a response body?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lokhttp3/internal/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 251
    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 252
    const/4 v3, 0x1

    iput-boolean v3, p1, Lokhttp3/internal/io/RealConnection;->noNewStreams:Z

    .line 255
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 256
    iget-wide v4, p0, Lokhttp3/ConnectionPool;->keepAliveDurationNs:J

    sub-long v4, p2, v4

    iput-wide v4, p1, Lokhttp3/internal/io/RealConnection;->idleAtNanos:J

    .line 257
    const/4 v3, 0x0

    .line 261
    .end local v1    # "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Lokhttp3/internal/http/StreamAllocation;>;"
    :goto_59
    return v3

    :cond_5a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_59
.end method


# virtual methods
.method cleanup(J)J
    .registers 16
    .param p1, "now"    # J

    .prologue
    .line 182
    const/4 v3, 0x0

    .line 183
    .local v3, "inUseConnectionCount":I
    const/4 v2, 0x0

    .line 184
    .local v2, "idleConnectionCount":I
    const/4 v6, 0x0

    .line 185
    .local v6, "longestIdleConnection":Lokhttp3/internal/io/RealConnection;
    const-wide/high16 v8, -0x8000000000000000L

    .line 188
    .local v8, "longestIdleDurationNs":J
    monitor-enter p0

    .line 189
    :try_start_6
    iget-object v7, p0, Lokhttp3/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v7}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lokhttp3/internal/io/RealConnection;>;"
    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2e

    .line 190
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/io/RealConnection;

    .line 193
    .local v0, "connection":Lokhttp3/internal/io/RealConnection;
    invoke-direct {p0, v0, p1, p2}, Lokhttp3/ConnectionPool;->pruneAndGetAllocationCount(Lokhttp3/internal/io/RealConnection;J)I

    move-result v7

    if-lez v7, :cond_21

    .line 194
    add-int/lit8 v3, v3, 0x1

    .line 195
    goto :goto_c

    .line 198
    :cond_21
    add-int/lit8 v2, v2, 0x1

    .line 201
    iget-wide v10, v0, Lokhttp3/internal/io/RealConnection;->idleAtNanos:J

    sub-long v4, p1, v10

    .line 202
    .local v4, "idleDurationNs":J
    cmp-long v7, v4, v8

    if-lez v7, :cond_c

    .line 203
    move-wide v8, v4

    .line 204
    move-object v6, v0

    goto :goto_c

    .line 208
    .end local v0    # "connection":Lokhttp3/internal/io/RealConnection;
    .end local v4    # "idleDurationNs":J
    :cond_2e
    iget-wide v10, p0, Lokhttp3/ConnectionPool;->keepAliveDurationNs:J

    cmp-long v7, v8, v10

    if-gez v7, :cond_38

    iget v7, p0, Lokhttp3/ConnectionPool;->maxIdleConnections:I

    if-le v2, v7, :cond_48

    .line 212
    :cond_38
    iget-object v7, p0, Lokhttp3/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v7, v6}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    .line 224
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_6 .. :try_end_3e} :catchall_4f

    .line 226
    invoke-virtual {v6}, Lokhttp3/internal/io/RealConnection;->socket()Ljava/net/Socket;

    move-result-object v7

    invoke-static {v7}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 229
    const-wide/16 v10, 0x0

    :goto_47
    return-wide v10

    .line 213
    :cond_48
    if-lez v2, :cond_52

    .line 215
    :try_start_4a
    iget-wide v10, p0, Lokhttp3/ConnectionPool;->keepAliveDurationNs:J

    sub-long/2addr v10, v8

    monitor-exit p0

    goto :goto_47

    .line 224
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lokhttp3/internal/io/RealConnection;>;"
    :catchall_4f
    move-exception v7

    monitor-exit p0
    :try_end_51
    .catchall {:try_start_4a .. :try_end_51} :catchall_4f

    throw v7

    .line 216
    .restart local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lokhttp3/internal/io/RealConnection;>;"
    :cond_52
    if-lez v3, :cond_58

    .line 218
    :try_start_54
    iget-wide v10, p0, Lokhttp3/ConnectionPool;->keepAliveDurationNs:J

    monitor-exit p0

    goto :goto_47

    .line 221
    :cond_58
    const/4 v7, 0x0

    iput-boolean v7, p0, Lokhttp3/ConnectionPool;->cleanupRunning:Z

    .line 222
    const-wide/16 v10, -0x1

    monitor-exit p0
    :try_end_5e
    .catchall {:try_start_54 .. :try_end_5e} :catchall_4f

    goto :goto_47
.end method

.method connectionBecameIdle(Lokhttp3/internal/io/RealConnection;)Z
    .registers 3
    .param p1, "connection"    # Lokhttp3/internal/io/RealConnection;

    .prologue
    .line 145
    sget-boolean v0, Lokhttp3/ConnectionPool;->$assertionsDisabled:Z

    if-nez v0, :cond_10

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 146
    :cond_10
    iget-boolean v0, p1, Lokhttp3/internal/io/RealConnection;->noNewStreams:Z

    if-nez v0, :cond_18

    iget v0, p0, Lokhttp3/ConnectionPool;->maxIdleConnections:I

    if-nez v0, :cond_1f

    .line 147
    :cond_18
    iget-object v0, p0, Lokhttp3/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    .line 148
    const/4 v0, 0x1

    .line 151
    :goto_1e
    return v0

    .line 150
    :cond_1f
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 151
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public declared-synchronized connectionCount()I
    .registers 2

    .prologue
    .line 114
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lokhttp3/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public evictAll()V
    .registers 6

    .prologue
    .line 157
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .local v1, "evictedConnections":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/io/RealConnection;>;"
    monitor-enter p0

    .line 159
    :try_start_6
    iget-object v3, p0, Lokhttp3/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lokhttp3/internal/io/RealConnection;>;"
    :cond_c
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 160
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/io/RealConnection;

    .line 161
    .local v0, "connection":Lokhttp3/internal/io/RealConnection;
    iget-object v3, v0, Lokhttp3/internal/io/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 162
    const/4 v3, 0x1

    iput-boolean v3, v0, Lokhttp3/internal/io/RealConnection;->noNewStreams:Z

    .line 163
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_c

    .line 167
    .end local v0    # "connection":Lokhttp3/internal/io/RealConnection;
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lokhttp3/internal/io/RealConnection;>;"
    :catchall_2a
    move-exception v3

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_6 .. :try_end_2c} :catchall_2a

    throw v3

    .restart local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lokhttp3/internal/io/RealConnection;>;"
    :cond_2d
    :try_start_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2a

    .line 169
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_32
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/io/RealConnection;

    .line 170
    .restart local v0    # "connection":Lokhttp3/internal/io/RealConnection;
    invoke-virtual {v0}, Lokhttp3/internal/io/RealConnection;->socket()Ljava/net/Socket;

    move-result-object v4

    invoke-static {v4}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    goto :goto_32

    .line 172
    .end local v0    # "connection":Lokhttp3/internal/io/RealConnection;
    :cond_46
    return-void
.end method

.method get(Lokhttp3/Address;Lokhttp3/internal/http/StreamAllocation;)Lokhttp3/internal/io/RealConnection;
    .registers 7
    .param p1, "address"    # Lokhttp3/Address;
    .param p2, "streamAllocation"    # Lokhttp3/internal/http/StreamAllocation;

    .prologue
    .line 119
    sget-boolean v1, Lokhttp3/ConnectionPool;->$assertionsDisabled:Z

    if-nez v1, :cond_10

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 120
    :cond_10
    iget-object v1, p0, Lokhttp3/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/io/RealConnection;

    .line 121
    .local v0, "connection":Lokhttp3/internal/io/RealConnection;
    iget-object v2, v0, Lokhttp3/internal/io/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, v0, Lokhttp3/internal/io/RealConnection;->allocationLimit:I

    if-ge v2, v3, :cond_16

    .line 122
    invoke-virtual {v0}, Lokhttp3/internal/io/RealConnection;->route()Lokhttp3/Route;

    move-result-object v2

    iget-object v2, v2, Lokhttp3/Route;->address:Lokhttp3/Address;

    invoke-virtual {p1, v2}, Lokhttp3/Address;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    iget-boolean v2, v0, Lokhttp3/internal/io/RealConnection;->noNewStreams:Z

    if-nez v2, :cond_16

    .line 124
    invoke-virtual {p2, v0}, Lokhttp3/internal/http/StreamAllocation;->acquire(Lokhttp3/internal/io/RealConnection;)V

    .line 128
    .end local v0    # "connection":Lokhttp3/internal/io/RealConnection;
    :goto_3f
    return-object v0

    :cond_40
    const/4 v0, 0x0

    goto :goto_3f
.end method

.method public declared-synchronized idleConnectionCount()I
    .registers 5

    .prologue
    .line 100
    monitor-enter p0

    const/4 v1, 0x0

    .line 101
    .local v1, "total":I
    :try_start_2
    iget-object v2, p0, Lokhttp3/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/io/RealConnection;

    .line 102
    .local v0, "connection":Lokhttp3/internal/io/RealConnection;
    iget-object v3, v0, Lokhttp3/internal/io/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z
    :try_end_19
    .catchall {:try_start_2 .. :try_end_19} :catchall_21

    move-result v3

    if-eqz v3, :cond_8

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 104
    .end local v0    # "connection":Lokhttp3/internal/io/RealConnection;
    :cond_1f
    monitor-exit p0

    return v1

    .line 100
    :catchall_21
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method put(Lokhttp3/internal/io/RealConnection;)V
    .registers 4
    .param p1, "connection"    # Lokhttp3/internal/io/RealConnection;

    .prologue
    .line 132
    sget-boolean v0, Lokhttp3/ConnectionPool;->$assertionsDisabled:Z

    if-nez v0, :cond_10

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 133
    :cond_10
    iget-boolean v0, p0, Lokhttp3/ConnectionPool;->cleanupRunning:Z

    if-nez v0, :cond_1e

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/ConnectionPool;->cleanupRunning:Z

    .line 135
    sget-object v0, Lokhttp3/ConnectionPool;->executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lokhttp3/ConnectionPool;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 137
    :cond_1e
    iget-object v0, p0, Lokhttp3/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 138
    return-void
.end method
