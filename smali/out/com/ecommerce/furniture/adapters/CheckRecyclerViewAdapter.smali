.class public Lcom/ecommerce/furniture/adapters/CheckRecyclerViewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "CheckRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/ecommerce/furniture/adapters/CheckRecyclerViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private mProductObject:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ecommerce/furniture/entities/ProductObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/ecommerce/furniture/entities/ProductObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p2, "mProductObject":Ljava/util/List;, "Ljava/util/List<Lcom/ecommerce/furniture/entities/ProductObject;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/ecommerce/furniture/adapters/CheckRecyclerViewAdapter;->context:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/ecommerce/furniture/adapters/CheckRecyclerViewAdapter;->mProductObject:Ljava/util/List;

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/ecommerce/furniture/adapters/CheckRecyclerViewAdapter;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/ecommerce/furniture/adapters/CheckRecyclerViewAdapter;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/ecommerce/furniture/adapters/CheckRecyclerViewAdapter;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ecommerce/furniture/adapters/CheckRecyclerViewAdapter;->mProductObject:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .prologue
    .line 16
    check-cast p1, Lcom/ecommerce/furniture/adapters/CheckRecyclerViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/ecommerce/furniture/adapters/CheckRecyclerViewAdapter;->onBindViewHolder(Lcom/ecommerce/furniture/adapters/CheckRecyclerViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/ecommerce/furniture/adapters/CheckRecyclerViewHolder;I)V
    .registers 9
    .param p1, "holder"    # Lcom/ecommerce/furniture/adapters/CheckRecyclerViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 38
    iget-object v0, p1, Lcom/ecommerce/furniture/adapters/CheckRecyclerViewHolder;->quantity:Landroid/widget/TextView;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v1, p1, Lcom/ecommerce/furniture/adapters/CheckRecyclerViewHolder;->productName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ecommerce/furniture/adapters/CheckRecyclerViewAdapter;->mProductObject:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecommerce/furniture/entities/ProductObject;

    invoke-virtual {v0}, Lcom/ecommerce/furniture/entities/ProductObject;->getProductName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object v1, p1, Lcom/ecommerce/furniture/adapters/CheckRecyclerViewHolder;->productPrice:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/ecommerce/furniture/adapters/CheckRecyclerViewAdapter;->mProductObject:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecommerce/furniture/entities/ProductObject;

    invoke-virtual {v0}, Lcom/ecommerce/furniture/entities/ProductObject;->getProductPrice()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " $"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v0, p1, Lcom/ecommerce/furniture/adapters/CheckRecyclerViewHolder;->removeProduct:Landroid/widget/TextView;

    new-instance v1, Lcom/ecommerce/furniture/adapters/CheckRecyclerViewAdapter$1;

    invoke-direct {v1, p0}, Lcom/ecommerce/furniture/adapters/CheckRecyclerViewAdapter$1;-><init>(Lcom/ecommerce/furniture/adapters/CheckRecyclerViewAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 4

    .prologue
    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/ecommerce/furniture/adapters/CheckRecyclerViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ecommerce/furniture/adapters/CheckRecyclerViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ecommerce/furniture/adapters/CheckRecyclerViewHolder;
    .registers 8
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 30
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040026

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 31
    .local v0, "layoutView":Landroid/view/View;
    new-instance v1, Lcom/ecommerce/furniture/adapters/CheckRecyclerViewHolder;

    invoke-direct {v1, v0}, Lcom/ecommerce/furniture/adapters/CheckRecyclerViewHolder;-><init>(Landroid/view/View;)V

    .line 32
    .local v1, "productHolder":Lcom/ecommerce/furniture/adapters/CheckRecyclerViewHolder;
    return-object v1
.end method
