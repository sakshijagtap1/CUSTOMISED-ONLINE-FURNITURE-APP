.class public Ljavax/mail/internet/MimePartDataSource;
.super Ljava/lang/Object;
.source "MimePartDataSource.java"

# interfaces
.implements Ljavax/activation/DataSource;
.implements Ljavax/mail/MessageAware;


# static fields
.field private static ignoreMultipartEncoding:Z


# instance fields
.field private context:Ljavax/mail/MessageContext;

.field protected part:Ljavax/mail/internet/MimePart;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 67
    sput-boolean v1, Ljavax/mail/internet/MimePartDataSource;->ignoreMultipartEncoding:Z

    .line 71
    :try_start_3
    const-string v2, "mail.mime.ignoremultipartencoding"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_14

    const-string v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v1, 0x0

    :cond_14
    sput-boolean v1, Ljavax/mail/internet/MimePartDataSource;->ignoreMultipartEncoding:Z
    :try_end_16
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_16} :catch_17

    .line 57
    :goto_16
    return-void

    .line 74
    :catch_17
    move-exception v1

    goto :goto_16
.end method

.method public constructor <init>(Ljavax/mail/internet/MimePart;)V
    .registers 2
    .param p1, "part"    # Ljavax/mail/internet/MimePart;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Ljavax/mail/internet/MimePartDataSource;->part:Ljavax/mail/internet/MimePart;

    .line 84
    return-void
.end method

.method private static restrictEncoding(Ljava/lang/String;Ljavax/mail/internet/MimePart;)Ljava/lang/String;
    .registers 5
    .param p0, "encoding"    # Ljava/lang/String;
    .param p1, "part"    # Ljavax/mail/internet/MimePart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 130
    sget-boolean v2, Ljavax/mail/internet/MimePartDataSource;->ignoreMultipartEncoding:Z

    if-eqz v2, :cond_6

    if-nez p0, :cond_7

    .line 154
    .end local p0    # "encoding":Ljava/lang/String;
    :cond_6
    :goto_6
    return-object p0

    .line 133
    .restart local p0    # "encoding":Ljava/lang/String;
    :cond_7
    const-string v2, "7bit"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 134
    const-string v2, "8bit"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 135
    const-string v2, "binary"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 138
    invoke-interface {p1}, Ljavax/mail/internet/MimePart;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "type":Ljava/lang/String;
    if-eqz v1, :cond_6

    .line 148
    :try_start_25
    new-instance v0, Ljavax/mail/internet/ContentType;

    invoke-direct {v0, v1}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    .line 149
    .local v0, "cType":Ljavax/mail/internet/ContentType;
    const-string v2, "multipart/*"

    invoke-virtual {v0, v2}, Ljavax/mail/internet/ContentType;->match(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "message/*"

    invoke-virtual {v0, v2}, Ljavax/mail/internet/ContentType;->match(Ljava/lang/String;)Z
    :try_end_37
    .catch Ljavax/mail/internet/ParseException; {:try_start_25 .. :try_end_37} :catch_3c

    move-result v2

    if-eqz v2, :cond_6

    .line 150
    :cond_3a
    const/4 p0, 0x0

    goto :goto_6

    .line 151
    .end local v0    # "cType":Ljavax/mail/internet/ContentType;
    :catch_3c
    move-exception v2

    goto :goto_6
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .registers 3

    .prologue
    .line 175
    :try_start_0
    iget-object v1, p0, Ljavax/mail/internet/MimePartDataSource;->part:Ljavax/mail/internet/MimePart;

    invoke-interface {v1}, Ljavax/mail/internet/MimePart;->getContentType()Ljava/lang/String;
    :try_end_5
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 181
    :goto_6
    return-object v1

    .line 176
    :catch_7
    move-exception v0

    .line 181
    .local v0, "mex":Ljavax/mail/MessagingException;
    const-string v1, "application/octet-stream"

    goto :goto_6
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    :try_start_0
    iget-object v3, p0, Ljavax/mail/internet/MimePartDataSource;->part:Ljavax/mail/internet/MimePart;

    instance-of v3, v3, Ljavax/mail/internet/MimeBodyPart;

    if-eqz v3, :cond_21

    .line 107
    iget-object v3, p0, Ljavax/mail/internet/MimePartDataSource;->part:Ljavax/mail/internet/MimePart;

    check-cast v3, Ljavax/mail/internet/MimeBodyPart;

    invoke-virtual {v3}, Ljavax/mail/internet/MimeBodyPart;->getContentStream()Ljava/io/InputStream;

    move-result-object v1

    .line 113
    .local v1, "is":Ljava/io/InputStream;
    :goto_e
    iget-object v3, p0, Ljavax/mail/internet/MimePartDataSource;->part:Ljavax/mail/internet/MimePart;

    invoke-interface {v3}, Ljavax/mail/internet/MimePart;->getEncoding()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ljavax/mail/internet/MimePartDataSource;->part:Ljavax/mail/internet/MimePart;

    invoke-static {v3, v4}, Ljavax/mail/internet/MimePartDataSource;->restrictEncoding(Ljava/lang/String;Ljavax/mail/internet/MimePart;)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "encoding":Ljava/lang/String;
    if-eqz v0, :cond_20

    .line 115
    invoke-static {v1, v0}, Ljavax/mail/internet/MimeUtility;->decode(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 117
    .end local v1    # "is":Ljava/io/InputStream;
    :cond_20
    return-object v1

    .line 108
    .end local v0    # "encoding":Ljava/lang/String;
    :cond_21
    iget-object v3, p0, Ljavax/mail/internet/MimePartDataSource;->part:Ljavax/mail/internet/MimePart;

    instance-of v3, v3, Ljavax/mail/internet/MimeMessage;

    if-eqz v3, :cond_30

    .line 109
    iget-object v3, p0, Ljavax/mail/internet/MimePartDataSource;->part:Ljavax/mail/internet/MimePart;

    check-cast v3, Ljavax/mail/internet/MimeMessage;

    invoke-virtual {v3}, Ljavax/mail/internet/MimeMessage;->getContentStream()Ljava/io/InputStream;

    move-result-object v1

    .restart local v1    # "is":Ljava/io/InputStream;
    goto :goto_e

    .line 111
    .end local v1    # "is":Ljava/io/InputStream;
    :cond_30
    new-instance v3, Ljavax/mail/MessagingException;

    const-string v4, "Unknown part"

    invoke-direct {v3, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_38
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_38} :catch_38

    .line 118
    :catch_38
    move-exception v2

    .line 119
    .local v2, "mex":Ljavax/mail/MessagingException;
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v2}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public declared-synchronized getMessageContext()Ljavax/mail/MessageContext;
    .registers 3

    .prologue
    .line 205
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljavax/mail/internet/MimePartDataSource;->context:Ljavax/mail/MessageContext;

    if-nez v0, :cond_e

    .line 206
    new-instance v0, Ljavax/mail/MessageContext;

    iget-object v1, p0, Ljavax/mail/internet/MimePartDataSource;->part:Ljavax/mail/internet/MimePart;

    invoke-direct {v0, v1}, Ljavax/mail/MessageContext;-><init>(Ljavax/mail/Part;)V

    iput-object v0, p0, Ljavax/mail/internet/MimePartDataSource;->context:Ljavax/mail/MessageContext;

    .line 207
    :cond_e
    iget-object v0, p0, Ljavax/mail/internet/MimePartDataSource;->context:Ljavax/mail/MessageContext;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-object v0

    .line 205
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 192
    :try_start_0
    iget-object v0, p0, Ljavax/mail/internet/MimePartDataSource;->part:Ljavax/mail/internet/MimePart;

    instance-of v0, v0, Ljavax/mail/internet/MimeBodyPart;

    if-eqz v0, :cond_10

    .line 193
    iget-object v0, p0, Ljavax/mail/internet/MimePartDataSource;->part:Ljavax/mail/internet/MimePart;

    check-cast v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-virtual {v0}, Ljavax/mail/internet/MimeBodyPart;->getFileName()Ljava/lang/String;
    :try_end_d
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_d} :catch_f

    move-result-object v0

    .line 197
    :goto_e
    return-object v0

    .line 194
    :catch_f
    move-exception v0

    .line 197
    :cond_10
    const-string v0, ""

    goto :goto_e
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    new-instance v0, Ljava/net/UnknownServiceException;

    invoke-direct {v0}, Ljava/net/UnknownServiceException;-><init>()V

    throw v0
.end method
