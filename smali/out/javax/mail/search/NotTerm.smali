.class public final Ljavax/mail/search/NotTerm;
.super Ljavax/mail/search/SearchTerm;
.source "NotTerm.java"


# static fields
.field private static final serialVersionUID:J = 0x63420cc8aadc1008L


# instance fields
.field protected term:Ljavax/mail/search/SearchTerm;


# direct methods
.method public constructor <init>(Ljavax/mail/search/SearchTerm;)V
    .registers 2
    .param p1, "t"    # Ljavax/mail/search/SearchTerm;

    .prologue
    .line 61
    invoke-direct {p0}, Ljavax/mail/search/SearchTerm;-><init>()V

    .line 62
    iput-object p1, p0, Ljavax/mail/search/NotTerm;->term:Ljavax/mail/search/SearchTerm;

    .line 63
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 81
    instance-of v1, p1, Ljavax/mail/search/NotTerm;

    if-nez v1, :cond_6

    .line 82
    const/4 v1, 0x0

    .line 84
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 83
    check-cast v0, Ljavax/mail/search/NotTerm;

    .line 84
    .local v0, "nt":Ljavax/mail/search/NotTerm;
    iget-object v1, v0, Ljavax/mail/search/NotTerm;->term:Ljavax/mail/search/SearchTerm;

    iget-object v2, p0, Ljavax/mail/search/NotTerm;->term:Ljavax/mail/search/SearchTerm;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_5
.end method

.method public getTerm()Ljavax/mail/search/SearchTerm;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Ljavax/mail/search/NotTerm;->term:Ljavax/mail/search/SearchTerm;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Ljavax/mail/search/NotTerm;->term:Ljavax/mail/search/SearchTerm;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public match(Ljavax/mail/Message;)Z
    .registers 3
    .param p1, "msg"    # Ljavax/mail/Message;

    .prologue
    .line 74
    iget-object v0, p0, Ljavax/mail/search/NotTerm;->term:Ljavax/mail/search/SearchTerm;

    invoke-virtual {v0, p1}, Ljavax/mail/search/SearchTerm;->match(Ljavax/mail/Message;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method
