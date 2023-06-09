.class public Lcom/ecommerce/furniture/CategoryActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "CategoryActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private categoryRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field customizeRequest:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const-class v0, Lcom/ecommerce/furniture/CategoryActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ecommerce/furniture/CategoryActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private getAllProductsOnSale()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ecommerce/furniture/entities/CategoryObject;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v0, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/ecommerce/furniture/entities/CategoryObject;>;"
    new-instance v1, Lcom/ecommerce/furniture/entities/CategoryObject;

    const-string v2, "Living room"

    const v3, 0x7f02008b

    const-string v4, "Living Room....."

    invoke-direct {v1, v5, v2, v3, v4}, Lcom/ecommerce/furniture/entities/CategoryObject;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance v1, Lcom/ecommerce/furniture/entities/CategoryObject;

    const-string v2, "Study"

    const v3, 0x7f02009a

    const-string v4, "Study Room......"

    invoke-direct {v1, v5, v2, v3, v4}, Lcom/ecommerce/furniture/entities/CategoryObject;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v1, Lcom/ecommerce/furniture/entities/CategoryObject;

    const-string v2, "Bedroom"

    const v3, 0x7f02004c

    const-string v4, "Bedroom......"

    invoke-direct {v1, v5, v2, v3, v4}, Lcom/ecommerce/furniture/entities/CategoryObject;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance v1, Lcom/ecommerce/furniture/entities/CategoryObject;

    const-string v2, "Kitchen"

    const v3, 0x7f020088

    const-string v4, "Kitchen......."

    invoke-direct {v1, v5, v2, v3, v4}, Lcom/ecommerce/furniture/entities/CategoryObject;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x1

    .line 29
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v4, 0x7f04001a

    invoke-virtual {p0, v4}, Lcom/ecommerce/furniture/CategoryActivity;->setContentView(I)V

    .line 32
    invoke-virtual {p0, v5}, Lcom/ecommerce/furniture/CategoryActivity;->setRequestedOrientation(I)V

    .line 34
    invoke-virtual {p0}, Lcom/ecommerce/furniture/CategoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 35
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "EMAIL"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "email":Ljava/lang/String;
    const v4, 0x7f0c00a0

    invoke-virtual {p0, v4}, Lcom/ecommerce/furniture/CategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/RecyclerView;

    iput-object v4, p0, Lcom/ecommerce/furniture/CategoryActivity;->categoryRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 38
    new-instance v2, Landroid/support/v7/widget/GridLayoutManager;

    invoke-direct {v2, p0, v8}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 39
    .local v2, "mGrid":Landroid/support/v7/widget/GridLayoutManager;
    iget-object v4, p0, Lcom/ecommerce/furniture/CategoryActivity;->categoryRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 40
    iget-object v4, p0, Lcom/ecommerce/furniture/CategoryActivity;->categoryRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 41
    iget-object v4, p0, Lcom/ecommerce/furniture/CategoryActivity;->categoryRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v5, Lcom/ecommerce/furniture/helpers/SpacesItemDecoration;

    const/16 v6, 0xc

    const/4 v7, 0x0

    invoke-direct {v5, v8, v6, v7}, Lcom/ecommerce/furniture/helpers/SpacesItemDecoration;-><init>(IIZ)V

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 43
    const v4, 0x7f0c00a1

    invoke-virtual {p0, v4}, Lcom/ecommerce/furniture/CategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/ecommerce/furniture/CategoryActivity;->customizeRequest:Landroid/widget/Button;

    .line 45
    new-instance v3, Lcom/ecommerce/furniture/adapters/CategoryRecyclerViewAdapter;

    invoke-direct {p0}, Lcom/ecommerce/furniture/CategoryActivity;->getAllProductsOnSale()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, p0, v4, v0}, Lcom/ecommerce/furniture/adapters/CategoryRecyclerViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 46
    .local v3, "shopAdapter":Lcom/ecommerce/furniture/adapters/CategoryRecyclerViewAdapter;
    iget-object v4, p0, Lcom/ecommerce/furniture/CategoryActivity;->categoryRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 49
    iget-object v4, p0, Lcom/ecommerce/furniture/CategoryActivity;->customizeRequest:Landroid/widget/Button;

    new-instance v5, Lcom/ecommerce/furniture/CategoryActivity$1;

    invoke-direct {v5, p0, v0}, Lcom/ecommerce/furniture/CategoryActivity$1;-><init>(Lcom/ecommerce/furniture/CategoryActivity;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    return-void
.end method
