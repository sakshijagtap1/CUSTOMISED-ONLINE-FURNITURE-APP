.class Lcom/ecommerce/furniture/CheckoutActivity$2;
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
    .line 86
    iput-object p1, p0, Lcom/ecommerce/furniture/CheckoutActivity$2;->this$0:Lcom/ecommerce/furniture/CheckoutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 89
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ecommerce/furniture/CheckoutActivity$2;->this$0:Lcom/ecommerce/furniture/CheckoutActivity;

    const-class v2, Lcom/ecommerce/furniture/PayPalCheckoutActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 90
    .local v0, "paymentIntent":Landroid/content/Intent;
    const-string v1, "TOTAL_PRICE"

    iget-object v2, p0, Lcom/ecommerce/furniture/CheckoutActivity$2;->this$0:Lcom/ecommerce/furniture/CheckoutActivity;

    invoke-static {v2}, Lcom/ecommerce/furniture/CheckoutActivity;->access$000(Lcom/ecommerce/furniture/CheckoutActivity;)D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 137
    iget-object v1, p0, Lcom/ecommerce/furniture/CheckoutActivity$2;->this$0:Lcom/ecommerce/furniture/CheckoutActivity;

    invoke-virtual {v1, v0}, Lcom/ecommerce/furniture/CheckoutActivity;->startActivity(Landroid/content/Intent;)V

    .line 138
    return-void
.end method
