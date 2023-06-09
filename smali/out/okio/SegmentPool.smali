.class final Lokio/SegmentPool;
.super Ljava/lang/Object;
.source "SegmentPool.java"


# static fields
.field static final MAX_SIZE:J = 0x10000L

.field static byteCount:J

.field static next:Lokio/Segment;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method static recycle(Lokio/Segment;)V
    .registers 9
    .param p0, "segment"    # Lokio/Segment;

    .prologue
    const-wide/16 v6, 0x2000

    .line 50
    iget-object v0, p0, Lokio/Segment;->next:Lokio/Segment;

    if-nez v0, :cond_a

    iget-object v0, p0, Lokio/Segment;->prev:Lokio/Segment;

    if-eqz v0, :cond_10

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 51
    :cond_10
    iget-boolean v0, p0, Lokio/Segment;->shared:Z

    if-eqz v0, :cond_15

    .line 59
    :goto_14
    return-void

    .line 52
    :cond_15
    const-class v1, Lokio/SegmentPool;

    monitor-enter v1

    .line 53
    :try_start_18
    sget-wide v2, Lokio/SegmentPool;->byteCount:J

    add-long/2addr v2, v6

    const-wide/32 v4, 0x10000

    cmp-long v0, v2, v4

    if-lez v0, :cond_27

    monitor-exit v1

    goto :goto_14

    .line 58
    :catchall_24
    move-exception v0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_18 .. :try_end_26} :catchall_24

    throw v0

    .line 54
    :cond_27
    :try_start_27
    sget-wide v2, Lokio/SegmentPool;->byteCount:J

    add-long/2addr v2, v6

    sput-wide v2, Lokio/SegmentPool;->byteCount:J

    .line 55
    sget-object v0, Lokio/SegmentPool;->next:Lokio/Segment;

    iput-object v0, p0, Lokio/Segment;->next:Lokio/Segment;

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lokio/Segment;->limit:I

    iput v0, p0, Lokio/Segment;->pos:I

    .line 57
    sput-object p0, Lokio/SegmentPool;->next:Lokio/Segment;

    .line 58
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_27 .. :try_end_38} :catchall_24

    goto :goto_14
.end method

.method static take()Lokio/Segment;
    .registers 8

    .prologue
    .line 37
    const-class v2, Lokio/SegmentPool;

    monitor-enter v2

    .line 38
    :try_start_3
    sget-object v1, Lokio/SegmentPool;->next:Lokio/Segment;

    if-eqz v1, :cond_19

    .line 39
    sget-object v0, Lokio/SegmentPool;->next:Lokio/Segment;

    .line 40
    .local v0, "result":Lokio/Segment;
    iget-object v1, v0, Lokio/Segment;->next:Lokio/Segment;

    sput-object v1, Lokio/SegmentPool;->next:Lokio/Segment;

    .line 41
    const/4 v1, 0x0

    iput-object v1, v0, Lokio/Segment;->next:Lokio/Segment;

    .line 42
    sget-wide v4, Lokio/SegmentPool;->byteCount:J

    const-wide/16 v6, 0x2000

    sub-long/2addr v4, v6

    sput-wide v4, Lokio/SegmentPool;->byteCount:J

    .line 43
    monitor-exit v2

    .line 46
    .end local v0    # "result":Lokio/Segment;
    :goto_18
    return-object v0

    .line 45
    :cond_19
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_20

    .line 46
    new-instance v0, Lokio/Segment;

    invoke-direct {v0}, Lokio/Segment;-><init>()V

    goto :goto_18

    .line 45
    .restart local v0    # "result":Lokio/Segment;
    :catchall_20
    move-exception v1

    :try_start_21
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v1
.end method
