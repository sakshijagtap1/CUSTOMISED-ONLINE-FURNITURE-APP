.class Lcom/ecommerce/furniture/adapters/ShopRecyclerViewAdapter$1;
.super Ljava/lang/Object;
.source "ShopRecyclerViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecommerce/furniture/adapters/ShopRecyclerViewAdapter;->onBindViewHolder(Lcom/ecommerce/furniture/adapters/ShopRecyclerViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecommerce/furniture/adapters/ShopRecyclerViewAdapter;

.field final synthetic val$singleProduct:Lcom/ecommerce/furniture/entities/ProductObject;


# direct methods
.method constructor <init>(Lcom/ecommerce/furniture/adapters/ShopRecyclerViewAdapter;Lcom/ecommerce/furniture/entities/ProductObject;)V
    .registers 3
    .param p1, "this$0"    # Lcom/ecommerce/furniture/adapters/ShopRecyclerViewAdapter;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/ecommerce/furniture/adapters/ShopRecyclerViewAdapter$1;->this$0:Lcom/ecommerce/furniture/adapters/ShopRecyclerViewAdapter;

    iput-object p2, p0, Lcom/ecommerce/furniture/adapters/ShopRecyclerViewAdapter$1;->val$singleProduct:Lcom/ecommerce/furniture/entities/ProductObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 52
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/ecommerce/furniture/adapters/ShopRecyclerViewAdapter$1;->this$0:Lcom/ecommerce/furniture/adapters/ShopRecyclerViewAdapter;

    invoke-static {v4}, Lcom/ecommerce/furniture/adapters/ShopRecyclerViewAdapter;->access$000(Lcom/ecommerce/furniture/adapters/ShopRecyclerViewAdapter;)Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/ecommerce/furniture/ProductActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    .local v2, "productIntent":Landroid/content/Intent;
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 55
    .local v0, "builder":Lcom/google/gson/GsonBuilder;
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v1

    .line 57
    .local v1, "gson":Lcom/google/gson/Gson;
    iget-object v4, p0, Lcom/ecommerce/furniture/adapters/ShopRecyclerViewAdapter$1;->val$singleProduct:Lcom/ecommerce/furniture/entities/ProductObject;

    invoke-virtual {v1, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 59
    .local v3, "stringObjectRepresentation":Ljava/lang/String;
    const-string v4, "PRODUCT"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    const-string v4, "EMAIL"

    iget-object v5, p0, Lcom/ecommerce/furniture/adapters/ShopRecyclerViewAdapter$1;->this$0:Lcom/ecommerce/furniture/adapters/ShopRecyclerViewAdapter;

    invoke-static {v5}, Lcom/ecommerce/furniture/adapters/ShopRecyclerViewAdapter;->access$100(Lcom/ecommerce/furniture/adapters/ShopRecyclerViewAdapter;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    iget-object v4, p0, Lcom/ecommerce/furniture/adapters/ShopRecyclerViewAdapter$1;->this$0:Lcom/ecommerce/furniture/adapters/ShopRecyclerViewAdapter;

    invoke-static {v4}, Lcom/ecommerce/furniture/adapters/ShopRecyclerViewAdapter;->access$000(Lcom/ecommerce/furniture/adapters/ShopRecyclerViewAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 74
    return-void
.end method
