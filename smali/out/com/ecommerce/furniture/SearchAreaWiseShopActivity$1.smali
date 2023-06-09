.class Lcom/ecommerce/furniture/SearchAreaWiseShopActivity$1;
.super Ljava/lang/Object;
.source "SearchAreaWiseShopActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecommerce/furniture/SearchAreaWiseShopActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecommerce/furniture/SearchAreaWiseShopActivity;

.field final synthetic val$email:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ecommerce/furniture/SearchAreaWiseShopActivity;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/ecommerce/furniture/SearchAreaWiseShopActivity;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/ecommerce/furniture/SearchAreaWiseShopActivity$1;->this$0:Lcom/ecommerce/furniture/SearchAreaWiseShopActivity;

    iput-object p2, p0, Lcom/ecommerce/furniture/SearchAreaWiseShopActivity$1;->val$email:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 34
    iget-object v1, p0, Lcom/ecommerce/furniture/SearchAreaWiseShopActivity$1;->this$0:Lcom/ecommerce/furniture/SearchAreaWiseShopActivity;

    iget-object v1, v1, Lcom/ecommerce/furniture/SearchAreaWiseShopActivity;->location:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Pune"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 35
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ecommerce/furniture/SearchAreaWiseShopActivity$1;->this$0:Lcom/ecommerce/furniture/SearchAreaWiseShopActivity;

    const-class v2, Lcom/ecommerce/furniture/ShopActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    .local v0, "intent1":Landroid/content/Intent;
    const-string v1, "EMAIL"

    iget-object v2, p0, Lcom/ecommerce/furniture/SearchAreaWiseShopActivity$1;->val$email:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    iget-object v1, p0, Lcom/ecommerce/furniture/SearchAreaWiseShopActivity$1;->this$0:Lcom/ecommerce/furniture/SearchAreaWiseShopActivity;

    invoke-virtual {v1, v0}, Lcom/ecommerce/furniture/SearchAreaWiseShopActivity;->startActivity(Landroid/content/Intent;)V

    .line 46
    .end local v0    # "intent1":Landroid/content/Intent;
    :goto_29
    return-void

    .line 43
    :cond_2a
    iget-object v1, p0, Lcom/ecommerce/furniture/SearchAreaWiseShopActivity$1;->this$0:Lcom/ecommerce/furniture/SearchAreaWiseShopActivity;

    const-string v2, "No Shop Availible For This location"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_29
.end method
