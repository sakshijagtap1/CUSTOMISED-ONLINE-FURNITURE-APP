.class public Lcom/sun/mail/iap/Argument;
.super Ljava/lang/Object;
.source "Argument.java"


# instance fields
.field protected items:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    .line 60
    return-void
.end method

.method private astring([BLcom/sun/mail/iap/Protocol;)V
    .registers 13
    .param p1, "bytes"    # [B
    .param p2, "protocol"    # Lcom/sun/mail/iap/Protocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x5c

    const/16 v8, 0x22

    .line 194
    invoke-virtual {p2}, Lcom/sun/mail/iap/Protocol;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    check-cast v4, Ljava/io/DataOutputStream;

    .line 195
    .local v4, "os":Ljava/io/DataOutputStream;
    array-length v3, p1

    .line 198
    .local v3, "len":I
    const/16 v6, 0x400

    if-le v3, v6, :cond_13

    .line 199
    invoke-direct {p0, p1, p2}, Lcom/sun/mail/iap/Argument;->literal([BLcom/sun/mail/iap/Protocol;)V

    .line 240
    :cond_12
    :goto_12
    return-void

    .line 204
    :cond_13
    if-nez v3, :cond_2a

    const/4 v5, 0x1

    .line 205
    .local v5, "quote":Z
    :goto_16
    const/4 v1, 0x0

    .line 208
    .local v1, "escape":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_18
    if-lt v2, v3, :cond_2c

    .line 223
    if-eqz v5, :cond_1f

    .line 224
    invoke-virtual {v4, v8}, Ljava/io/DataOutputStream;->write(I)V

    .line 226
    :cond_1f
    if-eqz v1, :cond_78

    .line 228
    const/4 v2, 0x0

    :goto_22
    if-lt v2, v3, :cond_69

    .line 238
    :goto_24
    if-eqz v5, :cond_12

    .line 239
    invoke-virtual {v4, v8}, Ljava/io/DataOutputStream;->write(I)V

    goto :goto_12

    .line 204
    .end local v1    # "escape":Z
    .end local v2    # "i":I
    .end local v5    # "quote":Z
    :cond_2a
    const/4 v5, 0x0

    goto :goto_16

    .line 209
    .restart local v1    # "escape":Z
    .restart local v2    # "i":I
    .restart local v5    # "quote":Z
    :cond_2c
    aget-byte v0, p1, v2

    .line 210
    .local v0, "b":B
    if-eqz v0, :cond_3e

    const/16 v6, 0xd

    if-eq v0, v6, :cond_3e

    const/16 v6, 0xa

    if-eq v0, v6, :cond_3e

    and-int/lit16 v6, v0, 0xff

    const/16 v7, 0x7f

    if-le v6, v7, :cond_42

    .line 212
    :cond_3e
    invoke-direct {p0, p1, p2}, Lcom/sun/mail/iap/Argument;->literal([BLcom/sun/mail/iap/Protocol;)V

    goto :goto_12

    .line 215
    :cond_42
    const/16 v6, 0x2a

    if-eq v0, v6, :cond_60

    const/16 v6, 0x25

    if-eq v0, v6, :cond_60

    const/16 v6, 0x28

    if-eq v0, v6, :cond_60

    const/16 v6, 0x29

    if-eq v0, v6, :cond_60

    const/16 v6, 0x7b

    if-eq v0, v6, :cond_60

    .line 216
    if-eq v0, v8, :cond_60

    if-eq v0, v9, :cond_60

    and-int/lit16 v6, v0, 0xff

    const/16 v7, 0x20

    if-gt v6, v7, :cond_66

    .line 217
    :cond_60
    const/4 v5, 0x1

    .line 218
    if-eq v0, v8, :cond_65

    if-ne v0, v9, :cond_66

    .line 219
    :cond_65
    const/4 v1, 0x1

    .line 208
    :cond_66
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 229
    .end local v0    # "b":B
    :cond_69
    aget-byte v0, p1, v2

    .line 230
    .restart local v0    # "b":B
    if-eq v0, v8, :cond_6f

    if-ne v0, v9, :cond_72

    .line 231
    :cond_6f
    invoke-virtual {v4, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 232
    :cond_72
    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 228
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 235
    .end local v0    # "b":B
    :cond_78
    invoke-virtual {v4, p1}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_24
.end method

.method private literal(Lcom/sun/mail/iap/Literal;Lcom/sun/mail/iap/Protocol;)V
    .registers 4
    .param p1, "b"    # Lcom/sun/mail/iap/Literal;
    .param p2, "protocol"    # Lcom/sun/mail/iap/Protocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 263
    invoke-interface {p1}, Lcom/sun/mail/iap/Literal;->size()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/sun/mail/iap/Argument;->startLiteral(Lcom/sun/mail/iap/Protocol;I)Ljava/io/OutputStream;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sun/mail/iap/Literal;->writeTo(Ljava/io/OutputStream;)V

    .line 264
    return-void
.end method

.method private literal(Ljava/io/ByteArrayOutputStream;Lcom/sun/mail/iap/Protocol;)V
    .registers 4
    .param p1, "b"    # Ljava/io/ByteArrayOutputStream;
    .param p2, "protocol"    # Lcom/sun/mail/iap/Protocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 255
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/sun/mail/iap/Argument;->startLiteral(Lcom/sun/mail/iap/Protocol;I)Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 256
    return-void
.end method

.method private literal([BLcom/sun/mail/iap/Protocol;)V
    .registers 4
    .param p1, "b"    # [B
    .param p2, "protocol"    # Lcom/sun/mail/iap/Protocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 247
    array-length v0, p1

    invoke-direct {p0, p2, v0}, Lcom/sun/mail/iap/Argument;->startLiteral(Lcom/sun/mail/iap/Protocol;I)Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 248
    return-void
.end method

.method private startLiteral(Lcom/sun/mail/iap/Protocol;I)Ljava/io/OutputStream;
    .registers 7
    .param p1, "protocol"    # Lcom/sun/mail/iap/Protocol;
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 268
    invoke-virtual {p1}, Lcom/sun/mail/iap/Protocol;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    check-cast v1, Ljava/io/DataOutputStream;

    .line 269
    .local v1, "os":Ljava/io/DataOutputStream;
    invoke-virtual {p1}, Lcom/sun/mail/iap/Protocol;->supportsNonSyncLiterals()Z

    move-result v0

    .line 271
    .local v0, "nonSync":Z
    const/16 v3, 0x7b

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 272
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 273
    if-eqz v0, :cond_2d

    .line 274
    const-string v3, "+}\r\n"

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 277
    :goto_1d
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 281
    if-nez v0, :cond_2c

    .line 283
    :cond_22
    invoke-virtual {p1}, Lcom/sun/mail/iap/Protocol;->readResponse()Lcom/sun/mail/iap/Response;

    move-result-object v2

    .line 284
    .local v2, "r":Lcom/sun/mail/iap/Response;
    invoke-virtual {v2}, Lcom/sun/mail/iap/Response;->isContinuation()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 292
    .end local v2    # "r":Lcom/sun/mail/iap/Response;
    :cond_2c
    return-object v1

    .line 276
    :cond_2d
    const-string v3, "}\r\n"

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    goto :goto_1d

    .line 286
    .restart local v2    # "r":Lcom/sun/mail/iap/Response;
    :cond_33
    invoke-virtual {v2}, Lcom/sun/mail/iap/Response;->isTagged()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 287
    new-instance v3, Lcom/sun/mail/iap/LiteralException;

    invoke-direct {v3, v2}, Lcom/sun/mail/iap/LiteralException;-><init>(Lcom/sun/mail/iap/Response;)V

    throw v3
.end method


# virtual methods
.method public append(Lcom/sun/mail/iap/Argument;)V
    .registers 6
    .param p1, "arg"    # Lcom/sun/mail/iap/Argument;

    .prologue
    .line 68
    iget-object v1, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    iget-object v2, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    iget-object v3, p1, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/Vector;->ensureCapacity(I)V

    .line 69
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13
    iget-object v1, p1, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_1c

    .line 71
    return-void

    .line 70
    :cond_1c
    iget-object v1, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    iget-object v2, p1, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_13
.end method

.method public write(Lcom/sun/mail/iap/Protocol;)V
    .registers 7
    .param p1, "protocol"    # Lcom/sun/mail/iap/Protocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 161
    iget-object v4, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    if-eqz v4, :cond_14

    iget-object v4, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v3

    .line 162
    .local v3, "size":I
    :goto_a
    invoke-virtual {p1}, Lcom/sun/mail/iap/Protocol;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    check-cast v2, Ljava/io/DataOutputStream;

    .line 164
    .local v2, "os":Ljava/io/DataOutputStream;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    if-lt v0, v3, :cond_16

    .line 187
    return-void

    .line 161
    .end local v0    # "i":I
    .end local v2    # "os":Ljava/io/DataOutputStream;
    .end local v3    # "size":I
    :cond_14
    const/4 v3, 0x0

    goto :goto_a

    .line 165
    .restart local v0    # "i":I
    .restart local v2    # "os":Ljava/io/DataOutputStream;
    .restart local v3    # "size":I
    :cond_16
    if-lez v0, :cond_1d

    .line 166
    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->write(I)V

    .line 168
    :cond_1d
    iget-object v4, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    .line 169
    .local v1, "o":Ljava/lang/Object;
    instance-of v4, v1, Lcom/sun/mail/iap/Atom;

    if-eqz v4, :cond_31

    .line 170
    check-cast v1, Lcom/sun/mail/iap/Atom;

    .end local v1    # "o":Ljava/lang/Object;
    iget-object v4, v1, Lcom/sun/mail/iap/Atom;->string:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 164
    :cond_2e
    :goto_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 171
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_31
    instance-of v4, v1, Ljava/lang/Number;

    if-eqz v4, :cond_3f

    .line 172
    check-cast v1, Ljava/lang/Number;

    .end local v1    # "o":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    goto :goto_2e

    .line 173
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_3f
    instance-of v4, v1, Lcom/sun/mail/iap/AString;

    if-eqz v4, :cond_4b

    .line 174
    check-cast v1, Lcom/sun/mail/iap/AString;

    .end local v1    # "o":Ljava/lang/Object;
    iget-object v4, v1, Lcom/sun/mail/iap/AString;->bytes:[B

    invoke-direct {p0, v4, p1}, Lcom/sun/mail/iap/Argument;->astring([BLcom/sun/mail/iap/Protocol;)V

    goto :goto_2e

    .line 175
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_4b
    instance-of v4, v1, [B

    if-eqz v4, :cond_55

    .line 176
    check-cast v1, [B

    .end local v1    # "o":Ljava/lang/Object;
    invoke-direct {p0, v1, p1}, Lcom/sun/mail/iap/Argument;->literal([BLcom/sun/mail/iap/Protocol;)V

    goto :goto_2e

    .line 177
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_55
    instance-of v4, v1, Ljava/io/ByteArrayOutputStream;

    if-eqz v4, :cond_5f

    .line 178
    check-cast v1, Ljava/io/ByteArrayOutputStream;

    .end local v1    # "o":Ljava/lang/Object;
    invoke-direct {p0, v1, p1}, Lcom/sun/mail/iap/Argument;->literal(Ljava/io/ByteArrayOutputStream;Lcom/sun/mail/iap/Protocol;)V

    goto :goto_2e

    .line 179
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_5f
    instance-of v4, v1, Lcom/sun/mail/iap/Literal;

    if-eqz v4, :cond_69

    .line 180
    check-cast v1, Lcom/sun/mail/iap/Literal;

    .end local v1    # "o":Ljava/lang/Object;
    invoke-direct {p0, v1, p1}, Lcom/sun/mail/iap/Argument;->literal(Lcom/sun/mail/iap/Literal;Lcom/sun/mail/iap/Protocol;)V

    goto :goto_2e

    .line 181
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_69
    instance-of v4, v1, Lcom/sun/mail/iap/Argument;

    if-eqz v4, :cond_2e

    .line 182
    const/16 v4, 0x28

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->write(I)V

    .line 183
    check-cast v1, Lcom/sun/mail/iap/Argument;

    .end local v1    # "o":Ljava/lang/Object;
    invoke-virtual {v1, p1}, Lcom/sun/mail/iap/Argument;->write(Lcom/sun/mail/iap/Protocol;)V

    .line 184
    const/16 v4, 0x29

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->write(I)V

    goto :goto_2e
.end method

.method public writeArgument(Lcom/sun/mail/iap/Argument;)V
    .registers 3
    .param p1, "c"    # Lcom/sun/mail/iap/Argument;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 154
    return-void
.end method

.method public writeAtom(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    new-instance v1, Lcom/sun/mail/iap/Atom;

    invoke-direct {v1, p1}, Lcom/sun/mail/iap/Atom;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 130
    return-void
.end method

.method public writeBytes(Lcom/sun/mail/iap/Literal;)V
    .registers 3
    .param p1, "b"    # Lcom/sun/mail/iap/Literal;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 120
    return-void
.end method

.method public writeBytes(Ljava/io/ByteArrayOutputStream;)V
    .registers 3
    .param p1, "b"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 112
    return-void
.end method

.method public writeBytes([B)V
    .registers 3
    .param p1, "b"    # [B

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 104
    return-void
.end method

.method public writeNumber(I)V
    .registers 4
    .param p1, "i"    # I

    .prologue
    .line 137
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 138
    return-void
.end method

.method public writeNumber(J)V
    .registers 6
    .param p1, "i"    # J

    .prologue
    .line 145
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 146
    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .registers 5
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    new-instance v1, Lcom/sun/mail/iap/AString;

    invoke-static {p1}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sun/mail/iap/AString;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 84
    return-void
.end method

.method public writeString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 92
    if-nez p2, :cond_6

    .line 93
    invoke-virtual {p0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    .line 96
    :goto_5
    return-void

    .line 95
    :cond_6
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    new-instance v1, Lcom/sun/mail/iap/AString;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sun/mail/iap/AString;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_5
.end method
