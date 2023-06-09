.class public Lcom/ecommerce/furniture/ProductActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ProductActivity.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private cartProductNumber:I

.field private gson:Lcom/google/gson/Gson;

.field mail:Ljava/lang/String;

.field private productColor:Landroid/widget/TextView;

.field private productDescription:Landroid/widget/TextView;

.field private productImage:Landroid/widget/ImageView;

.field private productPrice:Landroid/widget/TextView;

.field private productSize:Landroid/widget/TextView;

.field private sharedPreference:Lcom/ecommerce/furniture/helpers/MySharedPreference;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const-class v0, Lcom/ecommerce/furniture/ProductActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/ecommerce/furniture/ProductActivity;->$assertionsDisabled:Z

    .line 33
    const-class v0, Lcom/ecommerce/furniture/ProductActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ecommerce/furniture/ProductActivity;->TAG:Ljava/lang/String;

    return-void

    .line 31
    :cond_14
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/ecommerce/furniture/ProductActivity;->cartProductNumber:I

    return-void
.end method

.method static synthetic access$000(Lcom/ecommerce/furniture/ProductActivity;)Lcom/ecommerce/furniture/helpers/MySharedPreference;
    .registers 2
    .param p0, "x0"    # Lcom/ecommerce/furniture/ProductActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/ecommerce/furniture/ProductActivity;->sharedPreference:Lcom/ecommerce/furniture/helpers/MySharedPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ecommerce/furniture/ProductActivity;)Lcom/google/gson/Gson;
    .registers 2
    .param p0, "x0"    # Lcom/ecommerce/furniture/ProductActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/ecommerce/furniture/ProductActivity;->gson:Lcom/google/gson/Gson;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ecommerce/furniture/ProductActivity;)I
    .registers 2
    .param p0, "x0"    # Lcom/ecommerce/furniture/ProductActivity;

    .prologue
    .line 31
    iget v0, p0, Lcom/ecommerce/furniture/ProductActivity;->cartProductNumber:I

    return v0
.end method

.method static synthetic access$202(Lcom/ecommerce/furniture/ProductActivity;I)I
    .registers 2
    .param p0, "x0"    # Lcom/ecommerce/furniture/ProductActivity;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/ecommerce/furniture/ProductActivity;->cartProductNumber:I

    return p1
.end method

.method static synthetic access$300(Lcom/ecommerce/furniture/ProductActivity;[Lcom/ecommerce/furniture/entities/ProductObject;)Ljava/util/List;
    .registers 3
    .param p0, "x0"    # Lcom/ecommerce/furniture/ProductActivity;
    .param p1, "x1"    # [Lcom/ecommerce/furniture/entities/ProductObject;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/ecommerce/furniture/ProductActivity;->convertObjectArrayToListObject([Lcom/ecommerce/furniture/entities/ProductObject;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/ecommerce/furniture/ProductActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/ecommerce/furniture/ProductActivity;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/ecommerce/furniture/ProductActivity;->invalidateCart()V

    return-void
.end method

.method private buildCounterDrawable(II)Landroid/graphics/drawable/Drawable;
    .registers 11
    .param p1, "count"    # I
    .param p2, "backgroundImageId"    # I

    .prologue
    const/4 v7, 0x0

    .line 138
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 139
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f040041

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 140
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 142
    if-nez p1, :cond_52

    .line 143
    const v5, 0x7f0c00e7

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 144
    .local v1, "counterTextPanel":Landroid/view/View;
    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 151
    .end local v1    # "counterTextPanel":Landroid/view/View;
    :goto_1e
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 152
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 150
    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    .line 153
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v4, v7, v7, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 155
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 156
    const/high16 v5, 0x100000

    invoke-virtual {v4, v5}, Landroid/view/View;->setDrawingCacheQuality(I)V

    .line 157
    invoke-virtual {v4}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 158
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v4, v7}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 160
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/ecommerce/furniture/ProductActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v5

    .line 146
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_52
    const v5, 0x7f0c00e9

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 147
    .local v3, "textView":Landroid/widget/TextView;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1e
.end method

.method private convertObjectArrayToListObject([Lcom/ecommerce/furniture/entities/ProductObject;)Ljava/util/List;
    .registers 3
    .param p1, "allProducts"    # [Lcom/ecommerce/furniture/entities/ProductObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/ecommerce/furniture/entities/ProductObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ecommerce/furniture/entities/ProductObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v0, "mProduct":Ljava/util/List;, "Ljava/util/List<Lcom/ecommerce/furniture/entities/ProductObject;>;"
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 110
    return-object v0
.end method

.method private invalidateCart()V
    .registers 1

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/ecommerce/furniture/ProductActivity;->invalidateOptionsMenu()V

    .line 165
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v4, 0x7f040020

    invoke-virtual {p0, v4}, Lcom/ecommerce/furniture/ProductActivity;->setContentView(I)V

    .line 51
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/ecommerce/furniture/ProductActivity;->setRequestedOrientation(I)V

    .line 53
    new-instance v4, Lcom/ecommerce/furniture/helpers/MySharedPreference;

    invoke-direct {v4, p0}, Lcom/ecommerce/furniture/helpers/MySharedPreference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/ecommerce/furniture/ProductActivity;->sharedPreference:Lcom/ecommerce/furniture/helpers/MySharedPreference;

    .line 55
    const v4, 0x7f0c00ba

    invoke-virtual {p0, v4}, Lcom/ecommerce/furniture/ProductActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/ecommerce/furniture/ProductActivity;->productImage:Landroid/widget/ImageView;

    .line 56
    const v4, 0x7f0c00b7

    invoke-virtual {p0, v4}, Lcom/ecommerce/furniture/ProductActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/ecommerce/furniture/ProductActivity;->productSize:Landroid/widget/TextView;

    .line 57
    const v4, 0x7f0c00b8

    invoke-virtual {p0, v4}, Lcom/ecommerce/furniture/ProductActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/ecommerce/furniture/ProductActivity;->productColor:Landroid/widget/TextView;

    .line 58
    const v4, 0x7f0c00b9

    invoke-virtual {p0, v4}, Lcom/ecommerce/furniture/ProductActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/ecommerce/furniture/ProductActivity;->productPrice:Landroid/widget/TextView;

    .line 59
    const v4, 0x7f0c00bb

    invoke-virtual {p0, v4}, Lcom/ecommerce/furniture/ProductActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/ecommerce/furniture/ProductActivity;->productDescription:Landroid/widget/TextView;

    .line 61
    new-instance v1, Lcom/google/gson/GsonBuilder;

    invoke-direct {v1}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 62
    .local v1, "builder":Lcom/google/gson/GsonBuilder;
    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v4

    iput-object v4, p0, Lcom/ecommerce/furniture/ProductActivity;->gson:Lcom/google/gson/Gson;

    .line 64
    invoke-virtual {p0}, Lcom/ecommerce/furniture/ProductActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "PRODUCT"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, "productInStringFormat":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/ecommerce/furniture/ProductActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "EMAIL"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/ecommerce/furniture/ProductActivity;->mail:Ljava/lang/String;

    .line 67
    iget-object v4, p0, Lcom/ecommerce/furniture/ProductActivity;->gson:Lcom/google/gson/Gson;

    const-class v5, Lcom/ecommerce/furniture/entities/ProductObject;

    invoke-virtual {v4, v2, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ecommerce/furniture/entities/ProductObject;

    .line 68
    .local v3, "singleProduct":Lcom/ecommerce/furniture/entities/ProductObject;
    if-eqz v3, :cond_11b

    .line 69
    invoke-virtual {v3}, Lcom/ecommerce/furniture/entities/ProductObject;->getProductName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/ecommerce/furniture/ProductActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v4, p0, Lcom/ecommerce/furniture/ProductActivity;->productImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Lcom/ecommerce/furniture/entities/ProductObject;->getProductImage()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 72
    iget-object v4, p0, Lcom/ecommerce/furniture/ProductActivity;->productSize:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/ecommerce/furniture/entities/ProductObject;->getProductSize()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v4, p0, Lcom/ecommerce/furniture/ProductActivity;->productColor:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Color: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/ecommerce/furniture/entities/ProductObject;->getProductColor()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v4, p0, Lcom/ecommerce/furniture/ProductActivity;->productPrice:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Price: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/Double;

    invoke-virtual {v3}, Lcom/ecommerce/furniture/entities/ProductObject;->getProductPrice()D

    move-result-wide v8

    invoke-direct {v6, v8, v9}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v6}, Ljava/lang/Double;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Rs"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v4, p0, Lcom/ecommerce/furniture/ProductActivity;->productDescription:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<strong>Product Description</strong><br/>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/ecommerce/furniture/entities/ProductObject;->getProductDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    :cond_11b
    const v4, 0x7f0c00bc

    invoke-virtual {p0, v4}, Lcom/ecommerce/furniture/ProductActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 79
    .local v0, "addToCartButton":Landroid/widget/Button;
    sget-boolean v4, Lcom/ecommerce/furniture/ProductActivity;->$assertionsDisabled:Z

    if-nez v4, :cond_130

    if-nez v0, :cond_130

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 80
    :cond_130
    new-instance v4, Lcom/ecommerce/furniture/ProductActivity$1;

    invoke-direct {v4, p0, v3}, Lcom/ecommerce/furniture/ProductActivity$1;-><init>(Lcom/ecommerce/furniture/ProductActivity;Lcom/ecommerce/furniture/entities/ProductObject;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/ecommerce/furniture/ProductActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const/high16 v3, 0x7f0d0000

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 116
    const v2, 0x7f0c00ea

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 117
    .local v1, "menuItem":Landroid/view/MenuItem;
    iget-object v2, p0, Lcom/ecommerce/furniture/ProductActivity;->sharedPreference:Lcom/ecommerce/furniture/helpers/MySharedPreference;

    invoke-virtual {v2}, Lcom/ecommerce/furniture/helpers/MySharedPreference;->retrieveProductCount()I

    move-result v0

    .line 118
    .local v0, "mCount":I
    const v2, 0x7f02004f

    invoke-direct {p0, v0, v2}, Lcom/ecommerce/furniture/ProductActivity;->buildCounterDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 119
    const/4 v2, 0x1

    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 124
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 126
    .local v1, "id":I
    const v2, 0x7f0c00ea

    if-ne v1, v2, :cond_1c

    .line 127
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/ecommerce/furniture/CheckoutActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 128
    .local v0, "checkoutIntent":Landroid/content/Intent;
    const-string v2, "EMAIL"

    iget-object v3, p0, Lcom/ecommerce/furniture/ProductActivity;->mail:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    invoke-virtual {p0, v0}, Lcom/ecommerce/furniture/ProductActivity;->startActivity(Landroid/content/Intent;)V

    .line 132
    const/4 v2, 0x1

    .line 134
    .end local v0    # "checkoutIntent":Landroid/content/Intent;
    :goto_1b
    return v2

    :cond_1c
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_1b
.end method
