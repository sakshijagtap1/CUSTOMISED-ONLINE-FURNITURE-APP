.class public Ljavax/mail/AuthenticationFailedException;
.super Ljavax/mail/MessagingException;
.source "AuthenticationFailedException.java"


# static fields
.field private static final serialVersionUID:J = 0x6d438d6b238969fL


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljavax/mail/MessagingException;-><init>()V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .line 68
    return-void
.end method
