.class public Lcom/sun/mail/dsn/multipart_report;
.super Ljava/lang/Object;
.source "multipart_report.java"

# interfaces
.implements Ljavax/activation/DataContentHandler;


# instance fields
.field private myDF:Ljavax/activation/ActivationDataFlavor;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljavax/activation/ActivationDataFlavor;

    .line 52
    const-class v1, Lcom/sun/mail/dsn/MultipartReport;

    .line 53
    const-string v2, "multipart/report"

    .line 54
    const-string v3, "Multipart Report"

    invoke-direct {v0, v1, v2, v3}, Ljavax/activation/ActivationDataFlavor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sun/mail/dsn/multipart_report;->myDF:Ljavax/activation/ActivationDataFlavor;

    .line 50
    return-void
.end method


# virtual methods
.method public getContent(Ljavax/activation/DataSource;)Ljava/lang/Object;
    .registers 5
    .param p1, "ds"    # Ljavax/activation/DataSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    :try_start_0
    new-instance v2, Lcom/sun/mail/dsn/MultipartReport;

    invoke-direct {v2, p1}, Lcom/sun/mail/dsn/MultipartReport;-><init>(Ljavax/activation/DataSource;)V
    :try_end_5
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_5} :catch_6

    return-object v2

    .line 88
    :catch_6
    move-exception v0

    .line 90
    .local v0, "e":Ljavax/mail/MessagingException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Exception while constructing MultipartReport"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 91
    .local v1, "ioex":Ljava/io/IOException;
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 92
    throw v1
.end method

.method public getTransferData(Lmyjava/awt/datatransfer/DataFlavor;Ljavax/activation/DataSource;)Ljava/lang/Object;
    .registers 4
    .param p1, "df"    # Lmyjava/awt/datatransfer/DataFlavor;
    .param p2, "ds"    # Ljavax/activation/DataSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sun/mail/dsn/multipart_report;->myDF:Ljavax/activation/ActivationDataFlavor;

    invoke-virtual {v0, p1}, Ljavax/activation/ActivationDataFlavor;->equals(Lmyjava/awt/datatransfer/DataFlavor;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 77
    invoke-virtual {p0, p2}, Lcom/sun/mail/dsn/multipart_report;->getContent(Ljavax/activation/DataSource;)Ljava/lang/Object;

    move-result-object v0

    .line 79
    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getTransferDataFlavors()[Lmyjava/awt/datatransfer/DataFlavor;
    .registers 4

    .prologue
    .line 62
    const/4 v0, 0x1

    new-array v0, v0, [Lmyjava/awt/datatransfer/DataFlavor;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sun/mail/dsn/multipart_report;->myDF:Ljavax/activation/ActivationDataFlavor;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public writeTo(Ljava/lang/Object;Ljava/lang/String;Ljava/io/OutputStream;)V
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    instance-of v1, p1, Lcom/sun/mail/dsn/MultipartReport;

    if-eqz v1, :cond_9

    .line 103
    :try_start_4
    check-cast p1, Lcom/sun/mail/dsn/MultipartReport;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Lcom/sun/mail/dsn/MultipartReport;->writeTo(Ljava/io/OutputStream;)V
    :try_end_9
    .catch Ljavax/mail/MessagingException; {:try_start_4 .. :try_end_9} :catch_a

    .line 108
    :cond_9
    return-void

    .line 104
    :catch_a
    move-exception v0

    .line 105
    .local v0, "e":Ljavax/mail/MessagingException;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljavax/mail/MessagingException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
