.class public Lcom/sun/mail/imap/protocol/IMAPResponse;
.super Lcom/sun/mail/iap/Response;
.source "IMAPResponse.java"


# instance fields
.field private key:Ljava/lang/String;

.field private number:I


# direct methods
.method public constructor <init>(Lcom/sun/mail/iap/Protocol;)V
    .registers 3
    .param p1, "c"    # Lcom/sun/mail/iap/Protocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/sun/mail/iap/Response;-><init>(Lcom/sun/mail/iap/Protocol;)V

    .line 64
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->isUnTagged()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->isOK()Z

    move-result v0

    if-nez v0, :cond_35

    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->isNO()Z

    move-result v0

    if-nez v0, :cond_35

    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->isBAD()Z

    move-result v0

    if-nez v0, :cond_35

    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->isBYE()Z

    move-result v0

    if-nez v0, :cond_35

    .line 65
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtom()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->key:Ljava/lang/String;

    .line 69
    :try_start_27
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->key:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->number:I

    .line 70
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtom()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->key:Ljava/lang/String;
    :try_end_35
    .catch Ljava/lang/NumberFormatException; {:try_start_27 .. :try_end_35} :catch_36

    .line 73
    :cond_35
    :goto_35
    return-void

    .line 71
    :catch_36
    move-exception v0

    goto :goto_35
.end method

.method public constructor <init>(Lcom/sun/mail/imap/protocol/IMAPResponse;)V
    .registers 3
    .param p1, "r"    # Lcom/sun/mail/imap/protocol/IMAPResponse;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/sun/mail/iap/Response;-><init>(Lcom/sun/mail/iap/Response;)V

    .line 80
    iget-object v0, p1, Lcom/sun/mail/imap/protocol/IMAPResponse;->key:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->key:Ljava/lang/String;

    .line 81
    iget v0, p1, Lcom/sun/mail/imap/protocol/IMAPResponse;->number:I

    iput v0, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->number:I

    .line 82
    return-void
.end method

.method public static readResponse(Lcom/sun/mail/iap/Protocol;)Lcom/sun/mail/imap/protocol/IMAPResponse;
    .registers 4
    .param p0, "p"    # Lcom/sun/mail/iap/Protocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 135
    new-instance v0, Lcom/sun/mail/imap/protocol/IMAPResponse;

    invoke-direct {v0, p0}, Lcom/sun/mail/imap/protocol/IMAPResponse;-><init>(Lcom/sun/mail/iap/Protocol;)V

    .line 136
    .local v0, "r":Lcom/sun/mail/imap/protocol/IMAPResponse;
    const-string v2, "FETCH"

    invoke-virtual {v0, v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 137
    new-instance v1, Lcom/sun/mail/imap/protocol/FetchResponse;

    invoke-direct {v1, v0}, Lcom/sun/mail/imap/protocol/FetchResponse;-><init>(Lcom/sun/mail/imap/protocol/IMAPResponse;)V

    .end local v0    # "r":Lcom/sun/mail/imap/protocol/IMAPResponse;
    .local v1, "r":Lcom/sun/mail/imap/protocol/IMAPResponse;
    move-object v0, v1

    .line 138
    .end local v1    # "r":Lcom/sun/mail/imap/protocol/IMAPResponse;
    .restart local v0    # "r":Lcom/sun/mail/imap/protocol/IMAPResponse;
    :cond_13
    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()I
    .registers 2

    .prologue
    .line 130
    iget v0, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->number:I

    return v0
.end method

.method public keyEquals(Ljava/lang/String;)Z
    .registers 3
    .param p1, "k"    # Ljava/lang/String;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->key:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->key:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 124
    const/4 v0, 0x1

    .line 126
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public readSimpleList()[Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 91
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->skipSpaces()V

    .line 93
    iget-object v4, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->buffer:[B

    iget v5, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->index:I

    aget-byte v4, v4, v5

    const/16 v5, 0x28

    if-eq v4, v5, :cond_f

    .line 115
    :cond_e
    :goto_e
    return-object v0

    .line 95
    :cond_f
    iget v4, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->index:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->index:I

    .line 97
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 99
    .local v3, "v":Ljava/util/Vector;
    iget v2, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->index:I

    .local v2, "start":I
    :goto_1c
    iget-object v4, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->buffer:[B

    iget v5, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->index:I

    aget-byte v4, v4, v5

    const/16 v5, 0x29

    if-ne v4, v5, :cond_47

    .line 105
    iget v4, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->index:I

    if-le v4, v2, :cond_35

    .line 106
    iget-object v4, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->buffer:[B

    iget v5, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->index:I

    invoke-static {v4, v2, v5}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 107
    :cond_35
    iget v4, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->index:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->index:I

    .line 109
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v1

    .line 110
    .local v1, "size":I
    if-lez v1, :cond_e

    .line 111
    new-array v0, v1, [Ljava/lang/String;

    .line 112
    .local v0, "s":[Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    goto :goto_e

    .line 100
    .end local v0    # "s":[Ljava/lang/String;
    .end local v1    # "size":I
    :cond_47
    iget-object v4, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->buffer:[B

    iget v5, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->index:I

    aget-byte v4, v4, v5

    const/16 v5, 0x20

    if-ne v4, v5, :cond_60

    .line 101
    iget-object v4, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->buffer:[B

    iget v5, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->index:I

    invoke-static {v4, v2, v5}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 102
    iget v4, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->index:I

    add-int/lit8 v2, v4, 0x1

    .line 99
    :cond_60
    iget v4, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->index:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->index:I

    goto :goto_1c
.end method
