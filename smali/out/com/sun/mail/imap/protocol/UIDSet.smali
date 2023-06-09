.class public Lcom/sun/mail/imap/protocol/UIDSet;
.super Ljava/lang/Object;
.source "UIDSet.java"


# instance fields
.field public end:J

.field public start:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JJ)V
    .registers 6
    .param p1, "start"    # J
    .param p3, "end"    # J

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-wide p1, p0, Lcom/sun/mail/imap/protocol/UIDSet;->start:J

    .line 57
    iput-wide p3, p0, Lcom/sun/mail/imap/protocol/UIDSet;->end:J

    .line 58
    return-void
.end method

.method public static createUIDSets([J)[Lcom/sun/mail/imap/protocol/UIDSet;
    .registers 13
    .param p0, "msgs"    # [J

    .prologue
    .line 71
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 74
    .local v4, "v":Ljava/util/Vector;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    array-length v5, p0

    if-lt v0, v5, :cond_13

    .line 87
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v5

    new-array v3, v5, [Lcom/sun/mail/imap/protocol/UIDSet;

    .line 88
    .local v3, "msgsets":[Lcom/sun/mail/imap/protocol/UIDSet;
    invoke-virtual {v4, v3}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 89
    return-object v3

    .line 75
    .end local v3    # "msgsets":[Lcom/sun/mail/imap/protocol/UIDSet;
    :cond_13
    new-instance v2, Lcom/sun/mail/imap/protocol/UIDSet;

    invoke-direct {v2}, Lcom/sun/mail/imap/protocol/UIDSet;-><init>()V

    .line 76
    .local v2, "ms":Lcom/sun/mail/imap/protocol/UIDSet;
    aget-wide v6, p0, v0

    iput-wide v6, v2, Lcom/sun/mail/imap/protocol/UIDSet;->start:J

    .line 79
    add-int/lit8 v1, v0, 0x1

    .local v1, "j":I
    :goto_1e
    array-length v5, p0

    if-lt v1, v5, :cond_2f

    .line 83
    :cond_21
    add-int/lit8 v5, v1, -0x1

    aget-wide v6, p0, v5

    iput-wide v6, v2, Lcom/sun/mail/imap/protocol/UIDSet;->end:J

    .line 84
    invoke-virtual {v4, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 85
    add-int/lit8 v0, v1, -0x1

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 80
    :cond_2f
    aget-wide v6, p0, v1

    add-int/lit8 v5, v1, -0x1

    aget-wide v8, p0, v5

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    cmp-long v5, v6, v8

    if-nez v5, :cond_21

    .line 79
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e
.end method

.method public static size([Lcom/sun/mail/imap/protocol/UIDSet;)J
    .registers 7
    .param p0, "msgsets"    # [Lcom/sun/mail/imap/protocol/UIDSet;

    .prologue
    .line 127
    const-wide/16 v0, 0x0

    .line 129
    .local v0, "count":J
    if-nez p0, :cond_7

    .line 130
    const-wide/16 v4, 0x0

    .line 135
    :goto_6
    return-wide v4

    .line 132
    :cond_7
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    array-length v3, p0

    if-lt v2, v3, :cond_d

    move-wide v4, v0

    .line 135
    goto :goto_6

    .line 133
    :cond_d
    aget-object v3, p0, v2

    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/UIDSet;->size()J

    move-result-wide v4

    add-long/2addr v0, v4

    .line 132
    add-int/lit8 v2, v2, 0x1

    goto :goto_8
.end method

.method public static toString([Lcom/sun/mail/imap/protocol/UIDSet;)Ljava/lang/String;
    .registers 10
    .param p0, "msgsets"    # [Lcom/sun/mail/imap/protocol/UIDSet;

    .prologue
    .line 96
    if-eqz p0, :cond_5

    array-length v5, p0

    if-nez v5, :cond_7

    .line 97
    :cond_5
    const/4 v5, 0x0

    .line 119
    :goto_6
    return-object v5

    .line 99
    :cond_7
    const/4 v2, 0x0

    .line 100
    .local v2, "i":I
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 101
    .local v3, "s":Ljava/lang/StringBuffer;
    array-length v4, p0

    .line 105
    .local v4, "size":I
    :goto_e
    aget-object v5, p0, v2

    iget-wide v6, v5, Lcom/sun/mail/imap/protocol/UIDSet;->start:J

    .line 106
    .local v6, "start":J
    aget-object v5, p0, v2

    iget-wide v0, v5, Lcom/sun/mail/imap/protocol/UIDSet;->end:J

    .line 108
    .local v0, "end":J
    cmp-long v5, v0, v6

    if-lez v5, :cond_30

    .line 109
    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v5

    const/16 v8, 0x3a

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 113
    :goto_27
    add-int/lit8 v2, v2, 0x1

    .line 114
    if-lt v2, v4, :cond_34

    .line 119
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    .line 111
    :cond_30
    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    goto :goto_27

    .line 117
    :cond_34
    const/16 v5, 0x2c

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_e
.end method


# virtual methods
.method public size()J
    .registers 5

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/sun/mail/imap/protocol/UIDSet;->end:J

    iget-wide v2, p0, Lcom/sun/mail/imap/protocol/UIDSet;->start:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    return-wide v0
.end method
