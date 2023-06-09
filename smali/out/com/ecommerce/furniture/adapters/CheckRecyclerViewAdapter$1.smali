.class Lcom/ecommerce/furniture/adapters/CheckRecyclerViewAdapter$1;
.super Ljava/lang/Object;
.source "CheckRecyclerViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecommerce/furniture/adapters/CheckRecyclerViewAdapter;->onBindViewHolder(Lcom/ecommerce/furniture/adapters/CheckRecyclerViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecommerce/furniture/adapters/CheckRecyclerViewAdapter;


# direct methods
.method constructor <init>(Lcom/ecommerce/furniture/adapters/CheckRecyclerViewAdapter;)V
    .registers 2
    .param p1, "this$0"    # Lcom/ecommerce/furniture/adapters/CheckRecyclerViewAdapter;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/ecommerce/furniture/adapters/CheckRecyclerViewAdapter$1;->this$0:Lcom/ecommerce/furniture/adapters/CheckRecyclerViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ecommerce/furniture/adapters/CheckRecyclerViewAdapter$1;->this$0:Lcom/ecommerce/furniture/adapters/CheckRecyclerViewAdapter;

    invoke-static {v0}, Lcom/ecommerce/furniture/adapters/CheckRecyclerViewAdapter;->access$000(Lcom/ecommerce/furniture/adapters/CheckRecyclerViewAdapter;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "Do you want to remove product from cart"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 46
    return-void
.end method
