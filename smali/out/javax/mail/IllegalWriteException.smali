.class public Ljavax/mail/IllegalWriteException;
.super Ljavax/mail/MessagingException;
.source "IllegalWriteException.java"


# static fields
.field private static final serialVersionUID:J = 0x3727cca9375f0eedL


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljavax/mail/MessagingException;-><init>()V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .line 69
    return-void
.end method
