.class public final Ljavax/mail/search/SentDateTerm;
.super Ljavax/mail/search/DateTerm;
.source "SentDateTerm.java"


# static fields
.field private static final serialVersionUID:J = 0x4e60db46f5385c7fL


# direct methods
.method public constructor <init>(ILjava/util/Date;)V
    .registers 3
    .param p1, "comparison"    # I
    .param p2, "date"    # Ljava/util/Date;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Ljavax/mail/search/DateTerm;-><init>(ILjava/util/Date;)V

    .line 64
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 92
    instance-of v0, p1, Ljavax/mail/search/SentDateTerm;

    if-nez v0, :cond_6

    .line 93
    const/4 v0, 0x0

    .line 94
    :goto_5
    return v0

    :cond_6
    invoke-super {p0, p1}, Ljavax/mail/search/DateTerm;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public match(Ljavax/mail/Message;)Z
    .registers 5
    .param p1, "msg"    # Ljavax/mail/Message;

    .prologue
    const/4 v2, 0x0

    .line 77
    :try_start_1
    invoke-virtual {p1}, Ljavax/mail/Message;->getSentDate()Ljava/util/Date;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_8

    move-result-object v0

    .line 82
    .local v0, "d":Ljava/util/Date;
    if-nez v0, :cond_a

    .line 85
    .end local v0    # "d":Ljava/util/Date;
    :goto_7
    return v2

    .line 78
    :catch_8
    move-exception v1

    .line 79
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_7

    .line 85
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "d":Ljava/util/Date;
    :cond_a
    invoke-super {p0, v0}, Ljavax/mail/search/DateTerm;->match(Ljava/util/Date;)Z

    move-result v2

    goto :goto_7
.end method
