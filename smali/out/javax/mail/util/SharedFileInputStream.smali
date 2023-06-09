.class public Ljavax/mail/util/SharedFileInputStream;
.super Ljava/io/BufferedInputStream;
.source "SharedFileInputStream.java"

# interfaces
.implements Ljavax/mail/internet/SharedInputStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/mail/util/SharedFileInputStream$SharedFile;
    }
.end annotation


# static fields
.field private static defaultBufferSize:I


# instance fields
.field protected bufpos:J

.field protected bufsize:I

.field protected datalen:J

.field protected in:Ljava/io/RandomAccessFile;

.field private master:Z

.field private sf:Ljavax/mail/util/SharedFileInputStream$SharedFile;

.field protected start:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 71
    const/16 v0, 0x800

    sput v0, Ljavax/mail/util/SharedFileInputStream;->defaultBufferSize:I

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 3
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    sget v0, Ljavax/mail/util/SharedFileInputStream;->defaultBufferSize:I

    invoke-direct {p0, p1, v0}, Ljavax/mail/util/SharedFileInputStream;-><init>(Ljava/io/File;I)V

    .line 170
    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .registers 5
    .param p1, "file"    # Ljava/io/File;
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 93
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljavax/mail/util/SharedFileInputStream;->start:J

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/mail/util/SharedFileInputStream;->master:Z

    .line 192
    if-gtz p2, :cond_15

    .line 193
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffer size <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_15
    new-instance v0, Ljavax/mail/util/SharedFileInputStream$SharedFile;

    invoke-direct {v0, p1}, Ljavax/mail/util/SharedFileInputStream$SharedFile;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0, p2}, Ljavax/mail/util/SharedFileInputStream;->init(Ljavax/mail/util/SharedFileInputStream$SharedFile;I)V

    .line 195
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    sget v0, Ljavax/mail/util/SharedFileInputStream;->defaultBufferSize:I

    invoke-direct {p0, p1, v0}, Ljavax/mail/util/SharedFileInputStream;-><init>(Ljava/lang/String;I)V

    .line 180
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 5
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 93
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljavax/mail/util/SharedFileInputStream;->start:J

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/mail/util/SharedFileInputStream;->master:Z

    .line 207
    if-gtz p2, :cond_15

    .line 208
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffer size <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_15
    new-instance v0, Ljavax/mail/util/SharedFileInputStream$SharedFile;

    invoke-direct {v0, p1}, Ljavax/mail/util/SharedFileInputStream$SharedFile;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Ljavax/mail/util/SharedFileInputStream;->init(Ljavax/mail/util/SharedFileInputStream$SharedFile;I)V

    .line 210
    return-void
.end method

.method private constructor <init>(Ljavax/mail/util/SharedFileInputStream$SharedFile;JJI)V
    .registers 9
    .param p1, "sf"    # Ljavax/mail/util/SharedFileInputStream$SharedFile;
    .param p2, "start"    # J
    .param p4, "len"    # J
    .param p6, "bufsize"    # I

    .prologue
    .line 226
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 93
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljavax/mail/util/SharedFileInputStream;->start:J

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/mail/util/SharedFileInputStream;->master:Z

    .line 227
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/mail/util/SharedFileInputStream;->master:Z

    .line 228
    iput-object p1, p0, Ljavax/mail/util/SharedFileInputStream;->sf:Ljavax/mail/util/SharedFileInputStream$SharedFile;

    .line 229
    invoke-virtual {p1}, Ljavax/mail/util/SharedFileInputStream$SharedFile;->open()Ljava/io/RandomAccessFile;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    .line 230
    iput-wide p2, p0, Ljavax/mail/util/SharedFileInputStream;->start:J

    .line 231
    iput-wide p2, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    .line 232
    iput-wide p4, p0, Ljavax/mail/util/SharedFileInputStream;->datalen:J

    .line 233
    iput p6, p0, Ljavax/mail/util/SharedFileInputStream;->bufsize:I

    .line 234
    new-array v0, p6, [B

    iput-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    .line 235
    return-void
.end method

.method private ensureOpen()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_c

    .line 159
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_c
    return-void
.end method

.method private fill()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 245
    iget v5, p0, Ljavax/mail/util/SharedFileInputStream;->markpos:I

    if-gez v5, :cond_55

    .line 246
    iput v10, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    .line 247
    iget-wide v6, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    iget v5, p0, Ljavax/mail/util/SharedFileInputStream;->count:I

    int-to-long v8, v5

    add-long/2addr v6, v8

    iput-wide v6, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    .line 267
    :cond_f
    :goto_f
    iget v5, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    iput v5, p0, Ljavax/mail/util/SharedFileInputStream;->count:I

    .line 268
    iget-object v5, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    iget-wide v6, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    iget v8, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    int-to-long v8, v8

    add-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 270
    iget-object v5, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    array-length v5, v5

    iget v6, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    sub-int v0, v5, v6

    .line 271
    .local v0, "len":I
    iget-wide v6, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    iget-wide v8, p0, Ljavax/mail/util/SharedFileInputStream;->start:J

    sub-long/2addr v6, v8

    iget v5, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    int-to-long v8, v5

    add-long/2addr v6, v8

    int-to-long v8, v0

    add-long/2addr v6, v8

    iget-wide v8, p0, Ljavax/mail/util/SharedFileInputStream;->datalen:J

    cmp-long v5, v6, v8

    if-lez v5, :cond_43

    .line 272
    iget-wide v6, p0, Ljavax/mail/util/SharedFileInputStream;->datalen:J

    iget-wide v8, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    iget-wide v10, p0, Ljavax/mail/util/SharedFileInputStream;->start:J

    sub-long/2addr v8, v10

    iget v5, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    int-to-long v10, v5

    add-long/2addr v8, v10

    sub-long/2addr v6, v8

    long-to-int v0, v6

    .line 273
    :cond_43
    iget-object v5, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    iget-object v6, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    iget v7, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    invoke-virtual {v5, v6, v7, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 274
    .local v1, "n":I
    if-lez v1, :cond_54

    .line 275
    iget v5, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    add-int/2addr v5, v1

    iput v5, p0, Ljavax/mail/util/SharedFileInputStream;->count:I

    .line 276
    :cond_54
    return-void

    .line 248
    .end local v0    # "len":I
    .end local v1    # "n":I
    :cond_55
    iget v5, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    iget-object v6, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    array-length v6, v6

    if-lt v5, v6, :cond_f

    .line 249
    iget v5, p0, Ljavax/mail/util/SharedFileInputStream;->markpos:I

    if-lez v5, :cond_7c

    .line 250
    iget v5, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    iget v6, p0, Ljavax/mail/util/SharedFileInputStream;->markpos:I

    sub-int v4, v5, v6

    .line 251
    .local v4, "sz":I
    iget-object v5, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    iget v6, p0, Ljavax/mail/util/SharedFileInputStream;->markpos:I

    iget-object v7, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    invoke-static {v5, v6, v7, v10, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 252
    iput v4, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    .line 253
    iget-wide v6, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    iget v5, p0, Ljavax/mail/util/SharedFileInputStream;->markpos:I

    int-to-long v8, v5

    add-long/2addr v6, v8

    iput-wide v6, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    .line 254
    iput v10, p0, Ljavax/mail/util/SharedFileInputStream;->markpos:I

    goto :goto_f

    .line 255
    .end local v4    # "sz":I
    :cond_7c
    iget-object v5, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    array-length v5, v5

    iget v6, p0, Ljavax/mail/util/SharedFileInputStream;->marklimit:I

    if-lt v5, v6, :cond_92

    .line 256
    const/4 v5, -0x1

    iput v5, p0, Ljavax/mail/util/SharedFileInputStream;->markpos:I

    .line 257
    iput v10, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    .line 258
    iget-wide v6, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    iget v5, p0, Ljavax/mail/util/SharedFileInputStream;->count:I

    int-to-long v8, v5

    add-long/2addr v6, v8

    iput-wide v6, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    goto/16 :goto_f

    .line 260
    :cond_92
    iget v5, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    mul-int/lit8 v3, v5, 0x2

    .line 261
    .local v3, "nsz":I
    iget v5, p0, Ljavax/mail/util/SharedFileInputStream;->marklimit:I

    if-le v3, v5, :cond_9c

    .line 262
    iget v3, p0, Ljavax/mail/util/SharedFileInputStream;->marklimit:I

    .line 263
    :cond_9c
    new-array v2, v3, [B

    .line 264
    .local v2, "nbuf":[B
    iget-object v5, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    iget v6, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    invoke-static {v5, v10, v2, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 265
    iput-object v2, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    goto/16 :goto_f
.end method

.method private in_available()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 407
    iget-wide v0, p0, Ljavax/mail/util/SharedFileInputStream;->start:J

    iget-wide v2, p0, Ljavax/mail/util/SharedFileInputStream;->datalen:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    iget v4, p0, Ljavax/mail/util/SharedFileInputStream;->count:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private init(Ljavax/mail/util/SharedFileInputStream$SharedFile;I)V
    .registers 5
    .param p1, "sf"    # Ljavax/mail/util/SharedFileInputStream$SharedFile;
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    iput-object p1, p0, Ljavax/mail/util/SharedFileInputStream;->sf:Ljavax/mail/util/SharedFileInputStream$SharedFile;

    .line 214
    invoke-virtual {p1}, Ljavax/mail/util/SharedFileInputStream$SharedFile;->open()Ljava/io/RandomAccessFile;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    .line 215
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljavax/mail/util/SharedFileInputStream;->start:J

    .line 216
    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iput-wide v0, p0, Ljavax/mail/util/SharedFileInputStream;->datalen:J

    .line 217
    iput p2, p0, Ljavax/mail/util/SharedFileInputStream;->bufsize:I

    .line 218
    new-array v0, p2, [B

    iput-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    .line 219
    return-void
.end method

.method private read1([BII)I
    .registers 8
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 301
    iget v2, p0, Ljavax/mail/util/SharedFileInputStream;->count:I

    iget v3, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    sub-int v0, v2, v3

    .line 302
    .local v0, "avail":I
    if-gtz v0, :cond_15

    .line 313
    invoke-direct {p0}, Ljavax/mail/util/SharedFileInputStream;->fill()V

    .line 314
    iget v2, p0, Ljavax/mail/util/SharedFileInputStream;->count:I

    iget v3, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    sub-int v0, v2, v3

    .line 315
    if-gtz v0, :cond_15

    const/4 v1, -0x1

    .line 320
    :goto_14
    return v1

    .line 317
    :cond_15
    if-ge v0, p3, :cond_25

    move v1, v0

    .line 318
    .local v1, "cnt":I
    :goto_18
    iget-object v2, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    iget v3, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    invoke-static {v2, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 319
    iget v2, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    add-int/2addr v2, v1

    iput v2, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    goto :goto_14

    .end local v1    # "cnt":I
    :cond_25
    move v1, p3

    .line 317
    goto :goto_18
.end method


# virtual methods
.method public declared-synchronized available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 401
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Ljavax/mail/util/SharedFileInputStream;->ensureOpen()V

    .line 402
    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->count:I

    iget v1, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    sub-int/2addr v0, v1

    invoke-direct {p0}, Ljavax/mail/util/SharedFileInputStream;->in_available()I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_10

    move-result v1

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    .line 401
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 466
    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_6

    .line 478
    :goto_5
    return-void

    .line 469
    :cond_6
    :try_start_6
    iget-boolean v0, p0, Ljavax/mail/util/SharedFileInputStream;->master:Z

    if-eqz v0, :cond_16

    .line 470
    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->sf:Ljavax/mail/util/SharedFileInputStream$SharedFile;

    invoke-virtual {v0}, Ljavax/mail/util/SharedFileInputStream$SharedFile;->forceClose()V
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_1c

    .line 474
    :goto_f
    iput-object v1, p0, Ljavax/mail/util/SharedFileInputStream;->sf:Ljavax/mail/util/SharedFileInputStream$SharedFile;

    .line 475
    iput-object v1, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    .line 476
    iput-object v1, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    goto :goto_5

    .line 472
    :cond_16
    :try_start_16
    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->sf:Ljavax/mail/util/SharedFileInputStream$SharedFile;

    invoke-virtual {v0}, Ljavax/mail/util/SharedFileInputStream$SharedFile;->close()V
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_1c

    goto :goto_f

    .line 473
    :catchall_1c
    move-exception v0

    .line 474
    iput-object v1, p0, Ljavax/mail/util/SharedFileInputStream;->sf:Ljavax/mail/util/SharedFileInputStream$SharedFile;

    .line 475
    iput-object v1, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    .line 476
    iput-object v1, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    .line 477
    throw v0
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 538
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 539
    invoke-virtual {p0}, Ljavax/mail/util/SharedFileInputStream;->close()V

    .line 540
    return-void
.end method

.method public getPosition()J
    .registers 5

    .prologue
    .line 488
    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_c

    .line 489
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 490
    :cond_c
    iget-wide v0, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    iget v2, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Ljavax/mail/util/SharedFileInputStream;->start:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public declared-synchronized mark(I)V
    .registers 3
    .param p1, "readlimit"    # I

    .prologue
    .line 419
    monitor-enter p0

    :try_start_1
    iput p1, p0, Ljavax/mail/util/SharedFileInputStream;->marklimit:I

    .line 420
    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    iput v0, p0, Ljavax/mail/util/SharedFileInputStream;->markpos:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 421
    monitor-exit p0

    return-void

    .line 419
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markSupported()Z
    .registers 2

    .prologue
    .line 456
    const/4 v0, 0x1

    return v0
.end method

.method public newStream(JJ)Ljava/io/InputStream;
    .registers 12
    .param p1, "start"    # J
    .param p3, "end"    # J

    .prologue
    .line 506
    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_c

    .line 507
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 508
    :cond_c
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1a

    .line 509
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "start < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 510
    :cond_1a
    const-wide/16 v0, -0x1

    cmp-long v0, p3, v0

    if-nez v0, :cond_22

    .line 511
    iget-wide p3, p0, Ljavax/mail/util/SharedFileInputStream;->datalen:J

    .line 512
    :cond_22
    new-instance v0, Ljavax/mail/util/SharedFileInputStream;

    iget-object v1, p0, Ljavax/mail/util/SharedFileInputStream;->sf:Ljavax/mail/util/SharedFileInputStream$SharedFile;

    .line 513
    iget-wide v2, p0, Ljavax/mail/util/SharedFileInputStream;->start:J

    long-to-int v4, p1

    int-to-long v4, v4

    add-long/2addr v2, v4

    sub-long v4, p3, p1

    long-to-int v4, v4

    int-to-long v4, v4

    iget v6, p0, Ljavax/mail/util/SharedFileInputStream;->bufsize:I

    .line 512
    invoke-direct/range {v0 .. v6}, Ljavax/mail/util/SharedFileInputStream;-><init>(Ljavax/mail/util/SharedFileInputStream$SharedFile;JJI)V

    return-object v0
.end method

.method public declared-synchronized read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 287
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Ljavax/mail/util/SharedFileInputStream;->ensureOpen()V

    .line 288
    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    iget v1, p0, Ljavax/mail/util/SharedFileInputStream;->count:I

    if-lt v0, v1, :cond_16

    .line 289
    invoke-direct {p0}, Ljavax/mail/util/SharedFileInputStream;->fill()V

    .line 290
    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    iget v1, p0, Ljavax/mail/util/SharedFileInputStream;->count:I
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_23

    if-lt v0, v1, :cond_16

    .line 291
    const/4 v0, -0x1

    .line 293
    :goto_14
    monitor-exit p0

    return v0

    :cond_16
    :try_start_16
    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    iget v1, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    aget-byte v0, v0, v1
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_23

    and-int/lit16 v0, v0, 0xff

    goto :goto_14

    .line 287
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read([BII)I
    .registers 9
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 341
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Ljavax/mail/util/SharedFileInputStream;->ensureOpen()V

    .line 342
    or-int v2, p2, p3

    add-int v3, p2, p3

    or-int/2addr v2, v3

    array-length v3, p1

    add-int v4, p2, p3

    sub-int/2addr v3, v4

    or-int/2addr v2, v3

    if-gez v2, :cond_19

    .line 343
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_16

    .line 341
    :catchall_16
    move-exception v2

    monitor-exit p0

    throw v2

    .line 344
    :cond_19
    if-nez p3, :cond_1e

    .line 345
    const/4 v0, 0x0

    .line 355
    :cond_1c
    monitor-exit p0

    return v0

    .line 348
    :cond_1e
    :try_start_1e
    invoke-direct {p0, p1, p2, p3}, Ljavax/mail/util/SharedFileInputStream;->read1([BII)I

    move-result v0

    .line 349
    .local v0, "n":I
    if-lez v0, :cond_1c

    .line 350
    :goto_24
    if-ge v0, p3, :cond_1c

    .line 351
    add-int v2, p2, v0

    sub-int v3, p3, v0

    invoke-direct {p0, p1, v2, v3}, Ljavax/mail/util/SharedFileInputStream;->read1([BII)I
    :try_end_2d
    .catchall {:try_start_1e .. :try_end_2d} :catchall_16

    move-result v1

    .line 352
    .local v1, "n1":I
    if-lez v1, :cond_1c

    .line 353
    add-int/2addr v0, v1

    goto :goto_24
.end method

.method public declared-synchronized reset()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 438
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Ljavax/mail/util/SharedFileInputStream;->ensureOpen()V

    .line 439
    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->markpos:I

    if-gez v0, :cond_13

    .line 440
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Resetting to invalid mark"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_10

    .line 438
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0

    .line 441
    :cond_13
    :try_start_13
    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->markpos:I

    iput v0, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_10

    .line 442
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized skip(J)J
    .registers 10
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 367
    monitor-enter p0

    :try_start_3
    invoke-direct {p0}, Ljavax/mail/util/SharedFileInputStream;->ensureOpen()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_30

    .line 368
    cmp-long v4, p1, v2

    if-gtz v4, :cond_c

    .line 389
    :cond_a
    :goto_a
    monitor-exit p0

    return-wide v2

    .line 371
    :cond_c
    :try_start_c
    iget v4, p0, Ljavax/mail/util/SharedFileInputStream;->count:I

    iget v5, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    sub-int/2addr v4, v5

    int-to-long v0, v4

    .line 373
    .local v0, "avail":J
    cmp-long v4, v0, v2

    if-gtz v4, :cond_23

    .line 381
    invoke-direct {p0}, Ljavax/mail/util/SharedFileInputStream;->fill()V

    .line 382
    iget v4, p0, Ljavax/mail/util/SharedFileInputStream;->count:I

    iget v5, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    sub-int/2addr v4, v5

    int-to-long v0, v4

    .line 383
    cmp-long v4, v0, v2

    if-lez v4, :cond_a

    .line 387
    :cond_23
    cmp-long v4, v0, p1

    if-gez v4, :cond_33

    move-wide v2, v0

    .line 388
    .local v2, "skipped":J
    :goto_28
    iget v4, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    int-to-long v4, v4

    add-long/2addr v4, v2

    long-to-int v4, v4

    iput v4, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I
    :try_end_2f
    .catchall {:try_start_c .. :try_end_2f} :catchall_30

    goto :goto_a

    .line 367
    .end local v0    # "avail":J
    .end local v2    # "skipped":J
    :catchall_30
    move-exception v4

    monitor-exit p0

    throw v4

    .restart local v0    # "avail":J
    :cond_33
    move-wide v2, p1

    .line 387
    goto :goto_28
.end method
