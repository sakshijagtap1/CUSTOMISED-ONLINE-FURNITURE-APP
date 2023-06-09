.class Lcom/ecommerce/furniture/PayPalCheckoutActivity$2;
.super Ljava/lang/Object;
.source "PayPalCheckoutActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecommerce/furniture/PayPalCheckoutActivity;->createRequestSuccessListener()Lcom/android/volley/Response$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/ecommerce/furniture/jsonEntityObjects/ServerObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecommerce/furniture/PayPalCheckoutActivity;


# direct methods
.method constructor <init>(Lcom/ecommerce/furniture/PayPalCheckoutActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/ecommerce/furniture/PayPalCheckoutActivity;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/ecommerce/furniture/PayPalCheckoutActivity$2;->this$0:Lcom/ecommerce/furniture/PayPalCheckoutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/ecommerce/furniture/jsonEntityObjects/ServerObject;)V
    .registers 6
    .param p1, "response"    # Lcom/ecommerce/furniture/jsonEntityObjects/ServerObject;

    .prologue
    .line 147
    :try_start_0
    invoke-static {}, Lcom/ecommerce/furniture/PayPalCheckoutActivity;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Json Response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ecommerce/furniture/jsonEntityObjects/ServerObject;->getSuccess()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-virtual {p1}, Lcom/ecommerce/furniture/jsonEntityObjects/ServerObject;->getSuccess()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 149
    iget-object v1, p0, Lcom/ecommerce/furniture/PayPalCheckoutActivity$2;->this$0:Lcom/ecommerce/furniture/PayPalCheckoutActivity;

    iget-object v2, p0, Lcom/ecommerce/furniture/PayPalCheckoutActivity$2;->this$0:Lcom/ecommerce/furniture/PayPalCheckoutActivity;

    const v3, 0x7f06005c

    invoke-virtual {v2, v3}, Lcom/ecommerce/furniture/PayPalCheckoutActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 156
    :goto_3b
    return-void

    .line 151
    :cond_3c
    iget-object v1, p0, Lcom/ecommerce/furniture/PayPalCheckoutActivity$2;->this$0:Lcom/ecommerce/furniture/PayPalCheckoutActivity;

    iget-object v2, p0, Lcom/ecommerce/furniture/PayPalCheckoutActivity$2;->this$0:Lcom/ecommerce/furniture/PayPalCheckoutActivity;

    const v3, 0x7f060059

    invoke-virtual {v2, v3}, Lcom/ecommerce/furniture/PayPalCheckoutActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4f} :catch_50

    goto :goto_3b

    .line 153
    :catch_50
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3b
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 143
    check-cast p1, Lcom/ecommerce/furniture/jsonEntityObjects/ServerObject;

    invoke-virtual {p0, p1}, Lcom/ecommerce/furniture/PayPalCheckoutActivity$2;->onResponse(Lcom/ecommerce/furniture/jsonEntityObjects/ServerObject;)V

    return-void
.end method
