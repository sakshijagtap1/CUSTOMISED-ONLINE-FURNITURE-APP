.class Lcom/ecommerce/furniture/CustomizedRequestActivity$1;
.super Ljava/lang/Object;
.source "CustomizedRequestActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecommerce/furniture/CustomizedRequestActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecommerce/furniture/CustomizedRequestActivity;

.field final synthetic val$str:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ecommerce/furniture/CustomizedRequestActivity;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/ecommerce/furniture/CustomizedRequestActivity;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/ecommerce/furniture/CustomizedRequestActivity$1;->this$0:Lcom/ecommerce/furniture/CustomizedRequestActivity;

    iput-object p2, p0, Lcom/ecommerce/furniture/CustomizedRequestActivity$1;->val$str:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 87
    iget-object v5, p0, Lcom/ecommerce/furniture/CustomizedRequestActivity$1;->this$0:Lcom/ecommerce/furniture/CustomizedRequestActivity;

    invoke-static {v5}, Lcom/ecommerce/furniture/CustomizedRequestActivity;->access$000(Lcom/ecommerce/furniture/CustomizedRequestActivity;)Landroid/support/design/widget/TextInputEditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/design/widget/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, "f":Ljava/lang/String;
    iget-object v5, p0, Lcom/ecommerce/furniture/CustomizedRequestActivity$1;->this$0:Lcom/ecommerce/furniture/CustomizedRequestActivity;

    invoke-static {v5}, Lcom/ecommerce/furniture/CustomizedRequestActivity;->access$100(Lcom/ecommerce/furniture/CustomizedRequestActivity;)Landroid/support/design/widget/TextInputEditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/design/widget/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 89
    .local v4, "size":Ljava/lang/String;
    iget-object v5, p0, Lcom/ecommerce/furniture/CustomizedRequestActivity$1;->this$0:Lcom/ecommerce/furniture/CustomizedRequestActivity;

    invoke-static {v5}, Lcom/ecommerce/furniture/CustomizedRequestActivity;->access$200(Lcom/ecommerce/furniture/CustomizedRequestActivity;)Landroid/support/design/widget/TextInputEditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/design/widget/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "color":Ljava/lang/String;
    iget-object v5, p0, Lcom/ecommerce/furniture/CustomizedRequestActivity$1;->this$0:Lcom/ecommerce/furniture/CustomizedRequestActivity;

    invoke-static {v5}, Lcom/ecommerce/furniture/CustomizedRequestActivity;->access$300(Lcom/ecommerce/furniture/CustomizedRequestActivity;)Landroid/support/design/widget/TextInputEditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/design/widget/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 91
    .local v3, "qty":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Customer Mail ID:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/ecommerce/furniture/CustomizedRequestActivity$1;->val$str:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Requested For \nFurniture:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\nSize:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\nColor:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\nQty:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "body":Ljava/lang/String;
    iget-object v5, p0, Lcom/ecommerce/furniture/CustomizedRequestActivity$1;->this$0:Lcom/ecommerce/furniture/CustomizedRequestActivity;

    const-string v6, "Inside Click"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 98
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/ecommerce/furniture/CustomizedRequestActivity$1$1;

    invoke-direct {v6, p0, v0}, Lcom/ecommerce/furniture/CustomizedRequestActivity$1$1;-><init>(Lcom/ecommerce/furniture/CustomizedRequestActivity$1;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 137
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 143
    return-void
.end method
