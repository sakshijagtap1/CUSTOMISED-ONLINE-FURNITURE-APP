.class Lcom/ecommerce/furniture/ProductActivity$1;
.super Ljava/lang/Object;
.source "ProductActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecommerce/furniture/ProductActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecommerce/furniture/ProductActivity;

.field final synthetic val$singleProduct:Lcom/ecommerce/furniture/entities/ProductObject;


# direct methods
.method constructor <init>(Lcom/ecommerce/furniture/ProductActivity;Lcom/ecommerce/furniture/entities/ProductObject;)V
    .registers 3
    .param p1, "this$0"    # Lcom/ecommerce/furniture/ProductActivity;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/ecommerce/furniture/ProductActivity$1;->this$0:Lcom/ecommerce/furniture/ProductActivity;

    iput-object p2, p0, Lcom/ecommerce/furniture/ProductActivity$1;->val$singleProduct:Lcom/ecommerce/furniture/entities/ProductObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 11
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 84
    iget-object v7, p0, Lcom/ecommerce/furniture/ProductActivity$1;->this$0:Lcom/ecommerce/furniture/ProductActivity;

    invoke-static {v7}, Lcom/ecommerce/furniture/ProductActivity;->access$000(Lcom/ecommerce/furniture/ProductActivity;)Lcom/ecommerce/furniture/helpers/MySharedPreference;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ecommerce/furniture/helpers/MySharedPreference;->retrieveProductFromCart()Ljava/lang/String;

    move-result-object v4

    .line 85
    .local v4, "productsFromCart":Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4d

    .line 86
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v2, "cartProductList":Ljava/util/List;, "Ljava/util/List<Lcom/ecommerce/furniture/entities/ProductObject;>;"
    iget-object v7, p0, Lcom/ecommerce/furniture/ProductActivity$1;->val$singleProduct:Lcom/ecommerce/furniture/entities/ProductObject;

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v7, p0, Lcom/ecommerce/furniture/ProductActivity$1;->this$0:Lcom/ecommerce/furniture/ProductActivity;

    invoke-static {v7}, Lcom/ecommerce/furniture/ProductActivity;->access$100(Lcom/ecommerce/furniture/ProductActivity;)Lcom/google/gson/Gson;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 89
    .local v3, "cartValue":Ljava/lang/String;
    iget-object v7, p0, Lcom/ecommerce/furniture/ProductActivity$1;->this$0:Lcom/ecommerce/furniture/ProductActivity;

    invoke-static {v7}, Lcom/ecommerce/furniture/ProductActivity;->access$000(Lcom/ecommerce/furniture/ProductActivity;)Lcom/ecommerce/furniture/helpers/MySharedPreference;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/ecommerce/furniture/helpers/MySharedPreference;->addProductToTheCart(Ljava/lang/String;)V

    .line 90
    iget-object v7, p0, Lcom/ecommerce/furniture/ProductActivity$1;->this$0:Lcom/ecommerce/furniture/ProductActivity;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v7, v8}, Lcom/ecommerce/furniture/ProductActivity;->access$202(Lcom/ecommerce/furniture/ProductActivity;I)I

    .line 101
    .end local v2    # "cartProductList":Ljava/util/List;, "Ljava/util/List<Lcom/ecommerce/furniture/entities/ProductObject;>;"
    .end local v3    # "cartValue":Ljava/lang/String;
    :goto_38
    iget-object v7, p0, Lcom/ecommerce/furniture/ProductActivity$1;->this$0:Lcom/ecommerce/furniture/ProductActivity;

    invoke-static {v7}, Lcom/ecommerce/furniture/ProductActivity;->access$000(Lcom/ecommerce/furniture/ProductActivity;)Lcom/ecommerce/furniture/helpers/MySharedPreference;

    move-result-object v7

    iget-object v8, p0, Lcom/ecommerce/furniture/ProductActivity$1;->this$0:Lcom/ecommerce/furniture/ProductActivity;

    invoke-static {v8}, Lcom/ecommerce/furniture/ProductActivity;->access$200(Lcom/ecommerce/furniture/ProductActivity;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/ecommerce/furniture/helpers/MySharedPreference;->addProductCount(I)V

    .line 102
    iget-object v7, p0, Lcom/ecommerce/furniture/ProductActivity$1;->this$0:Lcom/ecommerce/furniture/ProductActivity;

    invoke-static {v7}, Lcom/ecommerce/furniture/ProductActivity;->access$400(Lcom/ecommerce/furniture/ProductActivity;)V

    .line 103
    return-void

    .line 92
    :cond_4d
    iget-object v7, p0, Lcom/ecommerce/furniture/ProductActivity$1;->this$0:Lcom/ecommerce/furniture/ProductActivity;

    invoke-static {v7}, Lcom/ecommerce/furniture/ProductActivity;->access$000(Lcom/ecommerce/furniture/ProductActivity;)Lcom/ecommerce/furniture/helpers/MySharedPreference;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ecommerce/furniture/helpers/MySharedPreference;->retrieveProductFromCart()Ljava/lang/String;

    move-result-object v5

    .line 93
    .local v5, "productsInCart":Ljava/lang/String;
    iget-object v7, p0, Lcom/ecommerce/furniture/ProductActivity$1;->this$0:Lcom/ecommerce/furniture/ProductActivity;

    invoke-static {v7}, Lcom/ecommerce/furniture/ProductActivity;->access$100(Lcom/ecommerce/furniture/ProductActivity;)Lcom/google/gson/Gson;

    move-result-object v7

    const-class v8, [Lcom/ecommerce/furniture/entities/ProductObject;

    invoke-virtual {v7, v5, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/ecommerce/furniture/entities/ProductObject;

    .line 95
    .local v6, "storedProducts":[Lcom/ecommerce/furniture/entities/ProductObject;
    iget-object v7, p0, Lcom/ecommerce/furniture/ProductActivity$1;->this$0:Lcom/ecommerce/furniture/ProductActivity;

    invoke-static {v7, v6}, Lcom/ecommerce/furniture/ProductActivity;->access$300(Lcom/ecommerce/furniture/ProductActivity;[Lcom/ecommerce/furniture/entities/ProductObject;)Ljava/util/List;

    move-result-object v1

    .line 96
    .local v1, "allNewProduct":Ljava/util/List;, "Ljava/util/List<Lcom/ecommerce/furniture/entities/ProductObject;>;"
    iget-object v7, p0, Lcom/ecommerce/furniture/ProductActivity$1;->val$singleProduct:Lcom/ecommerce/furniture/entities/ProductObject;

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v7, p0, Lcom/ecommerce/furniture/ProductActivity$1;->this$0:Lcom/ecommerce/furniture/ProductActivity;

    invoke-static {v7}, Lcom/ecommerce/furniture/ProductActivity;->access$100(Lcom/ecommerce/furniture/ProductActivity;)Lcom/google/gson/Gson;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "addAndStoreNewProduct":Ljava/lang/String;
    iget-object v7, p0, Lcom/ecommerce/furniture/ProductActivity$1;->this$0:Lcom/ecommerce/furniture/ProductActivity;

    invoke-static {v7}, Lcom/ecommerce/furniture/ProductActivity;->access$000(Lcom/ecommerce/furniture/ProductActivity;)Lcom/ecommerce/furniture/helpers/MySharedPreference;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/ecommerce/furniture/helpers/MySharedPreference;->addProductToTheCart(Ljava/lang/String;)V

    .line 99
    iget-object v7, p0, Lcom/ecommerce/furniture/ProductActivity$1;->this$0:Lcom/ecommerce/furniture/ProductActivity;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v7, v8}, Lcom/ecommerce/furniture/ProductActivity;->access$202(Lcom/ecommerce/furniture/ProductActivity;I)I

    goto :goto_38
.end method
