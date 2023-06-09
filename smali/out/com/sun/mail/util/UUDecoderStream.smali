.class public Lcom/sun/mail/util/UUDecoderStream;
.super Ljava/io/FilterInputStream;
.source "UUDecoderStream.java"


# instance fields
.field private buffer:[B

.field private bufsize:I

.field private gotEnd:Z

.field private gotPrefix:Z

.field private index:I

.field private lin:Lcom/sun/mail/util/LineInputStream;

.field private mode:I

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 60
    iput v0, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    .line 61
    iput v0, p0, Lcom/sun/mail/util/UUDecoderStream;->index:I

    .line 62
    iput-boolean v0, p0, Lcom/sun/mail/util/UUDecoderStream;->gotPrefix:Z

    .line 63
    iput-boolean v0, p0, Lcom/sun/mail/util/UUDecoderStream;->gotEnd:Z

    .line 72
    new-instance v0, Lcom/sun/mail/util/LineInputStream;

    invoke-direct {v0, p1}, Lcom/sun/mail/util/LineInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/sun/mail/util/UUDecoderStream;->lin:Lcom/sun/mail/util/LineInputStream;

    .line 73
    const/16 v0, 0x2d

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/mail/util/UUDecoderStream;->buffer:[B

    .line 74
    return-void
.end method

.method private decode()Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 177
    iget-boolean v3, p0, Lcom/sun/mail/util/UUDecoderStream;->gotEnd:Z

    if-eqz v3, :cond_8

    .line 248
    :goto_7
    return v2

    .line 179
    :cond_8
    iput v2, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    .line 182
    :cond_a
    iget-object v3, p0, Lcom/sun/mail/util/UUDecoderStream;->lin:Lcom/sun/mail/util/LineInputStream;

    invoke-virtual {v3}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "line":Ljava/lang/String;
    if-nez v0, :cond_1a

    .line 190
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Missing End"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 191
    :cond_1a
    const-string v3, "end"

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 192
    iput-boolean v1, p0, Lcom/sun/mail/util/UUDecoderStream;->gotEnd:Z

    goto :goto_7

    .line 195
    :cond_26
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_a

    .line 196
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 197
    .local v8, "count":I
    const/16 v3, 0x20

    if-ge v8, v3, :cond_3c

    .line 198
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Buffer format error"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 206
    :cond_3c
    add-int/lit8 v3, v8, -0x20

    and-int/lit8 v8, v3, 0x3f

    .line 208
    if-nez v8, :cond_5e

    .line 209
    iget-object v3, p0, Lcom/sun/mail/util/UUDecoderStream;->lin:Lcom/sun/mail/util/LineInputStream;

    invoke-virtual {v3}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 210
    if-eqz v0, :cond_53

    const-string v3, "end"

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_5b

    .line 211
    :cond_53
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Missing End"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 212
    :cond_5b
    iput-boolean v1, p0, Lcom/sun/mail/util/UUDecoderStream;->gotEnd:Z

    goto :goto_7

    .line 216
    :cond_5e
    mul-int/lit8 v2, v8, 0x8

    add-int/lit8 v2, v2, 0x5

    div-int/lit8 v11, v2, 0x6

    .line 218
    .local v11, "need":I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v3, v11, 0x1

    if-ge v2, v3, :cond_74

    .line 219
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Short buffer error"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 221
    :cond_74
    const/4 v9, 0x1

    .line 229
    .local v9, "i":I
    :cond_75
    :goto_75
    iget v2, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    if-lt v2, v8, :cond_7b

    move v2, v1

    .line 248
    goto :goto_7

    .line 231
    :cond_7b
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "i":I
    .local v10, "i":I
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x20

    and-int/lit8 v2, v2, 0x3f

    int-to-byte v6, v2

    .line 232
    .local v6, "a":B
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "i":I
    .restart local v9    # "i":I
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x20

    and-int/lit8 v2, v2, 0x3f

    int-to-byte v7, v2

    .line 233
    .local v7, "b":B
    iget-object v2, p0, Lcom/sun/mail/util/UUDecoderStream;->buffer:[B

    iget v3, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    shl-int/lit8 v4, v6, 0x2

    and-int/lit16 v4, v4, 0xfc

    ushr-int/lit8 v5, v7, 0x4

    and-int/lit8 v5, v5, 0x3

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 235
    iget v2, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    if-ge v2, v8, :cond_ca

    .line 236
    move v6, v7

    .line 237
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "i":I
    .restart local v10    # "i":I
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x20

    and-int/lit8 v2, v2, 0x3f

    int-to-byte v7, v2

    .line 238
    iget-object v2, p0, Lcom/sun/mail/util/UUDecoderStream;->buffer:[B

    iget v3, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    .line 239
    shl-int/lit8 v4, v6, 0x4

    and-int/lit16 v4, v4, 0xf0

    ushr-int/lit8 v5, v7, 0x2

    and-int/lit8 v5, v5, 0xf

    or-int/2addr v4, v5

    int-to-byte v4, v4

    .line 238
    aput-byte v4, v2, v3

    move v9, v10

    .line 242
    .end local v10    # "i":I
    .restart local v9    # "i":I
    :cond_ca
    iget v2, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    if-ge v2, v8, :cond_75

    .line 243
    move v6, v7

    .line 244
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "i":I
    .restart local v10    # "i":I
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x20

    and-int/lit8 v2, v2, 0x3f

    int-to-byte v7, v2

    .line 245
    iget-object v2, p0, Lcom/sun/mail/util/UUDecoderStream;->buffer:[B

    iget v3, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    shl-int/lit8 v4, v6, 0x6

    and-int/lit16 v4, v4, 0xc0

    and-int/lit8 v5, v7, 0x3f

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    move v9, v10

    .end local v10    # "i":I
    .restart local v9    # "i":I
    goto :goto_75
.end method

.method private readPrefix()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 153
    iget-boolean v3, p0, Lcom/sun/mail/util/UUDecoderStream;->gotPrefix:Z

    if-eqz v3, :cond_7

    .line 170
    :goto_6
    return-void

    .line 159
    :cond_7
    iget-object v3, p0, Lcom/sun/mail/util/UUDecoderStream;->lin:Lcom/sun/mail/util/LineInputStream;

    invoke-virtual {v3}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_17

    .line 161
    new-instance v1, Ljava/io/IOException;

    const-string v2, "UUDecoder error: No Begin"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 162
    :cond_17
    const-string v3, "begin"

    const/4 v5, 0x5

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 164
    const/4 v2, 0x6

    const/16 v3, 0x9

    :try_start_24
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sun/mail/util/UUDecoderStream;->mode:I
    :try_end_2e
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_2e} :catch_39

    .line 168
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/mail/util/UUDecoderStream;->name:Ljava/lang/String;

    .line 169
    iput-boolean v1, p0, Lcom/sun/mail/util/UUDecoderStream;->gotPrefix:Z

    goto :goto_6

    .line 165
    :catch_39
    move-exception v6

    .line 166
    .local v6, "ex":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UUDecoder error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public available()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sun/mail/util/UUDecoderStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    iget v2, p0, Lcom/sun/mail/util/UUDecoderStream;->index:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public getMode()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/sun/mail/util/UUDecoderStream;->readPrefix()V

    .line 144
    iget v0, p0, Lcom/sun/mail/util/UUDecoderStream;->mode:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/sun/mail/util/UUDecoderStream;->readPrefix()V

    .line 132
    iget-object v0, p0, Lcom/sun/mail/util/UUDecoderStream;->name:Ljava/lang/String;

    return-object v0
.end method

.method public markSupported()Z
    .registers 2

    .prologue
    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    iget v0, p0, Lcom/sun/mail/util/UUDecoderStream;->index:I

    iget v1, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    if-lt v0, v1, :cond_14

    .line 92
    invoke-direct {p0}, Lcom/sun/mail/util/UUDecoderStream;->readPrefix()V

    .line 93
    invoke-direct {p0}, Lcom/sun/mail/util/UUDecoderStream;->decode()Z

    move-result v0

    if-nez v0, :cond_11

    .line 94
    const/4 v0, -0x1

    .line 97
    :goto_10
    return v0

    .line 95
    :cond_11
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/util/UUDecoderStream;->index:I

    .line 97
    :cond_14
    iget-object v0, p0, Lcom/sun/mail/util/UUDecoderStream;->buffer:[B

    iget v1, p0, Lcom/sun/mail/util/UUDecoderStream;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/mail/util/UUDecoderStream;->index:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_10
.end method

.method public read([BII)I
    .registers 8
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, p3, :cond_4

    .line 110
    :cond_3
    :goto_3
    return v1

    .line 103
    :cond_4
    invoke-virtual {p0}, Lcom/sun/mail/util/UUDecoderStream;->read()I

    move-result v0

    .local v0, "c":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_f

    .line 104
    if-nez v1, :cond_3

    .line 105
    const/4 v1, -0x1

    .line 106
    goto :goto_3

    .line 108
    :cond_f
    add-int v2, p2, v1

    int-to-byte v3, v0

    aput-byte v3, p1, v2

    .line 102
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
