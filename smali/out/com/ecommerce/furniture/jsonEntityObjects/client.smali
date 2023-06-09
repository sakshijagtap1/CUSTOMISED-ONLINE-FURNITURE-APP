.class public Lcom/ecommerce/furniture/jsonEntityObjects/client;
.super Ljava/lang/Object;
.source "client.java"


# instance fields
.field private environment:Ljava/lang/String;

.field private paypal_sdk_version:Ljava/lang/String;

.field private platform:Ljava/lang/String;

.field private product_name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "environment"    # Ljava/lang/String;
    .param p2, "paypal_sdk_version"    # Ljava/lang/String;
    .param p3, "platform"    # Ljava/lang/String;
    .param p4, "product_name"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/ecommerce/furniture/jsonEntityObjects/client;->environment:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/ecommerce/furniture/jsonEntityObjects/client;->paypal_sdk_version:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/ecommerce/furniture/jsonEntityObjects/client;->platform:Ljava/lang/String;

    .line 18
    iput-object p4, p0, Lcom/ecommerce/furniture/jsonEntityObjects/client;->product_name:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public getEnvironment()Ljava/lang/String;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/ecommerce/furniture/jsonEntityObjects/client;->environment:Ljava/lang/String;

    return-object v0
.end method

.method public getPaypal_sdk_version()Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/ecommerce/furniture/jsonEntityObjects/client;->paypal_sdk_version:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/ecommerce/furniture/jsonEntityObjects/client;->platform:Ljava/lang/String;

    return-object v0
.end method

.method public getProduct_name()Ljava/lang/String;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ecommerce/furniture/jsonEntityObjects/client;->product_name:Ljava/lang/String;

    return-object v0
.end method
