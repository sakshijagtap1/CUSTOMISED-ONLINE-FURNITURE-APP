.class Lcom/ecommerce/furniture/helpers/JSSEProvider$1;
.super Ljava/lang/Object;
.source "JSSEProvider.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecommerce/furniture/helpers/JSSEProvider;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecommerce/furniture/helpers/JSSEProvider;


# direct methods
.method constructor <init>(Lcom/ecommerce/furniture/helpers/JSSEProvider;)V
    .registers 2
    .param p1, "this$0"    # Lcom/ecommerce/furniture/helpers/JSSEProvider;

    .prologue
    .line 9
    iput-object p1, p0, Lcom/ecommerce/furniture/helpers/JSSEProvider$1;->this$0:Lcom/ecommerce/furniture/helpers/JSSEProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/ecommerce/furniture/helpers/JSSEProvider$1;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .registers 4

    .prologue
    .line 11
    iget-object v0, p0, Lcom/ecommerce/furniture/helpers/JSSEProvider$1;->this$0:Lcom/ecommerce/furniture/helpers/JSSEProvider;

    const-string v1, "SSLContext.TLS"

    const-string v2, "org.apache.harmony.xnet.provider.jsse.SSLContextImpl"

    invoke-virtual {v0, v1, v2}, Lcom/ecommerce/furniture/helpers/JSSEProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, p0, Lcom/ecommerce/furniture/helpers/JSSEProvider$1;->this$0:Lcom/ecommerce/furniture/helpers/JSSEProvider;

    const-string v1, "Alg.Alias.SSLContext.TLSv1"

    const-string v2, "TLS"

    invoke-virtual {v0, v1, v2}, Lcom/ecommerce/furniture/helpers/JSSEProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v0, p0, Lcom/ecommerce/furniture/helpers/JSSEProvider$1;->this$0:Lcom/ecommerce/furniture/helpers/JSSEProvider;

    const-string v1, "KeyManagerFactory.X509"

    const-string v2, "org.apache.harmony.xnet.provider.jsse.KeyManagerFactoryImpl"

    invoke-virtual {v0, v1, v2}, Lcom/ecommerce/furniture/helpers/JSSEProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v0, p0, Lcom/ecommerce/furniture/helpers/JSSEProvider$1;->this$0:Lcom/ecommerce/furniture/helpers/JSSEProvider;

    const-string v1, "TrustManagerFactory.X509"

    const-string v2, "org.apache.harmony.xnet.provider.jsse.TrustManagerFactoryImpl"

    invoke-virtual {v0, v1, v2}, Lcom/ecommerce/furniture/helpers/JSSEProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    const/4 v0, 0x0

    return-object v0
.end method
