.class public Lcom/sun/mail/util/TraceInputStream;
.super Ljava/io/FilterInputStream;
.source "TraceInputStream.java"


# instance fields
.field private quote:Z

.field private trace:Z

.field private traceOut:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 4
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "traceOut"    # Ljava/io/OutputStream;

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 55
    iput-boolean v0, p0, Lcom/sun/mail/util/TraceInputStream;->trace:Z

    .line 56
    iput-boolean v0, p0, Lcom/sun/mail/util/TraceInputStream;->quote:Z

    .line 68
    iput-object p2, p0, Lcom/sun/mail/util/TraceInputStream;->traceOut:Ljava/io/OutputStream;

    .line 69
    return-void
.end method

.method private final writeByte(I)V
    .registers 6
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0xa

    const/16 v2, 0x5c

    .line 125
    and-int/lit16 p1, p1, 0xff

    .line 126
    const/16 v0, 0x7f

    if-le p1, v0, :cond_1a

    .line 127
    iget-object v0, p0, Lcom/sun/mail/util/TraceInputStream;->traceOut:Ljava/io/OutputStream;

    const/16 v1, 0x4d

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 128
    iget-object v0, p0, Lcom/sun/mail/util/TraceInputStream;->traceOut:Ljava/io/OutputStream;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 129
    and-int/lit8 p1, p1, 0x7f

    .line 131
    :cond_1a
    const/16 v0, 0xd

    if-ne p1, v0, :cond_2b

    .line 132
    iget-object v0, p0, Lcom/sun/mail/util/TraceInputStream;->traceOut:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 133
    iget-object v0, p0, Lcom/sun/mail/util/TraceInputStream;->traceOut:Ljava/io/OutputStream;

    const/16 v1, 0x72

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 147
    :goto_2a
    return-void

    .line 134
    :cond_2b
    if-ne p1, v3, :cond_3f

    .line 135
    iget-object v0, p0, Lcom/sun/mail/util/TraceInputStream;->traceOut:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 136
    iget-object v0, p0, Lcom/sun/mail/util/TraceInputStream;->traceOut:Ljava/io/OutputStream;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 137
    iget-object v0, p0, Lcom/sun/mail/util/TraceInputStream;->traceOut:Ljava/io/OutputStream;

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write(I)V

    goto :goto_2a

    .line 138
    :cond_3f
    const/16 v0, 0x9

    if-ne p1, v0, :cond_50

    .line 139
    iget-object v0, p0, Lcom/sun/mail/util/TraceInputStream;->traceOut:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 140
    iget-object v0, p0, Lcom/sun/mail/util/TraceInputStream;->traceOut:Ljava/io/OutputStream;

    const/16 v1, 0x74

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_2a

    .line 141
    :cond_50
    const/16 v0, 0x20

    if-ge p1, v0, :cond_63

    .line 142
    iget-object v0, p0, Lcom/sun/mail/util/TraceInputStream;->traceOut:Ljava/io/OutputStream;

    const/16 v1, 0x5e

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 143
    iget-object v0, p0, Lcom/sun/mail/util/TraceInputStream;->traceOut:Ljava/io/OutputStream;

    add-int/lit8 v1, p1, 0x40

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_2a

    .line 145
    :cond_63
    iget-object v0, p0, Lcom/sun/mail/util/TraceInputStream;->traceOut:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_2a
.end method


# virtual methods
.method public read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    iget-object v1, p0, Lcom/sun/mail/util/TraceInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 94
    .local v0, "b":I
    iget-boolean v1, p0, Lcom/sun/mail/util/TraceInputStream;->trace:Z

    if-eqz v1, :cond_14

    const/4 v1, -0x1

    if-eq v0, v1, :cond_14

    .line 95
    iget-boolean v1, p0, Lcom/sun/mail/util/TraceInputStream;->quote:Z

    if-eqz v1, :cond_15

    .line 96
    invoke-direct {p0, v0}, Lcom/sun/mail/util/TraceInputStream;->writeByte(I)V

    .line 100
    :cond_14
    :goto_14
    return v0

    .line 98
    :cond_15
    iget-object v1, p0, Lcom/sun/mail/util/TraceInputStream;->traceOut:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_14
.end method

.method public read([BII)I
    .registers 7
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    iget-object v2, p0, Lcom/sun/mail/util/TraceInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 111
    .local v0, "count":I
    iget-boolean v2, p0, Lcom/sun/mail/util/TraceInputStream;->trace:Z

    if-eqz v2, :cond_14

    const/4 v2, -0x1

    if-eq v0, v2, :cond_14

    .line 112
    iget-boolean v2, p0, Lcom/sun/mail/util/TraceInputStream;->quote:Z

    if-eqz v2, :cond_1f

    .line 113
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    if-lt v1, v0, :cond_15

    .line 118
    .end local v1    # "i":I
    :cond_14
    :goto_14
    return v0

    .line 114
    .restart local v1    # "i":I
    :cond_15
    add-int v2, p2, v1

    aget-byte v2, p1, v2

    invoke-direct {p0, v2}, Lcom/sun/mail/util/TraceInputStream;->writeByte(I)V

    .line 113
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 116
    .end local v1    # "i":I
    :cond_1f
    iget-object v2, p0, Lcom/sun/mail/util/TraceInputStream;->traceOut:Ljava/io/OutputStream;

    invoke-virtual {v2, p1, p2, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_14
.end method

.method public setQuote(Z)V
    .registers 2
    .param p1, "quote"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/sun/mail/util/TraceInputStream;->quote:Z

    .line 85
    return-void
.end method

.method public setTrace(Z)V
    .registers 2
    .param p1, "trace"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/sun/mail/util/TraceInputStream;->trace:Z

    .line 77
    return-void
.end method
