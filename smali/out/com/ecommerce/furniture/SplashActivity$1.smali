.class Lcom/ecommerce/furniture/SplashActivity$1;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecommerce/furniture/SplashActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecommerce/furniture/SplashActivity;


# direct methods
.method constructor <init>(Lcom/ecommerce/furniture/SplashActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/ecommerce/furniture/SplashActivity;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/ecommerce/furniture/SplashActivity$1;->this$0:Lcom/ecommerce/furniture/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 37
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ecommerce/furniture/SplashActivity$1;->this$0:Lcom/ecommerce/furniture/SplashActivity;

    const-class v2, Lcom/ecommerce/furniture/RegisterActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 38
    .local v0, "startActivityIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/ecommerce/furniture/SplashActivity$1;->this$0:Lcom/ecommerce/furniture/SplashActivity;

    invoke-virtual {v1, v0}, Lcom/ecommerce/furniture/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 39
    iget-object v1, p0, Lcom/ecommerce/furniture/SplashActivity$1;->this$0:Lcom/ecommerce/furniture/SplashActivity;

    invoke-virtual {v1}, Lcom/ecommerce/furniture/SplashActivity;->finish()V

    .line 40
    return-void
.end method
