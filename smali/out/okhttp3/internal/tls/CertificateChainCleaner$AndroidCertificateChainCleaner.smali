.class final Lokhttp3/internal/tls/CertificateChainCleaner$AndroidCertificateChainCleaner;
.super Lokhttp3/internal/tls/CertificateChainCleaner;
.source "CertificateChainCleaner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/tls/CertificateChainCleaner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AndroidCertificateChainCleaner"
.end annotation


# instance fields
.field private final checkServerTrusted:Ljava/lang/reflect/Method;

.field private final x509TrustManagerExtensions:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    .registers 3
    .param p1, "x509TrustManagerExtensions"    # Ljava/lang/Object;
    .param p2, "checkServerTrusted"    # Ljava/lang/reflect/Method;

    .prologue
    .line 160
    invoke-direct {p0}, Lokhttp3/internal/tls/CertificateChainCleaner;-><init>()V

    .line 161
    iput-object p1, p0, Lokhttp3/internal/tls/CertificateChainCleaner$AndroidCertificateChainCleaner;->x509TrustManagerExtensions:Ljava/lang/Object;

    .line 162
    iput-object p2, p0, Lokhttp3/internal/tls/CertificateChainCleaner$AndroidCertificateChainCleaner;->checkServerTrusted:Ljava/lang/reflect/Method;

    .line 163
    return-void
.end method


# virtual methods
.method public clean(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .registers 11
    .param p2, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 169
    .local p1, "chain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/security/cert/X509Certificate;

    invoke-interface {p1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    .line 170
    .local v0, "certificates":[Ljava/security/cert/X509Certificate;
    iget-object v3, p0, Lokhttp3/internal/tls/CertificateChainCleaner$AndroidCertificateChainCleaner;->checkServerTrusted:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lokhttp3/internal/tls/CertificateChainCleaner$AndroidCertificateChainCleaner;->x509TrustManagerExtensions:Ljava/lang/Object;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    const-string v7, "RSA"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object p2, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;
    :try_end_24
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_24} :catch_25
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_24} :catch_33

    return-object v3

    .line 172
    .end local v0    # "certificates":[Ljava/security/cert/X509Certificate;
    :catch_25
    move-exception v1

    .line 173
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    .line 174
    .local v2, "exception":Ljavax/net/ssl/SSLPeerUnverifiedException;
    invoke-virtual {v2, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 175
    throw v2

    .line 176
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v2    # "exception":Ljavax/net/ssl/SSLPeerUnverifiedException;
    :catch_33
    move-exception v1

    .line 177
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method
