.class public Lcom/ecommerce/furniture/adapters/CheckRecyclerViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "CheckRecyclerViewHolder.java"


# instance fields
.field public productName:Landroid/widget/TextView;

.field public productPrice:Landroid/widget/TextView;

.field public quantity:Landroid/widget/TextView;

.field public removeProduct:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 17
    const v0, 0x7f0c00c8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ecommerce/furniture/adapters/CheckRecyclerViewHolder;->quantity:Landroid/widget/TextView;

    .line 18
    const v0, 0x7f0c00c9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ecommerce/furniture/adapters/CheckRecyclerViewHolder;->productName:Landroid/widget/TextView;

    .line 19
    const v0, 0x7f0c00b9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ecommerce/furniture/adapters/CheckRecyclerViewHolder;->productPrice:Landroid/widget/TextView;

    .line 20
    const v0, 0x7f0c00ca

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ecommerce/furniture/adapters/CheckRecyclerViewHolder;->removeProduct:Landroid/widget/TextView;

    .line 21
    return-void
.end method
