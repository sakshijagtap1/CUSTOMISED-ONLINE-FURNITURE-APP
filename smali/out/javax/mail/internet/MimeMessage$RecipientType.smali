.class public Ljavax/mail/internet/MimeMessage$RecipientType;
.super Ljavax/mail/Message$RecipientType;
.source "MimeMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/mail/internet/MimeMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecipientType"
.end annotation


# static fields
.field public static final NEWSGROUPS:Ljavax/mail/internet/MimeMessage$RecipientType;

.field private static final serialVersionUID:J = -0x4be3456bc4421197L


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 479
    new-instance v0, Ljavax/mail/internet/MimeMessage$RecipientType;

    const-string v1, "Newsgroups"

    invoke-direct {v0, v1}, Ljavax/mail/internet/MimeMessage$RecipientType;-><init>(Ljava/lang/String;)V

    .line 478
    sput-object v0, Ljavax/mail/internet/MimeMessage$RecipientType;->NEWSGROUPS:Ljavax/mail/internet/MimeMessage$RecipientType;

    .line 471
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 481
    invoke-direct {p0, p1}, Ljavax/mail/Message$RecipientType;-><init>(Ljava/lang/String;)V

    .line 482
    return-void
.end method


# virtual methods
.method protected readResolve()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 485
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage$RecipientType;->type:Ljava/lang/String;

    const-string v1, "Newsgroups"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 486
    sget-object v0, Ljavax/mail/internet/MimeMessage$RecipientType;->NEWSGROUPS:Ljavax/mail/internet/MimeMessage$RecipientType;

    .line 488
    :goto_c
    return-object v0

    :cond_d
    invoke-super {p0}, Ljavax/mail/Message$RecipientType;->readResolve()Ljava/lang/Object;

    move-result-object v0

    goto :goto_c
.end method
