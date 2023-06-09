.class Lcom/ecommerce/furniture/PayPalCheckoutActivity$3;
.super Ljava/lang/Object;
.source "PayPalCheckoutActivity.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecommerce/furniture/PayPalCheckoutActivity;->createRequestErrorListener()Lcom/android/volley/Response$ErrorListener;
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
    .line 161
    iput-object p1, p0, Lcom/ecommerce/furniture/PayPalCheckoutActivity$3;->this$0:Lcom/ecommerce/furniture/PayPalCheckoutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 2
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 164
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->printStackTrace()V

    .line 165
    return-void
.end method
