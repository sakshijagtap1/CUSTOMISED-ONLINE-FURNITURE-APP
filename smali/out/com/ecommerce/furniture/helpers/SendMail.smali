.class public Lcom/ecommerce/furniture/helpers/SendMail;
.super Ljava/lang/Object;
.source "SendMail.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendMail()V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 19
    const/4 v1, 0x0

    .local v1, "firstName":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "mobileNo":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "email":Ljava/lang/String;
    const/4 v6, 0x0

    .line 30
    .local v6, "password":Ljava/lang/String;
    :try_start_4
    new-instance v7, Ljava/util/Properties;

    invoke-direct {v7}, Ljava/util/Properties;-><init>()V

    .line 31
    .local v7, "props":Ljava/util/Properties;
    const-string v11, "mail.smtp.host"

    const-string v12, "smtp.gmail.com"

    invoke-virtual {v7, v11, v12}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string v11, "mail.smtp.port"

    const-string v12, "587"

    invoke-virtual {v7, v11, v12}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string v11, "mail.debug"

    const-string v12, "true"

    invoke-virtual {v7, v11, v12}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v11, "mail.smtp.auth"

    const-string v12, "true"

    invoke-virtual {v7, v11, v12}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string v11, "mail.smtp.starttls.enable"

    const-string v12, "true"

    invoke-virtual {v7, v11, v12}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string v11, "mail.smtp.localhost"

    const-string v12, "yoursite.com"

    invoke-virtual {v7, v11, v12}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string v11, "mail.smtp.ssl.trust"

    const-string v12, "smtp.gmail.com"

    invoke-virtual {v7, v11, v12}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const/4 v11, 0x0

    invoke-static {v7, v11}, Ljavax/mail/Session;->getInstance(Ljava/util/Properties;Ljavax/mail/Authenticator;)Ljavax/mail/Session;

    move-result-object v8

    .line 42
    .local v8, "s":Ljavax/mail/Session;
    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Ljavax/mail/Session;->setDebug(Z)V

    .line 44
    new-instance v3, Ljavax/mail/internet/MimeMessage;

    invoke-direct {v3, v8}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;)V

    .line 46
    .local v3, "message":Ljavax/mail/internet/MimeMessage;
    new-instance v2, Ljavax/mail/internet/InternetAddress;

    const-string v11, "generator.otp@gmail.com"

    const-string v12, "Cool Cab"

    invoke-direct {v2, v11, v12}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .local v2, "from":Ljavax/mail/internet/InternetAddress;
    new-instance v9, Ljavax/mail/internet/InternetAddress;

    const-string v11, "sagarlsawant15@gmail.com"

    invoke-direct {v9, v11}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V

    .line 50
    .local v9, "to":Ljavax/mail/internet/InternetAddress;
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v11}, Ljavax/mail/internet/MimeMessage;->setSentDate(Ljava/util/Date;)V

    .line 51
    invoke-virtual {v3, v2}, Ljavax/mail/internet/MimeMessage;->setFrom(Ljavax/mail/Address;)V

    .line 52
    sget-object v11, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    invoke-virtual {v3, v11, v9}, Ljavax/mail/internet/MimeMessage;->addRecipient(Ljavax/mail/Message$RecipientType;Ljavax/mail/Address;)V

    .line 54
    const-string v11, "Account - Password Details"

    invoke-virtual {v3, v11}, Ljavax/mail/internet/MimeMessage;->setSubject(Ljava/lang/String;)V

    .line 55
    const-string v11, "nzzn "

    const-string v12, "text/plain"

    invoke-virtual {v3, v11, v12}, Ljavax/mail/internet/MimeMessage;->setContent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    const-string v11, "smtp"

    invoke-virtual {v8, v11}, Ljavax/mail/Session;->getTransport(Ljava/lang/String;)Ljavax/mail/Transport;

    move-result-object v10

    .line 58
    .local v10, "tr":Ljavax/mail/Transport;
    const-string v11, "smtp.gmail.com"

    const-string v12, "generator.otp@gmail.com"

    const-string v13, "Admin@univercity.com"

    invoke-virtual {v10, v11, v12, v13}, Ljavax/mail/Transport;->connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v3}, Ljavax/mail/internet/MimeMessage;->saveChanges()V

    .line 60
    invoke-virtual {v3}, Ljavax/mail/internet/MimeMessage;->getAllRecipients()[Ljavax/mail/Address;

    move-result-object v11

    invoke-virtual {v10, v3, v11}, Ljavax/mail/Transport;->sendMessage(Ljavax/mail/Message;[Ljavax/mail/Address;)V

    .line 61
    invoke-virtual {v10}, Ljavax/mail/Transport;->close()V
    :try_end_90
    .catch Ljavax/mail/MessagingException; {:try_start_4 .. :try_end_90} :catch_91

    .line 68
    .end local v2    # "from":Ljavax/mail/internet/InternetAddress;
    .end local v3    # "message":Ljavax/mail/internet/MimeMessage;
    .end local v7    # "props":Ljava/util/Properties;
    .end local v8    # "s":Ljavax/mail/Session;
    .end local v9    # "to":Ljavax/mail/internet/InternetAddress;
    .end local v10    # "tr":Ljavax/mail/Transport;
    :goto_90
    return-void

    .line 63
    :catch_91
    move-exception v4

    .line 64
    .local v4, "mex":Ljavax/mail/MessagingException;
    invoke-virtual {v4}, Ljavax/mail/MessagingException;->printStackTrace()V

    goto :goto_90
.end method
