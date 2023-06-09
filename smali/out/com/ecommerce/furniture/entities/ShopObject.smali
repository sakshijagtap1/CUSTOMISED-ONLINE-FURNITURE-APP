.class public Lcom/ecommerce/furniture/entities/ShopObject;
.super Ljava/lang/Object;
.source "ShopObject.java"


# instance fields
.field private email:Ljava/lang/String;

.field private shopDescription:Ljava/lang/String;

.field private shopId:I

.field private shopImage:I

.field private shopName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "shopId"    # I
    .param p2, "shopName"    # Ljava/lang/String;
    .param p3, "shopImage"    # I
    .param p4, "shopDescription"    # Ljava/lang/String;
    .param p5, "email"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p1, p0, Lcom/ecommerce/furniture/entities/ShopObject;->shopId:I

    .line 58
    iput-object p2, p0, Lcom/ecommerce/furniture/entities/ShopObject;->shopName:Ljava/lang/String;

    .line 59
    iput p3, p0, Lcom/ecommerce/furniture/entities/ShopObject;->shopImage:I

    .line 60
    iput-object p4, p0, Lcom/ecommerce/furniture/entities/ShopObject;->shopDescription:Ljava/lang/String;

    .line 61
    iput-object p5, p0, Lcom/ecommerce/furniture/entities/ShopObject;->email:Ljava/lang/String;

    .line 62
    return-void
.end method


# virtual methods
.method public getEmail()Ljava/lang/String;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/ecommerce/furniture/entities/ShopObject;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getShopDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/ecommerce/furniture/entities/ShopObject;->shopDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getShopId()I
    .registers 2

    .prologue
    .line 7
    iget v0, p0, Lcom/ecommerce/furniture/entities/ShopObject;->shopId:I

    return v0
.end method

.method public getShopImage()I
    .registers 2

    .prologue
    .line 23
    iget v0, p0, Lcom/ecommerce/furniture/entities/ShopObject;->shopImage:I

    return v0
.end method

.method public getShopName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 15
    iget-object v0, p0, Lcom/ecommerce/furniture/entities/ShopObject;->shopName:Ljava/lang/String;

    return-object v0
.end method

.method public setEmail(Ljava/lang/String;)V
    .registers 2
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/ecommerce/furniture/entities/ShopObject;->email:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setShopDescription(Ljava/lang/String;)V
    .registers 2
    .param p1, "shopDescription"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/ecommerce/furniture/entities/ShopObject;->shopDescription:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setShopId(I)V
    .registers 2
    .param p1, "shopId"    # I

    .prologue
    .line 11
    iput p1, p0, Lcom/ecommerce/furniture/entities/ShopObject;->shopId:I

    .line 12
    return-void
.end method

.method public setShopImage(I)V
    .registers 2
    .param p1, "shopImage"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/ecommerce/furniture/entities/ShopObject;->shopImage:I

    .line 28
    return-void
.end method

.method public setShopName(Ljava/lang/String;)V
    .registers 2
    .param p1, "shopName"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/ecommerce/furniture/entities/ShopObject;->shopName:Ljava/lang/String;

    .line 20
    return-void
.end method
