.class Lcom/ecommerce/furniture/CheckoutActivity$1;
.super Ljava/lang/Object;
.source "CheckoutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecommerce/furniture/CheckoutActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecommerce/furniture/CheckoutActivity;


# direct methods
.method constructor <init>(Lcom/ecommerce/furniture/CheckoutActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/ecommerce/furniture/CheckoutActivity;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/ecommerce/furniture/CheckoutActivity$1;->this$0:Lcom/ecommerce/furniture/CheckoutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 74
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ecommerce/furniture/CheckoutActivity$1;->this$0:Lcom/ecommerce/furniture/CheckoutActivity;

    const-class v2, Lcom/ecommerce/furniture/ShoppingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    .local v0, "shoppingIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/ecommerce/furniture/CheckoutActivity$1;->this$0:Lcom/ecommerce/furniture/CheckoutActivity;

    invoke-virtual {v1, v0}, Lcom/ecommerce/furniture/CheckoutActivity;->startActivity(Landroid/content/Intent;)V

    .line 76
    return-void
.end method
