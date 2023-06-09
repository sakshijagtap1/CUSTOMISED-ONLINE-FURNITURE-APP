.class public Lcom/sun/mail/imap/IMAPNestedMessage;
.super Lcom/sun/mail/imap/IMAPMessage;
.source "IMAPNestedMessage.java"


# instance fields
.field private msg:Lcom/sun/mail/imap/IMAPMessage;


# direct methods
.method constructor <init>(Lcom/sun/mail/imap/IMAPMessage;Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;Lcom/sun/mail/imap/protocol/ENVELOPE;Ljava/lang/String;)V
    .registers 6
    .param p1, "m"    # Lcom/sun/mail/imap/IMAPMessage;
    .param p2, "b"    # Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
    .param p3, "e"    # Lcom/sun/mail/imap/protocol/ENVELOPE;
    .param p4, "sid"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p1}, Lcom/sun/mail/imap/IMAPMessage;->_getSession()Ljavax/mail/Session;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPMessage;-><init>(Ljavax/mail/Session;)V

    .line 65
    iput-object p1, p0, Lcom/sun/mail/imap/IMAPNestedMessage;->msg:Lcom/sun/mail/imap/IMAPMessage;

    .line 66
    iput-object p2, p0, Lcom/sun/mail/imap/IMAPNestedMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    .line 67
    iput-object p3, p0, Lcom/sun/mail/imap/IMAPNestedMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    .line 68
    iput-object p4, p0, Lcom/sun/mail/imap/IMAPNestedMessage;->sectionId:Ljava/lang/String;

    .line 69
    return-void
.end method


# virtual methods
.method protected checkExpunged()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessageRemovedException;
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPNestedMessage;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 109
    return-void
.end method

.method protected getFetchBlockSize()I
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPNestedMessage;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->getFetchBlockSize()I

    move-result v0

    return v0
.end method

.method protected getMessageCacheLock()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPNestedMessage;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->getMessageCacheLock()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;,
            Ljavax/mail/FolderClosedException;
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPNestedMessage;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v0

    return-object v0
.end method

.method protected getSequenceNumber()I
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPNestedMessage;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v0

    return v0
.end method

.method public getSize()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPNestedMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->size:I

    return v0
.end method

.method public isExpunged()Z
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPNestedMessage;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->isExpunged()Z

    move-result v0

    return v0
.end method

.method protected isREV1()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/FolderClosedException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPNestedMessage;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->isREV1()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized setFlags(Ljavax/mail/Flags;Z)V
    .registers 5
    .param p1, "flag"    # Ljavax/mail/Flags;
    .param p2, "set"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 140
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljavax/mail/MethodNotSupportedException;

    .line 141
    const-string v1, "Cannot set flags on this nested message"

    .line 140
    invoke-direct {v0, v1}, Ljavax/mail/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_9

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
