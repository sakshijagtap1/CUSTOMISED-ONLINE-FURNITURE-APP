.class public abstract Ljavax/mail/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Ljavax/mail/Part;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/mail/Message$RecipientType;
    }
.end annotation


# instance fields
.field protected expunged:Z

.field protected folder:Ljavax/mail/Folder;

.field protected msgnum:I

.field protected session:Ljavax/mail/Session;


# direct methods
.method protected constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput v0, p0, Ljavax/mail/Message;->msgnum:I

    .line 94
    iput-boolean v0, p0, Ljavax/mail/Message;->expunged:Z

    .line 99
    iput-object v1, p0, Ljavax/mail/Message;->folder:Ljavax/mail/Folder;

    .line 104
    iput-object v1, p0, Ljavax/mail/Message;->session:Ljavax/mail/Session;

    .line 109
    return-void
.end method

.method protected constructor <init>(Ljavax/mail/Folder;I)V
    .registers 5
    .param p1, "folder"    # Ljavax/mail/Folder;
    .param p2, "msgnum"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput v0, p0, Ljavax/mail/Message;->msgnum:I

    .line 94
    iput-boolean v0, p0, Ljavax/mail/Message;->expunged:Z

    .line 99
    iput-object v1, p0, Ljavax/mail/Message;->folder:Ljavax/mail/Folder;

    .line 104
    iput-object v1, p0, Ljavax/mail/Message;->session:Ljavax/mail/Session;

    .line 119
    iput-object p1, p0, Ljavax/mail/Message;->folder:Ljavax/mail/Folder;

    .line 120
    iput p2, p0, Ljavax/mail/Message;->msgnum:I

    .line 121
    iget-object v0, p1, Ljavax/mail/Folder;->store:Ljavax/mail/Store;

    iget-object v0, v0, Ljavax/mail/Store;->session:Ljavax/mail/Session;

    iput-object v0, p0, Ljavax/mail/Message;->session:Ljavax/mail/Session;

    .line 122
    return-void
.end method

.method protected constructor <init>(Ljavax/mail/Session;)V
    .registers 4
    .param p1, "session"    # Ljavax/mail/Session;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput v0, p0, Ljavax/mail/Message;->msgnum:I

    .line 94
    iput-boolean v0, p0, Ljavax/mail/Message;->expunged:Z

    .line 99
    iput-object v1, p0, Ljavax/mail/Message;->folder:Ljavax/mail/Folder;

    .line 104
    iput-object v1, p0, Ljavax/mail/Message;->session:Ljavax/mail/Session;

    .line 131
    iput-object p1, p0, Ljavax/mail/Message;->session:Ljavax/mail/Session;

    .line 132
    return-void
.end method


# virtual methods
.method public abstract addFrom([Ljavax/mail/Address;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public addRecipient(Ljavax/mail/Message$RecipientType;Ljavax/mail/Address;)V
    .registers 5
    .param p1, "type"    # Ljavax/mail/Message$RecipientType;
    .param p2, "address"    # Ljavax/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 398
    const/4 v1, 0x1

    new-array v0, v1, [Ljavax/mail/Address;

    .line 399
    .local v0, "a":[Ljavax/mail/Address;
    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 400
    invoke-virtual {p0, p1, v0}, Ljavax/mail/Message;->addRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V

    .line 401
    return-void
.end method

.method public abstract addRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public getAllRecipients()[Ljavax/mail/Address;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 305
    sget-object v6, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    invoke-virtual {p0, v6}, Ljavax/mail/Message;->getRecipients(Ljavax/mail/Message$RecipientType;)[Ljavax/mail/Address;

    move-result-object v5

    .line 306
    .local v5, "to":[Ljavax/mail/Address;
    sget-object v6, Ljavax/mail/Message$RecipientType;->CC:Ljavax/mail/Message$RecipientType;

    invoke-virtual {p0, v6}, Ljavax/mail/Message;->getRecipients(Ljavax/mail/Message$RecipientType;)[Ljavax/mail/Address;

    move-result-object v2

    .line 307
    .local v2, "cc":[Ljavax/mail/Address;
    sget-object v6, Ljavax/mail/Message$RecipientType;->BCC:Ljavax/mail/Message$RecipientType;

    invoke-virtual {p0, v6}, Ljavax/mail/Message;->getRecipients(Ljavax/mail/Message$RecipientType;)[Ljavax/mail/Address;

    move-result-object v1

    .line 309
    .local v1, "bcc":[Ljavax/mail/Address;
    if-nez v2, :cond_18

    if-nez v1, :cond_18

    .line 330
    .end local v5    # "to":[Ljavax/mail/Address;
    :goto_17
    return-object v5

    .line 313
    .restart local v5    # "to":[Ljavax/mail/Address;
    :cond_18
    if-eqz v5, :cond_42

    array-length v6, v5

    move v8, v6

    .line 314
    :goto_1c
    if-eqz v2, :cond_44

    array-length v6, v2

    .line 313
    :goto_1f
    add-int/2addr v8, v6

    .line 315
    if-eqz v1, :cond_46

    array-length v6, v1

    .line 313
    :goto_23
    add-int v3, v8, v6

    .line 316
    .local v3, "numRecip":I
    new-array v0, v3, [Ljavax/mail/Address;

    .line 317
    .local v0, "addresses":[Ljavax/mail/Address;
    const/4 v4, 0x0

    .line 318
    .local v4, "pos":I
    if-eqz v5, :cond_30

    .line 319
    array-length v6, v5

    invoke-static {v5, v7, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 320
    array-length v6, v5

    add-int/2addr v4, v6

    .line 322
    :cond_30
    if-eqz v2, :cond_38

    .line 323
    array-length v6, v2

    invoke-static {v2, v7, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 324
    array-length v6, v2

    add-int/2addr v4, v6

    .line 326
    :cond_38
    if-eqz v1, :cond_40

    .line 327
    array-length v6, v1

    invoke-static {v1, v7, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 328
    array-length v6, v1

    add-int/2addr v4, v6

    :cond_40
    move-object v5, v0

    .line 330
    goto :goto_17

    .end local v0    # "addresses":[Ljavax/mail/Address;
    .end local v3    # "numRecip":I
    .end local v4    # "pos":I
    :cond_42
    move v8, v7

    .line 313
    goto :goto_1c

    :cond_44
    move v6, v7

    .line 314
    goto :goto_1f

    :cond_46
    move v6, v7

    .line 315
    goto :goto_23
.end method

.method public abstract getFlags()Ljavax/mail/Flags;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public getFolder()Ljavax/mail/Folder;
    .registers 2

    .prologue
    .line 614
    iget-object v0, p0, Ljavax/mail/Message;->folder:Ljavax/mail/Folder;

    return-object v0
.end method

.method public abstract getFrom()[Ljavax/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public getMessageNumber()I
    .registers 2

    .prologue
    .line 595
    iget v0, p0, Ljavax/mail/Message;->msgnum:I

    return v0
.end method

.method public abstract getReceivedDate()Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getRecipients(Ljavax/mail/Message$RecipientType;)[Ljavax/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public getReplyTo()[Ljavax/mail/Address;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 420
    invoke-virtual {p0}, Ljavax/mail/Message;->getFrom()[Ljavax/mail/Address;

    move-result-object v0

    return-object v0
.end method

.method public abstract getSentDate()Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getSubject()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public isExpunged()Z
    .registers 2

    .prologue
    .line 635
    iget-boolean v0, p0, Ljavax/mail/Message;->expunged:Z

    return v0
.end method

.method public isSet(Ljavax/mail/Flags$Flag;)Z
    .registers 3
    .param p1, "flag"    # Ljavax/mail/Flags$Flag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 531
    invoke-virtual {p0}, Ljavax/mail/Message;->getFlags()Ljavax/mail/Flags;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/mail/Flags;->contains(Ljavax/mail/Flags$Flag;)Z

    move-result v0

    return v0
.end method

.method public match(Ljavax/mail/search/SearchTerm;)Z
    .registers 3
    .param p1, "term"    # Ljavax/mail/search/SearchTerm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 705
    invoke-virtual {p1, p0}, Ljavax/mail/search/SearchTerm;->match(Ljavax/mail/Message;)Z

    move-result v0

    return v0
.end method

.method public abstract reply(Z)Ljavax/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract saveChanges()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method protected setExpunged(Z)V
    .registers 2
    .param p1, "expunged"    # Z

    .prologue
    .line 645
    iput-boolean p1, p0, Ljavax/mail/Message;->expunged:Z

    .line 646
    return-void
.end method

.method public setFlag(Ljavax/mail/Flags$Flag;Z)V
    .registers 4
    .param p1, "flag"    # Ljavax/mail/Flags$Flag;
    .param p2, "set"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 577
    new-instance v0, Ljavax/mail/Flags;

    invoke-direct {v0, p1}, Ljavax/mail/Flags;-><init>(Ljavax/mail/Flags$Flag;)V

    .line 578
    .local v0, "f":Ljavax/mail/Flags;
    invoke-virtual {p0, v0, p2}, Ljavax/mail/Message;->setFlags(Ljavax/mail/Flags;Z)V

    .line 579
    return-void
.end method

.method public abstract setFlags(Ljavax/mail/Flags;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract setFrom()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract setFrom(Ljavax/mail/Address;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method protected setMessageNumber(I)V
    .registers 2
    .param p1, "msgnum"    # I

    .prologue
    .line 603
    iput p1, p0, Ljavax/mail/Message;->msgnum:I

    .line 604
    return-void
.end method

.method public setRecipient(Ljavax/mail/Message$RecipientType;Ljavax/mail/Address;)V
    .registers 5
    .param p1, "type"    # Ljavax/mail/Message$RecipientType;
    .param p2, "address"    # Ljavax/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 364
    const/4 v1, 0x1

    new-array v0, v1, [Ljavax/mail/Address;

    .line 365
    .local v0, "a":[Ljavax/mail/Address;
    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 366
    invoke-virtual {p0, p1, v0}, Ljavax/mail/Message;->setRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V

    .line 367
    return-void
.end method

.method public abstract setRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public setReplyTo([Ljavax/mail/Address;)V
    .registers 4
    .param p1, "addresses"    # [Ljavax/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 444
    new-instance v0, Ljavax/mail/MethodNotSupportedException;

    const-string v1, "setReplyTo not supported"

    invoke-direct {v0, v1}, Ljavax/mail/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract setSentDate(Ljava/util/Date;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract setSubject(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method
