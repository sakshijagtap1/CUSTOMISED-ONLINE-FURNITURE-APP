.class public Lcom/sun/mail/iap/BadCommandException;
.super Lcom/sun/mail/iap/ProtocolException;
.source "BadCommandException.java"


# static fields
.field private static final serialVersionUID:J = 0x50122c148d564b0bL


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/sun/mail/iap/ProtocolException;-><init>()V

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/sun/mail/iap/Response;)V
    .registers 2
    .param p1, "r"    # Lcom/sun/mail/iap/Response;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/sun/mail/iap/ProtocolException;-><init>(Lcom/sun/mail/iap/Response;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/sun/mail/iap/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 64
    return-void
.end method
