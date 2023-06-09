.class Lcom/ecommerce/furniture/CustomizedRequestActivity$1$1;
.super Ljava/lang/Object;
.source "CustomizedRequestActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecommerce/furniture/CustomizedRequestActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ecommerce/furniture/CustomizedRequestActivity$1;

.field final synthetic val$body:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ecommerce/furniture/CustomizedRequestActivity$1;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$1"    # Lcom/ecommerce/furniture/CustomizedRequestActivity$1;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/ecommerce/furniture/CustomizedRequestActivity$1$1;->this$1:Lcom/ecommerce/furniture/CustomizedRequestActivity$1;

    iput-object p2, p0, Lcom/ecommerce/furniture/CustomizedRequestActivity$1$1;->val$body:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 107
    :try_start_0
    new-instance v1, Lcom/ecommerce/furniture/helpers/GMailSender;

    const-string v2, "generator.otp@gmail.com"

    const-string v3, "Admin@univercity.com"

    invoke-direct {v1, v2, v3}, Lcom/ecommerce/furniture/helpers/GMailSender;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .local v1, "sender":Lcom/ecommerce/furniture/helpers/GMailSender;
    const-string v2, "Test mail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/ecommerce/furniture/CustomizedRequestActivity$1$1;->val$body:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "generator.otp@gmail.com"

    const-string v5, "sagarlsawant15@gmail.com"

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/ecommerce/furniture/helpers/GMailSender;->sendMail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_28

    .line 135
    .end local v1    # "sender":Lcom/ecommerce/furniture/helpers/GMailSender;
    :goto_27
    return-void

    .line 127
    :catch_28
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/ecommerce/furniture/CustomizedRequestActivity$1$1;->this$1:Lcom/ecommerce/furniture/CustomizedRequestActivity$1;

    iget-object v2, v2, Lcom/ecommerce/furniture/CustomizedRequestActivity$1;->this$0:Lcom/ecommerce/furniture/CustomizedRequestActivity;

    invoke-virtual {v2}, Lcom/ecommerce/furniture/CustomizedRequestActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Error"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_27
.end method
