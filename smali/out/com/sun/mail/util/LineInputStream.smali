.class public Lcom/sun/mail/util/LineInputStream;
.super Ljava/io/FilterInputStream;
.source "LineInputStream.java"


# instance fields
.field private lineBuffer:[C


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/util/LineInputStream;->lineBuffer:[C

    .line 64
    return-void
.end method


# virtual methods
.method public readLine()Ljava/lang/String;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v12, 0xd

    const/16 v11, 0xa

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 78
    iget-object v3, p0, Lcom/sun/mail/util/LineInputStream;->in:Ljava/io/InputStream;

    .line 79
    .local v3, "in":Ljava/io/InputStream;
    iget-object v0, p0, Lcom/sun/mail/util/LineInputStream;->lineBuffer:[C

    .line 81
    .local v0, "buf":[C
    if-nez v0, :cond_12

    .line 82
    const/16 v8, 0x80

    new-array v0, v8, [C

    .end local v0    # "buf":[C
    iput-object v0, p0, Lcom/sun/mail/util/LineInputStream;->lineBuffer:[C

    .line 85
    .restart local v0    # "buf":[C
    :cond_12
    array-length v7, v0

    .line 86
    .local v7, "room":I
    const/4 v5, 0x0

    .line 88
    .local v5, "offset":I
    :goto_14
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v1

    .local v1, "c1":I
    if-ne v1, v10, :cond_20

    .line 116
    :cond_1a
    :goto_1a
    if-ne v1, v10, :cond_5d

    if-nez v5, :cond_5d

    .line 117
    const/4 v8, 0x0

    .line 119
    :goto_1f
    return-object v8

    .line 89
    :cond_20
    if-eq v1, v11, :cond_1a

    .line 91
    if-ne v1, v12, :cond_43

    .line 93
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 94
    .local v2, "c2":I
    if-ne v2, v12, :cond_2e

    .line 95
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 96
    :cond_2e
    if-eq v2, v11, :cond_1a

    .line 98
    instance-of v8, v3, Ljava/io/PushbackInputStream;

    if-nez v8, :cond_3c

    .line 99
    new-instance v4, Ljava/io/PushbackInputStream;

    invoke-direct {v4, v3}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v4, p0, Lcom/sun/mail/util/LineInputStream;->in:Ljava/io/InputStream;

    .end local v3    # "in":Ljava/io/InputStream;
    .local v4, "in":Ljava/io/InputStream;
    move-object v3, v4

    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    :cond_3c
    move-object v8, v3

    .line 100
    check-cast v8, Ljava/io/PushbackInputStream;

    invoke-virtual {v8, v2}, Ljava/io/PushbackInputStream;->unread(I)V

    goto :goto_1a

    .line 107
    .end local v2    # "c2":I
    :cond_43
    add-int/lit8 v7, v7, -0x1

    if-gez v7, :cond_56

    .line 108
    add-int/lit16 v8, v5, 0x80

    new-array v0, v8, [C

    .line 109
    array-length v8, v0

    sub-int/2addr v8, v5

    add-int/lit8 v7, v8, -0x1

    .line 110
    iget-object v8, p0, Lcom/sun/mail/util/LineInputStream;->lineBuffer:[C

    invoke-static {v8, v9, v0, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    iput-object v0, p0, Lcom/sun/mail/util/LineInputStream;->lineBuffer:[C

    .line 113
    :cond_56
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .local v6, "offset":I
    int-to-char v8, v1

    aput-char v8, v0, v5

    move v5, v6

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto :goto_14

    .line 119
    :cond_5d
    invoke-static {v0, v9, v5}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v8

    goto :goto_1f
.end method
