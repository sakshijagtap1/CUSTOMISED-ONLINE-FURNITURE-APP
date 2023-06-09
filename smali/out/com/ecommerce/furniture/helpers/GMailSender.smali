.class public Lcom/ecommerce/furniture/helpers/GMailSender;
.super Ljavax/mail/Authenticator;
.source "GMailSender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ecommerce/furniture/helpers/GMailSender$ByteArrayDataSource;
    }
.end annotation


# instance fields
.field private mailhost:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private session:Ljavax/mail/Session;

.field private user:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    new-instance v0, Lcom/ecommerce/furniture/helpers/JSSEProvider;

    invoke-direct {v0}, Lcom/ecommerce/furniture/helpers/JSSEProvider;-><init>()V

    invoke-static {v0}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0}, Ljavax/mail/Authenticator;-><init>()V

    .line 31
    const-string v1, "smtp.gmail.com"

    iput-object v1, p0, Lcom/ecommerce/furniture/helpers/GMailSender;->mailhost:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/ecommerce/furniture/helpers/GMailSender;->user:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/ecommerce/furniture/helpers/GMailSender;->password:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 46
    .local v0, "props":Ljava/util/Properties;
    const-string v1, "mail.transport.protocol"

    const-string v2, "smtp"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    const-string v1, "mail.host"

    iget-object v2, p0, Lcom/ecommerce/furniture/helpers/GMailSender;->mailhost:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    const-string v1, "mail.smtp.auth"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v1, "mail.smtp.port"

    const-string v2, "465"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v1, "mail.smtp.socketFactory.port"

    const-string v2, "465"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v1, "mail.smtp.socketFactory.class"

    const-string v2, "javax.net.ssl.SSLSocketFactory"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v1, "mail.smtp.socketFactory.fallback"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v1, "mail.smtp.quitwait"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 56
    invoke-static {v0, p0}, Ljavax/mail/Session;->getDefaultInstance(Ljava/util/Properties;Ljavax/mail/Authenticator;)Ljavax/mail/Session;

    move-result-object v1

    iput-object v1, p0, Lcom/ecommerce/furniture/helpers/GMailSender;->session:Ljavax/mail/Session;

    .line 57
    return-void
.end method


# virtual methods
.method protected getPasswordAuthentication()Ljavax/mail/PasswordAuthentication;
    .registers 4

    .prologue
    .line 60
    new-instance v0, Ljavax/mail/PasswordAuthentication;

    iget-object v1, p0, Lcom/ecommerce/furniture/helpers/GMailSender;->user:Ljava/lang/String;

    iget-object v2, p0, Lcom/ecommerce/furniture/helpers/GMailSender;->password:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljavax/mail/PasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public declared-synchronized sendMail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "subject"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "sender"    # Ljava/lang/String;
    .param p4, "recipients"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 65
    monitor-enter p0

    :try_start_1
    new-instance v1, Ljavax/mail/internet/MimeMessage;

    iget-object v2, p0, Lcom/ecommerce/furniture/helpers/GMailSender;->session:Ljavax/mail/Session;

    invoke-direct {v1, v2}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;)V

    .line 66
    .local v1, "message":Ljavax/mail/internet/MimeMessage;
    new-instance v0, Ljavax/activation/DataHandler;

    new-instance v2, Lcom/ecommerce/furniture/helpers/GMailSender$ByteArrayDataSource;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const-string v4, "text/plain"

    invoke-direct {v2, p0, v3, v4}, Lcom/ecommerce/furniture/helpers/GMailSender$ByteArrayDataSource;-><init>(Lcom/ecommerce/furniture/helpers/GMailSender;[BLjava/lang/String;)V

    invoke-direct {v0, v2}, Ljavax/activation/DataHandler;-><init>(Ljavax/activation/DataSource;)V

    .line 67
    .local v0, "handler":Ljavax/activation/DataHandler;
    new-instance v2, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v2, p3}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljavax/mail/internet/MimeMessage;->setSender(Ljavax/mail/Address;)V

    .line 68
    invoke-virtual {v1, p1}, Ljavax/mail/internet/MimeMessage;->setSubject(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v1, v0}, Ljavax/mail/internet/MimeMessage;->setDataHandler(Ljavax/activation/DataHandler;)V

    .line 70
    const/16 v2, 0x2c

    invoke-virtual {p4, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_3c

    .line 71
    sget-object v2, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    invoke-static {p4}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljavax/mail/internet/MimeMessage;->setRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V

    .line 74
    :goto_37
    invoke-static {v1}, Ljavax/mail/Transport;->send(Ljavax/mail/Message;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3a} :catch_47
    .catchall {:try_start_1 .. :try_end_3a} :catchall_49

    .line 78
    .end local v0    # "handler":Ljavax/activation/DataHandler;
    .end local v1    # "message":Ljavax/mail/internet/MimeMessage;
    :goto_3a
    monitor-exit p0

    return-void

    .line 73
    .restart local v0    # "handler":Ljavax/activation/DataHandler;
    .restart local v1    # "message":Ljavax/mail/internet/MimeMessage;
    :cond_3c
    :try_start_3c
    sget-object v2, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    new-instance v3, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v3, p4}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljavax/mail/internet/MimeMessage;->setRecipient(Ljavax/mail/Message$RecipientType;Ljavax/mail/Address;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_46} :catch_47
    .catchall {:try_start_3c .. :try_end_46} :catchall_49

    goto :goto_37

    .line 75
    .end local v0    # "handler":Ljavax/activation/DataHandler;
    .end local v1    # "message":Ljavax/mail/internet/MimeMessage;
    :catch_47
    move-exception v2

    goto :goto_3a

    .line 65
    :catchall_49
    move-exception v2

    monitor-exit p0

    throw v2
.end method
