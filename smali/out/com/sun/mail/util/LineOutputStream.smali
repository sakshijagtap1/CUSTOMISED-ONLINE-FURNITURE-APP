.class public Lcom/sun/mail/util/LineOutputStream;
.super Ljava/io/FilterOutputStream;
.source "LineOutputStream.java"


# static fields
.field private static newline:[B


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 61
    const/4 v0, 0x2

    new-array v0, v0, [B

    sput-object v0, Lcom/sun/mail/util/LineOutputStream;->newline:[B

    .line 62
    sget-object v0, Lcom/sun/mail/util/LineOutputStream;->newline:[B

    const/4 v1, 0x0

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    .line 63
    sget-object v0, Lcom/sun/mail/util/LineOutputStream;->newline:[B

    const/4 v1, 0x1

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 2
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 68
    return-void
.end method


# virtual methods
.method public writeln()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 82
    :try_start_0
    iget-object v1, p0, Lcom/sun/mail/util/LineOutputStream;->out:Ljava/io/OutputStream;

    sget-object v2, Lcom/sun/mail/util/LineOutputStream;->newline:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 86
    return-void

    .line 83
    :catch_8
    move-exception v0

    .line 84
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "IOException"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public writeln(Ljava/lang/String;)V
    .registers 6
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 72
    :try_start_0
    invoke-static {p1}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 73
    .local v0, "bytes":[B
    iget-object v2, p0, Lcom/sun/mail/util/LineOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 74
    iget-object v2, p0, Lcom/sun/mail/util/LineOutputStream;->out:Ljava/io/OutputStream;

    sget-object v3, Lcom/sun/mail/util/LineOutputStream;->newline:[B

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    .line 78
    return-void

    .line 75
    .end local v0    # "bytes":[B
    :catch_11
    move-exception v1

    .line 76
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v2, Ljavax/mail/MessagingException;

    const-string v3, "IOException"

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method
