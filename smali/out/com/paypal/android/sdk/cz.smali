.class public final Lcom/paypal/android/sdk/cz;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/Map;

.field private static b:Ljava/util/regex/Pattern;

.field private static c:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "px"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "dip"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "dp"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sp"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pt"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "in"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mm"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/cz;->a:Ljava/util/Map;

    const-string v0, "^\\s*(\\d+(\\.\\d+)*)\\s*([a-zA-Z]+)\\s*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/cz;->b:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/cz;->c:Ljava/util/HashMap;

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)I
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    invoke-static {p0, p1}, Lcom/paypal/android/sdk/cz;->b(Ljava/lang/String;Landroid/content/Context;)F

    move-result v0

    float-to-int v0, v0

    goto :goto_3
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .registers 7

    const/4 v3, 0x0

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    if-eqz p1, :cond_24

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    :goto_14
    const/16 v1, 0xf0

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    invoke-static {p0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    array-length v2, v1

    invoke-static {v1, v3, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_24
    const/16 v1, 0xa0

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    goto :goto_14
.end method

.method public static a(Landroid/widget/LinearLayout;)Landroid/view/View;
    .registers 7

    const/4 v5, 0x0

    const-string v0, "12dip"

    const-string v1, "12dip"

    new-instance v2, Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    sget v4, Lcom/paypal/android/sdk/cy;->f:I

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v3, -0x1

    const-string v4, "1dip"

    invoke-static {v2, v3, v4}, Lcom/paypal/android/sdk/cz;->a(Landroid/view/View;ILjava/lang/String;)V

    invoke-static {v2, v5, v0, v5, v1}, Lcom/paypal/android/sdk/cz;->b(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public static a()Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Landroid/view/ViewGroup;
    .registers 3

    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/paypal/android/sdk/cy;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/ImageView;
    .registers 5

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-static {p1, p0}, Lcom/paypal/android/sdk/cz;->c(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;ZILandroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .registers 8

    const/4 v3, 0x0

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_b

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setId(I)V

    :cond_b
    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-static {v0, p1, p0}, Lcom/paypal/android/sdk/cz;->a(Landroid/view/View;ZLandroid/content/Context;)V

    const/4 v1, -0x1

    const-string v2, "58dip"

    invoke-static {v0, v1, v2}, Lcom/paypal/android/sdk/cz;->a(Landroid/view/View;ILjava/lang/String;)V

    const-string v1, "4dip"

    invoke-static {v0, v3, v3, v3, v1}, Lcom/paypal/android/sdk/cz;->b(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Landroid/view/ViewGroup;)Landroid/widget/LinearLayout;
    .registers 4

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    sget v1, Lcom/paypal/android/sdk/cy;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Lcom/paypal/android/sdk/cz;->a(Landroid/view/View;II)V

    return-object v0
.end method

.method public static a(IIII)Landroid/widget/RelativeLayout$LayoutParams;
    .registers 6

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/widget/RelativeLayout$LayoutParams;
    .registers 7

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {p1, p0}, Lcom/paypal/android/sdk/cz;->a(Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    invoke-static {p2, p0}, Lcom/paypal/android/sdk/cz;->a(Ljava/lang/String;Landroid/content/Context;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-object v0
.end method

.method public static a(Landroid/view/View;)V
    .registers 4

    const/4 v2, 0x0

    const-string v0, "4dip"

    const-string v1, "4dip"

    invoke-static {p0, v0, v2, v1, v2}, Lcom/paypal/android/sdk/cz;->b(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/view/View;IF)V
    .registers 5

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_e

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :cond_e
    return-void
.end method

.method public static a(Landroid/view/View;II)V
    .registers 4

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method public static a(Landroid/view/View;ILjava/lang/String;)V
    .registers 4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/paypal/android/sdk/cz;->a(Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/paypal/android/sdk/cz;->a(Landroid/view/View;II)V

    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/String;I)V
    .registers 5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/paypal/android/sdk/cz;->a(Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    const/4 v1, -0x2

    invoke-static {p0, v0, v1}, Lcom/paypal/android/sdk/cz;->a(Landroid/view/View;II)V

    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "4dip"

    const-string v1, "4dip"

    invoke-static {p0, v0, p1, v1, p2}, Lcom/paypal/android/sdk/cz;->b(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/paypal/android/sdk/cz;->a(Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    invoke-static {p2, v0}, Lcom/paypal/android/sdk/cz;->a(Ljava/lang/String;Landroid/content/Context;)I

    move-result v2

    invoke-static {p3, v0}, Lcom/paypal/android/sdk/cz;->a(Ljava/lang/String;Landroid/content/Context;)I

    move-result v3

    invoke-static {p4, v0}, Lcom/paypal/android/sdk/cz;->a(Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public static a(Landroid/view/View;ZLandroid/content/Context;)V
    .registers 8

    const/4 v4, 0x1

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-static {p0, v0, v1}, Lcom/paypal/android/sdk/cz;->a(Landroid/view/View;II)V

    const-string v0, "10dip"

    const-string v1, "0dip"

    const-string v2, "10dip"

    const-string v3, "0dip"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/paypal/android/sdk/cz;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_38

    invoke-static {p2}, Lcom/paypal/android/sdk/cy;->a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_17
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v4}, Landroid/view/View;->setFocusable(Z)V

    const-string v0, "54dip"

    invoke-static {v0, p2}, Lcom/paypal/android/sdk/cz;->a(Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setMinimumHeight(I)V

    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_30

    move-object v0, p0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0}, Lcom/paypal/android/sdk/cz;->a(Landroid/widget/TextView;)V

    :cond_30
    instance-of v0, p0, Landroid/widget/Button;

    if-nez v0, :cond_37

    invoke-virtual {p0, v4}, Landroid/view/View;->setClickable(Z)V

    :cond_37
    return-void

    :cond_38
    invoke-static {p2}, Lcom/paypal/android/sdk/cy;->b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_17
.end method

.method public static a(Landroid/widget/Button;)V
    .registers 2

    const/16 v0, 0x11

    invoke-static {p0, v0}, Lcom/paypal/android/sdk/cz;->a(Landroid/widget/TextView;I)V

    return-void
.end method

.method public static a(Landroid/widget/TextView;)V
    .registers 2

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextSize(F)V

    sget-object v0, Lcom/paypal/android/sdk/cy;->m:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public static a(Landroid/widget/TextView;I)V
    .registers 6

    const-string v0, "2dip"

    const-string v1, "2dip"

    const-string v2, "2dip"

    const-string v3, "2dip"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/paypal/android/sdk/cz;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/paypal/android/sdk/cy;->n:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget-object v0, Lcom/paypal/android/sdk/cy;->t:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/paypal/android/sdk/cy;->c(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextSize(F)V

    sget-object v0, Lcom/paypal/android/sdk/cy;->t:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    return-void
.end method

.method public static b(Ljava/lang/String;Landroid/content/Context;)F
    .registers 7

    const/4 v4, 0x1

    if-nez p0, :cond_5

    const/4 v0, 0x0

    :goto_4
    return v0

    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/paypal/android/sdk/cz;->c:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/paypal/android/sdk/cz;->c:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_4

    :cond_1e
    sget-object v0, Lcom/paypal/android/sdk/cz;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_30

    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0}, Ljava/lang/NumberFormatException;-><init>()V

    throw v0

    :cond_30
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/paypal/android/sdk/cz;->a:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_4f

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_4f
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    sget-object v2, Lcom/paypal/android/sdk/cz;->c:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4
.end method

.method public static b(Landroid/view/ViewGroup;)Landroid/widget/LinearLayout;
    .registers 6

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const-string v1, "10dip"

    const-string v2, "14dip"

    const-string v3, "10dip"

    const-string v4, "14dip"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/paypal/android/sdk/cz;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/paypal/android/sdk/cz;->a()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public static b(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/paypal/android/sdk/cz;->a(Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    invoke-static {p2, v0}, Lcom/paypal/android/sdk/cz;->a(Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-static {p0, v1, v0}, Lcom/paypal/android/sdk/cz;->a(Landroid/view/View;II)V

    return-void
.end method

.method public static b(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_21

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {p1, v1}, Lcom/paypal/android/sdk/cz;->a(Ljava/lang/String;Landroid/content/Context;)I

    move-result v2

    invoke-static {p2, v1}, Lcom/paypal/android/sdk/cz;->a(Ljava/lang/String;Landroid/content/Context;)I

    move-result v3

    invoke-static {p3, v1}, Lcom/paypal/android/sdk/cz;->a(Ljava/lang/String;Landroid/content/Context;)I

    move-result v4

    invoke-static {p4, v1}, Lcom/paypal/android/sdk/cz;->a(Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :cond_21
    return-void
.end method

.method public static b(Landroid/widget/TextView;)V
    .registers 2

    sget v0, Lcom/paypal/android/sdk/cy;->k:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v0, Lcom/paypal/android/sdk/cy;->t:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    sget-object v0, Lcom/paypal/android/sdk/cy;->s:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v0, 0x41500000    # 13.0f

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method public static b(Landroid/widget/TextView;I)V
    .registers 3

    const/high16 v0, 0x41900000    # 18.0f

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextSize(F)V

    sget-object v0, Lcom/paypal/android/sdk/cy;->o:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    sget v0, Lcom/paypal/android/sdk/cy;->g:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public static c(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 3

    const/16 v0, 0xf0

    invoke-static {p0, p1, v0}, Lcom/paypal/android/sdk/cz;->a(Ljava/lang/String;Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/widget/TextView;I)V
    .registers 3

    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextSize(F)V

    sget-object v0, Lcom/paypal/android/sdk/cy;->p:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/16 v0, 0x53

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setGravity(I)V

    sget v0, Lcom/paypal/android/sdk/cy;->g:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public static d(Landroid/widget/TextView;I)V
    .registers 3

    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextSize(F)V

    sget-object v0, Lcom/paypal/android/sdk/cy;->q:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    sget v0, Lcom/paypal/android/sdk/cy;->g:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public static e(Landroid/widget/TextView;I)V
    .registers 3

    const/high16 v0, 0x41500000    # 13.0f

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextSize(F)V

    sget-object v0, Lcom/paypal/android/sdk/cy;->q:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/16 v0, 0x53

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setGravity(I)V

    sget v0, Lcom/paypal/android/sdk/cy;->g:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
