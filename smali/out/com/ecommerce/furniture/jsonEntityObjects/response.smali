.class public Lcom/ecommerce/furniture/jsonEntityObjects/response;
.super Ljava/lang/Object;
.source "response.java"


# instance fields
.field private create_time:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private intent:Ljava/lang/String;

.field private state:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "create_time"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "intent"    # Ljava/lang/String;
    .param p4, "state"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/ecommerce/furniture/jsonEntityObjects/response;->create_time:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/ecommerce/furniture/jsonEntityObjects/response;->id:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/ecommerce/furniture/jsonEntityObjects/response;->intent:Ljava/lang/String;

    .line 18
    iput-object p4, p0, Lcom/ecommerce/furniture/jsonEntityObjects/response;->state:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public getCreate_time()Ljava/lang/String;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/ecommerce/furniture/jsonEntityObjects/response;->create_time:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/ecommerce/furniture/jsonEntityObjects/response;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIntent()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/ecommerce/furniture/jsonEntityObjects/response;->intent:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ecommerce/furniture/jsonEntityObjects/response;->state:Ljava/lang/String;

    return-object v0
.end method
