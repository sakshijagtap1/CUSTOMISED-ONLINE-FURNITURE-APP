.class Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;
.super Ljava/lang/Object;
.source "IMAPSaslAuthenticator.java"

# interfaces
.implements Ljavax/security/auth/callback/CallbackHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->authenticate([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;

.field private final synthetic val$p0:Ljava/lang/String;

.field private final synthetic val$r0:Ljava/lang/String;

.field private final synthetic val$u0:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;->this$0:Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;

    iput-object p2, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;->val$u0:Ljava/lang/String;

    iput-object p3, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;->val$p0:Ljava/lang/String;

    iput-object p4, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;->val$r0:Ljava/lang/String;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle([Ljavax/security/auth/callback/Callback;)V
    .registers 11
    .param p1, "callbacks"    # [Ljavax/security/auth/callback/Callback;

    .prologue
    .line 98
    iget-object v6, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;->this$0:Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;

    invoke-static {v6}, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->access$0(Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 99
    iget-object v6, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;->this$0:Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;

    invoke-static {v6}, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->access$1(Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;)Ljava/io/PrintStream;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "IMAP SASL DEBUG: callback length: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    array-length v8, p1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 99
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 101
    :cond_21
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_22
    array-length v6, p1

    if-lt v1, v6, :cond_26

    .line 132
    return-void

    .line 102
    :cond_26
    iget-object v6, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;->this$0:Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;

    invoke-static {v6}, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->access$0(Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;)Z

    move-result v6

    if-eqz v6, :cond_52

    .line 103
    iget-object v6, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;->this$0:Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;

    invoke-static {v6}, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->access$1(Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;)Ljava/io/PrintStream;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "IMAP SASL DEBUG: callback "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 104
    aget-object v8, p1, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 103
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 105
    :cond_52
    aget-object v6, p1, v1

    instance-of v6, v6, Ljavax/security/auth/callback/NameCallback;

    if-eqz v6, :cond_64

    .line 106
    aget-object v3, p1, v1

    check-cast v3, Ljavax/security/auth/callback/NameCallback;

    .line 107
    .local v3, "ncb":Ljavax/security/auth/callback/NameCallback;
    iget-object v6, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;->val$u0:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljavax/security/auth/callback/NameCallback;->setName(Ljava/lang/String;)V

    .line 101
    .end local v3    # "ncb":Ljavax/security/auth/callback/NameCallback;
    :cond_61
    :goto_61
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 108
    :cond_64
    aget-object v6, p1, v1

    instance-of v6, v6, Ljavax/security/auth/callback/PasswordCallback;

    if-eqz v6, :cond_78

    .line 109
    aget-object v4, p1, v1

    check-cast v4, Ljavax/security/auth/callback/PasswordCallback;

    .line 110
    .local v4, "pcb":Ljavax/security/auth/callback/PasswordCallback;
    iget-object v6, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;->val$p0:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    invoke-virtual {v4, v6}, Ljavax/security/auth/callback/PasswordCallback;->setPassword([C)V

    goto :goto_61

    .line 111
    .end local v4    # "pcb":Ljavax/security/auth/callback/PasswordCallback;
    :cond_78
    aget-object v6, p1, v1

    instance-of v6, v6, Ljavax/security/sasl/RealmCallback;

    if-eqz v6, :cond_91

    .line 112
    aget-object v5, p1, v1

    check-cast v5, Ljavax/security/sasl/RealmCallback;

    .line 113
    .local v5, "rcb":Ljavax/security/sasl/RealmCallback;
    iget-object v6, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;->val$r0:Ljava/lang/String;

    if-eqz v6, :cond_8c

    .line 114
    iget-object v6, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;->val$r0:Ljava/lang/String;

    .line 113
    :goto_88
    invoke-virtual {v5, v6}, Ljavax/security/sasl/RealmCallback;->setText(Ljava/lang/String;)V

    goto :goto_61

    .line 114
    :cond_8c
    invoke-virtual {v5}, Ljavax/security/sasl/RealmCallback;->getDefaultText()Ljava/lang/String;

    move-result-object v6

    goto :goto_88

    .line 115
    .end local v5    # "rcb":Ljavax/security/sasl/RealmCallback;
    :cond_91
    aget-object v6, p1, v1

    instance-of v6, v6, Ljavax/security/sasl/RealmChoiceCallback;

    if-eqz v6, :cond_61

    .line 117
    aget-object v5, p1, v1

    check-cast v5, Ljavax/security/sasl/RealmChoiceCallback;

    .line 118
    .local v5, "rcb":Ljavax/security/sasl/RealmChoiceCallback;
    iget-object v6, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;->val$r0:Ljava/lang/String;

    if-nez v6, :cond_a7

    .line 119
    invoke-virtual {v5}, Ljavax/security/sasl/RealmChoiceCallback;->getDefaultChoice()I

    move-result v6

    invoke-virtual {v5, v6}, Ljavax/security/sasl/RealmChoiceCallback;->setSelectedIndex(I)V

    goto :goto_61

    .line 122
    :cond_a7
    invoke-virtual {v5}, Ljavax/security/sasl/RealmChoiceCallback;->getChoices()[Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "choices":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_ac
    array-length v6, v0

    if-ge v2, v6, :cond_61

    .line 124
    aget-object v6, v0, v2

    iget-object v7, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;->val$r0:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_bd

    .line 125
    invoke-virtual {v5, v2}, Ljavax/security/sasl/RealmChoiceCallback;->setSelectedIndex(I)V

    goto :goto_61

    .line 123
    :cond_bd
    add-int/lit8 v2, v2, 0x1

    goto :goto_ac
.end method
