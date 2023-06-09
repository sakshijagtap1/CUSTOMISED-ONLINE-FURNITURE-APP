.class public final Ljavax/mail/search/SubjectTerm;
.super Ljavax/mail/search/StringTerm;
.source "SubjectTerm.java"


# static fields
.field private static final serialVersionUID:J = 0x67d3df04e1e99fb8L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Ljavax/mail/search/StringTerm;-><init>(Ljava/lang/String;)V

    .line 64
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 92
    instance-of v0, p1, Ljavax/mail/search/SubjectTerm;

    if-nez v0, :cond_6

    .line 93
    const/4 v0, 0x0

    .line 94
    :goto_5
    return v0

    :cond_6
    invoke-super {p0, p1}, Ljavax/mail/search/StringTerm;->equals(Ljava/lang/Object;)Z

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
    invoke-virtual {p1}, Ljavax/mail/Message;->getSubject()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_8

    move-result-object v1

    .line 82
    .local v1, "subj":Ljava/lang/String;
    if-nez v1, :cond_a

    .line 85
    .end local v1    # "subj":Ljava/lang/String;
    :goto_7
    return v2

    .line 78
    :catch_8
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_7

    .line 85
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "subj":Ljava/lang/String;
    :cond_a
    invoke-super {p0, v1}, Ljavax/mail/search/StringTerm;->match(Ljava/lang/String;)Z

    move-result v2

    goto :goto_7
.end method
