.class public Lcom/sun/mail/imap/protocol/MailboxInfo;
.super Ljava/lang/Object;
.source "MailboxInfo.java"


# instance fields
.field public availableFlags:Ljavax/mail/Flags;

.field public first:I

.field public mode:I

.field public permanentFlags:Ljavax/mail/Flags;

.field public recent:I

.field public total:I

.field public uidnext:J

.field public uidvalidity:J


# direct methods
.method public constructor <init>([Lcom/sun/mail/iap/Response;)V
    .registers 12
    .param p1, "r"    # [Lcom/sun/mail/iap/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ParsingException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, -0x1

    const/4 v4, -0x1

    const/4 v6, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object v6, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->availableFlags:Ljavax/mail/Flags;

    .line 55
    iput-object v6, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->permanentFlags:Ljavax/mail/Flags;

    .line 56
    iput v4, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->total:I

    .line 57
    iput v4, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->recent:I

    .line 58
    iput v4, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->first:I

    .line 59
    iput-wide v8, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->uidvalidity:J

    .line 60
    iput-wide v8, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->uidnext:J

    .line 64
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_16
    array-length v4, p1

    if-lt v1, v4, :cond_2b

    .line 121
    iget-object v4, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->permanentFlags:Ljavax/mail/Flags;

    if-nez v4, :cond_2a

    .line 122
    iget-object v4, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->availableFlags:Ljavax/mail/Flags;

    if-eqz v4, :cond_d8

    .line 123
    new-instance v4, Ljavax/mail/Flags;

    iget-object v5, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->availableFlags:Ljavax/mail/Flags;

    invoke-direct {v4, v5}, Ljavax/mail/Flags;-><init>(Ljavax/mail/Flags;)V

    iput-object v4, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->permanentFlags:Ljavax/mail/Flags;

    .line 127
    :cond_2a
    :goto_2a
    return-void

    .line 65
    :cond_2b
    aget-object v4, p1, v1

    if-eqz v4, :cond_35

    aget-object v4, p1, v1

    instance-of v4, v4, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-nez v4, :cond_38

    .line 64
    :cond_35
    :goto_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 68
    :cond_38
    aget-object v2, p1, v1

    check-cast v2, Lcom/sun/mail/imap/protocol/IMAPResponse;

    .line 70
    .local v2, "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    const-string v4, "EXISTS"

    invoke-virtual {v2, v4}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 71
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->getNumber()I

    move-result v4

    iput v4, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->total:I

    .line 72
    aput-object v6, p1, v1

    goto :goto_35

    .line 74
    :cond_4d
    const-string v4, "RECENT"

    invoke-virtual {v2, v4}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 75
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->getNumber()I

    move-result v4

    iput v4, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->recent:I

    .line 76
    aput-object v6, p1, v1

    goto :goto_35

    .line 78
    :cond_5e
    const-string v4, "FLAGS"

    invoke-virtual {v2, v4}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_70

    .line 79
    new-instance v4, Lcom/sun/mail/imap/protocol/FLAGS;

    invoke-direct {v4, v2}, Lcom/sun/mail/imap/protocol/FLAGS;-><init>(Lcom/sun/mail/imap/protocol/IMAPResponse;)V

    iput-object v4, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->availableFlags:Ljavax/mail/Flags;

    .line 80
    aput-object v6, p1, v1

    goto :goto_35

    .line 82
    :cond_70
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->isUnTagged()Z

    move-result v4

    if-eqz v4, :cond_35

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->isOK()Z

    move-result v4

    if-eqz v4, :cond_35

    .line 89
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->skipSpaces()V

    .line 91
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readByte()B

    move-result v4

    const/16 v5, 0x5b

    if-eq v4, v5, :cond_8b

    .line 92
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->reset()V

    goto :goto_35

    .line 96
    :cond_8b
    const/4 v0, 0x1

    .line 97
    .local v0, "handled":Z
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtom()Ljava/lang/String;

    move-result-object v3

    .line 98
    .local v3, "s":Ljava/lang/String;
    const-string v4, "UNSEEN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a3

    .line 99
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readNumber()I

    move-result v4

    iput v4, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->first:I

    .line 109
    :goto_9e
    if-eqz v0, :cond_d3

    .line 110
    aput-object v6, p1, v1

    goto :goto_35

    .line 100
    :cond_a3
    const-string v4, "UIDVALIDITY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b2

    .line 101
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->uidvalidity:J

    goto :goto_9e

    .line 102
    :cond_b2
    const-string v4, "PERMANENTFLAGS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c2

    .line 103
    new-instance v4, Lcom/sun/mail/imap/protocol/FLAGS;

    invoke-direct {v4, v2}, Lcom/sun/mail/imap/protocol/FLAGS;-><init>(Lcom/sun/mail/imap/protocol/IMAPResponse;)V

    iput-object v4, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->permanentFlags:Ljavax/mail/Flags;

    goto :goto_9e

    .line 104
    :cond_c2
    const-string v4, "UIDNEXT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d1

    .line 105
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->uidnext:J

    goto :goto_9e

    .line 107
    :cond_d1
    const/4 v0, 0x0

    goto :goto_9e

    .line 112
    :cond_d3
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->reset()V

    goto/16 :goto_35

    .line 125
    .end local v0    # "handled":Z
    .end local v2    # "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    .end local v3    # "s":Ljava/lang/String;
    :cond_d8
    new-instance v4, Ljavax/mail/Flags;

    invoke-direct {v4}, Ljavax/mail/Flags;-><init>()V

    iput-object v4, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->permanentFlags:Ljavax/mail/Flags;

    goto/16 :goto_2a
.end method
