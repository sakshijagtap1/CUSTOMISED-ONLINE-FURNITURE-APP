.class public Lcom/ecommerce/furniture/SearchAreaWiseShopActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SearchAreaWiseShopActivity.java"


# instance fields
.field location:Landroid/widget/EditText;

.field search:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const v2, 0x7f040022

    invoke-virtual {p0, v2}, Lcom/ecommerce/furniture/SearchAreaWiseShopActivity;->setContentView(I)V

    .line 23
    const v2, 0x7f0c00c4

    invoke-virtual {p0, v2}, Lcom/ecommerce/furniture/SearchAreaWiseShopActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/ecommerce/furniture/SearchAreaWiseShopActivity;->search:Landroid/widget/Button;

    .line 24
    const v2, 0x7f0c00c3

    invoke-virtual {p0, v2}, Lcom/ecommerce/furniture/SearchAreaWiseShopActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/ecommerce/furniture/SearchAreaWiseShopActivity;->location:Landroid/widget/EditText;

    .line 26
    invoke-virtual {p0}, Lcom/ecommerce/furniture/SearchAreaWiseShopActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 27
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "EMAIL"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, "email":Ljava/lang/String;
    iget-object v2, p0, Lcom/ecommerce/furniture/SearchAreaWiseShopActivity;->search:Landroid/widget/Button;

    new-instance v3, Lcom/ecommerce/furniture/SearchAreaWiseShopActivity$1;

    invoke-direct {v3, p0, v0}, Lcom/ecommerce/furniture/SearchAreaWiseShopActivity$1;-><init>(Lcom/ecommerce/furniture/SearchAreaWiseShopActivity;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    return-void
.end method
