.class Lcom/sun/mail/imap/IMAPFolder$7;
.super Ljava/lang/Object;
.source "IMAPFolder.java"

# interfaces
.implements Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/mail/imap/IMAPFolder;->hasNewMessages()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/mail/imap/IMAPFolder;


# direct methods
.method constructor <init>(Lcom/sun/mail/imap/IMAPFolder;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sun/mail/imap/IMAPFolder$7;->this$0:Lcom/sun/mail/imap/IMAPFolder;

    .line 789
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doCommand(Lcom/sun/mail/imap/protocol/IMAPProtocol;)Ljava/lang/Object;
    .registers 7
    .param p1, "p"    # Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 791
    const-string v2, ""

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder$7;->this$0:Lcom/sun/mail/imap/IMAPFolder;

    iget-object v3, v3, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->list(Ljava/lang/String;Ljava/lang/String;)[Lcom/sun/mail/imap/protocol/ListInfo;

    move-result-object v0

    .line 792
    .local v0, "li":[Lcom/sun/mail/imap/protocol/ListInfo;
    if-eqz v0, :cond_21

    .line 793
    aget-object v2, v0, v4

    iget v2, v2, Lcom/sun/mail/imap/protocol/ListInfo;->changeState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_17

    .line 794
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 804
    :goto_16
    return-object v2

    .line 795
    :cond_17
    aget-object v2, v0, v4

    iget v2, v2, Lcom/sun/mail/imap/protocol/ListInfo;->changeState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_21

    .line 796
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_16

    .line 800
    :cond_21
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder$7;->this$0:Lcom/sun/mail/imap/IMAPFolder;

    invoke-static {v2}, Lcom/sun/mail/imap/IMAPFolder;->access$0(Lcom/sun/mail/imap/IMAPFolder;)Lcom/sun/mail/imap/protocol/Status;

    move-result-object v1

    .line 801
    .local v1, "status":Lcom/sun/mail/imap/protocol/Status;
    iget v2, v1, Lcom/sun/mail/imap/protocol/Status;->recent:I

    if-lez v2, :cond_2e

    .line 802
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_16

    .line 804
    :cond_2e
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_16
.end method
