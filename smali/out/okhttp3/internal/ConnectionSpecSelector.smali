.class public final Lokhttp3/internal/ConnectionSpecSelector;
.super Ljava/lang/Object;
.source "ConnectionSpecSelector.java"


# instance fields
.field private final connectionSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field private isFallback:Z

.field private isFallbackPossible:Z

.field private nextModeIndex:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/ConnectionSpec;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "connectionSpecs":Ljava/util/List;, "Ljava/util/List<Lokhttp3/ConnectionSpec;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lokhttp3/internal/ConnectionSpecSelector;->nextModeIndex:I

    .line 45
    iput-object p1, p0, Lokhttp3/internal/ConnectionSpecSelector;->connectionSpecs:Ljava/util/List;

    .line 46
    return-void
.end method

.method private isFallbackPossible(Ljavax/net/ssl/SSLSocket;)Z
    .registers 4
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;

    .prologue
    .line 134
    iget v0, p0, Lokhttp3/internal/ConnectionSpecSelector;->nextModeIndex:I

    .local v0, "i":I
    :goto_2
    iget-object v1, p0, Lokhttp3/internal/ConnectionSpecSelector;->connectionSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 135
    iget-object v1, p0, Lokhttp3/internal/ConnectionSpecSelector;->connectionSpecs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/ConnectionSpec;

    invoke-virtual {v1, p1}, Lokhttp3/ConnectionSpec;->isCompatible(Ljavax/net/ssl/SSLSocket;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 136
    const/4 v1, 0x1

    .line 139
    :goto_19
    return v1

    .line 134
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 139
    :cond_1d
    const/4 v1, 0x0

    goto :goto_19
.end method


# virtual methods
.method public configureSecureSocket(Ljavax/net/ssl/SSLSocket;)Lokhttp3/ConnectionSpec;
    .registers 9
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    const/4 v3, 0x0

    .line 56
    .local v3, "tlsConfiguration":Lokhttp3/ConnectionSpec;
    iget v1, p0, Lokhttp3/internal/ConnectionSpecSelector;->nextModeIndex:I

    .local v1, "i":I
    iget-object v4, p0, Lokhttp3/internal/ConnectionSpecSelector;->connectionSpecs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_9
    if-ge v1, v2, :cond_1e

    .line 57
    iget-object v4, p0, Lokhttp3/internal/ConnectionSpecSelector;->connectionSpecs:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/ConnectionSpec;

    .line 58
    .local v0, "connectionSpec":Lokhttp3/ConnectionSpec;
    invoke-virtual {v0, p1}, Lokhttp3/ConnectionSpec;->isCompatible(Ljavax/net/ssl/SSLSocket;)Z

    move-result v4

    if-eqz v4, :cond_59

    .line 59
    move-object v3, v0

    .line 60
    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lokhttp3/internal/ConnectionSpecSelector;->nextModeIndex:I

    .line 65
    .end local v0    # "connectionSpec":Lokhttp3/ConnectionSpec;
    :cond_1e
    if-nez v3, :cond_5c

    .line 69
    new-instance v4, Ljava/net/UnknownServiceException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to find acceptable protocols. isFallback="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lokhttp3/internal/ConnectionSpecSelector;->isFallback:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", modes="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lokhttp3/internal/ConnectionSpecSelector;->connectionSpecs:Ljava/util/List;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", supported protocols="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 72
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 56
    .restart local v0    # "connectionSpec":Lokhttp3/ConnectionSpec;
    :cond_59
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 75
    .end local v0    # "connectionSpec":Lokhttp3/ConnectionSpec;
    :cond_5c
    invoke-direct {p0, p1}, Lokhttp3/internal/ConnectionSpecSelector;->isFallbackPossible(Ljavax/net/ssl/SSLSocket;)Z

    move-result v4

    iput-boolean v4, p0, Lokhttp3/internal/ConnectionSpecSelector;->isFallbackPossible:Z

    .line 77
    sget-object v4, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    iget-boolean v5, p0, Lokhttp3/internal/ConnectionSpecSelector;->isFallback:Z

    invoke-virtual {v4, v3, p1, v5}, Lokhttp3/internal/Internal;->apply(Lokhttp3/ConnectionSpec;Ljavax/net/ssl/SSLSocket;Z)V

    .line 79
    return-object v3
.end method

.method public connectionFailed(Ljava/io/IOException;)Z
    .registers 5
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 91
    iput-boolean v1, p0, Lokhttp3/internal/ConnectionSpecSelector;->isFallback:Z

    .line 93
    iget-boolean v2, p0, Lokhttp3/internal/ConnectionSpecSelector;->isFallbackPossible:Z

    if-nez v2, :cond_9

    .line 125
    :cond_8
    :goto_8
    return v0

    .line 98
    :cond_9
    instance-of v2, p1, Ljava/net/ProtocolException;

    if-nez v2, :cond_8

    .line 105
    instance-of v2, p1, Ljava/io/InterruptedIOException;

    if-nez v2, :cond_8

    .line 111
    instance-of v2, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v2, :cond_1d

    .line 114
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/security/cert/CertificateException;

    if-nez v2, :cond_8

    .line 118
    :cond_1d
    instance-of v2, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-nez v2, :cond_8

    .line 125
    instance-of v2, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-nez v2, :cond_29

    instance-of v2, p1, Ljavax/net/ssl/SSLProtocolException;

    if-eqz v2, :cond_8

    :cond_29
    move v0, v1

    goto :goto_8
.end method
