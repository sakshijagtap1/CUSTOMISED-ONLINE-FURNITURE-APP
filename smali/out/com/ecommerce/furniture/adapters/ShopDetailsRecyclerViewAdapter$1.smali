.class Lcom/ecommerce/furniture/adapters/ShopDetailsRecyclerViewAdapter$1;
.super Ljava/lang/Object;
.source "ShopDetailsRecyclerViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecommerce/furniture/adapters/ShopDetailsRecyclerViewAdapter;->onBindViewHolder(Lcom/ecommerce/furniture/adapters/ShopDetailsRecyclerViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecommerce/furniture/adapters/ShopDetailsRecyclerViewAdapter;


# direct methods
.method constructor <init>(Lcom/ecommerce/furniture/adapters/ShopDetailsRecyclerViewAdapter;)V
    .registers 2
    .param p1, "this$0"    # Lcom/ecommerce/furniture/adapters/ShopDetailsRecyclerViewAdapter;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/ecommerce/furniture/adapters/ShopDetailsRecyclerViewAdapter$1;->this$0:Lcom/ecommerce/furniture/adapters/ShopDetailsRecyclerViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 49
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ecommerce/furniture/adapters/ShopDetailsRecyclerViewAdapter$1;->this$0:Lcom/ecommerce/furniture/adapters/ShopDetailsRecyclerViewAdapter;

    invoke-static {v1}, Lcom/ecommerce/furniture/adapters/ShopDetailsRecyclerViewAdapter;->access$000(Lcom/ecommerce/furniture/adapters/ShopDetailsRecyclerViewAdapter;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/ecommerce/furniture/CategoryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 51
    .local v0, "productIntent":Landroid/content/Intent;
    const-string v1, "EMAIL"

    iget-object v2, p0, Lcom/ecommerce/furniture/adapters/ShopDetailsRecyclerViewAdapter$1;->this$0:Lcom/ecommerce/furniture/adapters/ShopDetailsRecyclerViewAdapter;

    iget-object v2, v2, Lcom/ecommerce/furniture/adapters/ShopDetailsRecyclerViewAdapter;->mail:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    iget-object v1, p0, Lcom/ecommerce/furniture/adapters/ShopDetailsRecyclerViewAdapter$1;->this$0:Lcom/ecommerce/furniture/adapters/ShopDetailsRecyclerViewAdapter;

    invoke-static {v1}, Lcom/ecommerce/furniture/adapters/ShopDetailsRecyclerViewAdapter;->access$000(Lcom/ecommerce/furniture/adapters/ShopDetailsRecyclerViewAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 65
    return-void
.end method
