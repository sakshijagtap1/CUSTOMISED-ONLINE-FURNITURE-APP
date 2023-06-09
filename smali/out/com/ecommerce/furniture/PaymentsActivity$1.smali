.class Lcom/ecommerce/furniture/PaymentsActivity$1;
.super Ljava/lang/Object;
.source "PaymentsActivity.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecommerce/furniture/PaymentsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback",
        "<",
        "Lcom/google/android/gms/common/api/BooleanResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecommerce/furniture/PaymentsActivity;


# direct methods
.method constructor <init>(Lcom/ecommerce/furniture/PaymentsActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/ecommerce/furniture/PaymentsActivity;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/ecommerce/furniture/PaymentsActivity$1;->this$0:Lcom/ecommerce/furniture/PaymentsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/google/android/gms/common/api/BooleanResult;)V
    .registers 5
    .param p1, "booleanResult"    # Lcom/google/android/gms/common/api/BooleanResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 78
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/BooleanResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 79
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/BooleanResult;->getValue()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 81
    iget-object v0, p0, Lcom/ecommerce/furniture/PaymentsActivity$1;->this$0:Lcom/ecommerce/furniture/PaymentsActivity;

    invoke-static {v0}, Lcom/ecommerce/furniture/PaymentsActivity;->access$000(Lcom/ecommerce/furniture/PaymentsActivity;)V

    .line 90
    :cond_15
    :goto_15
    return-void

    .line 88
    :cond_16
    invoke-static {}, Lcom/ecommerce/furniture/PaymentsActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isReadyToPay:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/BooleanResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method

.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .registers 2
    .param p1    # Lcom/google/android/gms/common/api/Result;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 75
    check-cast p1, Lcom/google/android/gms/common/api/BooleanResult;

    invoke-virtual {p0, p1}, Lcom/ecommerce/furniture/PaymentsActivity$1;->onResult(Lcom/google/android/gms/common/api/BooleanResult;)V

    return-void
.end method
