.class public Lcom/sun/mail/util/MessageRemovedIOException;
.super Ljava/io/IOException;
.source "MessageRemovedIOException.java"


# static fields
.field private static final serialVersionUID:J = 0x3b6746fdc4d08728L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 72
    return-void
.end method
