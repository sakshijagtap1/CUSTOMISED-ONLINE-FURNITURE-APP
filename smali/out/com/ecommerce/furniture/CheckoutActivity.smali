.class public Lcom/ecommerce/furniture/CheckoutActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "CheckoutActivity.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private checkRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mSubTotal:D

.field private subTotal:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const-class v0, Lcom/ecommerce/furniture/CheckoutActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/ecommerce/furniture/CheckoutActivity;->$assertionsDisabled:Z

    .line 29
    const-class v0, Lcom/ecommerce/furniture/CheckoutActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ecommerce/furniture/CheckoutActivity;->TAG:Ljava/lang/String;

    return-void

    .line 27
    :cond_14
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 35
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ecommerce/furniture/CheckoutActivity;->mSubTotal:D

    return-void
.end method

.method static synthetic access$000(Lcom/ecommerce/furniture/CheckoutActivity;)D
    .registers 3
    .param p0, "x0"    # Lcom/ecommerce/furniture/CheckoutActivity;

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/ecommerce/furniture/CheckoutActivity;->mSubTotal:D

    return-wide v0
.end method

.method private convertObjectArrayToListObject([Lcom/ecommerce/furniture/entities/ProductObject;)Ljava/util/List;
    .registers 3
    .param p1, "allProducts"    # [Lcom/ecommerce/furniture/entities/ProductObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/ecommerce/furniture/entities/ProductObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ecommerce/furniture/entities/ProductObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v0, "mProduct":Ljava/util/List;, "Ljava/util/List<Lcom/ecommerce/furniture/entities/ProductObject;>;"
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 145
    return-object v0
.end method

.method private getTotalPrice(Ljava/util/List;)D
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ecommerce/furniture/entities/ProductObject;",
            ">;)D"
        }
    .end annotation

    .prologue
    .line 160
    .local p1, "mProducts":Ljava/util/List;, "Ljava/util/List<Lcom/ecommerce/furniture/entities/ProductObject;>;"
    const-wide/16 v2, 0x0

    .line 161
    .local v2, "totalCost":D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_17

    .line 162
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ecommerce/furniture/entities/ProductObject;

    .line 163
    .local v1, "pObject":Lcom/ecommerce/furniture/entities/ProductObject;
    invoke-virtual {v1}, Lcom/ecommerce/furniture/entities/ProductObject;->getProductPrice()D

    move-result-wide v4

    add-double/2addr v2, v4

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 165
    .end local v1    # "pObject":Lcom/ecommerce/furniture/entities/ProductObject;
    :cond_17
    return-wide v2
.end method

.method private returnQuantityByProductName(Ljava/lang/String;Ljava/util/List;)I
    .registers 8
    .param p1, "productName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/ecommerce/furniture/entities/ProductObject;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 149
    .local p2, "mProducts":Ljava/util/List;, "Ljava/util/List<Lcom/ecommerce/furniture/entities/ProductObject;>;"
    const/4 v2, 0x0

    .line 150
    .local v2, "quantityCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_25

    .line 151
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ecommerce/furniture/entities/ProductObject;

    .line 152
    .local v1, "pObject":Lcom/ecommerce/furniture/entities/ProductObject;
    invoke-virtual {v1}, Lcom/ecommerce/furniture/entities/ProductObject;->getProductName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 153
    add-int/lit8 v2, v2, 0x1

    .line 150
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 156
    .end local v1    # "pObject":Lcom/ecommerce/furniture/entities/ProductObject;
    :cond_25
    return v2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 20
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super/range {p0 .. p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v14, 0x7f04001b

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/ecommerce/furniture/CheckoutActivity;->setContentView(I)V

    .line 42
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/ecommerce/furniture/CheckoutActivity;->setRequestedOrientation(I)V

    .line 43
    const-string v14, "Over Cart"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/ecommerce/furniture/CheckoutActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 45
    const v14, 0x7f0c00a3

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/ecommerce/furniture/CheckoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/ecommerce/furniture/CheckoutActivity;->subTotal:Landroid/widget/TextView;

    .line 47
    const v14, 0x7f0c00a2

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/ecommerce/furniture/CheckoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/ecommerce/furniture/CheckoutActivity;->checkRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 48
    new-instance v9, Landroid/support/v7/widget/LinearLayoutManager;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 49
    .local v9, "linearLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ecommerce/furniture/CheckoutActivity;->checkRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v14, v9}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 50
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ecommerce/furniture/CheckoutActivity;->checkRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 51
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ecommerce/furniture/CheckoutActivity;->checkRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v15, Lcom/ecommerce/furniture/helpers/SimpleDividerItemDecoration;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/ecommerce/furniture/helpers/SimpleDividerItemDecoration;-><init>(Landroid/content/Context;)V

    invoke-virtual {v14, v15}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 54
    new-instance v11, Lcom/ecommerce/furniture/helpers/MySharedPreference;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/ecommerce/furniture/helpers/MySharedPreference;-><init>(Landroid/content/Context;)V

    .line 56
    .local v11, "mShared":Lcom/ecommerce/furniture/helpers/MySharedPreference;
    new-instance v4, Lcom/google/gson/GsonBuilder;

    invoke-direct {v4}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 57
    .local v4, "builder":Lcom/google/gson/GsonBuilder;
    invoke-virtual {v4}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v7

    .line 59
    .local v7, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v11}, Lcom/ecommerce/furniture/helpers/MySharedPreference;->retrieveProductFromCart()Ljava/lang/String;

    move-result-object v14

    const-class v15, [Lcom/ecommerce/furniture/entities/ProductObject;

    invoke-virtual {v7, v14, v15}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/ecommerce/furniture/entities/ProductObject;

    .line 60
    .local v2, "addCartProducts":[Lcom/ecommerce/furniture/entities/ProductObject;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/ecommerce/furniture/CheckoutActivity;->convertObjectArrayToListObject([Lcom/ecommerce/furniture/entities/ProductObject;)Ljava/util/List;

    move-result-object v12

    .line 62
    .local v12, "productList":Ljava/util/List;, "Ljava/util/List<Lcom/ecommerce/furniture/entities/ProductObject;>;"
    new-instance v10, Lcom/ecommerce/furniture/adapters/CheckRecyclerViewAdapter;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v12}, Lcom/ecommerce/furniture/adapters/CheckRecyclerViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 63
    .local v10, "mAdapter":Lcom/ecommerce/furniture/adapters/CheckRecyclerViewAdapter;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ecommerce/furniture/CheckoutActivity;->checkRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v14, v10}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 65
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/ecommerce/furniture/CheckoutActivity;->getTotalPrice(Ljava/util/List;)D

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/ecommerce/furniture/CheckoutActivity;->mSubTotal:D

    .line 66
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ecommerce/furniture/CheckoutActivity;->subTotal:Landroid/widget/TextView;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Subtotal excluding tax and shipping: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/ecommerce/furniture/CheckoutActivity;->mSubTotal:D

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " Rs"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    const v14, 0x7f0c00a4

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/ecommerce/furniture/CheckoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    .line 70
    .local v13, "shoppingButton":Landroid/widget/Button;
    sget-boolean v14, Lcom/ecommerce/furniture/CheckoutActivity;->$assertionsDisabled:Z

    if-nez v14, :cond_d5

    if-nez v13, :cond_d5

    new-instance v14, Ljava/lang/AssertionError;

    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    throw v14

    .line 71
    :cond_d5
    new-instance v14, Lcom/ecommerce/furniture/CheckoutActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/ecommerce/furniture/CheckoutActivity$1;-><init>(Lcom/ecommerce/furniture/CheckoutActivity;)V

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    const v14, 0x7f0c00a5

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/ecommerce/furniture/CheckoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 80
    .local v5, "checkButton":Landroid/widget/Button;
    sget-boolean v14, Lcom/ecommerce/furniture/CheckoutActivity;->$assertionsDisabled:Z

    if-nez v14, :cond_f6

    if-nez v5, :cond_f6

    new-instance v14, Ljava/lang/AssertionError;

    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    throw v14

    .line 81
    :cond_f6
    invoke-virtual/range {p0 .. p0}, Lcom/ecommerce/furniture/CheckoutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 82
    .local v8, "intent":Landroid/content/Intent;
    const-string v14, "EMAIL"

    invoke-virtual {v8, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 83
    .local v6, "email":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Your Shopping Bill om Moble is :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/ecommerce/furniture/CheckoutActivity;->mSubTotal:D

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 86
    .local v3, "bill":Ljava/lang/String;
    new-instance v14, Lcom/ecommerce/furniture/CheckoutActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/ecommerce/furniture/CheckoutActivity$2;-><init>(Lcom/ecommerce/furniture/CheckoutActivity;)V

    invoke-virtual {v5, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    return-void
.end method
