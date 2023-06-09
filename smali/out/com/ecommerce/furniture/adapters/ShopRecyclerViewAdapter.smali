.class public Lcom/ecommerce/furniture/adapters/ShopRecyclerViewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ShopRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/ecommerce/furniture/adapters/ShopRecyclerViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private allProducts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ecommerce/furniture/entities/ProductObject;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private mail:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const-class v0, Lcom/ecommerce/furniture/adapters/ShopRecyclerViewAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ecommerce/furniture/adapters/ShopRecyclerViewAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "mail"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/ecommerce/furniture/entities/ProductObject;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    .local p2, "allProducts":Ljava/util/List;, "Ljava/util/List<Lcom/ecommerce/furniture/entities/ProductObject;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/ecommerce/furniture/adapters/ShopRecyclerViewAdapter;->context:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/ecommerce/furniture/adapters/ShopRecyclerViewAdapter;->allProducts:Ljava/util/List;

    .line 30
    iput-object p3, p0, Lcom/ecommerce/furniture/adapters/ShopRecyclerViewAdapter;->mail:Ljava/lang/String;

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/ecommerce/furniture/adapters/ShopRecyclerViewAdapter;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/ecommerce/furniture/adapters/ShopRecyclerViewAdapter;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/ecommerce/furniture/adapters/ShopRecyclerViewAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ecommerce/furniture/adapters/ShopRecyclerViewAdapter;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/ecommerce/furniture/adapters/ShopRecyclerViewAdapter;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/ecommerce/furniture/adapters/ShopRecyclerViewAdapter;->mail:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/ecommerce/furniture/adapters/ShopRecyclerViewAdapter;->allProducts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .prologue
    .line 19
    check-cast p1, Lcom/ecommerce/furniture/adapters/ShopRecyclerViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/ecommerce/furniture/adapters/ShopRecyclerViewAdapter;->onBindViewHolder(Lcom/ecommerce/furniture/adapters/ShopRecyclerViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/ecommerce/furniture/adapters/ShopRecyclerViewHolder;I)V
    .registers 6
    .param p1, "holder"    # Lcom/ecommerce/furniture/adapters/ShopRecyclerViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 42
    iget-object v1, p0, Lcom/ecommerce/furniture/adapters/ShopRecyclerViewAdapter;->allProducts:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecommerce/furniture/entities/ProductObject;

    .line 44
    .local v0, "singleProduct":Lcom/ecommerce/furniture/entities/ProductObject;
    iget-object v1, p1, Lcom/ecommerce/furniture/adapters/ShopRecyclerViewHolder;->productName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ecommerce/furniture/entities/ProductObject;->getProductName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v1, p1, Lcom/ecommerce/furniture/adapters/ShopRecyclerViewHolder;->produceImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/ecommerce/furniture/entities/ProductObject;->getProductImage()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 47
    iget-object v1, p1, Lcom/ecommerce/furniture/adapters/ShopRecyclerViewHolder;->produceImage:Landroid/widget/ImageView;

    new-instance v2, Lcom/ecommerce/furniture/adapters/ShopRecyclerViewAdapter$1;

    invoke-direct {v2, p0, v0}, Lcom/ecommerce/furniture/adapters/ShopRecyclerViewAdapter$1;-><init>(Lcom/ecommerce/furniture/adapters/ShopRecyclerViewAdapter;Lcom/ecommerce/furniture/entities/ProductObject;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 4

    .prologue
    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/ecommerce/furniture/adapters/ShopRecyclerViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ecommerce/furniture/adapters/ShopRecyclerViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ecommerce/furniture/adapters/ShopRecyclerViewHolder;
    .registers 8
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 35
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04003c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 36
    .local v0, "layoutView":Landroid/view/View;
    new-instance v1, Lcom/ecommerce/furniture/adapters/ShopRecyclerViewHolder;

    invoke-direct {v1, v0}, Lcom/ecommerce/furniture/adapters/ShopRecyclerViewHolder;-><init>(Landroid/view/View;)V

    .line 37
    .local v1, "productHolder":Lcom/ecommerce/furniture/adapters/ShopRecyclerViewHolder;
    return-object v1
.end method
