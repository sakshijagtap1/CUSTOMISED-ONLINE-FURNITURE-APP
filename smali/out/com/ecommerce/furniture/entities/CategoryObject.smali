.class public Lcom/ecommerce/furniture/entities/CategoryObject;
.super Ljava/lang/Object;
.source "CategoryObject.java"


# instance fields
.field private categoryDescription:Ljava/lang/String;

.field private categoryId:I

.field private categoryImage:I

.field private categoryName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;)V
    .registers 5
    .param p1, "categoryId"    # I
    .param p2, "categoryName"    # Ljava/lang/String;
    .param p3, "categoryImage"    # I
    .param p4, "categoryDescription"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/ecommerce/furniture/entities/CategoryObject;->categoryId:I

    .line 14
    iput-object p2, p0, Lcom/ecommerce/furniture/entities/CategoryObject;->categoryName:Ljava/lang/String;

    .line 15
    iput p3, p0, Lcom/ecommerce/furniture/entities/CategoryObject;->categoryImage:I

    .line 16
    iput-object p4, p0, Lcom/ecommerce/furniture/entities/CategoryObject;->categoryDescription:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public getCategoryDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ecommerce/furniture/entities/CategoryObject;->categoryDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryId()I
    .registers 2

    .prologue
    .line 9
    iget v0, p0, Lcom/ecommerce/furniture/entities/CategoryObject;->categoryId:I

    return v0
.end method

.method public getCategoryImage()I
    .registers 2

    .prologue
    .line 33
    iget v0, p0, Lcom/ecommerce/furniture/entities/CategoryObject;->categoryImage:I

    return v0
.end method

.method public getCategoryName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/ecommerce/furniture/entities/CategoryObject;->categoryName:Ljava/lang/String;

    return-object v0
.end method

.method public setCategoryDescription(Ljava/lang/String;)V
    .registers 2
    .param p1, "categoryDescription"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/ecommerce/furniture/entities/CategoryObject;->categoryDescription:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setCategoryId(I)V
    .registers 2
    .param p1, "categoryId"    # I

    .prologue
    .line 20
    iput p1, p0, Lcom/ecommerce/furniture/entities/CategoryObject;->categoryId:I

    .line 22
    return-void
.end method

.method public setCategoryImage(I)V
    .registers 2
    .param p1, "categoryImage"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/ecommerce/furniture/entities/CategoryObject;->categoryImage:I

    .line 38
    return-void
.end method

.method public setCategoryName(Ljava/lang/String;)V
    .registers 2
    .param p1, "categoryName"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/ecommerce/furniture/entities/CategoryObject;->categoryName:Ljava/lang/String;

    .line 30
    return-void
.end method
