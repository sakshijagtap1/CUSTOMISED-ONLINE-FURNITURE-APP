.class public Lcom/sun/mail/smtp/SMTPAddressFailedException;
.super Ljavax/mail/SendFailedException;
.source "SMTPAddressFailedException.java"


# static fields
.field private static final serialVersionUID:J = 0xb2b55b6465c5351L


# instance fields
.field protected addr:Ljavax/mail/internet/InternetAddress;

.field protected cmd:Ljava/lang/String;

.field protected rc:I


# direct methods
.method public constructor <init>(Ljavax/mail/internet/InternetAddress;Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .param p1, "addr"    # Ljavax/mail/internet/InternetAddress;
    .param p2, "cmd"    # Ljava/lang/String;
    .param p3, "rc"    # I
    .param p4, "err"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-direct {p0, p4}, Ljavax/mail/SendFailedException;-><init>(Ljava/lang/String;)V

    .line 76
    iput-object p1, p0, Lcom/sun/mail/smtp/SMTPAddressFailedException;->addr:Ljavax/mail/internet/InternetAddress;

    .line 77
    iput-object p2, p0, Lcom/sun/mail/smtp/SMTPAddressFailedException;->cmd:Ljava/lang/String;

    .line 78
    iput p3, p0, Lcom/sun/mail/smtp/SMTPAddressFailedException;->rc:I

    .line 79
    return-void
.end method


# virtual methods
.method public getAddress()Ljavax/mail/internet/InternetAddress;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPAddressFailedException;->addr:Ljavax/mail/internet/InternetAddress;

    return-object v0
.end method

.method public getCommand()Ljava/lang/String;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPAddressFailedException;->cmd:Ljava/lang/String;

    return-object v0
.end method

.method public getReturnCode()I
    .registers 2

    .prologue
    .line 103
    iget v0, p0, Lcom/sun/mail/smtp/SMTPAddressFailedException;->rc:I

    return v0
.end method
