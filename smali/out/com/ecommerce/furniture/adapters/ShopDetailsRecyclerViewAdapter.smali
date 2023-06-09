.class public Lcom/ecommerce/furniture/adapters/ShopDetailsRecyclerViewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ShopDetailsRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/ecommerce/furniture/adapters/ShopDetailsRecyclerViewHolder;",
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
            "Lcom/ecommerce/furniture/entities/ShopObject;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field mail:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const-class v0, Lcom/ecommerce/furniture/adapters/ShopRecyclerViewAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ecommerce/furniture/adapters/ShopDetailsRecyclerViewAdapter;->TAG:Ljava/lang/String;

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
            "Lcom/ecommerce/furniture/entities/ShopObject;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 26
    .local p2, "allProducts":Ljava/util/List;, "Ljava/util/List<Lcom/ecommerce/furniture/entities/ShopObject;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 27
    iput-object p3, p0, Lcom/ecommerce/furniture/adapters/ShopDetailsRecyclerViewAdapter;->mail:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/ecommerce/furniture/adapters/ShopDetailsRecyclerViewAdapter;->context:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/ecommerce/furniture/adapters/ShopDetailsRecyclerViewAdapter;->allProducts:Ljava/util/List;

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/ecommerce/furniture/adapters/ShopDetailsRecyclerViewAdapter;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/ecommerce/furniture/adapters/ShopDetailsRecyclerViewAdapter;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/ecommerce/furniture/adapters/ShopDetailsRecyclerViewAdapter;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/ecommerce/furniture/adapters/ShopDetailsRecyclerViewAdapter;->allProducts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .prologue
    .line 16
    check-cast p1, Lcom/ecommerce/furniture/adapters/ShopDetailsRecyclerViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/ecommerce/furniture/adapters/ShopDetailsRecyclerViewAdapter;->onBindViewHolder(Lcom/ecommerce/furniture/adapters/ShopDetailsRecyclerViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/ecommerce/furniture/adapters/ShopDetailsRecyclerViewHolder;I)V
    .registers 6
    .param p1, "holder"    # Lcom/ecommerce/furniture/adapters/ShopDetailsRecyclerViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 41
    iget-object v1, p0, Lcom/ecommerce/furniture/adapters/ShopDetailsRecyclerViewAdapter;->allProducts:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecommerce/furniture/entities/ShopObject;

    .line 43
    .local v0, "singleProduct":Lcom/ecommerce/furniture/entities/ShopObject;
    iget-object v1, p1, Lcom/ecommerce/furniture/adapters/ShopDetailsRecyclerViewHolder;->productName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ecommerce/furniture/entities/ShopObject;->getShopName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v1, p1, Lcom/ecommerce/furniture/adapters/ShopDetailsRecyclerViewHolder;->produceImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/ecommerce/furniture/entities/ShopObject;->getShopImage()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 46
    iget-object v1, p1, Lcom/ecommerce/furniture/adapters/ShopDetailsRecyclerViewHolder;->produceImage:Landroid/widget/ImageView;

    new-instance v2, Lcom/ecommerce/furniture/adapters/ShopDetailsRecyclerViewAdapter$1;

    invoke-direct {v2, p0}, Lcom/ecommerce/furniture/adapters/ShopDetailsRecyclerViewAdapter$1;-><init>(Lcom/ecommerce/furniture/adapters/ShopDetailsRecyclerViewAdapter;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 4

    .prologue
    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/ecommerce/furniture/adapters/ShopDetailsRecyclerViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ecommerce/furniture/adapters/ShopDetailsRecyclerViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ecommerce/furniture/adapters/ShopDetailsRecyclerViewHolder;
    .registers 8
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 34
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04003c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 35
    .local v0, "layoutView":Landroid/view/View;
    new-instance v1, Lcom/ecommerce/furniture/adapters/ShopDetailsRecyclerViewHolder;

    invoke-direct {v1, v0}, Lcom/ecommerce/furniture/adapters/ShopDetailsRecyclerViewHolder;-><init>(Landroid/view/View;)V

    .line 36
    .local v1, "productHolder":Lcom/ecommerce/furniture/adapters/ShopDetailsRecyclerViewHolder;
    return-object v1
.end method
