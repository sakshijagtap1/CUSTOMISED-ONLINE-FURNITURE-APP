.class public Lcom/sun/mail/iap/ConnectionException;
.super Lcom/sun/mail/iap/ProtocolException;
.source "ConnectionException.java"


# static fields
.field private static final serialVersionUID:J = 0x4fcb2db4e6c2e197L


# instance fields
.field private transient p:Lcom/sun/mail/iap/Protocol;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/sun/mail/iap/ProtocolException;-><init>()V

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/sun/mail/iap/Protocol;Lcom/sun/mail/iap/Response;)V
    .registers 3
    .param p1, "p"    # Lcom/sun/mail/iap/Protocol;
    .param p2, "r"    # Lcom/sun/mail/iap/Response;

    .prologue
    .line 72
    invoke-direct {p0, p2}, Lcom/sun/mail/iap/ProtocolException;-><init>(Lcom/sun/mail/iap/Response;)V

    .line 73
    iput-object p1, p0, Lcom/sun/mail/iap/ConnectionException;->p:Lcom/sun/mail/iap/Protocol;

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/sun/mail/iap/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 65
    return-void
.end method


# virtual methods
.method public getProtocol()Lcom/sun/mail/iap/Protocol;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sun/mail/iap/ConnectionException;->p:Lcom/sun/mail/iap/Protocol;

    return-object v0
.end method
