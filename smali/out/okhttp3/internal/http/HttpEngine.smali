.class public final Lokhttp3/internal/http/HttpEngine;
.super Ljava/lang/Object;
.source "HttpEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;
    }
.end annotation


# static fields
.field private static final EMPTY_BODY:Lokhttp3/ResponseBody;

.field public static final MAX_FOLLOW_UPS:I = 0x14


# instance fields
.field public final bufferRequestBody:Z

.field private bufferedRequestBody:Lokio/BufferedSink;

.field private cacheResponse:Lokhttp3/Response;

.field private cacheStrategy:Lokhttp3/internal/http/CacheStrategy;

.field private final callerWritesRequestBody:Z

.field final client:Lokhttp3/OkHttpClient;

.field private final forWebSocket:Z

.field private httpStream:Lokhttp3/internal/http/HttpStream;

.field private networkRequest:Lokhttp3/Request;

.field private final priorResponse:Lokhttp3/Response;

.field private requestBodyOut:Lokio/Sink;

.field sentRequestMillis:J

.field private storeRequest:Lokhttp3/internal/http/CacheRequest;

.field public final streamAllocation:Lokhttp3/internal/http/StreamAllocation;

.field private transparentGzip:Z

.field private final userRequest:Lokhttp3/Request;

.field private userResponse:Lokhttp3/Response;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 93
    new-instance v0, Lokhttp3/internal/http/HttpEngine$1;

    invoke-direct {v0}, Lokhttp3/internal/http/HttpEngine$1;-><init>()V

    sput-object v0, Lokhttp3/internal/http/HttpEngine;->EMPTY_BODY:Lokhttp3/ResponseBody;

    return-void
.end method

.method public constructor <init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;ZZZLokhttp3/internal/http/StreamAllocation;Lokhttp3/internal/http/RetryableSink;Lokhttp3/Response;)V
    .registers 11
    .param p1, "client"    # Lokhttp3/OkHttpClient;
    .param p2, "request"    # Lokhttp3/Request;
    .param p3, "bufferRequestBody"    # Z
    .param p4, "callerWritesRequestBody"    # Z
    .param p5, "forWebSocket"    # Z
    .param p6, "streamAllocation"    # Lokhttp3/internal/http/StreamAllocation;
    .param p7, "requestBodyOut"    # Lokhttp3/internal/http/RetryableSink;
    .param p8, "priorResponse"    # Lokhttp3/Response;

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lokhttp3/internal/http/HttpEngine;->sentRequestMillis:J

    .line 173
    iput-object p1, p0, Lokhttp3/internal/http/HttpEngine;->client:Lokhttp3/OkHttpClient;

    .line 174
    iput-object p2, p0, Lokhttp3/internal/http/HttpEngine;->userRequest:Lokhttp3/Request;

    .line 175
    iput-boolean p3, p0, Lokhttp3/internal/http/HttpEngine;->bufferRequestBody:Z

    .line 176
    iput-boolean p4, p0, Lokhttp3/internal/http/HttpEngine;->callerWritesRequestBody:Z

    .line 177
    iput-boolean p5, p0, Lokhttp3/internal/http/HttpEngine;->forWebSocket:Z

    .line 178
    if-eqz p6, :cond_1a

    .line 180
    .end local p6    # "streamAllocation":Lokhttp3/internal/http/StreamAllocation;
    :goto_13
    iput-object p6, p0, Lokhttp3/internal/http/HttpEngine;->streamAllocation:Lokhttp3/internal/http/StreamAllocation;

    .line 181
    iput-object p7, p0, Lokhttp3/internal/http/HttpEngine;->requestBodyOut:Lokio/Sink;

    .line 182
    iput-object p8, p0, Lokhttp3/internal/http/HttpEngine;->priorResponse:Lokhttp3/Response;

    .line 183
    return-void

    .line 178
    .restart local p6    # "streamAllocation":Lokhttp3/internal/http/StreamAllocation;
    :cond_1a
    new-instance p6, Lokhttp3/internal/http/StreamAllocation;

    .line 180
    .end local p6    # "streamAllocation":Lokhttp3/internal/http/StreamAllocation;
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->connectionPool()Lokhttp3/ConnectionPool;

    move-result-object v0

    invoke-static {p1, p2}, Lokhttp3/internal/http/HttpEngine;->createAddress(Lokhttp3/OkHttpClient;Lokhttp3/Request;)Lokhttp3/Address;

    move-result-object v1

    invoke-direct {p6, v0, v1}, Lokhttp3/internal/http/StreamAllocation;-><init>(Lokhttp3/ConnectionPool;Lokhttp3/Address;)V

    goto :goto_13
.end method

.method static synthetic access$000(Lokhttp3/internal/http/HttpEngine;)Lokhttp3/internal/http/HttpStream;
    .registers 2
    .param p0, "x0"    # Lokhttp3/internal/http/HttpEngine;

    .prologue
    .line 86
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->httpStream:Lokhttp3/internal/http/HttpStream;

    return-object v0
.end method

.method static synthetic access$102(Lokhttp3/internal/http/HttpEngine;Lokhttp3/Request;)Lokhttp3/Request;
    .registers 2
    .param p0, "x0"    # Lokhttp3/internal/http/HttpEngine;
    .param p1, "x1"    # Lokhttp3/Request;

    .prologue
    .line 86
    iput-object p1, p0, Lokhttp3/internal/http/HttpEngine;->networkRequest:Lokhttp3/Request;

    return-object p1
.end method

.method static synthetic access$200(Lokhttp3/internal/http/HttpEngine;)Lokhttp3/Response;
    .registers 2
    .param p0, "x0"    # Lokhttp3/internal/http/HttpEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0}, Lokhttp3/internal/http/HttpEngine;->readNetworkResponse()Lokhttp3/Response;

    move-result-object v0

    return-object v0
.end method

.method private cacheWritingResponse(Lokhttp3/internal/http/CacheRequest;Lokhttp3/Response;)Lokhttp3/Response;
    .registers 11
    .param p1, "cacheRequest"    # Lokhttp3/internal/http/CacheRequest;
    .param p2, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 804
    if-nez p1, :cond_3

    .line 853
    .end local p2    # "response":Lokhttp3/Response;
    :cond_2
    :goto_2
    return-object p2

    .line 805
    .restart local p2    # "response":Lokhttp3/Response;
    :cond_3
    invoke-interface {p1}, Lokhttp3/internal/http/CacheRequest;->body()Lokio/Sink;

    move-result-object v1

    .line 806
    .local v1, "cacheBodyUnbuffered":Lokio/Sink;
    if-eqz v1, :cond_2

    .line 808
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v3

    .line 809
    .local v3, "source":Lokio/BufferedSource;
    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v0

    .line 811
    .local v0, "cacheBody":Lokio/BufferedSink;
    new-instance v2, Lokhttp3/internal/http/HttpEngine$2;

    invoke-direct {v2, p0, v3, p1, v0}, Lokhttp3/internal/http/HttpEngine$2;-><init>(Lokhttp3/internal/http/HttpEngine;Lokio/BufferedSource;Lokhttp3/internal/http/CacheRequest;Lokio/BufferedSink;)V

    .line 853
    .local v2, "cacheWritingSource":Lokio/Source;
    invoke-virtual {p2}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v4

    new-instance v5, Lokhttp3/internal/http/RealResponseBody;

    .line 854
    invoke-virtual {p2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v6

    invoke-static {v2}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lokhttp3/internal/http/RealResponseBody;-><init>(Lokhttp3/Headers;Lokio/BufferedSource;)V

    invoke-virtual {v4, v5}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v4

    .line 855
    invoke-virtual {v4}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object p2

    goto :goto_2
.end method

.method private static combine(Lokhttp3/Headers;Lokhttp3/Headers;)Lokhttp3/Headers;
    .registers 9
    .param p0, "cachedHeaders"    # Lokhttp3/Headers;
    .param p1, "networkHeaders"    # Lokhttp3/Headers;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 886
    new-instance v2, Lokhttp3/Headers$Builder;

    invoke-direct {v2}, Lokhttp3/Headers$Builder;-><init>()V

    .line 888
    .local v2, "result":Lokhttp3/Headers$Builder;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Lokhttp3/Headers;->size()I

    move-result v3

    .local v3, "size":I
    :goto_a
    if-ge v1, v3, :cond_39

    .line 889
    invoke-virtual {p0, v1}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v0

    .line 890
    .local v0, "fieldName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    .line 891
    .local v4, "value":Ljava/lang/String;
    const-string v5, "Warning"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_27

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 888
    :cond_24
    :goto_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 894
    :cond_27
    invoke-static {v0}, Lokhttp3/internal/http/OkHeaders;->isEndToEnd(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_33

    invoke-virtual {p1, v0}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_24

    .line 895
    :cond_33
    sget-object v5, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    invoke-virtual {v5, v2, v0, v4}, Lokhttp3/internal/Internal;->addLenient(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    .line 899
    .end local v0    # "fieldName":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_39
    const/4 v1, 0x0

    invoke-virtual {p1}, Lokhttp3/Headers;->size()I

    move-result v3

    :goto_3e
    if-ge v1, v3, :cond_5f

    .line 900
    invoke-virtual {p1, v1}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v0

    .line 901
    .restart local v0    # "fieldName":Ljava/lang/String;
    const-string v5, "Content-Length"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 899
    :cond_4c
    :goto_4c
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    .line 904
    :cond_4f
    invoke-static {v0}, Lokhttp3/internal/http/OkHeaders;->isEndToEnd(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 905
    sget-object v5, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    invoke-virtual {p1, v1}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v2, v0, v6}, Lokhttp3/internal/Internal;->addLenient(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4c

    .line 909
    .end local v0    # "fieldName":Ljava/lang/String;
    :cond_5f
    invoke-virtual {v2}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v5

    return-object v5
.end method

.method private connect()Lokhttp3/internal/http/HttpStream;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lokhttp3/internal/http/RouteException;,
            Lokhttp3/internal/http/RequestException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 295
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->networkRequest:Lokhttp3/Request;

    invoke-virtual {v0}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    const/4 v5, 0x1

    .line 296
    .local v5, "doExtensiveHealthChecks":Z
    :goto_f
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->streamAllocation:Lokhttp3/internal/http/StreamAllocation;

    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->connectTimeoutMillis()I

    move-result v1

    iget-object v2, p0, Lokhttp3/internal/http/HttpEngine;->client:Lokhttp3/OkHttpClient;

    .line 297
    invoke-virtual {v2}, Lokhttp3/OkHttpClient;->readTimeoutMillis()I

    move-result v2

    iget-object v3, p0, Lokhttp3/internal/http/HttpEngine;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v3}, Lokhttp3/OkHttpClient;->writeTimeoutMillis()I

    move-result v3

    iget-object v4, p0, Lokhttp3/internal/http/HttpEngine;->client:Lokhttp3/OkHttpClient;

    .line 298
    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->retryOnConnectionFailure()Z

    move-result v4

    .line 296
    invoke-virtual/range {v0 .. v5}, Lokhttp3/internal/http/StreamAllocation;->newStream(IIIZZ)Lokhttp3/internal/http/HttpStream;

    move-result-object v0

    return-object v0

    .line 295
    .end local v5    # "doExtensiveHealthChecks":Z
    :cond_2e
    const/4 v5, 0x0

    goto :goto_f
.end method

.method private cookieHeader(Ljava/util/List;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Cookie;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 580
    .local p1, "cookies":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Cookie;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 581
    .local v1, "cookieHeader":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "size":I
    :goto_a
    if-ge v2, v3, :cond_31

    .line 582
    if-lez v2, :cond_13

    .line 583
    const-string v4, "; "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    :cond_13
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Cookie;

    .line 586
    .local v0, "cookie":Lokhttp3/Cookie;
    invoke-virtual {v0}, Lokhttp3/Cookie;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lokhttp3/Cookie;->value()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 588
    .end local v0    # "cookie":Lokhttp3/Cookie;
    :cond_31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static createAddress(Lokhttp3/OkHttpClient;Lokhttp3/Request;)Lokhttp3/Address;
    .registers 15
    .param p0, "client"    # Lokhttp3/OkHttpClient;
    .param p1, "request"    # Lokhttp3/Request;

    .prologue
    .line 1024
    const/4 v5, 0x0

    .line 1025
    .local v5, "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    const/4 v6, 0x0

    .line 1026
    .local v6, "hostnameVerifier":Ljavax/net/ssl/HostnameVerifier;
    const/4 v7, 0x0

    .line 1027
    .local v7, "certificatePinner":Lokhttp3/CertificatePinner;
    invoke-virtual {p1}, Lokhttp3/Request;->isHttps()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1028
    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    .line 1029
    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v6

    .line 1030
    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->certificatePinner()Lokhttp3/CertificatePinner;

    move-result-object v7

    .line 1033
    :cond_15
    new-instance v0, Lokhttp3/Address;

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->port()I

    move-result v2

    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->dns()Lokhttp3/Dns;

    move-result-object v3

    .line 1034
    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->socketFactory()Ljavax/net/SocketFactory;

    move-result-object v4

    .line 1035
    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->proxyAuthenticator()Lokhttp3/Authenticator;

    move-result-object v8

    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->proxy()Ljava/net/Proxy;

    move-result-object v9

    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->protocols()Ljava/util/List;

    move-result-object v10

    .line 1036
    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->connectionSpecs()Ljava/util/List;

    move-result-object v11

    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->proxySelector()Ljava/net/ProxySelector;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, Lokhttp3/Address;-><init>(Ljava/lang/String;ILokhttp3/Dns;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lokhttp3/CertificatePinner;Lokhttp3/Authenticator;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    .line 1033
    return-object v0
.end method

.method public static hasBody(Lokhttp3/Response;)Z
    .registers 9
    .param p0, "response"    # Lokhttp3/Response;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 522
    invoke-virtual {p0}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v3

    const-string v4, "HEAD"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 541
    :cond_12
    :goto_12
    return v1

    .line 526
    :cond_13
    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result v0

    .line 527
    .local v0, "responseCode":I
    const/16 v3, 0x64

    if-lt v0, v3, :cond_1f

    const/16 v3, 0xc8

    if-lt v0, v3, :cond_29

    :cond_1f
    const/16 v3, 0xcc

    if-eq v0, v3, :cond_29

    const/16 v3, 0x130

    if-eq v0, v3, :cond_29

    move v1, v2

    .line 530
    goto :goto_12

    .line 536
    :cond_29
    invoke-static {p0}, Lokhttp3/internal/http/OkHeaders;->contentLength(Lokhttp3/Response;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_41

    const-string v3, "chunked"

    const-string v4, "Transfer-Encoding"

    .line 537
    invoke-virtual {p0, v4}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    :cond_41
    move v1, v2

    .line 538
    goto :goto_12
.end method

.method private isRecoverable(Ljava/io/IOException;Z)Z
    .registers 6
    .param p1, "e"    # Ljava/io/IOException;
    .param p2, "routeException"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 391
    instance-of v2, p1, Ljava/net/ProtocolException;

    if-eqz v2, :cond_7

    .line 418
    :cond_6
    :goto_6
    return v1

    .line 397
    :cond_7
    instance-of v2, p1, Ljava/io/InterruptedIOException;

    if-eqz v2, :cond_15

    .line 398
    instance-of v2, p1, Ljava/net/SocketTimeoutException;

    if-eqz v2, :cond_13

    if-eqz p2, :cond_13

    :goto_11
    move v1, v0

    goto :goto_6

    :cond_13
    move v0, v1

    goto :goto_11

    .line 403
    :cond_15
    instance-of v2, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v2, :cond_21

    .line 406
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/security/cert/CertificateException;

    if-nez v2, :cond_6

    .line 410
    :cond_21
    instance-of v2, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-nez v2, :cond_6

    move v1, v0

    .line 418
    goto :goto_6
.end method

.method private maybeCache()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 422
    sget-object v1, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    iget-object v2, p0, Lokhttp3/internal/http/HttpEngine;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1, v2}, Lokhttp3/internal/Internal;->internalCache(Lokhttp3/OkHttpClient;)Lokhttp3/internal/InternalCache;

    move-result-object v0

    .line 423
    .local v0, "responseCache":Lokhttp3/internal/InternalCache;
    if-nez v0, :cond_b

    .line 439
    :cond_a
    :goto_a
    return-void

    .line 426
    :cond_b
    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->userResponse:Lokhttp3/Response;

    iget-object v2, p0, Lokhttp3/internal/http/HttpEngine;->networkRequest:Lokhttp3/Request;

    invoke-static {v1, v2}, Lokhttp3/internal/http/CacheStrategy;->isCacheable(Lokhttp3/Response;Lokhttp3/Request;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 427
    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->networkRequest:Lokhttp3/Request;

    invoke-virtual {v1}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lokhttp3/internal/http/HttpMethod;->invalidatesCache(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 429
    :try_start_21
    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->networkRequest:Lokhttp3/Request;

    invoke-interface {v0, v1}, Lokhttp3/internal/InternalCache;->remove(Lokhttp3/Request;)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_26} :catch_27

    goto :goto_a

    .line 430
    :catch_27
    move-exception v1

    goto :goto_a

    .line 438
    :cond_29
    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->userResponse:Lokhttp3/Response;

    invoke-interface {v0, v1}, Lokhttp3/internal/InternalCache;->put(Lokhttp3/Response;)Lokhttp3/internal/http/CacheRequest;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/internal/http/HttpEngine;->storeRequest:Lokhttp3/internal/http/CacheRequest;

    goto :goto_a
.end method

.method private networkRequest(Lokhttp3/Request;)Lokhttp3/Request;
    .registers 7
    .param p1, "request"    # Lokhttp3/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 551
    invoke-virtual {p1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v1

    .line 553
    .local v1, "result":Lokhttp3/Request$Builder;
    const-string v2, "Host"

    invoke-virtual {p1, v2}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1a

    .line 554
    const-string v2, "Host"

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lokhttp3/internal/Util;->hostHeader(Lokhttp3/HttpUrl;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 557
    :cond_1a
    const-string v2, "Connection"

    invoke-virtual {p1, v2}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_29

    .line 558
    const-string v2, "Connection"

    const-string v3, "Keep-Alive"

    invoke-virtual {v1, v2, v3}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 561
    :cond_29
    const-string v2, "Accept-Encoding"

    invoke-virtual {p1, v2}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3b

    .line 562
    const/4 v2, 0x1

    iput-boolean v2, p0, Lokhttp3/internal/http/HttpEngine;->transparentGzip:Z

    .line 563
    const-string v2, "Accept-Encoding"

    const-string v3, "gzip"

    invoke-virtual {v1, v2, v3}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 566
    :cond_3b
    iget-object v2, p0, Lokhttp3/internal/http/HttpEngine;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v2}, Lokhttp3/OkHttpClient;->cookieJar()Lokhttp3/CookieJar;

    move-result-object v2

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v3

    invoke-interface {v2, v3}, Lokhttp3/CookieJar;->loadForRequest(Lokhttp3/HttpUrl;)Ljava/util/List;

    move-result-object v0

    .line 567
    .local v0, "cookies":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Cookie;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_58

    .line 568
    const-string v2, "Cookie"

    invoke-direct {p0, v0}, Lokhttp3/internal/http/HttpEngine;->cookieHeader(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 571
    :cond_58
    const-string v2, "User-Agent"

    invoke-virtual {p1, v2}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_69

    .line 572
    const-string v2, "User-Agent"

    invoke-static {}, Lokhttp3/internal/Version;->userAgent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 575
    :cond_69
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    return-object v2
.end method

.method private readNetworkResponse()Lokhttp3/Response;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 773
    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->httpStream:Lokhttp3/internal/http/HttpStream;

    invoke-interface {v1}, Lokhttp3/internal/http/HttpStream;->finishRequest()V

    .line 775
    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->httpStream:Lokhttp3/internal/http/HttpStream;

    invoke-interface {v1}, Lokhttp3/internal/http/HttpStream;->readResponseHeaders()Lokhttp3/Response$Builder;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/http/HttpEngine;->networkRequest:Lokhttp3/Request;

    .line 776
    invoke-virtual {v1, v2}, Lokhttp3/Response$Builder;->request(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/http/HttpEngine;->streamAllocation:Lokhttp3/internal/http/StreamAllocation;

    .line 777
    invoke-virtual {v2}, Lokhttp3/internal/http/StreamAllocation;->connection()Lokhttp3/internal/io/RealConnection;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/internal/io/RealConnection;->handshake()Lokhttp3/Handshake;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/Response$Builder;->handshake(Lokhttp3/Handshake;)Lokhttp3/Response$Builder;

    move-result-object v1

    iget-wide v2, p0, Lokhttp3/internal/http/HttpEngine;->sentRequestMillis:J

    .line 778
    invoke-virtual {v1, v2, v3}, Lokhttp3/Response$Builder;->sentRequestAtMillis(J)Lokhttp3/Response$Builder;

    move-result-object v1

    .line 779
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lokhttp3/Response$Builder;->receivedResponseAtMillis(J)Lokhttp3/Response$Builder;

    move-result-object v1

    .line 780
    invoke-virtual {v1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v0

    .line 782
    .local v0, "networkResponse":Lokhttp3/Response;
    iget-boolean v1, p0, Lokhttp3/internal/http/HttpEngine;->forWebSocket:Z

    if-eqz v1, :cond_3d

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v1

    const/16 v2, 0x65

    if-eq v1, v2, :cond_4f

    .line 783
    :cond_3d
    invoke-virtual {v0}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/http/HttpEngine;->httpStream:Lokhttp3/internal/http/HttpStream;

    .line 784
    invoke-interface {v2, v0}, Lokhttp3/internal/http/HttpStream;->openResponseBody(Lokhttp3/Response;)Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v1

    .line 785
    invoke-virtual {v1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v0

    .line 788
    :cond_4f
    const-string v1, "close"

    invoke-virtual {v0}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v2

    const-string v3, "Connection"

    invoke-virtual {v2, v3}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6f

    const-string v1, "close"

    const-string v2, "Connection"

    .line 789
    invoke-virtual {v0, v2}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_74

    .line 790
    :cond_6f
    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->streamAllocation:Lokhttp3/internal/http/StreamAllocation;

    invoke-virtual {v1}, Lokhttp3/internal/http/StreamAllocation;->noNewStreams()V

    .line 793
    :cond_74
    return-object v0
.end method

.method private static stripBody(Lokhttp3/Response;)Lokhttp3/Response;
    .registers 3
    .param p0, "response"    # Lokhttp3/Response;

    .prologue
    .line 302
    if-eqz p0, :cond_15

    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 303
    invoke-virtual {p0}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object p0

    .line 302
    .end local p0    # "response":Lokhttp3/Response;
    :cond_15
    return-object p0
.end method

.method private unzip(Lokhttp3/Response;)Lokhttp3/Response;
    .registers 7
    .param p1, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 498
    iget-boolean v2, p0, Lokhttp3/internal/http/HttpEngine;->transparentGzip:Z

    if-eqz v2, :cond_14

    const-string v2, "gzip"

    iget-object v3, p0, Lokhttp3/internal/http/HttpEngine;->userResponse:Lokhttp3/Response;

    const-string v4, "Content-Encoding"

    invoke-virtual {v3, v4}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 511
    .end local p1    # "response":Lokhttp3/Response;
    :cond_14
    :goto_14
    return-object p1

    .line 502
    .restart local p1    # "response":Lokhttp3/Response;
    :cond_15
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 506
    new-instance v0, Lokio/GzipSource;

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v2

    invoke-direct {v0, v2}, Lokio/GzipSource;-><init>(Lokio/Source;)V

    .line 507
    .local v0, "responseBody":Lokio/GzipSource;
    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    move-result-object v2

    const-string v3, "Content-Encoding"

    .line 508
    invoke-virtual {v2, v3}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object v2

    const-string v3, "Content-Length"

    .line 509
    invoke-virtual {v2, v3}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object v2

    .line 510
    invoke-virtual {v2}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v1

    .line 511
    .local v1, "strippedHeaders":Lokhttp3/Headers;
    invoke-virtual {p1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v2

    .line 512
    invoke-virtual {v2, v1}, Lokhttp3/Response$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Response$Builder;

    move-result-object v2

    new-instance v3, Lokhttp3/internal/http/RealResponseBody;

    .line 513
    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lokhttp3/internal/http/RealResponseBody;-><init>(Lokhttp3/Headers;Lokio/BufferedSource;)V

    invoke-virtual {v2, v3}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v2

    .line 514
    invoke-virtual {v2}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object p1

    goto :goto_14
.end method

.method private static validate(Lokhttp3/Response;Lokhttp3/Response;)Z
    .registers 10
    .param p0, "cached"    # Lokhttp3/Response;
    .param p1, "network"    # Lokhttp3/Response;

    .prologue
    const/4 v2, 0x1

    .line 863
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v3

    const/16 v4, 0x130

    if-ne v3, v4, :cond_a

    .line 879
    :cond_9
    :goto_9
    return v2

    .line 870
    :cond_a
    invoke-virtual {p0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v3

    const-string v4, "Last-Modified"

    invoke-virtual {v3, v4}, Lokhttp3/Headers;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 871
    .local v0, "lastModified":Ljava/util/Date;
    if-eqz v0, :cond_2e

    .line 872
    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v3

    const-string v4, "Last-Modified"

    invoke-virtual {v3, v4}, Lokhttp3/Headers;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 873
    .local v1, "networkLastModified":Ljava/util/Date;
    if-eqz v1, :cond_2e

    .line 874
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-ltz v3, :cond_9

    .line 879
    .end local v1    # "networkLastModified":Ljava/util/Date;
    :cond_2e
    const/4 v2, 0x0

    goto :goto_9
.end method

.method private writeRequestHeadersEagerly()Z
    .registers 2

    .prologue
    .line 289
    iget-boolean v0, p0, Lokhttp3/internal/http/HttpEngine;->callerWritesRequestBody:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->networkRequest:Lokhttp3/Request;

    .line 290
    invoke-virtual {p0, v0}, Lokhttp3/internal/http/HttpEngine;->permitsRequestBody(Lokhttp3/Request;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->requestBodyOut:Lokio/Sink;

    if-nez v0, :cond_12

    const/4 v0, 0x1

    .line 289
    :goto_11
    return v0

    .line 290
    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 459
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->streamAllocation:Lokhttp3/internal/http/StreamAllocation;

    invoke-virtual {v0}, Lokhttp3/internal/http/StreamAllocation;->cancel()V

    .line 460
    return-void
.end method

.method public close()Lokhttp3/internal/http/StreamAllocation;
    .registers 3

    .prologue
    .line 467
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->bufferedRequestBody:Lokio/BufferedSink;

    if-eqz v0, :cond_19

    .line 469
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->bufferedRequestBody:Lokio/BufferedSink;

    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 474
    :cond_9
    :goto_9
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->userResponse:Lokhttp3/Response;

    if-eqz v0, :cond_23

    .line 475
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->userResponse:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 481
    :goto_16
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->streamAllocation:Lokhttp3/internal/http/StreamAllocation;

    return-object v0

    .line 470
    :cond_19
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->requestBodyOut:Lokio/Sink;

    if-eqz v0, :cond_9

    .line 471
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->requestBodyOut:Lokio/Sink;

    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_9

    .line 478
    :cond_23
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->streamAllocation:Lokhttp3/internal/http/StreamAllocation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lokhttp3/internal/http/StreamAllocation;->streamFailed(Ljava/io/IOException;)V

    goto :goto_16
.end method

.method public followUpRequest()Lokhttp3/Request;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 927
    iget-object v11, p0, Lokhttp3/internal/http/HttpEngine;->userResponse:Lokhttp3/Response;

    if-nez v11, :cond_b

    new-instance v10, Ljava/lang/IllegalStateException;

    invoke-direct {v10}, Ljava/lang/IllegalStateException;-><init>()V

    throw v10

    .line 928
    :cond_b
    iget-object v11, p0, Lokhttp3/internal/http/HttpEngine;->streamAllocation:Lokhttp3/internal/http/StreamAllocation;

    invoke-virtual {v11}, Lokhttp3/internal/http/StreamAllocation;->connection()Lokhttp3/internal/io/RealConnection;

    move-result-object v0

    .line 929
    .local v0, "connection":Lokhttp3/Connection;
    if-eqz v0, :cond_27

    .line 930
    invoke-interface {v0}, Lokhttp3/Connection;->route()Lokhttp3/Route;

    move-result-object v6

    .line 932
    .local v6, "route":Lokhttp3/Route;
    :goto_17
    iget-object v11, p0, Lokhttp3/internal/http/HttpEngine;->userResponse:Lokhttp3/Response;

    invoke-virtual {v11}, Lokhttp3/Response;->code()I

    move-result v4

    .line 934
    .local v4, "responseCode":I
    iget-object v11, p0, Lokhttp3/internal/http/HttpEngine;->userRequest:Lokhttp3/Request;

    invoke-virtual {v11}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v2

    .line 935
    .local v2, "method":Ljava/lang/String;
    sparse-switch v4, :sswitch_data_100

    .line 1008
    :cond_26
    :goto_26
    return-object v10

    .end local v2    # "method":Ljava/lang/String;
    .end local v4    # "responseCode":I
    .end local v6    # "route":Lokhttp3/Route;
    :cond_27
    move-object v6, v10

    .line 930
    goto :goto_17

    .line 937
    .restart local v2    # "method":Ljava/lang/String;
    .restart local v4    # "responseCode":I
    .restart local v6    # "route":Lokhttp3/Route;
    :sswitch_29
    if-eqz v6, :cond_3f

    .line 938
    invoke-virtual {v6}, Lokhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v8

    .line 940
    .local v8, "selectedProxy":Ljava/net/Proxy;
    :goto_2f
    invoke-virtual {v8}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v10

    sget-object v11, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-eq v10, v11, :cond_46

    .line 941
    new-instance v10, Ljava/net/ProtocolException;

    const-string v11, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {v10, v11}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 938
    .end local v8    # "selectedProxy":Ljava/net/Proxy;
    :cond_3f
    iget-object v10, p0, Lokhttp3/internal/http/HttpEngine;->client:Lokhttp3/OkHttpClient;

    .line 939
    invoke-virtual {v10}, Lokhttp3/OkHttpClient;->proxy()Ljava/net/Proxy;

    move-result-object v8

    goto :goto_2f

    .line 943
    .restart local v8    # "selectedProxy":Ljava/net/Proxy;
    :cond_46
    iget-object v10, p0, Lokhttp3/internal/http/HttpEngine;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v10}, Lokhttp3/OkHttpClient;->proxyAuthenticator()Lokhttp3/Authenticator;

    move-result-object v10

    iget-object v11, p0, Lokhttp3/internal/http/HttpEngine;->userResponse:Lokhttp3/Response;

    invoke-interface {v10, v6, v11}, Lokhttp3/Authenticator;->authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    move-result-object v10

    goto :goto_26

    .line 946
    .end local v8    # "selectedProxy":Ljava/net/Proxy;
    :sswitch_53
    iget-object v10, p0, Lokhttp3/internal/http/HttpEngine;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v10}, Lokhttp3/OkHttpClient;->authenticator()Lokhttp3/Authenticator;

    move-result-object v10

    iget-object v11, p0, Lokhttp3/internal/http/HttpEngine;->userResponse:Lokhttp3/Response;

    invoke-interface {v10, v6, v11}, Lokhttp3/Authenticator;->authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    move-result-object v10

    goto :goto_26

    .line 952
    :sswitch_60
    const-string v11, "GET"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_70

    const-string v11, "HEAD"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_26

    .line 961
    :cond_70
    :sswitch_70
    iget-object v11, p0, Lokhttp3/internal/http/HttpEngine;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v11}, Lokhttp3/OkHttpClient;->followRedirects()Z

    move-result v11

    if-eqz v11, :cond_26

    .line 963
    iget-object v11, p0, Lokhttp3/internal/http/HttpEngine;->userResponse:Lokhttp3/Response;

    const-string v12, "Location"

    invoke-virtual {v11, v12}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 964
    .local v1, "location":Ljava/lang/String;
    if-eqz v1, :cond_26

    .line 965
    iget-object v11, p0, Lokhttp3/internal/http/HttpEngine;->userRequest:Lokhttp3/Request;

    invoke-virtual {v11}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v11

    invoke-virtual {v11, v1}, Lokhttp3/HttpUrl;->resolve(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v9

    .line 968
    .local v9, "url":Lokhttp3/HttpUrl;
    if-eqz v9, :cond_26

    .line 971
    invoke-virtual {v9}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lokhttp3/internal/http/HttpEngine;->userRequest:Lokhttp3/Request;

    invoke-virtual {v12}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v12

    invoke-virtual {v12}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 972
    .local v7, "sameScheme":Z
    if-nez v7, :cond_aa

    iget-object v11, p0, Lokhttp3/internal/http/HttpEngine;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v11}, Lokhttp3/OkHttpClient;->followSslRedirects()Z

    move-result v11

    if-eqz v11, :cond_26

    .line 975
    :cond_aa
    iget-object v11, p0, Lokhttp3/internal/http/HttpEngine;->userRequest:Lokhttp3/Request;

    invoke-virtual {v11}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v3

    .line 976
    .local v3, "requestBuilder":Lokhttp3/Request$Builder;
    invoke-static {v2}, Lokhttp3/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d0

    .line 977
    invoke-static {v2}, Lokhttp3/internal/http/HttpMethod;->redirectsToGet(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_e5

    .line 978
    const-string v11, "GET"

    invoke-virtual {v3, v11, v10}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 982
    :goto_c1
    const-string v10, "Transfer-Encoding"

    invoke-virtual {v3, v10}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 983
    const-string v10, "Content-Length"

    invoke-virtual {v3, v10}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 984
    const-string v10, "Content-Type"

    invoke-virtual {v3, v10}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 990
    :cond_d0
    invoke-virtual {p0, v9}, Lokhttp3/internal/http/HttpEngine;->sameConnection(Lokhttp3/HttpUrl;)Z

    move-result v10

    if-nez v10, :cond_db

    .line 991
    const-string v10, "Authorization"

    invoke-virtual {v3, v10}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 994
    :cond_db
    invoke-virtual {v3, v9}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v10

    invoke-virtual {v10}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v10

    goto/16 :goto_26

    .line 980
    :cond_e5
    invoke-virtual {v3, v2, v10}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    goto :goto_c1

    .line 1000
    .end local v1    # "location":Ljava/lang/String;
    .end local v3    # "requestBuilder":Lokhttp3/Request$Builder;
    .end local v7    # "sameScheme":Z
    .end local v9    # "url":Lokhttp3/HttpUrl;
    :sswitch_e9
    iget-object v11, p0, Lokhttp3/internal/http/HttpEngine;->requestBodyOut:Lokio/Sink;

    if-eqz v11, :cond_f3

    iget-object v11, p0, Lokhttp3/internal/http/HttpEngine;->requestBodyOut:Lokio/Sink;

    instance-of v11, v11, Lokhttp3/internal/http/RetryableSink;

    if-eqz v11, :cond_fe

    :cond_f3
    const/4 v5, 0x1

    .line 1001
    .local v5, "retryableBody":Z
    :goto_f4
    iget-boolean v11, p0, Lokhttp3/internal/http/HttpEngine;->callerWritesRequestBody:Z

    if-eqz v11, :cond_fa

    if-eqz v5, :cond_26

    .line 1005
    :cond_fa
    iget-object v10, p0, Lokhttp3/internal/http/HttpEngine;->userRequest:Lokhttp3/Request;

    goto/16 :goto_26

    .line 1000
    .end local v5    # "retryableBody":Z
    :cond_fe
    const/4 v5, 0x0

    goto :goto_f4

    .line 935
    :sswitch_data_100
    .sparse-switch
        0x12c -> :sswitch_70
        0x12d -> :sswitch_70
        0x12e -> :sswitch_70
        0x12f -> :sswitch_70
        0x133 -> :sswitch_60
        0x134 -> :sswitch_60
        0x191 -> :sswitch_53
        0x197 -> :sswitch_29
        0x198 -> :sswitch_e9
    .end sparse-switch
.end method

.method public getBufferedRequestBody()Lokio/BufferedSink;
    .registers 4

    .prologue
    .line 327
    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->bufferedRequestBody:Lokio/BufferedSink;

    .line 328
    .local v1, "result":Lokio/BufferedSink;
    if-eqz v1, :cond_5

    .line 330
    .end local v1    # "result":Lokio/BufferedSink;
    :goto_4
    return-object v1

    .line 329
    .restart local v1    # "result":Lokio/BufferedSink;
    :cond_5
    invoke-virtual {p0}, Lokhttp3/internal/http/HttpEngine;->getRequestBody()Lokio/Sink;

    move-result-object v0

    .line 330
    .local v0, "requestBody":Lokio/Sink;
    if-eqz v0, :cond_13

    .line 331
    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v2

    iput-object v2, p0, Lokhttp3/internal/http/HttpEngine;->bufferedRequestBody:Lokio/BufferedSink;

    :goto_11
    move-object v1, v2

    .line 330
    goto :goto_4

    .line 331
    :cond_13
    const/4 v2, 0x0

    goto :goto_11
.end method

.method public getConnection()Lokhttp3/Connection;
    .registers 2

    .prologue
    .line 351
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->streamAllocation:Lokhttp3/internal/http/StreamAllocation;

    invoke-virtual {v0}, Lokhttp3/internal/http/StreamAllocation;->connection()Lokhttp3/internal/io/RealConnection;

    move-result-object v0

    return-object v0
.end method

.method public getRequest()Lokhttp3/Request;
    .registers 2

    .prologue
    .line 340
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->userRequest:Lokhttp3/Request;

    return-object v0
.end method

.method public getRequestBody()Lokio/Sink;
    .registers 2

    .prologue
    .line 322
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->cacheStrategy:Lokhttp3/internal/http/CacheStrategy;

    if-nez v0, :cond_a

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 323
    :cond_a
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->requestBodyOut:Lokio/Sink;

    return-object v0
.end method

.method public getResponse()Lokhttp3/Response;
    .registers 2

    .prologue
    .line 346
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->userResponse:Lokhttp3/Response;

    if-nez v0, :cond_a

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 347
    :cond_a
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->userResponse:Lokhttp3/Response;

    return-object v0
.end method

.method public hasResponse()Z
    .registers 2

    .prologue
    .line 336
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->userResponse:Lokhttp3/Response;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method permitsRequestBody(Lokhttp3/Request;)Z
    .registers 3
    .param p1, "request"    # Lokhttp3/Request;

    .prologue
    .line 317
    invoke-virtual {p1}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public readResponse()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, -0x1

    .line 596
    iget-object v4, p0, Lokhttp3/internal/http/HttpEngine;->userResponse:Lokhttp3/Response;

    if-eqz v4, :cond_7

    .line 686
    :cond_6
    :goto_6
    return-void

    .line 599
    :cond_7
    iget-object v4, p0, Lokhttp3/internal/http/HttpEngine;->networkRequest:Lokhttp3/Request;

    if-nez v4, :cond_17

    iget-object v4, p0, Lokhttp3/internal/http/HttpEngine;->cacheResponse:Lokhttp3/Response;

    if-nez v4, :cond_17

    .line 600
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "call sendRequest() first!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 602
    :cond_17
    iget-object v4, p0, Lokhttp3/internal/http/HttpEngine;->networkRequest:Lokhttp3/Request;

    if-eqz v4, :cond_6

    .line 608
    iget-boolean v4, p0, Lokhttp3/internal/http/HttpEngine;->forWebSocket:Z

    if-eqz v4, :cond_a3

    .line 609
    iget-object v4, p0, Lokhttp3/internal/http/HttpEngine;->httpStream:Lokhttp3/internal/http/HttpStream;

    iget-object v5, p0, Lokhttp3/internal/http/HttpEngine;->networkRequest:Lokhttp3/Request;

    invoke-interface {v4, v5}, Lokhttp3/internal/http/HttpStream;->writeRequestHeaders(Lokhttp3/Request;)V

    .line 610
    invoke-direct {p0}, Lokhttp3/internal/http/HttpEngine;->readNetworkResponse()Lokhttp3/Response;

    move-result-object v2

    .line 648
    .local v2, "networkResponse":Lokhttp3/Response;
    :goto_2a
    invoke-virtual {v2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v4

    invoke-virtual {p0, v4}, Lokhttp3/internal/http/HttpEngine;->receiveHeaders(Lokhttp3/Headers;)V

    .line 651
    iget-object v4, p0, Lokhttp3/internal/http/HttpEngine;->cacheResponse:Lokhttp3/Response;

    if-eqz v4, :cond_142

    .line 652
    iget-object v4, p0, Lokhttp3/internal/http/HttpEngine;->cacheResponse:Lokhttp3/Response;

    invoke-static {v4, v2}, Lokhttp3/internal/http/HttpEngine;->validate(Lokhttp3/Response;Lokhttp3/Response;)Z

    move-result v4

    if-eqz v4, :cond_139

    .line 653
    iget-object v4, p0, Lokhttp3/internal/http/HttpEngine;->cacheResponse:Lokhttp3/Response;

    invoke-virtual {v4}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v4

    iget-object v5, p0, Lokhttp3/internal/http/HttpEngine;->userRequest:Lokhttp3/Request;

    .line 654
    invoke-virtual {v4, v5}, Lokhttp3/Response$Builder;->request(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    move-result-object v4

    iget-object v5, p0, Lokhttp3/internal/http/HttpEngine;->priorResponse:Lokhttp3/Response;

    .line 655
    invoke-static {v5}, Lokhttp3/internal/http/HttpEngine;->stripBody(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v5

    invoke-virtual {v4, v5}, Lokhttp3/Response$Builder;->priorResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;

    move-result-object v4

    iget-object v5, p0, Lokhttp3/internal/http/HttpEngine;->cacheResponse:Lokhttp3/Response;

    .line 656
    invoke-virtual {v5}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v5

    invoke-virtual {v2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v6

    invoke-static {v5, v6}, Lokhttp3/internal/http/HttpEngine;->combine(Lokhttp3/Headers;Lokhttp3/Headers;)Lokhttp3/Headers;

    move-result-object v5

    invoke-virtual {v4, v5}, Lokhttp3/Response$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Response$Builder;

    move-result-object v4

    iget-object v5, p0, Lokhttp3/internal/http/HttpEngine;->cacheResponse:Lokhttp3/Response;

    .line 657
    invoke-static {v5}, Lokhttp3/internal/http/HttpEngine;->stripBody(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v5

    invoke-virtual {v4, v5}, Lokhttp3/Response$Builder;->cacheResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;

    move-result-object v4

    .line 658
    invoke-static {v2}, Lokhttp3/internal/http/HttpEngine;->stripBody(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v5

    invoke-virtual {v4, v5}, Lokhttp3/Response$Builder;->networkResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;

    move-result-object v4

    .line 659
    invoke-virtual {v4}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v4

    iput-object v4, p0, Lokhttp3/internal/http/HttpEngine;->userResponse:Lokhttp3/Response;

    .line 660
    invoke-virtual {v2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/ResponseBody;->close()V

    .line 661
    invoke-virtual {p0}, Lokhttp3/internal/http/HttpEngine;->releaseStreamAllocation()V

    .line 665
    sget-object v4, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    iget-object v5, p0, Lokhttp3/internal/http/HttpEngine;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v4, v5}, Lokhttp3/internal/Internal;->internalCache(Lokhttp3/OkHttpClient;)Lokhttp3/internal/InternalCache;

    move-result-object v3

    .line 666
    .local v3, "responseCache":Lokhttp3/internal/InternalCache;
    invoke-interface {v3}, Lokhttp3/internal/InternalCache;->trackConditionalCacheHit()V

    .line 667
    iget-object v4, p0, Lokhttp3/internal/http/HttpEngine;->cacheResponse:Lokhttp3/Response;

    iget-object v5, p0, Lokhttp3/internal/http/HttpEngine;->userResponse:Lokhttp3/Response;

    invoke-interface {v3, v4, v5}, Lokhttp3/internal/InternalCache;->update(Lokhttp3/Response;Lokhttp3/Response;)V

    .line 668
    iget-object v4, p0, Lokhttp3/internal/http/HttpEngine;->userResponse:Lokhttp3/Response;

    invoke-direct {p0, v4}, Lokhttp3/internal/http/HttpEngine;->unzip(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v4

    iput-object v4, p0, Lokhttp3/internal/http/HttpEngine;->userResponse:Lokhttp3/Response;

    goto/16 :goto_6

    .line 611
    .end local v2    # "networkResponse":Lokhttp3/Response;
    .end local v3    # "responseCache":Lokhttp3/internal/InternalCache;
    :cond_a3
    iget-boolean v4, p0, Lokhttp3/internal/http/HttpEngine;->callerWritesRequestBody:Z

    if-nez v4, :cond_bd

    .line 612
    new-instance v4, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;

    const/4 v5, 0x0

    iget-object v6, p0, Lokhttp3/internal/http/HttpEngine;->networkRequest:Lokhttp3/Request;

    iget-object v7, p0, Lokhttp3/internal/http/HttpEngine;->streamAllocation:Lokhttp3/internal/http/StreamAllocation;

    .line 613
    invoke-virtual {v7}, Lokhttp3/internal/http/StreamAllocation;->connection()Lokhttp3/internal/io/RealConnection;

    move-result-object v7

    invoke-direct {v4, p0, v5, v6, v7}, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;-><init>(Lokhttp3/internal/http/HttpEngine;ILokhttp3/Request;Lokhttp3/Connection;)V

    iget-object v5, p0, Lokhttp3/internal/http/HttpEngine;->networkRequest:Lokhttp3/Request;

    invoke-virtual {v4, v5}, Lokhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v2

    .restart local v2    # "networkResponse":Lokhttp3/Response;
    goto/16 :goto_2a

    .line 616
    .end local v2    # "networkResponse":Lokhttp3/Response;
    :cond_bd
    iget-object v4, p0, Lokhttp3/internal/http/HttpEngine;->bufferedRequestBody:Lokio/BufferedSink;

    if-eqz v4, :cond_d6

    iget-object v4, p0, Lokhttp3/internal/http/HttpEngine;->bufferedRequestBody:Lokio/BufferedSink;

    invoke-interface {v4}, Lokio/BufferedSink;->buffer()Lokio/Buffer;

    move-result-object v4

    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_d6

    .line 617
    iget-object v4, p0, Lokhttp3/internal/http/HttpEngine;->bufferedRequestBody:Lokio/BufferedSink;

    invoke-interface {v4}, Lokio/BufferedSink;->emit()Lokio/BufferedSink;

    .line 621
    :cond_d6
    iget-wide v4, p0, Lokhttp3/internal/http/HttpEngine;->sentRequestMillis:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_111

    .line 622
    iget-object v4, p0, Lokhttp3/internal/http/HttpEngine;->networkRequest:Lokhttp3/Request;

    invoke-static {v4}, Lokhttp3/internal/http/OkHeaders;->contentLength(Lokhttp3/Request;)J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-nez v4, :cond_10a

    iget-object v4, p0, Lokhttp3/internal/http/HttpEngine;->requestBodyOut:Lokio/Sink;

    instance-of v4, v4, Lokhttp3/internal/http/RetryableSink;

    if-eqz v4, :cond_10a

    .line 624
    iget-object v4, p0, Lokhttp3/internal/http/HttpEngine;->requestBodyOut:Lokio/Sink;

    check-cast v4, Lokhttp3/internal/http/RetryableSink;

    invoke-virtual {v4}, Lokhttp3/internal/http/RetryableSink;->contentLength()J

    move-result-wide v0

    .line 625
    .local v0, "contentLength":J
    iget-object v4, p0, Lokhttp3/internal/http/HttpEngine;->networkRequest:Lokhttp3/Request;

    invoke-virtual {v4}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v4

    const-string v5, "Content-Length"

    .line 626
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v4

    .line 627
    invoke-virtual {v4}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v4

    iput-object v4, p0, Lokhttp3/internal/http/HttpEngine;->networkRequest:Lokhttp3/Request;

    .line 629
    .end local v0    # "contentLength":J
    :cond_10a
    iget-object v4, p0, Lokhttp3/internal/http/HttpEngine;->httpStream:Lokhttp3/internal/http/HttpStream;

    iget-object v5, p0, Lokhttp3/internal/http/HttpEngine;->networkRequest:Lokhttp3/Request;

    invoke-interface {v4, v5}, Lokhttp3/internal/http/HttpStream;->writeRequestHeaders(Lokhttp3/Request;)V

    .line 633
    :cond_111
    iget-object v4, p0, Lokhttp3/internal/http/HttpEngine;->requestBodyOut:Lokio/Sink;

    if-eqz v4, :cond_12d

    .line 634
    iget-object v4, p0, Lokhttp3/internal/http/HttpEngine;->bufferedRequestBody:Lokio/BufferedSink;

    if-eqz v4, :cond_133

    .line 636
    iget-object v4, p0, Lokhttp3/internal/http/HttpEngine;->bufferedRequestBody:Lokio/BufferedSink;

    invoke-interface {v4}, Lokio/BufferedSink;->close()V

    .line 640
    :goto_11e
    iget-object v4, p0, Lokhttp3/internal/http/HttpEngine;->requestBodyOut:Lokio/Sink;

    instance-of v4, v4, Lokhttp3/internal/http/RetryableSink;

    if-eqz v4, :cond_12d

    .line 641
    iget-object v5, p0, Lokhttp3/internal/http/HttpEngine;->httpStream:Lokhttp3/internal/http/HttpStream;

    iget-object v4, p0, Lokhttp3/internal/http/HttpEngine;->requestBodyOut:Lokio/Sink;

    check-cast v4, Lokhttp3/internal/http/RetryableSink;

    invoke-interface {v5, v4}, Lokhttp3/internal/http/HttpStream;->writeRequestBody(Lokhttp3/internal/http/RetryableSink;)V

    .line 645
    :cond_12d
    invoke-direct {p0}, Lokhttp3/internal/http/HttpEngine;->readNetworkResponse()Lokhttp3/Response;

    move-result-object v2

    .restart local v2    # "networkResponse":Lokhttp3/Response;
    goto/16 :goto_2a

    .line 638
    .end local v2    # "networkResponse":Lokhttp3/Response;
    :cond_133
    iget-object v4, p0, Lokhttp3/internal/http/HttpEngine;->requestBodyOut:Lokio/Sink;

    invoke-interface {v4}, Lokio/Sink;->close()V

    goto :goto_11e

    .line 671
    .restart local v2    # "networkResponse":Lokhttp3/Response;
    :cond_139
    iget-object v4, p0, Lokhttp3/internal/http/HttpEngine;->cacheResponse:Lokhttp3/Response;

    invoke-virtual {v4}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v4

    invoke-static {v4}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 675
    :cond_142
    invoke-virtual {v2}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v4

    iget-object v5, p0, Lokhttp3/internal/http/HttpEngine;->userRequest:Lokhttp3/Request;

    .line 676
    invoke-virtual {v4, v5}, Lokhttp3/Response$Builder;->request(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    move-result-object v4

    iget-object v5, p0, Lokhttp3/internal/http/HttpEngine;->priorResponse:Lokhttp3/Response;

    .line 677
    invoke-static {v5}, Lokhttp3/internal/http/HttpEngine;->stripBody(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v5

    invoke-virtual {v4, v5}, Lokhttp3/Response$Builder;->priorResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;

    move-result-object v4

    iget-object v5, p0, Lokhttp3/internal/http/HttpEngine;->cacheResponse:Lokhttp3/Response;

    .line 678
    invoke-static {v5}, Lokhttp3/internal/http/HttpEngine;->stripBody(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v5

    invoke-virtual {v4, v5}, Lokhttp3/Response$Builder;->cacheResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;

    move-result-object v4

    .line 679
    invoke-static {v2}, Lokhttp3/internal/http/HttpEngine;->stripBody(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v5

    invoke-virtual {v4, v5}, Lokhttp3/Response$Builder;->networkResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;

    move-result-object v4

    .line 680
    invoke-virtual {v4}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v4

    iput-object v4, p0, Lokhttp3/internal/http/HttpEngine;->userResponse:Lokhttp3/Response;

    .line 682
    iget-object v4, p0, Lokhttp3/internal/http/HttpEngine;->userResponse:Lokhttp3/Response;

    invoke-static {v4}, Lokhttp3/internal/http/HttpEngine;->hasBody(Lokhttp3/Response;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 683
    invoke-direct {p0}, Lokhttp3/internal/http/HttpEngine;->maybeCache()V

    .line 684
    iget-object v4, p0, Lokhttp3/internal/http/HttpEngine;->storeRequest:Lokhttp3/internal/http/CacheRequest;

    iget-object v5, p0, Lokhttp3/internal/http/HttpEngine;->userResponse:Lokhttp3/Response;

    invoke-direct {p0, v4, v5}, Lokhttp3/internal/http/HttpEngine;->cacheWritingResponse(Lokhttp3/internal/http/CacheRequest;Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v4

    invoke-direct {p0, v4}, Lokhttp3/internal/http/HttpEngine;->unzip(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v4

    iput-object v4, p0, Lokhttp3/internal/http/HttpEngine;->userResponse:Lokhttp3/Response;

    goto/16 :goto_6
.end method

.method public receiveHeaders(Lokhttp3/Headers;)V
    .registers 5
    .param p1, "headers"    # Lokhttp3/Headers;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 913
    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->cookieJar()Lokhttp3/CookieJar;

    move-result-object v1

    sget-object v2, Lokhttp3/CookieJar;->NO_COOKIES:Lokhttp3/CookieJar;

    if-ne v1, v2, :cond_b

    .line 919
    :cond_a
    :goto_a
    return-void

    .line 915
    :cond_b
    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->userRequest:Lokhttp3/Request;

    invoke-virtual {v1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-static {v1, p1}, Lokhttp3/Cookie;->parseAll(Lokhttp3/HttpUrl;Lokhttp3/Headers;)Ljava/util/List;

    move-result-object v0

    .line 916
    .local v0, "cookies":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Cookie;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 918
    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->cookieJar()Lokhttp3/CookieJar;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/http/HttpEngine;->userRequest:Lokhttp3/Request;

    invoke-virtual {v2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lokhttp3/CookieJar;->saveFromResponse(Lokhttp3/HttpUrl;Ljava/util/List;)V

    goto :goto_a
.end method

.method public recover(Ljava/io/IOException;Z)Lokhttp3/internal/http/HttpEngine;
    .registers 4
    .param p1, "e"    # Ljava/io/IOException;
    .param p2, "routeException"    # Z

    .prologue
    .line 386
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->requestBodyOut:Lokio/Sink;

    invoke-virtual {p0, p1, p2, v0}, Lokhttp3/internal/http/HttpEngine;->recover(Ljava/io/IOException;ZLokio/Sink;)Lokhttp3/internal/http/HttpEngine;

    move-result-object v0

    return-object v0
.end method

.method public recover(Ljava/io/IOException;ZLokio/Sink;)Lokhttp3/internal/http/HttpEngine;
    .registers 13
    .param p1, "e"    # Ljava/io/IOException;
    .param p2, "routeException"    # Z
    .param p3, "requestBodyOut"    # Lokio/Sink;

    .prologue
    const/4 v0, 0x0

    .line 360
    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->streamAllocation:Lokhttp3/internal/http/StreamAllocation;

    invoke-virtual {v1, p1}, Lokhttp3/internal/http/StreamAllocation;->streamFailed(Ljava/io/IOException;)V

    .line 362
    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->retryOnConnectionFailure()Z

    move-result v1

    if-nez v1, :cond_f

    .line 381
    :cond_e
    :goto_e
    return-object v0

    .line 366
    :cond_f
    if-eqz p3, :cond_15

    instance-of v1, p3, Lokhttp3/internal/http/RetryableSink;

    if-eqz v1, :cond_e

    .line 370
    :cond_15
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/http/HttpEngine;->isRecoverable(Ljava/io/IOException;Z)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 374
    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->streamAllocation:Lokhttp3/internal/http/StreamAllocation;

    invoke-virtual {v1}, Lokhttp3/internal/http/StreamAllocation;->hasMoreRoutes()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 378
    invoke-virtual {p0}, Lokhttp3/internal/http/HttpEngine;->close()Lokhttp3/internal/http/StreamAllocation;

    move-result-object v6

    .line 381
    .local v6, "streamAllocation":Lokhttp3/internal/http/StreamAllocation;
    new-instance v0, Lokhttp3/internal/http/HttpEngine;

    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->client:Lokhttp3/OkHttpClient;

    iget-object v2, p0, Lokhttp3/internal/http/HttpEngine;->userRequest:Lokhttp3/Request;

    iget-boolean v3, p0, Lokhttp3/internal/http/HttpEngine;->bufferRequestBody:Z

    iget-boolean v4, p0, Lokhttp3/internal/http/HttpEngine;->callerWritesRequestBody:Z

    iget-boolean v5, p0, Lokhttp3/internal/http/HttpEngine;->forWebSocket:Z

    move-object v7, p3

    check-cast v7, Lokhttp3/internal/http/RetryableSink;

    iget-object v8, p0, Lokhttp3/internal/http/HttpEngine;->priorResponse:Lokhttp3/Response;

    invoke-direct/range {v0 .. v8}, Lokhttp3/internal/http/HttpEngine;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;ZZZLokhttp3/internal/http/StreamAllocation;Lokhttp3/internal/http/RetryableSink;Lokhttp3/Response;)V

    goto :goto_e
.end method

.method public releaseStreamAllocation()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 446
    iget-object v0, p0, Lokhttp3/internal/http/HttpEngine;->streamAllocation:Lokhttp3/internal/http/StreamAllocation;

    invoke-virtual {v0}, Lokhttp3/internal/http/StreamAllocation;->release()V

    .line 447
    return-void
.end method

.method public sameConnection(Lokhttp3/HttpUrl;)Z
    .registers 5
    .param p1, "followUp"    # Lokhttp3/HttpUrl;

    .prologue
    .line 1017
    iget-object v1, p0, Lokhttp3/internal/http/HttpEngine;->userRequest:Lokhttp3/Request;

    invoke-virtual {v1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    .line 1018
    .local v0, "url":Lokhttp3/HttpUrl;
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 1019
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->port()I

    move-result v1

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->port()I

    move-result v2

    if-ne v1, v2, :cond_2e

    .line 1020
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    const/4 v1, 0x1

    .line 1018
    :goto_2d
    return v1

    .line 1020
    :cond_2e
    const/4 v1, 0x0

    goto :goto_2d
.end method

.method public sendRequest()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lokhttp3/internal/http/RequestException;,
            Lokhttp3/internal/http/RouteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    iget-object v8, p0, Lokhttp3/internal/http/HttpEngine;->cacheStrategy:Lokhttp3/internal/http/CacheStrategy;

    if-eqz v8, :cond_5

    .line 280
    :cond_4
    :goto_4
    return-void

    .line 197
    :cond_5
    iget-object v8, p0, Lokhttp3/internal/http/HttpEngine;->httpStream:Lokhttp3/internal/http/HttpStream;

    if-eqz v8, :cond_f

    new-instance v8, Ljava/lang/IllegalStateException;

    invoke-direct {v8}, Ljava/lang/IllegalStateException;-><init>()V

    throw v8

    .line 199
    :cond_f
    iget-object v8, p0, Lokhttp3/internal/http/HttpEngine;->userRequest:Lokhttp3/Request;

    invoke-direct {p0, v8}, Lokhttp3/internal/http/HttpEngine;->networkRequest(Lokhttp3/Request;)Lokhttp3/Request;

    move-result-object v1

    .line 201
    .local v1, "request":Lokhttp3/Request;
    sget-object v8, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    iget-object v9, p0, Lokhttp3/internal/http/HttpEngine;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v8, v9}, Lokhttp3/internal/Internal;->internalCache(Lokhttp3/OkHttpClient;)Lokhttp3/internal/InternalCache;

    move-result-object v6

    .line 202
    .local v6, "responseCache":Lokhttp3/internal/InternalCache;
    if-eqz v6, :cond_9d

    .line 203
    invoke-interface {v6, v1}, Lokhttp3/internal/InternalCache;->get(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v0

    .line 206
    .local v0, "cacheCandidate":Lokhttp3/Response;
    :goto_23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 207
    .local v4, "now":J
    new-instance v8, Lokhttp3/internal/http/CacheStrategy$Factory;

    invoke-direct {v8, v4, v5, v1, v0}, Lokhttp3/internal/http/CacheStrategy$Factory;-><init>(JLokhttp3/Request;Lokhttp3/Response;)V

    invoke-virtual {v8}, Lokhttp3/internal/http/CacheStrategy$Factory;->get()Lokhttp3/internal/http/CacheStrategy;

    move-result-object v8

    iput-object v8, p0, Lokhttp3/internal/http/HttpEngine;->cacheStrategy:Lokhttp3/internal/http/CacheStrategy;

    .line 208
    iget-object v8, p0, Lokhttp3/internal/http/HttpEngine;->cacheStrategy:Lokhttp3/internal/http/CacheStrategy;

    iget-object v8, v8, Lokhttp3/internal/http/CacheStrategy;->networkRequest:Lokhttp3/Request;

    iput-object v8, p0, Lokhttp3/internal/http/HttpEngine;->networkRequest:Lokhttp3/Request;

    .line 209
    iget-object v8, p0, Lokhttp3/internal/http/HttpEngine;->cacheStrategy:Lokhttp3/internal/http/CacheStrategy;

    iget-object v8, v8, Lokhttp3/internal/http/CacheStrategy;->cacheResponse:Lokhttp3/Response;

    iput-object v8, p0, Lokhttp3/internal/http/HttpEngine;->cacheResponse:Lokhttp3/Response;

    .line 211
    if-eqz v6, :cond_45

    .line 212
    iget-object v8, p0, Lokhttp3/internal/http/HttpEngine;->cacheStrategy:Lokhttp3/internal/http/CacheStrategy;

    invoke-interface {v6, v8}, Lokhttp3/internal/InternalCache;->trackResponse(Lokhttp3/internal/http/CacheStrategy;)V

    .line 215
    :cond_45
    if-eqz v0, :cond_52

    iget-object v8, p0, Lokhttp3/internal/http/HttpEngine;->cacheResponse:Lokhttp3/Response;

    if-nez v8, :cond_52

    .line 216
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v8

    invoke-static {v8}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 220
    :cond_52
    iget-object v8, p0, Lokhttp3/internal/http/HttpEngine;->networkRequest:Lokhttp3/Request;

    if-nez v8, :cond_9f

    iget-object v8, p0, Lokhttp3/internal/http/HttpEngine;->cacheResponse:Lokhttp3/Response;

    if-nez v8, :cond_9f

    .line 221
    new-instance v8, Lokhttp3/Response$Builder;

    invoke-direct {v8}, Lokhttp3/Response$Builder;-><init>()V

    iget-object v9, p0, Lokhttp3/internal/http/HttpEngine;->userRequest:Lokhttp3/Request;

    .line 222
    invoke-virtual {v8, v9}, Lokhttp3/Response$Builder;->request(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    move-result-object v8

    iget-object v9, p0, Lokhttp3/internal/http/HttpEngine;->priorResponse:Lokhttp3/Response;

    .line 223
    invoke-static {v9}, Lokhttp3/internal/http/HttpEngine;->stripBody(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v9

    invoke-virtual {v8, v9}, Lokhttp3/Response$Builder;->priorResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;

    move-result-object v8

    sget-object v9, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    .line 224
    invoke-virtual {v8, v9}, Lokhttp3/Response$Builder;->protocol(Lokhttp3/Protocol;)Lokhttp3/Response$Builder;

    move-result-object v8

    const/16 v9, 0x1f8

    .line 225
    invoke-virtual {v8, v9}, Lokhttp3/Response$Builder;->code(I)Lokhttp3/Response$Builder;

    move-result-object v8

    const-string v9, "Unsatisfiable Request (only-if-cached)"

    .line 226
    invoke-virtual {v8, v9}, Lokhttp3/Response$Builder;->message(Ljava/lang/String;)Lokhttp3/Response$Builder;

    move-result-object v8

    sget-object v9, Lokhttp3/internal/http/HttpEngine;->EMPTY_BODY:Lokhttp3/ResponseBody;

    .line 227
    invoke-virtual {v8, v9}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v8

    iget-wide v10, p0, Lokhttp3/internal/http/HttpEngine;->sentRequestMillis:J

    .line 228
    invoke-virtual {v8, v10, v11}, Lokhttp3/Response$Builder;->sentRequestAtMillis(J)Lokhttp3/Response$Builder;

    move-result-object v8

    .line 229
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lokhttp3/Response$Builder;->receivedResponseAtMillis(J)Lokhttp3/Response$Builder;

    move-result-object v8

    .line 230
    invoke-virtual {v8}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v8

    iput-object v8, p0, Lokhttp3/internal/http/HttpEngine;->userResponse:Lokhttp3/Response;

    goto/16 :goto_4

    .line 203
    .end local v0    # "cacheCandidate":Lokhttp3/Response;
    .end local v4    # "now":J
    :cond_9d
    const/4 v0, 0x0

    goto :goto_23

    .line 235
    .restart local v0    # "cacheCandidate":Lokhttp3/Response;
    .restart local v4    # "now":J
    :cond_9f
    iget-object v8, p0, Lokhttp3/internal/http/HttpEngine;->networkRequest:Lokhttp3/Request;

    if-nez v8, :cond_d3

    .line 236
    iget-object v8, p0, Lokhttp3/internal/http/HttpEngine;->cacheResponse:Lokhttp3/Response;

    invoke-virtual {v8}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v8

    iget-object v9, p0, Lokhttp3/internal/http/HttpEngine;->userRequest:Lokhttp3/Request;

    .line 237
    invoke-virtual {v8, v9}, Lokhttp3/Response$Builder;->request(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    move-result-object v8

    iget-object v9, p0, Lokhttp3/internal/http/HttpEngine;->priorResponse:Lokhttp3/Response;

    .line 238
    invoke-static {v9}, Lokhttp3/internal/http/HttpEngine;->stripBody(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v9

    invoke-virtual {v8, v9}, Lokhttp3/Response$Builder;->priorResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;

    move-result-object v8

    iget-object v9, p0, Lokhttp3/internal/http/HttpEngine;->cacheResponse:Lokhttp3/Response;

    .line 239
    invoke-static {v9}, Lokhttp3/internal/http/HttpEngine;->stripBody(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v9

    invoke-virtual {v8, v9}, Lokhttp3/Response$Builder;->cacheResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;

    move-result-object v8

    .line 240
    invoke-virtual {v8}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v8

    iput-object v8, p0, Lokhttp3/internal/http/HttpEngine;->userResponse:Lokhttp3/Response;

    .line 241
    iget-object v8, p0, Lokhttp3/internal/http/HttpEngine;->userResponse:Lokhttp3/Response;

    invoke-direct {p0, v8}, Lokhttp3/internal/http/HttpEngine;->unzip(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v8

    iput-object v8, p0, Lokhttp3/internal/http/HttpEngine;->userResponse:Lokhttp3/Response;

    goto/16 :goto_4

    .line 246
    :cond_d3
    const/4 v7, 0x0

    .line 248
    .local v7, "success":Z
    :try_start_d4
    invoke-direct {p0}, Lokhttp3/internal/http/HttpEngine;->connect()Lokhttp3/internal/http/HttpStream;

    move-result-object v8

    iput-object v8, p0, Lokhttp3/internal/http/HttpEngine;->httpStream:Lokhttp3/internal/http/HttpStream;

    .line 249
    iget-object v8, p0, Lokhttp3/internal/http/HttpEngine;->httpStream:Lokhttp3/internal/http/HttpStream;

    invoke-interface {v8, p0}, Lokhttp3/internal/http/HttpStream;->setHttpEngine(Lokhttp3/internal/http/HttpEngine;)V

    .line 251
    invoke-direct {p0}, Lokhttp3/internal/http/HttpEngine;->writeRequestHeadersEagerly()Z

    move-result v8

    if-eqz v8, :cond_11e

    .line 252
    invoke-static {v1}, Lokhttp3/internal/http/OkHeaders;->contentLength(Lokhttp3/Request;)J

    move-result-wide v2

    .line 253
    .local v2, "contentLength":J
    iget-boolean v8, p0, Lokhttp3/internal/http/HttpEngine;->bufferRequestBody:Z

    if-eqz v8, :cond_134

    .line 254
    const-wide/32 v8, 0x7fffffff

    cmp-long v8, v2, v8

    if-lez v8, :cond_109

    .line 255
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "Use setFixedLengthStreamingMode() or setChunkedStreamingMode() for requests larger than 2 GiB."

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_fc
    .catchall {:try_start_d4 .. :try_end_fc} :catchall_fc

    .line 276
    .end local v2    # "contentLength":J
    :catchall_fc
    move-exception v8

    if-nez v7, :cond_108

    if-eqz v0, :cond_108

    .line 277
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v9

    invoke-static {v9}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :cond_108
    throw v8

    .line 259
    .restart local v2    # "contentLength":J
    :cond_109
    const-wide/16 v8, -0x1

    cmp-long v8, v2, v8

    if-eqz v8, :cond_12c

    .line 261
    :try_start_10f
    iget-object v8, p0, Lokhttp3/internal/http/HttpEngine;->httpStream:Lokhttp3/internal/http/HttpStream;

    iget-object v9, p0, Lokhttp3/internal/http/HttpEngine;->networkRequest:Lokhttp3/Request;

    invoke-interface {v8, v9}, Lokhttp3/internal/http/HttpStream;->writeRequestHeaders(Lokhttp3/Request;)V

    .line 262
    new-instance v8, Lokhttp3/internal/http/RetryableSink;

    long-to-int v9, v2

    invoke-direct {v8, v9}, Lokhttp3/internal/http/RetryableSink;-><init>(I)V

    iput-object v8, p0, Lokhttp3/internal/http/HttpEngine;->requestBodyOut:Lokio/Sink;
    :try_end_11e
    .catchall {:try_start_10f .. :try_end_11e} :catchall_fc

    .line 273
    .end local v2    # "contentLength":J
    :cond_11e
    :goto_11e
    const/4 v7, 0x1

    .line 276
    if-nez v7, :cond_4

    if-eqz v0, :cond_4

    .line 277
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v8

    invoke-static {v8}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto/16 :goto_4

    .line 266
    .restart local v2    # "contentLength":J
    :cond_12c
    :try_start_12c
    new-instance v8, Lokhttp3/internal/http/RetryableSink;

    invoke-direct {v8}, Lokhttp3/internal/http/RetryableSink;-><init>()V

    iput-object v8, p0, Lokhttp3/internal/http/HttpEngine;->requestBodyOut:Lokio/Sink;

    goto :goto_11e

    .line 269
    :cond_134
    iget-object v8, p0, Lokhttp3/internal/http/HttpEngine;->httpStream:Lokhttp3/internal/http/HttpStream;

    iget-object v9, p0, Lokhttp3/internal/http/HttpEngine;->networkRequest:Lokhttp3/Request;

    invoke-interface {v8, v9}, Lokhttp3/internal/http/HttpStream;->writeRequestHeaders(Lokhttp3/Request;)V

    .line 270
    iget-object v8, p0, Lokhttp3/internal/http/HttpEngine;->httpStream:Lokhttp3/internal/http/HttpStream;

    iget-object v9, p0, Lokhttp3/internal/http/HttpEngine;->networkRequest:Lokhttp3/Request;

    invoke-interface {v8, v9, v2, v3}, Lokhttp3/internal/http/HttpStream;->createRequestBody(Lokhttp3/Request;J)Lokio/Sink;

    move-result-object v8

    iput-object v8, p0, Lokhttp3/internal/http/HttpEngine;->requestBodyOut:Lokio/Sink;
    :try_end_145
    .catchall {:try_start_12c .. :try_end_145} :catchall_fc

    goto :goto_11e
.end method

.method public writingRequestHeaders()V
    .registers 5

    .prologue
    .line 312
    iget-wide v0, p0, Lokhttp3/internal/http/HttpEngine;->sentRequestMillis:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 313
    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/internal/http/HttpEngine;->sentRequestMillis:J

    .line 314
    return-void
.end method
