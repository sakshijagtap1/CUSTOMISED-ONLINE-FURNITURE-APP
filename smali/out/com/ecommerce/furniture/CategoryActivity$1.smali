.class Lcom/ecommerce/furniture/CategoryActivity$1;
.super Ljava/lang/Object;
.source "CategoryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecommerce/furniture/CategoryActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecommerce/furniture/CategoryActivity;

.field final synthetic val$email:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ecommerce/furniture/CategoryActivity;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/ecommerce/furniture/CategoryActivity;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/ecommerce/furniture/CategoryActivity$1;->this$0:Lcom/ecommerce/furniture/CategoryActivity;

    iput-object p2, p0, Lcom/ecommerce/furniture/CategoryActivity$1;->val$email:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 54
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ecommerce/furniture/CategoryActivity$1;->this$0:Lcom/ecommerce/furniture/CategoryActivity;

    const-class v2, Lcom/ecommerce/furniture/CustomizedRequestActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 56
    .local v0, "intent1":Landroid/content/Intent;
    const-string v1, "EMAIL"

    iget-object v2, p0, Lcom/ecommerce/furniture/CategoryActivity$1;->val$email:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    iget-object v1, p0, Lcom/ecommerce/furniture/CategoryActivity$1;->this$0:Lcom/ecommerce/furniture/CategoryActivity;

    invoke-virtual {v1, v0}, Lcom/ecommerce/furniture/CategoryActivity;->startActivity(Landroid/content/Intent;)V

    .line 59
    return-void
.end method
