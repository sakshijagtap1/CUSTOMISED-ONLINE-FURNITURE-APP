.class public Lokhttp3/Request$Builder;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private body:Lokhttp3/RequestBody;

.field private headers:Lokhttp3/Headers$Builder;

.field private method:Ljava/lang/String;

.field private tag:Ljava/lang/Object;

.field private url:Lokhttp3/HttpUrl;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const-string v0, "GET"

    iput-object v0, p0, Lokhttp3/Request$Builder;->method:Ljava/lang/String;

    .line 107
    new-instance v0, Lokhttp3/Headers$Builder;

    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    iput-object v0, p0, Lokhttp3/Request$Builder;->headers:Lokhttp3/Headers$Builder;

    .line 108
    return-void
.end method

.method private constructor <init>(Lokhttp3/Request;)V
    .registers 3
    .param p1, "request"    # Lokhttp3/Request;

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    invoke-static {p1}, Lokhttp3/Request;->access$600(Lokhttp3/Request;)Lokhttp3/HttpUrl;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Request$Builder;->url:Lokhttp3/HttpUrl;

    .line 112
    invoke-static {p1}, Lokhttp3/Request;->access$700(Lokhttp3/Request;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Request$Builder;->method:Ljava/lang/String;

    .line 113
    invoke-static {p1}, Lokhttp3/Request;->access$800(Lokhttp3/Request;)Lokhttp3/RequestBody;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Request$Builder;->body:Lokhttp3/RequestBody;

    .line 114
    invoke-static {p1}, Lokhttp3/Request;->access$900(Lokhttp3/Request;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Request$Builder;->tag:Ljava/lang/Object;

    .line 115
    invoke-static {p1}, Lokhttp3/Request;->access$1000(Lokhttp3/Request;)Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Request$Builder;->headers:Lokhttp3/Headers$Builder;

    .line 116
    return-void
.end method

.method synthetic constructor <init>(Lokhttp3/Request;Lokhttp3/Request$1;)V
    .registers 3
    .param p1, "x0"    # Lokhttp3/Request;
    .param p2, "x1"    # Lokhttp3/Request$1;

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lokhttp3/Request$Builder;-><init>(Lokhttp3/Request;)V

    return-void
.end method

.method static synthetic access$000(Lokhttp3/Request$Builder;)Lokhttp3/HttpUrl;
    .registers 2
    .param p0, "x0"    # Lokhttp3/Request$Builder;

    .prologue
    .line 98
    iget-object v0, p0, Lokhttp3/Request$Builder;->url:Lokhttp3/HttpUrl;

    return-object v0
.end method

.method static synthetic access$100(Lokhttp3/Request$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lokhttp3/Request$Builder;

    .prologue
    .line 98
    iget-object v0, p0, Lokhttp3/Request$Builder;->method:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lokhttp3/Request$Builder;)Lokhttp3/Headers$Builder;
    .registers 2
    .param p0, "x0"    # Lokhttp3/Request$Builder;

    .prologue
    .line 98
    iget-object v0, p0, Lokhttp3/Request$Builder;->headers:Lokhttp3/Headers$Builder;

    return-object v0
.end method

.method static synthetic access$300(Lokhttp3/Request$Builder;)Lokhttp3/RequestBody;
    .registers 2
    .param p0, "x0"    # Lokhttp3/Request$Builder;

    .prologue
    .line 98
    iget-object v0, p0, Lokhttp3/Request$Builder;->body:Lokhttp3/RequestBody;

    return-object v0
.end method

.method static synthetic access$400(Lokhttp3/Request$Builder;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lokhttp3/Request$Builder;

    .prologue
    .line 98
    iget-object v0, p0, Lokhttp3/Request$Builder;->tag:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 175
    iget-object v0, p0, Lokhttp3/Request$Builder;->headers:Lokhttp3/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 176
    return-object p0
.end method

.method public build()Lokhttp3/Request;
    .registers 3

    .prologue
    .line 253
    iget-object v0, p0, Lokhttp3/Request$Builder;->url:Lokhttp3/HttpUrl;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_c
    new-instance v0, Lokhttp3/Request;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;Lokhttp3/Request$1;)V

    return-object v0
.end method

.method public cacheControl(Lokhttp3/CacheControl;)Lokhttp3/Request$Builder;
    .registers 4
    .param p1, "cacheControl"    # Lokhttp3/CacheControl;

    .prologue
    .line 196
    invoke-virtual {p1}, Lokhttp3/CacheControl;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v1, "Cache-Control"

    invoke-virtual {p0, v1}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 198
    :goto_10
    return-object v1

    :cond_11
    const-string v1, "Cache-Control"

    invoke-virtual {p0, v1, v0}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    goto :goto_10
.end method

.method public delete()Lokhttp3/Request$Builder;
    .registers 3

    .prologue
    .line 218
    const/4 v0, 0x0

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-static {v0, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object v0

    invoke-virtual {p0, v0}, Lokhttp3/Request$Builder;->delete(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public delete(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;
    .registers 3
    .param p1, "body"    # Lokhttp3/RequestBody;

    .prologue
    .line 214
    const-string v0, "DELETE"

    invoke-virtual {p0, v0, p1}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public get()Lokhttp3/Request$Builder;
    .registers 3

    .prologue
    .line 202
    const-string v0, "GET"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public head()Lokhttp3/Request$Builder;
    .registers 3

    .prologue
    .line 206
    const-string v0, "HEAD"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 163
    iget-object v0, p0, Lokhttp3/Request$Builder;->headers:Lokhttp3/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lokhttp3/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 164
    return-object p0
.end method

.method public headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;
    .registers 3
    .param p1, "headers"    # Lokhttp3/Headers;

    .prologue
    .line 186
    invoke-virtual {p1}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Request$Builder;->headers:Lokhttp3/Headers$Builder;

    .line 187
    return-object p0
.end method

.method public method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;
    .registers 6
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "body"    # Lokhttp3/RequestBody;

    .prologue
    .line 230
    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "method == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_18

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "method.length() == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_18
    if-eqz p2, :cond_3f

    invoke-static {p1}, Lokhttp3/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 233
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must not have a request body."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_3f
    if-nez p2, :cond_66

    invoke-static {p1}, Lokhttp3/internal/http/HttpMethod;->requiresRequestBody(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 236
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must have a request body."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_66
    iput-object p1, p0, Lokhttp3/Request$Builder;->method:Ljava/lang/String;

    .line 239
    iput-object p2, p0, Lokhttp3/Request$Builder;->body:Lokhttp3/RequestBody;

    .line 240
    return-object p0
.end method

.method public patch(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;
    .registers 3
    .param p1, "body"    # Lokhttp3/RequestBody;

    .prologue
    .line 226
    const-string v0, "PATCH"

    invoke-virtual {p0, v0, p1}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;
    .registers 3
    .param p1, "body"    # Lokhttp3/RequestBody;

    .prologue
    .line 210
    const-string v0, "POST"

    invoke-virtual {p0, v0, p1}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public put(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;
    .registers 3
    .param p1, "body"    # Lokhttp3/RequestBody;

    .prologue
    .line 222
    const-string v0, "PUT"

    invoke-virtual {p0, v0, p1}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 180
    iget-object v0, p0, Lokhttp3/Request$Builder;->headers:Lokhttp3/Headers$Builder;

    invoke-virtual {v0, p1}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 181
    return-object p0
.end method

.method public tag(Ljava/lang/Object;)Lokhttp3/Request$Builder;
    .registers 2
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 248
    iput-object p1, p0, Lokhttp3/Request$Builder;->tag:Ljava/lang/Object;

    .line 249
    return-object p0
.end method

.method public url(Ljava/lang/String;)Lokhttp3/Request$Builder;
    .registers 10
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x4

    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 131
    if-nez p1, :cond_e

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_e
    const-string v3, "ws:"

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 140
    :cond_2f
    :goto_2f
    invoke-static {p1}, Lokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v6

    .line 141
    .local v6, "parsed":Lokhttp3/HttpUrl;
    if-nez v6, :cond_71

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    .end local v6    # "parsed":Lokhttp3/HttpUrl;
    :cond_4e
    const-string v3, "wss:"

    move-object v0, p1

    move v4, v2

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2f

    .line 142
    .restart local v6    # "parsed":Lokhttp3/HttpUrl;
    :cond_71
    invoke-virtual {p0, v6}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public url(Ljava/net/URL;)Lokhttp3/Request$Builder;
    .registers 6
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 152
    if-nez p1, :cond_a

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "url == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 153
    :cond_a
    invoke-static {p1}, Lokhttp3/HttpUrl;->get(Ljava/net/URL;)Lokhttp3/HttpUrl;

    move-result-object v0

    .line 154
    .local v0, "parsed":Lokhttp3/HttpUrl;
    if-nez v0, :cond_29

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 155
    :cond_29
    invoke-virtual {p0, v0}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v1

    return-object v1
.end method

.method public url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;
    .registers 4
    .param p1, "url"    # Lokhttp3/HttpUrl;

    .prologue
    .line 119
    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_a
    iput-object p1, p0, Lokhttp3/Request$Builder;->url:Lokhttp3/HttpUrl;

    .line 121
    return-object p0
.end method
