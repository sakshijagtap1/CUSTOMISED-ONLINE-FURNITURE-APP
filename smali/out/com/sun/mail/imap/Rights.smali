.class public Lcom/sun/mail/imap/Rights;
.super Ljava/lang/Object;
.source "Rights.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/mail/imap/Rights$Right;
    }
.end annotation


# instance fields
.field private rights:[Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/16 v0, 0x80

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    .line 168
    return-void
.end method

.method public constructor <init>(Lcom/sun/mail/imap/Rights$Right;)V
    .registers 5
    .param p1, "right"    # Lcom/sun/mail/imap/Rights$Right;

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/16 v0, 0x80

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    .line 195
    iget-object v0, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    iget-char v1, p1, Lcom/sun/mail/imap/Rights$Right;->right:C

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 196
    return-void
.end method

.method public constructor <init>(Lcom/sun/mail/imap/Rights;)V
    .registers 6
    .param p1, "rights"    # Lcom/sun/mail/imap/Rights;

    .prologue
    const/4 v3, 0x0

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/16 v0, 0x80

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    .line 176
    iget-object v0, p1, Lcom/sun/mail/imap/Rights;->rights:[Z

    iget-object v1, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    iget-object v2, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 177
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "rights"    # Ljava/lang/String;

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/16 v1, 0x80

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    .line 185
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_11

    .line 187
    return-void

    .line 186
    :cond_11
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/sun/mail/imap/Rights$Right;->getInstance(C)Lcom/sun/mail/imap/Rights$Right;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/Rights;->add(Lcom/sun/mail/imap/Rights$Right;)V

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method


# virtual methods
.method public add(Lcom/sun/mail/imap/Rights$Right;)V
    .registers 5
    .param p1, "right"    # Lcom/sun/mail/imap/Rights$Right;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    iget-char v1, p1, Lcom/sun/mail/imap/Rights$Right;->right:C

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 205
    return-void
.end method

.method public add(Lcom/sun/mail/imap/Rights;)V
    .registers 5
    .param p1, "rights"    # Lcom/sun/mail/imap/Rights;

    .prologue
    .line 214
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p1, Lcom/sun/mail/imap/Rights;->rights:[Z

    array-length v1, v1

    if-lt v0, v1, :cond_7

    .line 217
    return-void

    .line 215
    :cond_7
    iget-object v1, p1, Lcom/sun/mail/imap/Rights;->rights:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_12

    .line 216
    iget-object v1, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 214
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public clone()Ljava/lang/Object;
    .registers 8

    .prologue
    .line 316
    const/4 v1, 0x0

    .line 318
    .local v1, "r":Lcom/sun/mail/imap/Rights;
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/sun/mail/imap/Rights;

    move-object v1, v0

    .line 319
    const/16 v2, 0x80

    new-array v2, v2, [Z

    iput-object v2, v1, Lcom/sun/mail/imap/Rights;->rights:[Z

    .line 320
    iget-object v2, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    const/4 v3, 0x0

    iget-object v4, v1, Lcom/sun/mail/imap/Rights;->rights:[Z

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    array-length v6, v6

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1b
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1b} :catch_1c

    .line 324
    :goto_1b
    return-object v1

    .line 321
    :catch_1c
    move-exception v2

    goto :goto_1b
.end method

.method public contains(Lcom/sun/mail/imap/Rights$Right;)Z
    .registers 4
    .param p1, "right"    # Lcom/sun/mail/imap/Rights$Right;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    iget-char v1, p1, Lcom/sun/mail/imap/Rights$Right;->right:C

    aget-boolean v0, v0, v1

    return v0
.end method

.method public contains(Lcom/sun/mail/imap/Rights;)Z
    .registers 4
    .param p1, "rights"    # Lcom/sun/mail/imap/Rights;

    .prologue
    .line 257
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p1, Lcom/sun/mail/imap/Rights;->rights:[Z

    array-length v1, v1

    if-lt v0, v1, :cond_8

    .line 262
    const/4 v1, 0x1

    :goto_7
    return v1

    .line 258
    :cond_8
    iget-object v1, p1, Lcom/sun/mail/imap/Rights;->rights:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_16

    .line 259
    const/4 v1, 0x0

    goto :goto_7

    .line 257
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 271
    instance-of v3, p1, Lcom/sun/mail/imap/Rights;

    if-nez v3, :cond_6

    .line 280
    :cond_5
    :goto_5
    return v2

    :cond_6
    move-object v1, p1

    .line 274
    check-cast v1, Lcom/sun/mail/imap/Rights;

    .line 276
    .local v1, "rights":Lcom/sun/mail/imap/Rights;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    iget-object v3, v1, Lcom/sun/mail/imap/Rights;->rights:[Z

    array-length v3, v3

    if-lt v0, v3, :cond_11

    .line 280
    const/4 v2, 0x1

    goto :goto_5

    .line 277
    :cond_11
    iget-object v3, v1, Lcom/sun/mail/imap/Rights;->rights:[Z

    aget-boolean v3, v3, v0

    iget-object v4, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    aget-boolean v4, v4, v0

    if-ne v3, v4, :cond_5

    .line 276
    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method

.method public getRights()[Lcom/sun/mail/imap/Rights$Right;
    .registers 5

    .prologue
    .line 303
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 304
    .local v2, "v":Ljava/util/Vector;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget-object v3, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    array-length v3, v3

    if-lt v0, v3, :cond_15

    .line 307
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    new-array v1, v3, [Lcom/sun/mail/imap/Rights$Right;

    .line 308
    .local v1, "rights":[Lcom/sun/mail/imap/Rights$Right;
    invoke-virtual {v2, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 309
    return-object v1

    .line 305
    .end local v1    # "rights":[Lcom/sun/mail/imap/Rights$Right;
    :cond_15
    iget-object v3, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_23

    .line 306
    int-to-char v3, v0

    invoke-static {v3}, Lcom/sun/mail/imap/Rights$Right;->getInstance(C)Lcom/sun/mail/imap/Rights$Right;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 304
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 289
    const/4 v0, 0x0

    .line 290
    .local v0, "hash":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    array-length v2, v2

    if-lt v1, v2, :cond_8

    .line 293
    return v0

    .line 291
    :cond_8
    iget-object v2, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_10

    .line 292
    add-int/lit8 v0, v0, 0x1

    .line 290
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public remove(Lcom/sun/mail/imap/Rights$Right;)V
    .registers 5
    .param p1, "right"    # Lcom/sun/mail/imap/Rights$Right;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    iget-char v1, p1, Lcom/sun/mail/imap/Rights$Right;->right:C

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 226
    return-void
.end method

.method public remove(Lcom/sun/mail/imap/Rights;)V
    .registers 5
    .param p1, "rights"    # Lcom/sun/mail/imap/Rights;

    .prologue
    .line 235
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p1, Lcom/sun/mail/imap/Rights;->rights:[Z

    array-length v1, v1

    if-lt v0, v1, :cond_7

    .line 238
    return-void

    .line 236
    :cond_7
    iget-object v1, p1, Lcom/sun/mail/imap/Rights;->rights:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_12

    .line 237
    iget-object v1, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 235
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 328
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 329
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget-object v2, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    array-length v2, v2

    if-lt v0, v2, :cond_10

    .line 332
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 330
    :cond_10
    iget-object v2, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_1a

    .line 331
    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 329
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method
