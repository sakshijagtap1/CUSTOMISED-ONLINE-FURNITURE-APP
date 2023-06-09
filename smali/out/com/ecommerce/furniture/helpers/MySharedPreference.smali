.class public Lcom/ecommerce/furniture/helpers/MySharedPreference;
.super Ljava/lang/Object;
.source "MySharedPreference.java"


# instance fields
.field private context:Landroid/content/Context;

.field private prefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/ecommerce/furniture/helpers/MySharedPreference;->context:Landroid/content/Context;

    .line 15
    const-string v0, "shared_pref"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/ecommerce/furniture/helpers/MySharedPreference;->prefs:Landroid/content/SharedPreferences;

    .line 16
    return-void
.end method


# virtual methods
.method public addProductCount(I)V
    .registers 4
    .param p1, "productCount"    # I

    .prologue
    .line 29
    iget-object v1, p0, Lcom/ecommerce/furniture/helpers/MySharedPreference;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 30
    .local v0, "edits":Landroid/content/SharedPreferences$Editor;
    const-string v1, "product_count"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 31
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 32
    return-void
.end method

.method public addProductToTheCart(Ljava/lang/String;)V
    .registers 4
    .param p1, "product"    # Ljava/lang/String;

    .prologue
    .line 19
    iget-object v1, p0, Lcom/ecommerce/furniture/helpers/MySharedPreference;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 20
    .local v0, "edits":Landroid/content/SharedPreferences$Editor;
    const-string v1, "product_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 21
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 22
    return-void
.end method

.method public retrieveProductCount()I
    .registers 4

    .prologue
    .line 35
    iget-object v0, p0, Lcom/ecommerce/furniture/helpers/MySharedPreference;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "product_count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public retrieveProductFromCart()Ljava/lang/String;
    .registers 4

    .prologue
    .line 25
    iget-object v0, p0, Lcom/ecommerce/furniture/helpers/MySharedPreference;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "product_id"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
