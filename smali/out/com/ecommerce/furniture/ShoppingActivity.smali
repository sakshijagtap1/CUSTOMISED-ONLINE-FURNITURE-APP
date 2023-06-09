.class public Lcom/ecommerce/furniture/ShoppingActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ShoppingActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private area:Ljava/lang/String;

.field private mail:Ljava/lang/String;

.field private shoppingRecyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const-class v0, Lcom/ecommerce/furniture/ShoppingActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ecommerce/furniture/ShoppingActivity;->TAG:Ljava/lang/String;

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
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ecommerce/furniture/entities/ProductObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v0, "products":Ljava/util/List;, "Ljava/util/List<Lcom/ecommerce/furniture/entities/ProductObject;>;"
    iget-object v1, p0, Lcom/ecommerce/furniture/ShoppingActivity;->area:Ljava/lang/String;

    const-string v2, "Study"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_74

    .line 50
    new-instance v1, Lcom/ecommerce/furniture/entities/ProductObject;

    const/4 v2, 0x1

    const-string v3, "Study Table"

    const v4, 0x7f02009b

    const-string v5, "Best"

    const-wide v6, 0x40b3880000000000L    # 5000.0

    const/16 v8, 0x26

    const-string v9, "Black"

    invoke-direct/range {v1 .. v9}, Lcom/ecommerce/furniture/entities/ProductObject;-><init>(ILjava/lang/String;ILjava/lang/String;DILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    new-instance v1, Lcom/ecommerce/furniture/entities/ProductObject;

    const/4 v2, 0x1

    const-string v3, "Folding Table"

    const v4, 0x7f020085

    const-string v5, "Best"

    const-wide v6, 0x40a3880000000000L    # 2500.0

    const/16 v8, 0x26

    const-string v9, "Black"

    invoke-direct/range {v1 .. v9}, Lcom/ecommerce/furniture/entities/ProductObject;-><init>(ILjava/lang/String;ILjava/lang/String;DILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v1, Lcom/ecommerce/furniture/entities/ProductObject;

    const/4 v2, 0x1

    const-string v3, "Computer Table"

    const v4, 0x7f02007c

    const-string v5, "Best"

    const-wide v6, 0x4097700000000000L    # 1500.0

    const/16 v8, 0x26

    const-string v9, "White"

    invoke-direct/range {v1 .. v9}, Lcom/ecommerce/furniture/entities/ProductObject;-><init>(ILjava/lang/String;ILjava/lang/String;DILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    new-instance v1, Lcom/ecommerce/furniture/entities/ProductObject;

    const/4 v2, 0x1

    const-string v3, "Study Lamp"

    const v4, 0x7f020099

    const-string v5, "Best"

    const-wide v6, 0x408f400000000000L    # 1000.0

    const/16 v8, 0x26

    const-string v9, "Dark Blue"

    invoke-direct/range {v1 .. v9}, Lcom/ecommerce/furniture/entities/ProductObject;-><init>(ILjava/lang/String;ILjava/lang/String;DILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    :goto_73
    return-object v0

    .line 55
    :cond_74
    iget-object v1, p0, Lcom/ecommerce/furniture/ShoppingActivity;->area:Ljava/lang/String;

    const-string v2, "Bedroom"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e3

    .line 56
    new-instance v1, Lcom/ecommerce/furniture/entities/ProductObject;

    const/4 v2, 0x1

    const-string v3, "Bed"

    const v4, 0x7f02004c

    const-string v5, "Best"

    const-wide v6, 0x40af400000000000L    # 4000.0

    const/16 v8, 0x26

    const-string v9, "Black"

    invoke-direct/range {v1 .. v9}, Lcom/ecommerce/furniture/entities/ProductObject;-><init>(ILjava/lang/String;ILjava/lang/String;DILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    new-instance v1, Lcom/ecommerce/furniture/entities/ProductObject;

    const/4 v2, 0x1

    const-string v3, "Wall Lights"

    const v4, 0x7f0200a1

    const-string v5, "Best"

    const-wide v6, 0x40a5e00000000000L    # 2800.0

    const/16 v8, 0x26

    const-string v9, "Black"

    invoke-direct/range {v1 .. v9}, Lcom/ecommerce/furniture/entities/ProductObject;-><init>(ILjava/lang/String;ILjava/lang/String;DILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance v1, Lcom/ecommerce/furniture/entities/ProductObject;

    const/4 v2, 0x1

    const-string v3, "table Lamp"

    const v4, 0x7f02009d

    const-string v5, "Best"

    const-wide v6, 0x40a7700000000000L    # 3000.0

    const/16 v8, 0x26

    const-string v9, "White"

    invoke-direct/range {v1 .. v9}, Lcom/ecommerce/furniture/entities/ProductObject;-><init>(ILjava/lang/String;ILjava/lang/String;DILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    new-instance v1, Lcom/ecommerce/furniture/entities/ProductObject;

    const/4 v2, 0x1

    const-string v3, "Table Clock"

    const v4, 0x7f02009c

    const-string v5, "Best"

    const-wide v6, 0x40b3880000000000L    # 5000.0

    const/16 v8, 0x26

    const-string v9, "Dark Blue"

    invoke-direct/range {v1 .. v9}, Lcom/ecommerce/furniture/entities/ProductObject;-><init>(ILjava/lang/String;ILjava/lang/String;DILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_73

    .line 61
    :cond_e3
    iget-object v1, p0, Lcom/ecommerce/furniture/ShoppingActivity;->area:Ljava/lang/String;

    const-string v2, "Kitchen"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_150

    .line 62
    new-instance v1, Lcom/ecommerce/furniture/entities/ProductObject;

    const/4 v2, 0x1

    const-string v3, "Dining Table"

    const v4, 0x7f020080

    const-string v5, "Best"

    const-wide v6, 0x40b7700000000000L    # 6000.0

    const/16 v8, 0x26

    const-string v9, "Black"

    invoke-direct/range {v1 .. v9}, Lcom/ecommerce/furniture/entities/ProductObject;-><init>(ILjava/lang/String;ILjava/lang/String;DILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    new-instance v1, Lcom/ecommerce/furniture/entities/ProductObject;

    const/4 v2, 0x1

    const-string v3, "Gas"

    const v4, 0x7f020086

    const-string v5, "Best"

    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    const/16 v8, 0xbb8

    const-string v9, "Black"

    invoke-direct/range {v1 .. v9}, Lcom/ecommerce/furniture/entities/ProductObject;-><init>(ILjava/lang/String;ILjava/lang/String;DILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance v1, Lcom/ecommerce/furniture/entities/ProductObject;

    const/4 v2, 0x1

    const-string v3, "CookTops"

    const v4, 0x7f02007d

    const-string v5, "Best"

    const-wide v6, 0x409f400000000000L    # 2000.0

    const/16 v8, 0x26

    const-string v9, "White"

    invoke-direct/range {v1 .. v9}, Lcom/ecommerce/furniture/entities/ProductObject;-><init>(ILjava/lang/String;ILjava/lang/String;DILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    new-instance v1, Lcom/ecommerce/furniture/entities/ProductObject;

    const/4 v2, 0x1

    const-string v3, "Water Purifier"

    const v4, 0x7f0200a2

    const-string v5, "Best"

    const-wide v6, 0x408f400000000000L    # 1000.0

    const/16 v8, 0x26

    const-string v9, "Dark Blue"

    invoke-direct/range {v1 .. v9}, Lcom/ecommerce/furniture/entities/ProductObject;-><init>(ILjava/lang/String;ILjava/lang/String;DILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_73

    .line 69
    :cond_150
    new-instance v1, Lcom/ecommerce/furniture/entities/ProductObject;

    const/4 v2, 0x1

    const-string v3, "Chair"

    const v4, 0x7f020051

    const-string v5, "Best"

    const-wide v6, 0x409f400000000000L    # 2000.0

    const/16 v8, 0x26

    const-string v9, "Black"

    invoke-direct/range {v1 .. v9}, Lcom/ecommerce/furniture/entities/ProductObject;-><init>(ILjava/lang/String;ILjava/lang/String;DILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance v1, Lcom/ecommerce/furniture/entities/ProductObject;

    const/4 v2, 0x1

    const-string v3, "Flare Black Gown"

    const v4, 0x7f020097

    const-string v5, "Best"

    const-wide v6, 0x40a5e00000000000L    # 2800.0

    const/16 v8, 0x26

    const-string v9, "Black"

    invoke-direct/range {v1 .. v9}, Lcom/ecommerce/furniture/entities/ProductObject;-><init>(ILjava/lang/String;ILjava/lang/String;DILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    new-instance v1, Lcom/ecommerce/furniture/entities/ProductObject;

    const/4 v2, 0x1

    const-string v3, "Flare White Blouse"

    const v4, 0x7f02009f

    const-string v5, "Best"

    const-wide v6, 0x4097700000000000L    # 1500.0

    const/16 v8, 0x26

    const-string v9, "White"

    invoke-direct/range {v1 .. v9}, Lcom/ecommerce/furniture/entities/ProductObject;-><init>(ILjava/lang/String;ILjava/lang/String;DILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v1, Lcom/ecommerce/furniture/entities/ProductObject;

    const/4 v2, 0x1

    const-string v3, "Blue Swed Gown"

    const v4, 0x7f02004e

    const-string v5, "Best"

    const-wide v6, 0x40a7700000000000L    # 3000.0

    const/16 v8, 0x26

    const-string v9, "Dark Blue"

    invoke-direct/range {v1 .. v9}, Lcom/ecommerce/furniture/entities/ProductObject;-><init>(ILjava/lang/String;ILjava/lang/String;DILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_73
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x1

    .line 27
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v3, 0x7f040024

    invoke-virtual {p0, v3}, Lcom/ecommerce/furniture/ShoppingActivity;->setContentView(I)V

    .line 30
    invoke-virtual {p0}, Lcom/ecommerce/furniture/ShoppingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 31
    .local v0, "intent":Landroid/os/Bundle;
    const-string v3, "Area"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ecommerce/furniture/ShoppingActivity;->area:Ljava/lang/String;

    .line 32
    const-string v3, "EMAIL"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ecommerce/furniture/ShoppingActivity;->mail:Ljava/lang/String;

    .line 33
    invoke-virtual {p0, v4}, Lcom/ecommerce/furniture/ShoppingActivity;->setRequestedOrientation(I)V

    .line 35
    const v3, 0x7f0c00c6

    invoke-virtual {p0, v3}, Lcom/ecommerce/furniture/ShoppingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView;

    iput-object v3, p0, Lcom/ecommerce/furniture/ShoppingActivity;->shoppingRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 36
    new-instance v1, Landroid/support/v7/widget/GridLayoutManager;

    invoke-direct {v1, p0, v7}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 37
    .local v1, "mGrid":Landroid/support/v7/widget/GridLayoutManager;
    iget-object v3, p0, Lcom/ecommerce/furniture/ShoppingActivity;->shoppingRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 38
    iget-object v3, p0, Lcom/ecommerce/furniture/ShoppingActivity;->shoppingRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 39
    iget-object v3, p0, Lcom/ecommerce/furniture/ShoppingActivity;->shoppingRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v4, Lcom/ecommerce/furniture/helpers/SpacesItemDecoration;

    const/16 v5, 0xc

    const/4 v6, 0x0

    invoke-direct {v4, v7, v5, v6}, Lcom/ecommerce/furniture/helpers/SpacesItemDecoration;-><init>(IIZ)V

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 41
    new-instance v2, Lcom/ecommerce/furniture/adapters/ShopRecyclerViewAdapter;

    invoke-direct {p0}, Lcom/ecommerce/furniture/ShoppingActivity;->getAllProductsOnSale()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/ecommerce/furniture/ShoppingActivity;->mail:Ljava/lang/String;

    invoke-direct {v2, p0, v3, v4}, Lcom/ecommerce/furniture/adapters/ShopRecyclerViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 42
    .local v2, "shopAdapter":Lcom/ecommerce/furniture/adapters/ShopRecyclerViewAdapter;
    iget-object v3, p0, Lcom/ecommerce/furniture/ShoppingActivity;->shoppingRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 43
    return-void
.end method
