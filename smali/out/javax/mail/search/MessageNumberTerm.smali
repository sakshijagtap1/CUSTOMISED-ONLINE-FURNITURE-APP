.class public final Ljavax/mail/search/MessageNumberTerm;
.super Ljavax/mail/search/IntegerComparisonTerm;
.source "MessageNumberTerm.java"


# static fields
.field private static final serialVersionUID:J = -0x4aa8453089517f44L


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "number"    # I

    .prologue
    .line 61
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Ljavax/mail/search/IntegerComparisonTerm;-><init>(II)V

    .line 62
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 86
    instance-of v0, p1, Ljavax/mail/search/MessageNumberTerm;

    if-nez v0, :cond_6

    .line 87
    const/4 v0, 0x0

    .line 88
    :goto_5
    return v0

    :cond_6
    invoke-super {p0, p1}, Ljavax/mail/search/IntegerComparisonTerm;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public match(Ljavax/mail/Message;)Z
    .registers 5
    .param p1, "msg"    # Ljavax/mail/Message;

    .prologue
    .line 74
    :try_start_0
    invoke-virtual {p1}, Ljavax/mail/Message;->getMessageNumber()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_9

    move-result v1

    .line 79
    .local v1, "msgno":I
    invoke-super {p0, v1}, Ljavax/mail/search/IntegerComparisonTerm;->match(I)Z

    move-result v2

    .end local v1    # "msgno":I
    :goto_8
    return v2

    .line 75
    :catch_9
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_8
.end method
