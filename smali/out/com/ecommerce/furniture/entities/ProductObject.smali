.class public Lcom/ecommerce/furniture/entities/ProductObject;
.super Ljava/lang/Object;
.source "ProductObject.java"


# instance fields
.field private productColor:Ljava/lang/String;

.field private productDescription:Ljava/lang/String;

.field private productId:I

.field private productImage:I

.field private productName:Ljava/lang/String;

.field private productPrice:D

.field private productSize:I


# direct methods
.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;DILjava/lang/String;)V
    .registers 10
    .param p1, "productId"    # I
    .param p2, "productName"    # Ljava/lang/String;
    .param p3, "productImage"    # I
    .param p4, "productDescription"    # Ljava/lang/String;
    .param p5, "productPrice"    # D
    .param p7, "productSize"    # I
    .param p8, "productColor"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/ecommerce/furniture/entities/ProductObject;->productId:I

    .line 22
    iput-object p2, p0, Lcom/ecommerce/furniture/entities/ProductObject;->productName:Ljava/lang/String;

    .line 23
    iput p3, p0, Lcom/ecommerce/furniture/entities/ProductObject;->productImage:I

    .line 24
    iput-object p4, p0, Lcom/ecommerce/furniture/entities/ProductObject;->productDescription:Ljava/lang/String;

    .line 25
    iput-wide p5, p0, Lcom/ecommerce/furniture/entities/ProductObject;->productPrice:D

    .line 26
    iput p7, p0, Lcom/ecommerce/furniture/entities/ProductObject;->productSize:I

    .line 27
    iput-object p8, p0, Lcom/ecommerce/furniture/entities/ProductObject;->productColor:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public getProductColor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/ecommerce/furniture/entities/ProductObject;->productColor:Ljava/lang/String;

    return-object v0
.end method

.method public getProductDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ecommerce/furniture/entities/ProductObject;->productDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getProductId()I
    .registers 2

    .prologue
    .line 31
    iget v0, p0, Lcom/ecommerce/furniture/entities/ProductObject;->productId:I

    return v0
.end method

.method public getProductImage()I
    .registers 2

    .prologue
    .line 39
    iget v0, p0, Lcom/ecommerce/furniture/entities/ProductObject;->productImage:I

    return v0
.end method

.method public getProductName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/ecommerce/furniture/entities/ProductObject;->productName:Ljava/lang/String;

    return-object v0
.end method

.method public getProductPrice()D
    .registers 3

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/ecommerce/furniture/entities/ProductObject;->productPrice:D

    return-wide v0
.end method

.method public getProductSize()I
    .registers 2

    .prologue
    .line 51
    iget v0, p0, Lcom/ecommerce/furniture/entities/ProductObject;->productSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Product id and name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ecommerce/furniture/entities/ProductObject;->productId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ecommerce/furniture/entities/ProductObject;->productName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
