.class Lcom/ecommerce/furniture/adapters/CategoryRecyclerViewAdapter$1;
.super Ljava/lang/Object;
.source "CategoryRecyclerViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecommerce/furniture/adapters/CategoryRecyclerViewAdapter;->onBindViewHolder(Lcom/ecommerce/furniture/adapters/CategoryRecyclerViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecommerce/furniture/adapters/CategoryRecyclerViewAdapter;

.field final synthetic val$singleProduct:Lcom/ecommerce/furniture/entities/CategoryObject;


# direct methods
.method constructor <init>(Lcom/ecommerce/furniture/adapters/CategoryRecyclerViewAdapter;Lcom/ecommerce/furniture/entities/CategoryObject;)V
    .registers 3
    .param p1, "this$0"    # Lcom/ecommerce/furniture/adapters/CategoryRecyclerViewAdapter;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/ecommerce/furniture/adapters/CategoryRecyclerViewAdapter$1;->this$0:Lcom/ecommerce/furniture/adapters/CategoryRecyclerViewAdapter;

    iput-object p2, p0, Lcom/ecommerce/furniture/adapters/CategoryRecyclerViewAdapter$1;->val$singleProduct:Lcom/ecommerce/furniture/entities/CategoryObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 52
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/ecommerce/furniture/adapters/CategoryRecyclerViewAdapter$1;->this$0:Lcom/ecommerce/furniture/adapters/CategoryRecyclerViewAdapter;

    invoke-static {v2}, Lcom/ecommerce/furniture/adapters/CategoryRecyclerViewAdapter;->access$000(Lcom/ecommerce/furniture/adapters/CategoryRecyclerViewAdapter;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/ecommerce/furniture/ShoppingActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    .local v1, "productIntent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 58
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "Area"

    iget-object v3, p0, Lcom/ecommerce/furniture/adapters/CategoryRecyclerViewAdapter$1;->val$singleProduct:Lcom/ecommerce/furniture/entities/CategoryObject;

    invoke-virtual {v3}, Lcom/ecommerce/furniture/entities/CategoryObject;->getCategoryName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v2, "EMAIL"

    iget-object v3, p0, Lcom/ecommerce/furniture/adapters/CategoryRecyclerViewAdapter$1;->this$0:Lcom/ecommerce/furniture/adapters/CategoryRecyclerViewAdapter;

    iget-object v3, v3, Lcom/ecommerce/furniture/adapters/CategoryRecyclerViewAdapter;->email:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 71
    iget-object v2, p0, Lcom/ecommerce/furniture/adapters/CategoryRecyclerViewAdapter$1;->this$0:Lcom/ecommerce/furniture/adapters/CategoryRecyclerViewAdapter;

    invoke-static {v2}, Lcom/ecommerce/furniture/adapters/CategoryRecyclerViewAdapter;->access$000(Lcom/ecommerce/furniture/adapters/CategoryRecyclerViewAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 72
    return-void
.end method
