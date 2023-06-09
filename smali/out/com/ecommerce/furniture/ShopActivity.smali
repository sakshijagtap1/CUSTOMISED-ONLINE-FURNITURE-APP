.class public Lcom/ecommerce/furniture/ShopActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ShopActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private shoppingRecyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const-class v0, Lcom/ecommerce/furniture/ShopActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ecommerce/furniture/ShopActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private getAllProductsOnSale()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ecommerce/furniture/entities/ShopObject;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 49
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v6, "products":Ljava/util/List;, "Ljava/util/List<Lcom/ecommerce/furniture/entities/ShopObject;>;"
    new-instance v0, Lcom/ecommerce/furniture/entities/ShopObject;

    const-string v2, "Ekbote Furniture"

    const v3, 0x7f020081

    const-string v4, "Pune"

    const-string v5, "sagarlsawant15@gmail.com"

    invoke-direct/range {v0 .. v5}, Lcom/ecommerce/furniture/entities/ShopObject;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    new-instance v0, Lcom/ecommerce/furniture/entities/ShopObject;

    const-string v2, "The Bean Store"

    const v3, 0x7f020082

    const-string v4, "Pune"

    const-string v5, "sagarlsawant15@gmail.com"

    invoke-direct/range {v0 .. v5}, Lcom/ecommerce/furniture/entities/ShopObject;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v0, Lcom/ecommerce/furniture/entities/ShopObject;

    const-string v2, "Natural Living Furniture"

    const v3, 0x7f020083

    const-string v4, "Pune"

    const-string v5, "sagarlsawant15@gmail.com"

    invoke-direct/range {v0 .. v5}, Lcom/ecommerce/furniture/entities/ShopObject;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    new-instance v0, Lcom/ecommerce/furniture/entities/ShopObject;

    const-string v2, "Lalco Interiers"

    const v3, 0x7f020084

    const-string v4, "Pune"

    const-string v5, "sagarlsawant15@gmail.com"

    invoke-direct/range {v0 .. v5}, Lcom/ecommerce/furniture/entities/ShopObject;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    return-object v6
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x1

    .line 28
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v4, 0x7f040023

    invoke-virtual {p0, v4}, Lcom/ecommerce/furniture/ShopActivity;->setContentView(I)V

    .line 32
    invoke-virtual {p0}, Lcom/ecommerce/furniture/ShopActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 33
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "EMAIL"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "email":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/ecommerce/furniture/ShopActivity;->setRequestedOrientation(I)V

    .line 37
    const v4, 0x7f0c00c5

    invoke-virtual {p0, v4}, Lcom/ecommerce/furniture/ShopActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/RecyclerView;

    iput-object v4, p0, Lcom/ecommerce/furniture/ShopActivity;->shoppingRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 38
    new-instance v2, Landroid/support/v7/widget/GridLayoutManager;

    invoke-direct {v2, p0, v8}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 39
    .local v2, "mGrid":Landroid/support/v7/widget/GridLayoutManager;
    iget-object v4, p0, Lcom/ecommerce/furniture/ShopActivity;->shoppingRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 40
    iget-object v4, p0, Lcom/ecommerce/furniture/ShopActivity;->shoppingRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 41
    iget-object v4, p0, Lcom/ecommerce/furniture/ShopActivity;->shoppingRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v5, Lcom/ecommerce/furniture/helpers/SpacesItemDecoration;

    const/16 v6, 0xc

    const/4 v7, 0x0

    invoke-direct {v5, v8, v6, v7}, Lcom/ecommerce/furniture/helpers/SpacesItemDecoration;-><init>(IIZ)V

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 43
    new-instance v3, Lcom/ecommerce/furniture/adapters/ShopDetailsRecyclerViewAdapter;

    invoke-direct {p0}, Lcom/ecommerce/furniture/ShopActivity;->getAllProductsOnSale()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, p0, v4, v0}, Lcom/ecommerce/furniture/adapters/ShopDetailsRecyclerViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 44
    .local v3, "shopAdapter":Lcom/ecommerce/furniture/adapters/ShopDetailsRecyclerViewAdapter;
    iget-object v4, p0, Lcom/ecommerce/furniture/ShopActivity;->shoppingRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 45
    return-void
.end method
