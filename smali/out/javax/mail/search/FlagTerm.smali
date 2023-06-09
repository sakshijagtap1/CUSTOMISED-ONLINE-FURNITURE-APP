.class public final Ljavax/mail/search/FlagTerm;
.super Ljavax/mail/search/SearchTerm;
.source "FlagTerm.java"


# static fields
.field private static final serialVersionUID:J = -0x1fc02030d671737L


# instance fields
.field protected flags:Ljavax/mail/Flags;

.field protected set:Z


# direct methods
.method public constructor <init>(Ljavax/mail/Flags;Z)V
    .registers 3
    .param p1, "flags"    # Ljavax/mail/Flags;
    .param p2, "set"    # Z

    .prologue
    .line 78
    invoke-direct {p0}, Ljavax/mail/search/SearchTerm;-><init>()V

    .line 79
    iput-object p1, p0, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;

    .line 80
    iput-boolean p2, p0, Ljavax/mail/search/FlagTerm;->set:Z

    .line 81
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 147
    instance-of v2, p1, Ljavax/mail/search/FlagTerm;

    if-nez v2, :cond_6

    .line 150
    :cond_5
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 149
    check-cast v0, Ljavax/mail/search/FlagTerm;

    .line 150
    .local v0, "ft":Ljavax/mail/search/FlagTerm;
    iget-boolean v2, v0, Ljavax/mail/search/FlagTerm;->set:Z

    iget-boolean v3, p0, Ljavax/mail/search/FlagTerm;->set:Z

    if-ne v2, v3, :cond_5

    iget-object v2, v0, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;

    iget-object v3, p0, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;

    invoke-virtual {v2, v3}, Ljavax/mail/Flags;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x1

    goto :goto_5
.end method

.method public getFlags()Ljavax/mail/Flags;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;

    invoke-virtual {v0}, Ljavax/mail/Flags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/Flags;

    return-object v0
.end method

.method public getTestSet()Z
    .registers 2

    .prologue
    .line 94
    iget-boolean v0, p0, Ljavax/mail/search/FlagTerm;->set:Z

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 157
    iget-boolean v0, p0, Ljavax/mail/search/FlagTerm;->set:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;

    invoke-virtual {v0}, Ljavax/mail/Flags;->hashCode()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;

    invoke-virtual {v0}, Ljavax/mail/Flags;->hashCode()I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    goto :goto_a
.end method

.method public match(Ljavax/mail/Message;)Z
    .registers 10
    .param p1, "msg"    # Ljavax/mail/Message;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 106
    :try_start_2
    invoke-virtual {p1}, Ljavax/mail/Message;->getFlags()Ljavax/mail/Flags;

    move-result-object v1

    .line 107
    .local v1, "f":Ljavax/mail/Flags;
    iget-boolean v7, p0, Ljavax/mail/search/FlagTerm;->set:Z

    if-eqz v7, :cond_15

    .line 108
    iget-object v7, p0, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;

    invoke-virtual {v1, v7}, Ljavax/mail/Flags;->contains(Ljavax/mail/Flags;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 139
    .end local v1    # "f":Ljavax/mail/Flags;
    :cond_12
    :goto_12
    return v5

    .restart local v1    # "f":Ljavax/mail/Flags;
    :cond_13
    move v5, v6

    .line 111
    goto :goto_12

    .line 118
    :cond_15
    iget-object v7, p0, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;

    invoke-virtual {v7}, Ljavax/mail/Flags;->getSystemFlags()[Ljavax/mail/Flags$Flag;

    move-result-object v4

    .line 121
    .local v4, "sf":[Ljavax/mail/Flags$Flag;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1c
    array-length v7, v4

    if-lt v2, v7, :cond_33

    .line 127
    iget-object v7, p0, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;

    invoke-virtual {v7}, Ljavax/mail/Flags;->getUserFlags()[Ljava/lang/String;

    move-result-object v3

    .line 130
    .local v3, "s":[Ljava/lang/String;
    const/4 v2, 0x0

    :goto_26
    array-length v7, v3

    if-ge v2, v7, :cond_12

    .line 131
    aget-object v7, v3, v2

    invoke-virtual {v1, v7}, Ljavax/mail/Flags;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_40

    move v5, v6

    .line 133
    goto :goto_12

    .line 122
    .end local v3    # "s":[Ljava/lang/String;
    :cond_33
    aget-object v7, v4, v2

    invoke-virtual {v1, v7}, Ljavax/mail/Flags;->contains(Ljavax/mail/Flags$Flag;)Z
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_38} :catch_43

    move-result v7

    if-eqz v7, :cond_3d

    move v5, v6

    .line 124
    goto :goto_12

    .line 121
    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 130
    .restart local v3    # "s":[Ljava/lang/String;
    :cond_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 138
    .end local v1    # "f":Ljavax/mail/Flags;
    .end local v2    # "i":I
    .end local v3    # "s":[Ljava/lang/String;
    .end local v4    # "sf":[Ljavax/mail/Flags$Flag;
    :catch_43
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move v5, v6

    .line 139
    goto :goto_12
.end method
