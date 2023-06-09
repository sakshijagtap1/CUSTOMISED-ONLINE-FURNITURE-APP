.class public final Ljavax/mail/search/RecipientTerm;
.super Ljavax/mail/search/AddressTerm;
.source "RecipientTerm.java"


# static fields
.field private static final serialVersionUID:J = 0x5ae1a88c29bef694L


# instance fields
.field protected type:Ljavax/mail/Message$RecipientType;


# direct methods
.method public constructor <init>(Ljavax/mail/Message$RecipientType;Ljavax/mail/Address;)V
    .registers 3
    .param p1, "type"    # Ljavax/mail/Message$RecipientType;
    .param p2, "address"    # Ljavax/mail/Address;

    .prologue
    .line 70
    invoke-direct {p0, p2}, Ljavax/mail/search/AddressTerm;-><init>(Ljavax/mail/Address;)V

    .line 71
    iput-object p1, p0, Ljavax/mail/search/RecipientTerm;->type:Ljavax/mail/Message$RecipientType;

    .line 72
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 110
    instance-of v2, p1, Ljavax/mail/search/RecipientTerm;

    if-nez v2, :cond_6

    .line 113
    :cond_5
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 112
    check-cast v0, Ljavax/mail/search/RecipientTerm;

    .line 113
    .local v0, "rt":Ljavax/mail/search/RecipientTerm;
    iget-object v2, v0, Ljavax/mail/search/RecipientTerm;->type:Ljavax/mail/Message$RecipientType;

    iget-object v3, p0, Ljavax/mail/search/RecipientTerm;->type:Ljavax/mail/Message$RecipientType;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-super {p0, p1}, Ljavax/mail/search/AddressTerm;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x1

    goto :goto_5
.end method

.method public getRecipientType()Ljavax/mail/Message$RecipientType;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Ljavax/mail/search/RecipientTerm;->type:Ljavax/mail/Message$RecipientType;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 120
    iget-object v0, p0, Ljavax/mail/search/RecipientTerm;->type:Ljavax/mail/Message$RecipientType;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-super {p0}, Ljavax/mail/search/AddressTerm;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public match(Ljavax/mail/Message;)Z
    .registers 7
    .param p1, "msg"    # Ljavax/mail/Message;

    .prologue
    const/4 v3, 0x0

    .line 92
    :try_start_1
    iget-object v4, p0, Ljavax/mail/search/RecipientTerm;->type:Ljavax/mail/Message$RecipientType;

    invoke-virtual {p1, v4}, Ljavax/mail/Message;->getRecipients(Ljavax/mail/Message$RecipientType;)[Ljavax/mail/Address;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_a

    move-result-object v2

    .line 97
    .local v2, "recipients":[Ljavax/mail/Address;
    if-nez v2, :cond_c

    .line 103
    .end local v2    # "recipients":[Ljavax/mail/Address;
    :cond_9
    :goto_9
    return v3

    .line 93
    :catch_a
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_9

    .line 100
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "recipients":[Ljavax/mail/Address;
    :cond_c
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    array-length v4, v2

    if-ge v1, v4, :cond_9

    .line 101
    aget-object v4, v2, v1

    invoke-super {p0, v4}, Ljavax/mail/search/AddressTerm;->match(Ljavax/mail/Address;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 102
    const/4 v3, 0x1

    goto :goto_9

    .line 100
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_d
.end method
