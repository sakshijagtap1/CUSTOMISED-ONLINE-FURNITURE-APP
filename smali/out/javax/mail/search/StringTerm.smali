.class public abstract Ljavax/mail/search/StringTerm;
.super Ljavax/mail/search/SearchTerm;
.source "StringTerm.java"


# static fields
.field private static final serialVersionUID:J = 0x11ae4e90f062d98dL


# instance fields
.field protected ignoreCase:Z

.field protected pattern:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-direct {p0}, Ljavax/mail/search/SearchTerm;-><init>()V

    .line 69
    iput-object p1, p0, Ljavax/mail/search/StringTerm;->pattern:Ljava/lang/String;

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/mail/search/StringTerm;->ignoreCase:Z

    .line 71
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "ignoreCase"    # Z

    .prologue
    .line 73
    invoke-direct {p0}, Ljavax/mail/search/SearchTerm;-><init>()V

    .line 74
    iput-object p1, p0, Ljavax/mail/search/StringTerm;->pattern:Ljava/lang/String;

    .line 75
    iput-boolean p2, p0, Ljavax/mail/search/StringTerm;->ignoreCase:Z

    .line 76
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 106
    instance-of v3, p1, Ljavax/mail/search/StringTerm;

    if-nez v3, :cond_7

    .line 114
    :cond_6
    :goto_6
    return v1

    :cond_7
    move-object v0, p1

    .line 108
    check-cast v0, Ljavax/mail/search/StringTerm;

    .line 109
    .local v0, "st":Ljavax/mail/search/StringTerm;
    iget-boolean v3, p0, Ljavax/mail/search/StringTerm;->ignoreCase:Z

    if-eqz v3, :cond_20

    .line 110
    iget-object v3, v0, Ljavax/mail/search/StringTerm;->pattern:Ljava/lang/String;

    iget-object v4, p0, Ljavax/mail/search/StringTerm;->pattern:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 111
    iget-boolean v3, v0, Ljavax/mail/search/StringTerm;->ignoreCase:Z

    iget-boolean v4, p0, Ljavax/mail/search/StringTerm;->ignoreCase:Z

    if-ne v3, v4, :cond_6

    move v1, v2

    goto :goto_6

    .line 113
    :cond_20
    iget-object v3, v0, Ljavax/mail/search/StringTerm;->pattern:Ljava/lang/String;

    iget-object v4, p0, Ljavax/mail/search/StringTerm;->pattern:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 114
    iget-boolean v3, v0, Ljavax/mail/search/StringTerm;->ignoreCase:Z

    iget-boolean v4, p0, Ljavax/mail/search/StringTerm;->ignoreCase:Z

    if-ne v3, v4, :cond_6

    move v1, v2

    goto :goto_6
.end method

.method public getIgnoreCase()Z
    .registers 2

    .prologue
    .line 89
    iget-boolean v0, p0, Ljavax/mail/search/StringTerm;->ignoreCase:Z

    return v0
.end method

.method public getPattern()Ljava/lang/String;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Ljavax/mail/search/StringTerm;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 121
    iget-boolean v0, p0, Ljavax/mail/search/StringTerm;->ignoreCase:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Ljavax/mail/search/StringTerm;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Ljavax/mail/search/StringTerm;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    goto :goto_a
.end method

.method protected match(Ljava/lang/String;)Z
    .registers 9
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 93
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Ljavax/mail/search/StringTerm;->pattern:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v6, v0, v1

    .line 94
    .local v6, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-le v2, v6, :cond_11

    .line 99
    :goto_10
    return v4

    .line 95
    :cond_11
    iget-boolean v1, p0, Ljavax/mail/search/StringTerm;->ignoreCase:Z

    .line 96
    iget-object v3, p0, Ljavax/mail/search/StringTerm;->pattern:Ljava/lang/String;

    iget-object v0, p0, Ljavax/mail/search/StringTerm;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p1

    .line 95
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 97
    const/4 v4, 0x1

    goto :goto_10

    .line 94
    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_e
.end method
