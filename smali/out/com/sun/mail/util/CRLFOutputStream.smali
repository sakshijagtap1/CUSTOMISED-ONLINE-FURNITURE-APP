.class public Lcom/sun/mail/util/CRLFOutputStream;
.super Ljava/io/FilterOutputStream;
.source "CRLFOutputStream.java"


# static fields
.field private static final newline:[B


# instance fields
.field protected atBOL:Z

.field protected lastb:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/sun/mail/util/CRLFOutputStream;->newline:[B

    .line 52
    return-void

    .line 55
    nop

    :array_a
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "os"    # Ljava/io/OutputStream;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/sun/mail/util/CRLFOutputStream;->lastb:I

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/mail/util/CRLFOutputStream;->atBOL:Z

    .line 59
    return-void
.end method


# virtual methods
.method public write(I)V
    .registers 4
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0xd

    .line 62
    if-ne p1, v1, :cond_a

    .line 63
    invoke-virtual {p0}, Lcom/sun/mail/util/CRLFOutputStream;->writeln()V

    .line 71
    :cond_7
    :goto_7
    iput p1, p0, Lcom/sun/mail/util/CRLFOutputStream;->lastb:I

    .line 72
    return-void

    .line 64
    :cond_a
    const/16 v0, 0xa

    if-ne p1, v0, :cond_16

    .line 65
    iget v0, p0, Lcom/sun/mail/util/CRLFOutputStream;->lastb:I

    if-eq v0, v1, :cond_7

    .line 66
    invoke-virtual {p0}, Lcom/sun/mail/util/CRLFOutputStream;->writeln()V

    goto :goto_7

    .line 68
    :cond_16
    iget-object v0, p0, Lcom/sun/mail/util/CRLFOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/mail/util/CRLFOutputStream;->atBOL:Z

    goto :goto_7
.end method

.method public write([B)V
    .registers 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sun/mail/util/CRLFOutputStream;->write([BII)V

    .line 76
    return-void
.end method

.method public write([BII)V
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
    const/16 v4, 0xd

    .line 79
    move v1, p2

    .line 81
    .local v1, "start":I
    add-int/2addr p3, p2

    .line 82
    move v0, v1

    .local v0, "i":I
    :goto_5
    if-lt v0, p3, :cond_16

    .line 96
    sub-int v2, p3, v1

    if-lez v2, :cond_15

    .line 97
    iget-object v2, p0, Lcom/sun/mail/util/CRLFOutputStream;->out:Ljava/io/OutputStream;

    sub-int v3, p3, v1

    invoke-virtual {v2, p1, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 98
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sun/mail/util/CRLFOutputStream;->atBOL:Z

    .line 100
    :cond_15
    return-void

    .line 83
    :cond_16
    aget-byte v2, p1, v0

    if-ne v2, v4, :cond_2d

    .line 84
    iget-object v2, p0, Lcom/sun/mail/util/CRLFOutputStream;->out:Ljava/io/OutputStream;

    sub-int v3, v0, v1

    invoke-virtual {v2, p1, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 85
    invoke-virtual {p0}, Lcom/sun/mail/util/CRLFOutputStream;->writeln()V

    .line 86
    add-int/lit8 v1, v0, 0x1

    .line 94
    :cond_26
    :goto_26
    aget-byte v2, p1, v0

    iput v2, p0, Lcom/sun/mail/util/CRLFOutputStream;->lastb:I

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 87
    :cond_2d
    aget-byte v2, p1, v0

    const/16 v3, 0xa

    if-ne v2, v3, :cond_26

    .line 88
    iget v2, p0, Lcom/sun/mail/util/CRLFOutputStream;->lastb:I

    if-eq v2, v4, :cond_41

    .line 89
    iget-object v2, p0, Lcom/sun/mail/util/CRLFOutputStream;->out:Ljava/io/OutputStream;

    sub-int v3, v0, v1

    invoke-virtual {v2, p1, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 90
    invoke-virtual {p0}, Lcom/sun/mail/util/CRLFOutputStream;->writeln()V

    .line 92
    :cond_41
    add-int/lit8 v1, v0, 0x1

    goto :goto_26
.end method

.method public writeln()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sun/mail/util/CRLFOutputStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lcom/sun/mail/util/CRLFOutputStream;->newline:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/mail/util/CRLFOutputStream;->atBOL:Z

    .line 108
    return-void
.end method
