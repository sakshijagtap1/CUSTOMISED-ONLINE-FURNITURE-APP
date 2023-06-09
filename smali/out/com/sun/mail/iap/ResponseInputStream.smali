.class public Lcom/sun/mail/iap/ResponseInputStream;
.super Ljava/lang/Object;
.source "ResponseInputStream.java"


# static fields
.field private static final incrementSlop:I = 0x10

.field private static final maxIncrement:I = 0x40000

.field private static final minIncrement:I = 0x100


# instance fields
.field private bin:Ljava/io/BufferedInputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v1, 0x800

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lcom/sun/mail/iap/ResponseInputStream;->bin:Ljava/io/BufferedInputStream;

    .line 71
    return-void
.end method


# virtual methods
.method public readResponse()Lcom/sun/mail/iap/ByteArray;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sun/mail/iap/ResponseInputStream;->readResponse(Lcom/sun/mail/iap/ByteArray;)Lcom/sun/mail/iap/ByteArray;

    move-result-object v0

    return-object v0
.end method

.method public readResponse(Lcom/sun/mail/iap/ByteArray;)Lcom/sun/mail/iap/ByteArray;
    .registers 16
    .param p1, "ba"    # Lcom/sun/mail/iap/ByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    if-nez p1, :cond_e

    .line 87
    new-instance p1, Lcom/sun/mail/iap/ByteArray;

    .end local p1    # "ba":Lcom/sun/mail/iap/ByteArray;
    const/16 v11, 0x80

    new-array v11, v11, [B

    const/4 v12, 0x0

    const/16 v13, 0x80

    invoke-direct {p1, v11, v12, v13}, Lcom/sun/mail/iap/ByteArray;-><init>([BII)V

    .line 89
    .restart local p1    # "ba":Lcom/sun/mail/iap/ByteArray;
    :cond_e
    invoke-virtual {p1}, Lcom/sun/mail/iap/ByteArray;->getBytes()[B

    move-result-object v3

    .line 90
    .local v3, "buffer":[B
    const/4 v8, 0x0

    .line 93
    .local v8, "idx":I
    :cond_13
    :goto_13
    const/4 v2, 0x0

    .line 94
    .local v2, "b":I
    const/4 v6, 0x0

    .local v6, "gotCRLF":Z
    move v9, v8

    .line 97
    .end local v8    # "idx":I
    .local v9, "idx":I
    :goto_16
    if-nez v6, :cond_21

    .line 98
    iget-object v11, p0, Lcom/sun/mail/iap/ResponseInputStream;->bin:Ljava/io/BufferedInputStream;

    invoke-virtual {v11}, Ljava/io/BufferedInputStream;->read()I

    move-result v2

    const/4 v11, -0x1

    if-ne v2, v11, :cond_2a

    .line 115
    :cond_21
    const/4 v11, -0x1

    if-ne v2, v11, :cond_51

    .line 116
    new-instance v11, Ljava/io/IOException;

    invoke-direct {v11}, Ljava/io/IOException;-><init>()V

    throw v11

    .line 99
    :cond_2a
    packed-switch v2, :pswitch_data_a8

    .line 104
    :cond_2d
    :goto_2d
    array-length v11, v3

    if-lt v9, v11, :cond_3e

    .line 105
    array-length v10, v3

    .line 106
    .local v10, "incr":I
    const/high16 v11, 0x40000

    if-le v10, v11, :cond_37

    .line 107
    const/high16 v10, 0x40000

    .line 108
    :cond_37
    invoke-virtual {p1, v10}, Lcom/sun/mail/iap/ByteArray;->grow(I)V

    .line 109
    invoke-virtual {p1}, Lcom/sun/mail/iap/ByteArray;->getBytes()[B

    move-result-object v3

    .line 111
    .end local v10    # "incr":I
    :cond_3e
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "idx":I
    .restart local v8    # "idx":I
    int-to-byte v11, v2

    aput-byte v11, v3, v9

    move v9, v8

    .end local v8    # "idx":I
    .restart local v9    # "idx":I
    goto :goto_16

    .line 101
    :pswitch_45
    if-lez v9, :cond_2d

    add-int/lit8 v11, v9, -0x1

    aget-byte v11, v3, v11

    const/16 v12, 0xd

    if-ne v11, v12, :cond_2d

    .line 102
    const/4 v6, 0x1

    goto :goto_2d

    .line 120
    :cond_51
    const/4 v11, 0x5

    if-lt v9, v11, :cond_5c

    add-int/lit8 v11, v9, -0x3

    aget-byte v11, v3, v11

    const/16 v12, 0x7d

    if-eq v11, v12, :cond_60

    .line 163
    :cond_5c
    :goto_5c
    invoke-virtual {p1, v9}, Lcom/sun/mail/iap/ByteArray;->setCount(I)V

    .line 164
    return-object p1

    .line 125
    :cond_60
    add-int/lit8 v7, v9, -0x4

    .local v7, "i":I
    :goto_62
    if-gez v7, :cond_94

    .line 129
    :cond_64
    if-ltz v7, :cond_5c

    .line 132
    const/4 v4, 0x0

    .line 135
    .local v4, "count":I
    add-int/lit8 v11, v7, 0x1

    add-int/lit8 v12, v9, -0x3

    :try_start_6b
    invoke-static {v3, v11, v12}, Lcom/sun/mail/util/ASCIIUtility;->parseInt([BII)I
    :try_end_6e
    .catch Ljava/lang/NumberFormatException; {:try_start_6b .. :try_end_6e} :catch_9d

    move-result v4

    .line 141
    if-lez v4, :cond_a5

    .line 142
    array-length v11, v3

    sub-int v1, v11, v9

    .line 143
    .local v1, "avail":I
    add-int/lit8 v11, v4, 0x10

    if-le v11, v1, :cond_a3

    .line 145
    const/16 v11, 0x100

    add-int/lit8 v12, v4, 0x10

    sub-int/2addr v12, v1

    if-le v11, v12, :cond_9f

    .line 146
    const/16 v11, 0x100

    .line 145
    :goto_81
    invoke-virtual {p1, v11}, Lcom/sun/mail/iap/ByteArray;->grow(I)V

    .line 147
    invoke-virtual {p1}, Lcom/sun/mail/iap/ByteArray;->getBytes()[B

    move-result-object v3

    move v8, v9

    .line 155
    .end local v9    # "idx":I
    .restart local v8    # "idx":I
    :goto_89
    if-lez v4, :cond_13

    .line 156
    iget-object v11, p0, Lcom/sun/mail/iap/ResponseInputStream;->bin:Ljava/io/BufferedInputStream;

    invoke-virtual {v11, v3, v8, v4}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v0

    .line 157
    .local v0, "actual":I
    sub-int/2addr v4, v0

    .line 158
    add-int/2addr v8, v0

    goto :goto_89

    .line 126
    .end local v0    # "actual":I
    .end local v1    # "avail":I
    .end local v4    # "count":I
    .end local v8    # "idx":I
    .restart local v9    # "idx":I
    :cond_94
    aget-byte v11, v3, v7

    const/16 v12, 0x7b

    if-eq v11, v12, :cond_64

    .line 125
    add-int/lit8 v7, v7, -0x1

    goto :goto_62

    .line 136
    .restart local v4    # "count":I
    :catch_9d
    move-exception v5

    .line 137
    .local v5, "e":Ljava/lang/NumberFormatException;
    goto :goto_5c

    .line 146
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "avail":I
    :cond_9f
    add-int/lit8 v11, v4, 0x10

    sub-int/2addr v11, v1

    goto :goto_81

    :cond_a3
    move v8, v9

    .end local v9    # "idx":I
    .restart local v8    # "idx":I
    goto :goto_89

    .end local v1    # "avail":I
    .end local v8    # "idx":I
    .restart local v9    # "idx":I
    :cond_a5
    move v8, v9

    .end local v9    # "idx":I
    .restart local v8    # "idx":I
    goto/16 :goto_13

    .line 99
    :pswitch_data_a8
    .packed-switch 0xa
        :pswitch_45
    .end packed-switch
.end method
