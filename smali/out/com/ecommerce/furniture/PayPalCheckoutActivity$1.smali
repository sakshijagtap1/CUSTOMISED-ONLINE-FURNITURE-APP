.class Lcom/ecommerce/furniture/PayPalCheckoutActivity$1;
.super Ljava/lang/Object;
.source "PayPalCheckoutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecommerce/furniture/PayPalCheckoutActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecommerce/furniture/PayPalCheckoutActivity;


# direct methods
.method constructor <init>(Lcom/ecommerce/furniture/PayPalCheckoutActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/ecommerce/furniture/PayPalCheckoutActivity;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/ecommerce/furniture/PayPalCheckoutActivity$1;->this$0:Lcom/ecommerce/furniture/PayPalCheckoutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/ecommerce/furniture/PayPalCheckoutActivity$1;->this$0:Lcom/ecommerce/furniture/PayPalCheckoutActivity;

    invoke-static {v0}, Lcom/ecommerce/furniture/PayPalCheckoutActivity;->access$000(Lcom/ecommerce/furniture/PayPalCheckoutActivity;)V

    .line 73
    return-void
.end method
