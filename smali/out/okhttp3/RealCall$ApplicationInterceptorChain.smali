.class Lokhttp3/RealCall$ApplicationInterceptorChain;
.super Ljava/lang/Object;
.source "RealCall.java"

# interfaces
.implements Lokhttp3/Interceptor$Chain;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/RealCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ApplicationInterceptorChain"
.end annotation


# instance fields
.field private final forWebSocket:Z

.field private final index:I

.field private final request:Lokhttp3/Request;

.field final synthetic this$0:Lokhttp3/RealCall;


# direct methods
.method constructor <init>(Lokhttp3/RealCall;ILokhttp3/Request;Z)V
    .registers 5
    .param p1, "this$0"    # Lokhttp3/RealCall;
    .param p2, "index"    # I
    .param p3, "request"    # Lokhttp3/Request;
    .param p4, "forWebSocket"    # Z

    .prologue
    .line 171
    iput-object p1, p0, Lokhttp3/RealCall$ApplicationInterceptorChain;->this$0:Lokhttp3/RealCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput p2, p0, Lokhttp3/RealCall$ApplicationInterceptorChain;->index:I

    .line 173
    iput-object p3, p0, Lokhttp3/RealCall$ApplicationInterceptorChain;->request:Lokhttp3/Request;

    .line 174
    iput-boolean p4, p0, Lokhttp3/RealCall$ApplicationInterceptorChain;->forWebSocket:Z

    .line 175
    return-void
.end method


# virtual methods
.method public connection()Lokhttp3/Connection;
    .registers 2

    .prologue
    .line 178
    const/4 v0, 0x0

    return-object v0
.end method

.method public proceed(Lokhttp3/Request;)Lokhttp3/Response;
    .registers 8
    .param p1, "request"    # Lokhttp3/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    iget v3, p0, Lokhttp3/RealCall$ApplicationInterceptorChain;->index:I

    iget-object v4, p0, Lokhttp3/RealCall$ApplicationInterceptorChain;->this$0:Lokhttp3/RealCall;

    invoke-static {v4}, Lokhttp3/RealCall;->access$300(Lokhttp3/RealCall;)Lokhttp3/OkHttpClient;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->interceptors()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_56

    .line 188
    new-instance v0, Lokhttp3/RealCall$ApplicationInterceptorChain;

    iget-object v3, p0, Lokhttp3/RealCall$ApplicationInterceptorChain;->this$0:Lokhttp3/RealCall;

    iget v4, p0, Lokhttp3/RealCall$ApplicationInterceptorChain;->index:I

    add-int/lit8 v4, v4, 0x1

    iget-boolean v5, p0, Lokhttp3/RealCall$ApplicationInterceptorChain;->forWebSocket:Z

    invoke-direct {v0, v3, v4, p1, v5}, Lokhttp3/RealCall$ApplicationInterceptorChain;-><init>(Lokhttp3/RealCall;ILokhttp3/Request;Z)V

    .line 189
    .local v0, "chain":Lokhttp3/Interceptor$Chain;
    iget-object v3, p0, Lokhttp3/RealCall$ApplicationInterceptorChain;->this$0:Lokhttp3/RealCall;

    invoke-static {v3}, Lokhttp3/RealCall;->access$300(Lokhttp3/RealCall;)Lokhttp3/OkHttpClient;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/OkHttpClient;->interceptors()Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lokhttp3/RealCall$ApplicationInterceptorChain;->index:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/Interceptor;

    .line 190
    .local v2, "interceptor":Lokhttp3/Interceptor;
    invoke-interface {v2, v0}, Lokhttp3/Interceptor;->intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;

    move-result-object v1

    .line 192
    .local v1, "interceptedResponse":Lokhttp3/Response;
    if-nez v1, :cond_5e

    .line 193
    new-instance v3, Ljava/lang/NullPointerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "application interceptor "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " returned null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 201
    .end local v0    # "chain":Lokhttp3/Interceptor$Chain;
    .end local v1    # "interceptedResponse":Lokhttp3/Response;
    .end local v2    # "interceptor":Lokhttp3/Interceptor;
    :cond_56
    iget-object v3, p0, Lokhttp3/RealCall$ApplicationInterceptorChain;->this$0:Lokhttp3/RealCall;

    iget-boolean v4, p0, Lokhttp3/RealCall$ApplicationInterceptorChain;->forWebSocket:Z

    invoke-virtual {v3, p1, v4}, Lokhttp3/RealCall;->getResponse(Lokhttp3/Request;Z)Lokhttp3/Response;

    move-result-object v1

    :cond_5e
    return-object v1
.end method

.method public request()Lokhttp3/Request;
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, Lokhttp3/RealCall$ApplicationInterceptorChain;->request:Lokhttp3/Request;

    return-object v0
.end method
