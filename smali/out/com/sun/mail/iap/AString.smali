.class Lcom/sun/mail/iap/AString;
.super Ljava/lang/Object;
.source "Argument.java"


# instance fields
.field bytes:[B


# direct methods
.method constructor <init>([B)V
    .registers 2
    .param p1, "b"    # [B

    .prologue
    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    iput-object p1, p0, Lcom/sun/mail/iap/AString;->bytes:[B

    .line 309
    return-void
.end method
