.class public Lcom/sun/mail/iap/LiteralException;
.super Lcom/sun/mail/iap/ProtocolException;
.source "LiteralException.java"


# static fields
.field private static final serialVersionUID:J = -0x6005dd64fd3b1139L


# direct methods
.method public constructor <init>(Lcom/sun/mail/iap/Response;)V
    .registers 3
    .param p1, "r"    # Lcom/sun/mail/iap/Response;

    .prologue
    .line 55
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/mail/iap/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 56
    iput-object p1, p0, Lcom/sun/mail/iap/LiteralException;->response:Lcom/sun/mail/iap/Response;

    .line 57
    return-void
.end method
