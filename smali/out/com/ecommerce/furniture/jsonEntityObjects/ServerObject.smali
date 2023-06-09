.class public Lcom/ecommerce/furniture/jsonEntityObjects/ServerObject;
.super Ljava/lang/Object;
.source "ServerObject.java"


# instance fields
.field private success:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "success"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/ecommerce/furniture/jsonEntityObjects/ServerObject;->success:Ljava/lang/String;

    .line 9
    return-void
.end method


# virtual methods
.method public getSuccess()Ljava/lang/String;
    .registers 2

    .prologue
    .line 12
    iget-object v0, p0, Lcom/ecommerce/furniture/jsonEntityObjects/ServerObject;->success:Ljava/lang/String;

    return-object v0
.end method
