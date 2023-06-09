.class public final Lokhttp3/Response;
.super Ljava/lang/Object;
.source "Response.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/Response$Builder;
    }
.end annotation


# instance fields
.field private final body:Lokhttp3/ResponseBody;

.field private volatile cacheControl:Lokhttp3/CacheControl;

.field private final cacheResponse:Lokhttp3/Response;

.field private final code:I

.field private final handshake:Lokhttp3/Handshake;

.field private final headers:Lokhttp3/Headers;

.field private final message:Ljava/lang/String;

.field private final networkResponse:Lokhttp3/Response;

.field private final priorResponse:Lokhttp3/Response;

.field private final protocol:Lokhttp3/Protocol;

.field private final receivedResponseAtMillis:J

.field private final request:Lokhttp3/Request;

.field private final sentRequestAtMillis:J


# direct methods
.method private constructor <init>(Lokhttp3/Response$Builder;)V
    .registers 4
    .param p1, "builder"    # Lokhttp3/Response$Builder;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {p1}, Lokhttp3/Response$Builder;->access$000(Lokhttp3/Response$Builder;)Lokhttp3/Request;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response;->request:Lokhttp3/Request;

    .line 60
    invoke-static {p1}, Lokhttp3/Response$Builder;->access$100(Lokhttp3/Response$Builder;)Lokhttp3/Protocol;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response;->protocol:Lokhttp3/Protocol;

    .line 61
    invoke-static {p1}, Lokhttp3/Response$Builder;->access$200(Lokhttp3/Response$Builder;)I

    move-result v0

    iput v0, p0, Lokhttp3/Response;->code:I

    .line 62
    invoke-static {p1}, Lokhttp3/Response$Builder;->access$300(Lokhttp3/Response$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response;->message:Ljava/lang/String;

    .line 63
    invoke-static {p1}, Lokhttp3/Response$Builder;->access$400(Lokhttp3/Response$Builder;)Lokhttp3/Handshake;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response;->handshake:Lokhttp3/Handshake;

    .line 64
    invoke-static {p1}, Lokhttp3/Response$Builder;->access$500(Lokhttp3/Response$Builder;)Lokhttp3/Headers$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    .line 65
    invoke-static {p1}, Lokhttp3/Response$Builder;->access$600(Lokhttp3/Response$Builder;)Lokhttp3/ResponseBody;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    .line 66
    invoke-static {p1}, Lokhttp3/Response$Builder;->access$700(Lokhttp3/Response$Builder;)Lokhttp3/Response;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response;->networkResponse:Lokhttp3/Response;

    .line 67
    invoke-static {p1}, Lokhttp3/Response$Builder;->access$800(Lokhttp3/Response$Builder;)Lokhttp3/Response;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response;->cacheResponse:Lokhttp3/Response;

    .line 68
    invoke-static {p1}, Lokhttp3/Response$Builder;->access$900(Lokhttp3/Response$Builder;)Lokhttp3/Response;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response;->priorResponse:Lokhttp3/Response;

    .line 69
    invoke-static {p1}, Lokhttp3/Response$Builder;->access$1000(Lokhttp3/Response$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/Response;->sentRequestAtMillis:J

    .line 70
    invoke-static {p1}, Lokhttp3/Response$Builder;->access$1100(Lokhttp3/Response$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/Response;->receivedResponseAtMillis:J

    .line 71
    return-void
.end method

.method synthetic constructor <init>(Lokhttp3/Response$Builder;Lokhttp3/Response$1;)V
    .registers 3
    .param p1, "x0"    # Lokhttp3/Response$Builder;
    .param p2, "x1"    # Lokhttp3/Response$1;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lokhttp3/Response;-><init>(Lokhttp3/Response$Builder;)V

    return-void
.end method

.method static synthetic access$1300(Lokhttp3/Response;)Lokhttp3/Request;
    .registers 2
    .param p0, "x0"    # Lokhttp3/Response;

    .prologue
    .line 42
    iget-object v0, p0, Lokhttp3/Response;->request:Lokhttp3/Request;

    return-object v0
.end method

.method static synthetic access$1400(Lokhttp3/Response;)Lokhttp3/Protocol;
    .registers 2
    .param p0, "x0"    # Lokhttp3/Response;

    .prologue
    .line 42
    iget-object v0, p0, Lokhttp3/Response;->protocol:Lokhttp3/Protocol;

    return-object v0
.end method

.method static synthetic access$1500(Lokhttp3/Response;)I
    .registers 2
    .param p0, "x0"    # Lokhttp3/Response;

    .prologue
    .line 42
    iget v0, p0, Lokhttp3/Response;->code:I

    return v0
.end method

.method static synthetic access$1600(Lokhttp3/Response;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lokhttp3/Response;

    .prologue
    .line 42
    iget-object v0, p0, Lokhttp3/Response;->message:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lokhttp3/Response;)Lokhttp3/Handshake;
    .registers 2
    .param p0, "x0"    # Lokhttp3/Response;

    .prologue
    .line 42
    iget-object v0, p0, Lokhttp3/Response;->handshake:Lokhttp3/Handshake;

    return-object v0
.end method

.method static synthetic access$1800(Lokhttp3/Response;)Lokhttp3/Headers;
    .registers 2
    .param p0, "x0"    # Lokhttp3/Response;

    .prologue
    .line 42
    iget-object v0, p0, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    return-object v0
.end method

.method static synthetic access$1900(Lokhttp3/Response;)Lokhttp3/ResponseBody;
    .registers 2
    .param p0, "x0"    # Lokhttp3/Response;

    .prologue
    .line 42
    iget-object v0, p0, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    return-object v0
.end method

.method static synthetic access$2000(Lokhttp3/Response;)Lokhttp3/Response;
    .registers 2
    .param p0, "x0"    # Lokhttp3/Response;

    .prologue
    .line 42
    iget-object v0, p0, Lokhttp3/Response;->networkResponse:Lokhttp3/Response;

    return-object v0
.end method

.method static synthetic access$2100(Lokhttp3/Response;)Lokhttp3/Response;
    .registers 2
    .param p0, "x0"    # Lokhttp3/Response;

    .prologue
    .line 42
    iget-object v0, p0, Lokhttp3/Response;->cacheResponse:Lokhttp3/Response;

    return-object v0
.end method

.method static synthetic access$2200(Lokhttp3/Response;)Lokhttp3/Response;
    .registers 2
    .param p0, "x0"    # Lokhttp3/Response;

    .prologue
    .line 42
    iget-object v0, p0, Lokhttp3/Response;->priorResponse:Lokhttp3/Response;

    return-object v0
.end method

.method static synthetic access$2300(Lokhttp3/Response;)J
    .registers 3
    .param p0, "x0"    # Lokhttp3/Response;

    .prologue
    .line 42
    iget-wide v0, p0, Lokhttp3/Response;->sentRequestAtMillis:J

    return-wide v0
.end method

.method static synthetic access$2400(Lokhttp3/Response;)J
    .registers 3
    .param p0, "x0"    # Lokhttp3/Response;

    .prologue
    .line 42
    iget-wide v0, p0, Lokhttp3/Response;->receivedResponseAtMillis:J

    return-wide v0
.end method


# virtual methods
.method public body()Lokhttp3/ResponseBody;
    .registers 2

    .prologue
    .line 172
    iget-object v0, p0, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    return-object v0
.end method

.method public cacheControl()Lokhttp3/CacheControl;
    .registers 3

    .prologue
    .line 245
    iget-object v0, p0, Lokhttp3/Response;->cacheControl:Lokhttp3/CacheControl;

    .line 246
    .local v0, "result":Lokhttp3/CacheControl;
    if-eqz v0, :cond_5

    .end local v0    # "result":Lokhttp3/CacheControl;
    :goto_4
    return-object v0

    .restart local v0    # "result":Lokhttp3/CacheControl;
    :cond_5
    iget-object v1, p0, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    invoke-static {v1}, Lokhttp3/CacheControl;->parse(Lokhttp3/Headers;)Lokhttp3/CacheControl;

    move-result-object v0

    .end local v0    # "result":Lokhttp3/CacheControl;
    iput-object v0, p0, Lokhttp3/Response;->cacheControl:Lokhttp3/CacheControl;

    goto :goto_4
.end method

.method public cacheResponse()Lokhttp3/Response;
    .registers 2

    .prologue
    .line 209
    iget-object v0, p0, Lokhttp3/Response;->cacheResponse:Lokhttp3/Response;

    return-object v0
.end method

.method public challenges()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Challenge;",
            ">;"
        }
    .end annotation

    .prologue
    .line 230
    iget v1, p0, Lokhttp3/Response;->code:I

    const/16 v2, 0x191

    if-ne v1, v2, :cond_11

    .line 231
    const-string v0, "WWW-Authenticate"

    .line 237
    .local v0, "responseField":Ljava/lang/String;
    :goto_8
    invoke-virtual {p0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v1

    invoke-static {v1, v0}, Lokhttp3/internal/http/OkHeaders;->parseChallenges(Lokhttp3/Headers;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .end local v0    # "responseField":Ljava/lang/String;
    :goto_10
    return-object v1

    .line 232
    :cond_11
    iget v1, p0, Lokhttp3/Response;->code:I

    const/16 v2, 0x197

    if-ne v1, v2, :cond_1a

    .line 233
    const-string v0, "Proxy-Authenticate"

    .restart local v0    # "responseField":Ljava/lang/String;
    goto :goto_8

    .line 235
    .end local v0    # "responseField":Ljava/lang/String;
    :cond_1a
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_10
.end method

.method public close()V
    .registers 2

    .prologue
    .line 269
    iget-object v0, p0, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    .line 270
    return-void
.end method

.method public code()I
    .registers 2

    .prologue
    .line 98
    iget v0, p0, Lokhttp3/Response;->code:I

    return v0
.end method

.method public handshake()Lokhttp3/Handshake;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lokhttp3/Response;->handshake:Lokhttp3/Handshake;

    return-object v0
.end method

.method public header(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lokhttp3/Response;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 131
    iget-object v1, p0, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    invoke-virtual {v1, p1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_9

    .end local v0    # "result":Ljava/lang/String;
    :goto_8
    return-object v0

    .restart local v0    # "result":Ljava/lang/String;
    :cond_9
    move-object v0, p2

    goto :goto_8
.end method

.method public headers(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    invoke-virtual {v0, p1}, Lokhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public headers()Lokhttp3/Headers;
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    return-object v0
.end method

.method public isRedirect()Z
    .registers 2

    .prologue
    .line 181
    iget v0, p0, Lokhttp3/Response;->code:I

    packed-switch v0, :pswitch_data_a

    .line 190
    :pswitch_5
    const/4 v0, 0x0

    :goto_6
    return v0

    .line 188
    :pswitch_7
    const/4 v0, 0x1

    goto :goto_6

    .line 181
    nop

    :pswitch_data_a
    .packed-switch 0x12c
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public isSuccessful()Z
    .registers 3

    .prologue
    .line 106
    iget v0, p0, Lokhttp3/Response;->code:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_e

    iget v0, p0, Lokhttp3/Response;->code:I

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public message()Ljava/lang/String;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lokhttp3/Response;->message:Ljava/lang/String;

    return-object v0
.end method

.method public networkResponse()Lokhttp3/Response;
    .registers 2

    .prologue
    .line 200
    iget-object v0, p0, Lokhttp3/Response;->networkResponse:Lokhttp3/Response;

    return-object v0
.end method

.method public newBuilder()Lokhttp3/Response$Builder;
    .registers 3

    .prologue
    .line 176
    new-instance v0, Lokhttp3/Response$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lokhttp3/Response$Builder;-><init>(Lokhttp3/Response;Lokhttp3/Response$1;)V

    return-object v0
.end method

.method public peekBody(J)Lokhttp3/ResponseBody;
    .registers 10
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    iget-object v3, p0, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    invoke-virtual {v3}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v2

    .line 152
    .local v2, "source":Lokio/BufferedSource;
    invoke-interface {v2, p1, p2}, Lokio/BufferedSource;->request(J)Z

    .line 153
    invoke-interface {v2}, Lokio/BufferedSource;->buffer()Lokio/Buffer;

    move-result-object v3

    invoke-virtual {v3}, Lokio/Buffer;->clone()Lokio/Buffer;

    move-result-object v0

    .line 157
    .local v0, "copy":Lokio/Buffer;
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-lez v3, :cond_33

    .line 158
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    .line 159
    .local v1, "result":Lokio/Buffer;
    invoke-virtual {v1, v0, p1, p2}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 160
    invoke-virtual {v0}, Lokio/Buffer;->clear()V

    .line 165
    :goto_24
    iget-object v3, p0, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    invoke-virtual {v3}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v3

    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v4

    invoke-static {v3, v4, v5, v1}, Lokhttp3/ResponseBody;->create(Lokhttp3/MediaType;JLokio/BufferedSource;)Lokhttp3/ResponseBody;

    move-result-object v3

    return-object v3

    .line 162
    .end local v1    # "result":Lokio/Buffer;
    :cond_33
    move-object v1, v0

    .restart local v1    # "result":Lokio/Buffer;
    goto :goto_24
.end method

.method public priorResponse()Lokhttp3/Response;
    .registers 2

    .prologue
    .line 219
    iget-object v0, p0, Lokhttp3/Response;->priorResponse:Lokhttp3/Response;

    return-object v0
.end method

.method public protocol()Lokhttp3/Protocol;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lokhttp3/Response;->protocol:Lokhttp3/Protocol;

    return-object v0
.end method

.method public receivedResponseAtMillis()J
    .registers 3

    .prologue
    .line 264
    iget-wide v0, p0, Lokhttp3/Response;->receivedResponseAtMillis:J

    return-wide v0
.end method

.method public request()Lokhttp3/Request;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lokhttp3/Response;->request:Lokhttp3/Request;

    return-object v0
.end method

.method public sentRequestAtMillis()J
    .registers 3

    .prologue
    .line 255
    iget-wide v0, p0, Lokhttp3/Response;->sentRequestAtMillis:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response{protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/Response;->protocol:Lokhttp3/Protocol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lokhttp3/Response;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/Response;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/Response;->request:Lokhttp3/Request;

    .line 280
    invoke-virtual {v1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 273
    return-object v0
.end method
