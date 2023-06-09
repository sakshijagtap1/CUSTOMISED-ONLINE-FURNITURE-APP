.class public Lcom/ecommerce/furniture/jsonEntityObjects/PaymentResponseObject;
.super Ljava/lang/Object;
.source "PaymentResponseObject.java"


# instance fields
.field private client:Lcom/ecommerce/furniture/jsonEntityObjects/client;

.field private response:Lcom/ecommerce/furniture/jsonEntityObjects/response;

.field private response_type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ecommerce/furniture/jsonEntityObjects/client;Lcom/ecommerce/furniture/jsonEntityObjects/response;Ljava/lang/String;)V
    .registers 4
    .param p1, "client"    # Lcom/ecommerce/furniture/jsonEntityObjects/client;
    .param p2, "response"    # Lcom/ecommerce/furniture/jsonEntityObjects/response;
    .param p3, "response_type"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/ecommerce/furniture/jsonEntityObjects/PaymentResponseObject;->client:Lcom/ecommerce/furniture/jsonEntityObjects/client;

    .line 13
    iput-object p2, p0, Lcom/ecommerce/furniture/jsonEntityObjects/PaymentResponseObject;->response:Lcom/ecommerce/furniture/jsonEntityObjects/response;

    .line 14
    iput-object p3, p0, Lcom/ecommerce/furniture/jsonEntityObjects/PaymentResponseObject;->response_type:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public getClient()Lcom/ecommerce/furniture/jsonEntityObjects/client;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/ecommerce/furniture/jsonEntityObjects/PaymentResponseObject;->client:Lcom/ecommerce/furniture/jsonEntityObjects/client;

    return-object v0
.end method

.method public getResponse()Lcom/ecommerce/furniture/jsonEntityObjects/response;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/ecommerce/furniture/jsonEntityObjects/PaymentResponseObject;->response:Lcom/ecommerce/furniture/jsonEntityObjects/response;

    return-object v0
.end method

.method public getResponse_type()Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/ecommerce/furniture/jsonEntityObjects/PaymentResponseObject;->response_type:Ljava/lang/String;

    return-object v0
.end method
