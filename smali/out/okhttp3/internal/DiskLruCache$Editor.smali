.class public final Lokhttp3/internal/DiskLruCache$Editor;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Editor"
.end annotation


# instance fields
.field private done:Z

.field private final entry:Lokhttp3/internal/DiskLruCache$Entry;

.field final synthetic this$0:Lokhttp3/internal/DiskLruCache;

.field private final written:[Z


# direct methods
.method private constructor <init>(Lokhttp3/internal/DiskLruCache;Lokhttp3/internal/DiskLruCache$Entry;)V
    .registers 4
    .param p1, "this$0"    # Lokhttp3/internal/DiskLruCache;
    .param p2, "entry"    # Lokhttp3/internal/DiskLruCache$Entry;

    .prologue
    .line 845
    iput-object p1, p0, Lokhttp3/internal/DiskLruCache$Editor;->this$0:Lokhttp3/internal/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 846
    iput-object p2, p0, Lokhttp3/internal/DiskLruCache$Editor;->entry:Lokhttp3/internal/DiskLruCache$Entry;

    .line 847
    invoke-static {p2}, Lokhttp3/internal/DiskLruCache$Entry;->access$1200(Lokhttp3/internal/DiskLruCache$Entry;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    :goto_e
    iput-object v0, p0, Lokhttp3/internal/DiskLruCache$Editor;->written:[Z

    .line 848
    return-void

    .line 847
    :cond_11
    invoke-static {p1}, Lokhttp3/internal/DiskLruCache;->access$2600(Lokhttp3/internal/DiskLruCache;)I

    move-result v0

    new-array v0, v0, [Z

    goto :goto_e
.end method

.method synthetic constructor <init>(Lokhttp3/internal/DiskLruCache;Lokhttp3/internal/DiskLruCache$Entry;Lokhttp3/internal/DiskLruCache$1;)V
    .registers 4
    .param p1, "x0"    # Lokhttp3/internal/DiskLruCache;
    .param p2, "x1"    # Lokhttp3/internal/DiskLruCache$Entry;
    .param p3, "x2"    # Lokhttp3/internal/DiskLruCache$1;

    .prologue
    .line 840
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/DiskLruCache$Editor;-><init>(Lokhttp3/internal/DiskLruCache;Lokhttp3/internal/DiskLruCache$Entry;)V

    return-void
.end method

.method static synthetic access$2100(Lokhttp3/internal/DiskLruCache$Editor;)Lokhttp3/internal/DiskLruCache$Entry;
    .registers 2
    .param p0, "x0"    # Lokhttp3/internal/DiskLruCache$Editor;

    .prologue
    .line 840
    iget-object v0, p0, Lokhttp3/internal/DiskLruCache$Editor;->entry:Lokhttp3/internal/DiskLruCache$Entry;

    return-object v0
.end method

.method static synthetic access$2200(Lokhttp3/internal/DiskLruCache$Editor;)[Z
    .registers 2
    .param p0, "x0"    # Lokhttp3/internal/DiskLruCache$Editor;

    .prologue
    .line 840
    iget-object v0, p0, Lokhttp3/internal/DiskLruCache$Editor;->written:[Z

    return-object v0
.end method


# virtual methods
.method public abort()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 943
    iget-object v1, p0, Lokhttp3/internal/DiskLruCache$Editor;->this$0:Lokhttp3/internal/DiskLruCache;

    monitor-enter v1

    .line 944
    :try_start_3
    iget-boolean v0, p0, Lokhttp3/internal/DiskLruCache$Editor;->done:Z

    if-eqz v0, :cond_10

    .line 945
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 951
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0

    .line 947
    :cond_10
    :try_start_10
    iget-object v0, p0, Lokhttp3/internal/DiskLruCache$Editor;->entry:Lokhttp3/internal/DiskLruCache$Entry;

    invoke-static {v0}, Lokhttp3/internal/DiskLruCache$Entry;->access$1300(Lokhttp3/internal/DiskLruCache$Entry;)Lokhttp3/internal/DiskLruCache$Editor;

    move-result-object v0

    if-ne v0, p0, :cond_1e

    .line 948
    iget-object v0, p0, Lokhttp3/internal/DiskLruCache$Editor;->this$0:Lokhttp3/internal/DiskLruCache;

    const/4 v2, 0x0

    invoke-static {v0, p0, v2}, Lokhttp3/internal/DiskLruCache;->access$2800(Lokhttp3/internal/DiskLruCache;Lokhttp3/internal/DiskLruCache$Editor;Z)V

    .line 950
    :cond_1e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/DiskLruCache$Editor;->done:Z

    .line 951
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_10 .. :try_end_22} :catchall_d

    .line 952
    return-void
.end method

.method public abortUnlessCommitted()V
    .registers 4

    .prologue
    .line 955
    iget-object v1, p0, Lokhttp3/internal/DiskLruCache$Editor;->this$0:Lokhttp3/internal/DiskLruCache;

    monitor-enter v1

    .line 956
    :try_start_3
    iget-boolean v0, p0, Lokhttp3/internal/DiskLruCache$Editor;->done:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Lokhttp3/internal/DiskLruCache$Editor;->entry:Lokhttp3/internal/DiskLruCache$Entry;

    invoke-static {v0}, Lokhttp3/internal/DiskLruCache$Entry;->access$1300(Lokhttp3/internal/DiskLruCache$Entry;)Lokhttp3/internal/DiskLruCache$Editor;
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_17

    move-result-object v0

    if-ne v0, p0, :cond_15

    .line 958
    :try_start_f
    iget-object v0, p0, Lokhttp3/internal/DiskLruCache$Editor;->this$0:Lokhttp3/internal/DiskLruCache;

    const/4 v2, 0x0

    invoke-static {v0, p0, v2}, Lokhttp3/internal/DiskLruCache;->access$2800(Lokhttp3/internal/DiskLruCache;Lokhttp3/internal/DiskLruCache$Editor;Z)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_15} :catch_1a
    .catchall {:try_start_f .. :try_end_15} :catchall_17

    .line 962
    :cond_15
    :goto_15
    :try_start_15
    monitor-exit v1

    .line 963
    return-void

    .line 962
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_15 .. :try_end_19} :catchall_17

    throw v0

    .line 959
    :catch_1a
    move-exception v0

    goto :goto_15
.end method

.method public commit()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 927
    iget-object v1, p0, Lokhttp3/internal/DiskLruCache$Editor;->this$0:Lokhttp3/internal/DiskLruCache;

    monitor-enter v1

    .line 928
    :try_start_3
    iget-boolean v0, p0, Lokhttp3/internal/DiskLruCache$Editor;->done:Z

    if-eqz v0, :cond_10

    .line 929
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 935
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0

    .line 931
    :cond_10
    :try_start_10
    iget-object v0, p0, Lokhttp3/internal/DiskLruCache$Editor;->entry:Lokhttp3/internal/DiskLruCache$Entry;

    invoke-static {v0}, Lokhttp3/internal/DiskLruCache$Entry;->access$1300(Lokhttp3/internal/DiskLruCache$Entry;)Lokhttp3/internal/DiskLruCache$Editor;

    move-result-object v0

    if-ne v0, p0, :cond_1e

    .line 932
    iget-object v0, p0, Lokhttp3/internal/DiskLruCache$Editor;->this$0:Lokhttp3/internal/DiskLruCache;

    const/4 v2, 0x1

    invoke-static {v0, p0, v2}, Lokhttp3/internal/DiskLruCache;->access$2800(Lokhttp3/internal/DiskLruCache;Lokhttp3/internal/DiskLruCache$Editor;Z)V

    .line 934
    :cond_1e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/DiskLruCache$Editor;->done:Z

    .line 935
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_10 .. :try_end_22} :catchall_d

    .line 936
    return-void
.end method

.method detach()V
    .registers 4

    .prologue
    .line 857
    iget-object v1, p0, Lokhttp3/internal/DiskLruCache$Editor;->entry:Lokhttp3/internal/DiskLruCache$Entry;

    invoke-static {v1}, Lokhttp3/internal/DiskLruCache$Entry;->access$1300(Lokhttp3/internal/DiskLruCache$Entry;)Lokhttp3/internal/DiskLruCache$Editor;

    move-result-object v1

    if-ne v1, p0, :cond_2b

    .line 858
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    iget-object v1, p0, Lokhttp3/internal/DiskLruCache$Editor;->this$0:Lokhttp3/internal/DiskLruCache;

    invoke-static {v1}, Lokhttp3/internal/DiskLruCache;->access$2600(Lokhttp3/internal/DiskLruCache;)I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 860
    :try_start_11
    iget-object v1, p0, Lokhttp3/internal/DiskLruCache$Editor;->this$0:Lokhttp3/internal/DiskLruCache;

    invoke-static {v1}, Lokhttp3/internal/DiskLruCache;->access$2700(Lokhttp3/internal/DiskLruCache;)Lokhttp3/internal/io/FileSystem;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/DiskLruCache$Editor;->entry:Lokhttp3/internal/DiskLruCache$Entry;

    invoke-static {v2}, Lokhttp3/internal/DiskLruCache$Entry;->access$1800(Lokhttp3/internal/DiskLruCache$Entry;)[Ljava/io/File;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Lokhttp3/internal/io/FileSystem;->delete(Ljava/io/File;)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_22} :catch_2c

    .line 858
    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 865
    :cond_25
    iget-object v1, p0, Lokhttp3/internal/DiskLruCache$Editor;->entry:Lokhttp3/internal/DiskLruCache$Entry;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lokhttp3/internal/DiskLruCache$Entry;->access$1302(Lokhttp3/internal/DiskLruCache$Entry;Lokhttp3/internal/DiskLruCache$Editor;)Lokhttp3/internal/DiskLruCache$Editor;

    .line 867
    .end local v0    # "i":I
    :cond_2b
    return-void

    .line 861
    .restart local v0    # "i":I
    :catch_2c
    move-exception v1

    goto :goto_22
.end method

.method public newSink(I)Lokio/Sink;
    .registers 8
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 895
    iget-object v4, p0, Lokhttp3/internal/DiskLruCache$Editor;->this$0:Lokhttp3/internal/DiskLruCache;

    monitor-enter v4

    .line 896
    :try_start_3
    iget-boolean v3, p0, Lokhttp3/internal/DiskLruCache$Editor;->done:Z

    if-eqz v3, :cond_10

    .line 897
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 919
    :catchall_d
    move-exception v3

    monitor-exit v4
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v3

    .line 899
    :cond_10
    :try_start_10
    iget-object v3, p0, Lokhttp3/internal/DiskLruCache$Editor;->entry:Lokhttp3/internal/DiskLruCache$Entry;

    invoke-static {v3}, Lokhttp3/internal/DiskLruCache$Entry;->access$1300(Lokhttp3/internal/DiskLruCache$Entry;)Lokhttp3/internal/DiskLruCache$Editor;

    move-result-object v3

    if-eq v3, p0, :cond_1e

    .line 900
    invoke-static {}, Lokhttp3/internal/DiskLruCache;->access$900()Lokio/Sink;

    move-result-object v3

    monitor-exit v4

    .line 912
    :goto_1d
    return-object v3

    .line 902
    :cond_1e
    iget-object v3, p0, Lokhttp3/internal/DiskLruCache$Editor;->entry:Lokhttp3/internal/DiskLruCache$Entry;

    invoke-static {v3}, Lokhttp3/internal/DiskLruCache$Entry;->access$1200(Lokhttp3/internal/DiskLruCache$Entry;)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 903
    iget-object v3, p0, Lokhttp3/internal/DiskLruCache$Editor;->written:[Z

    const/4 v5, 0x1

    aput-boolean v5, v3, p1

    .line 905
    :cond_2b
    iget-object v3, p0, Lokhttp3/internal/DiskLruCache$Editor;->entry:Lokhttp3/internal/DiskLruCache$Entry;

    invoke-static {v3}, Lokhttp3/internal/DiskLruCache$Entry;->access$1800(Lokhttp3/internal/DiskLruCache$Entry;)[Ljava/io/File;

    move-result-object v3

    aget-object v0, v3, p1
    :try_end_33
    .catchall {:try_start_10 .. :try_end_33} :catchall_d

    .line 908
    .local v0, "dirtyFile":Ljava/io/File;
    :try_start_33
    iget-object v3, p0, Lokhttp3/internal/DiskLruCache$Editor;->this$0:Lokhttp3/internal/DiskLruCache;

    invoke-static {v3}, Lokhttp3/internal/DiskLruCache;->access$2700(Lokhttp3/internal/DiskLruCache;)Lokhttp3/internal/io/FileSystem;

    move-result-object v3

    invoke-interface {v3, v0}, Lokhttp3/internal/io/FileSystem;->sink(Ljava/io/File;)Lokio/Sink;
    :try_end_3c
    .catch Ljava/io/FileNotFoundException; {:try_start_33 .. :try_end_3c} :catch_44
    .catchall {:try_start_33 .. :try_end_3c} :catchall_d

    move-result-object v2

    .line 912
    .local v2, "sink":Lokio/Sink;
    :try_start_3d
    new-instance v3, Lokhttp3/internal/DiskLruCache$Editor$1;

    invoke-direct {v3, p0, v2}, Lokhttp3/internal/DiskLruCache$Editor$1;-><init>(Lokhttp3/internal/DiskLruCache$Editor;Lokio/Sink;)V

    monitor-exit v4

    goto :goto_1d

    .line 909
    .end local v2    # "sink":Lokio/Sink;
    :catch_44
    move-exception v1

    .line 910
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-static {}, Lokhttp3/internal/DiskLruCache;->access$900()Lokio/Sink;

    move-result-object v3

    monitor-exit v4
    :try_end_4a
    .catchall {:try_start_3d .. :try_end_4a} :catchall_d

    goto :goto_1d
.end method

.method public newSource(I)Lokio/Source;
    .registers 7
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 874
    iget-object v2, p0, Lokhttp3/internal/DiskLruCache$Editor;->this$0:Lokhttp3/internal/DiskLruCache;

    monitor-enter v2

    .line 875
    :try_start_4
    iget-boolean v3, p0, Lokhttp3/internal/DiskLruCache$Editor;->done:Z

    if-eqz v3, :cond_11

    .line 876
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 886
    :catchall_e
    move-exception v1

    monitor-exit v2
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_e

    throw v1

    .line 878
    :cond_11
    :try_start_11
    iget-object v3, p0, Lokhttp3/internal/DiskLruCache$Editor;->entry:Lokhttp3/internal/DiskLruCache$Entry;

    invoke-static {v3}, Lokhttp3/internal/DiskLruCache$Entry;->access$1200(Lokhttp3/internal/DiskLruCache$Entry;)Z

    move-result v3

    if-eqz v3, :cond_21

    iget-object v3, p0, Lokhttp3/internal/DiskLruCache$Editor;->entry:Lokhttp3/internal/DiskLruCache$Entry;

    invoke-static {v3}, Lokhttp3/internal/DiskLruCache$Entry;->access$1300(Lokhttp3/internal/DiskLruCache$Entry;)Lokhttp3/internal/DiskLruCache$Editor;

    move-result-object v3

    if-eq v3, p0, :cond_23

    .line 879
    :cond_21
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_11 .. :try_end_22} :catchall_e

    .line 884
    :goto_22
    return-object v1

    .line 882
    :cond_23
    :try_start_23
    iget-object v3, p0, Lokhttp3/internal/DiskLruCache$Editor;->this$0:Lokhttp3/internal/DiskLruCache;

    invoke-static {v3}, Lokhttp3/internal/DiskLruCache;->access$2700(Lokhttp3/internal/DiskLruCache;)Lokhttp3/internal/io/FileSystem;

    move-result-object v3

    iget-object v4, p0, Lokhttp3/internal/DiskLruCache$Editor;->entry:Lokhttp3/internal/DiskLruCache$Entry;

    invoke-static {v4}, Lokhttp3/internal/DiskLruCache$Entry;->access$1700(Lokhttp3/internal/DiskLruCache$Entry;)[Ljava/io/File;

    move-result-object v4

    aget-object v4, v4, p1

    invoke-interface {v3, v4}, Lokhttp3/internal/io/FileSystem;->source(Ljava/io/File;)Lokio/Source;
    :try_end_34
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_34} :catch_37
    .catchall {:try_start_23 .. :try_end_34} :catchall_e

    move-result-object v1

    :try_start_35
    monitor-exit v2

    goto :goto_22

    .line 883
    :catch_37
    move-exception v0

    .line 884
    .local v0, "e":Ljava/io/FileNotFoundException;
    monitor-exit v2
    :try_end_39
    .catchall {:try_start_35 .. :try_end_39} :catchall_e

    goto :goto_22
.end method
