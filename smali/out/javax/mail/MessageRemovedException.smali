.class public Ljavax/mail/MessageRemovedException;
.super Ljavax/mail/MessagingException;
.source "MessageRemovedException.java"


# static fields
.field private static final serialVersionUID:J = 0x1b14623c881e84f2L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljavax/mail/MessagingException;-><init>()V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .line 70
    return-void
.end method
