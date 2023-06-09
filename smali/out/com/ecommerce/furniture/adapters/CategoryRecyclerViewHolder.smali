.class public Lcom/ecommerce/furniture/adapters/CategoryRecyclerViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "CategoryRecyclerViewHolder.java"


# instance fields
.field public produceImage:Landroid/widget/ImageView;

.field public productName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 20
    const v0, 0x7f0c00e5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ecommerce/furniture/adapters/CategoryRecyclerViewHolder;->produceImage:Landroid/widget/ImageView;

    .line 21
    const v0, 0x7f0c00c9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ecommerce/furniture/adapters/CategoryRecyclerViewHolder;->productName:Landroid/widget/TextView;

    .line 23
    return-void
.end method
