.class public final Lcom/paypal/android/sdk/ga;
.super Landroid/widget/ArrayAdapter;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput p3, p0, Lcom/paypal/android/sdk/ga;->a:I

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/paypal/android/sdk/fz;)V
    .registers 15

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x900

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setId(I)V

    const/16 v0, 0x900

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v2, -0x2

    const/4 v3, -0x2

    const/4 v4, 0x1

    const/16 v5, 0x8fd

    invoke-static {v2, v3, v4, v5}, Lcom/paypal/android/sdk/cz;->a(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x8ff

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p1, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x8fe

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setId(I)V

    const/16 v2, 0x53

    invoke-static {v4, v2}, Lcom/paypal/android/sdk/cz;->b(Landroid/widget/TextView;I)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v2, "6dip"

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v2, v3, v5, v6}, Lcom/paypal/android/sdk/cz;->b(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x53

    invoke-static {v5, v2}, Lcom/paypal/android/sdk/cz;->d(Landroid/widget/TextView;I)V

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v1, "6dip"

    const/4 v2, 0x0

    const-string v3, "6dip"

    const/4 v6, 0x0

    invoke-static {v5, v1, v2, v3, v6}, Lcom/paypal/android/sdk/cz;->b(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/paypal/android/sdk/fz;->e()Z

    move-result v1

    if-eqz v1, :cond_92

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x902

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setId(I)V

    const/16 v0, 0x902

    const/16 v2, 0x53

    invoke-static {v1, v2}, Lcom/paypal/android/sdk/cz;->c(Landroid/widget/TextView;I)V

    const/4 v2, -0x2

    const/4 v3, -0x2

    const/4 v6, 0x1

    const/16 v7, 0x8fd

    invoke-static {v2, v3, v6, v7}, Lcom/paypal/android/sdk/cz;->a(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v6, 0x8ff

    invoke-virtual {v2, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v3, 0x3

    const/16 v6, 0x900

    invoke-virtual {v2, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p1, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v2, "6dip"

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v1, v2, v3, v6, v7}, Lcom/paypal/android/sdk/cz;->b(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/paypal/android/sdk/fw;->av:Lcom/paypal/android/sdk/fw;

    invoke-static {v2}, Lcom/paypal/android/sdk/fu;->a(Lcom/paypal/android/sdk/fw;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_92
    move v1, v0

    const/16 v2, 0x960

    const/16 v0, 0x9c4

    invoke-virtual {p2}, Lcom/paypal/android/sdk/fz;->f()Lcom/paypal/android/sdk/gc;

    move-result-object v3

    invoke-virtual {v3}, Lcom/paypal/android/sdk/gc;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v2

    move v2, v0

    :goto_a1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_145

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/gb;

    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setId(I)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/paypal/android/sdk/gb;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/paypal/android/sdk/gb;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v8, -0x2

    const/4 v9, -0x2

    const/4 v10, 0x1

    const/16 v11, 0x8fd

    invoke-static {v8, v9, v10, v11}, Lcom/paypal/android/sdk/cz;->a(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v7}, Landroid/widget/TextView;->getId()I

    move-result v9

    const/16 v10, 0x960

    if-ne v9, v10, :cond_13a

    const/4 v9, 0x3

    invoke-virtual {v8, v9, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :goto_f0
    invoke-virtual {p1, v7, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v8, 0x53

    invoke-static {v7, v8}, Lcom/paypal/android/sdk/cz;->e(Landroid/widget/TextView;I)V

    const-string v8, "6dip"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v7, v8, v9, v10, v11}, Lcom/paypal/android/sdk/cz;->b(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setId(I)V

    invoke-virtual {v0}, Lcom/paypal/android/sdk/gb;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, -0x2

    const/4 v8, -0x2

    const/4 v9, 0x0

    const/16 v10, 0x8ff

    invoke-static {v0, v8, v9, v10}, Lcom/paypal/android/sdk/cz;->a(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    const/16 v8, 0x8

    invoke-virtual {v0, v8, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p1, v7, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x55

    invoke-static {v7, v0}, Lcom/paypal/android/sdk/cz;->d(Landroid/widget/TextView;I)V

    const-string v0, "6dip"

    const/4 v8, 0x0

    const-string v9, "6dip"

    const/4 v10, 0x0

    invoke-static {v7, v0, v8, v9, v10}, Lcom/paypal/android/sdk/cz;->b(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_a1

    :cond_13a
    const/4 v9, 0x3

    invoke-virtual {v7}, Landroid/widget/TextView;->getId()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v8, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_f0

    :cond_145
    invoke-virtual {p2}, Lcom/paypal/android/sdk/fz;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {p2}, Lcom/paypal/android/sdk/fz;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 2

    iput p1, p0, Lcom/paypal/android/sdk/ga;->a:I

    return-void
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 15

    invoke-virtual {p0, p1}, Lcom/paypal/android/sdk/ga;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/fz;

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v3, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v1, 0x0

    const-string v4, "6dip"

    const/4 v5, 0x0

    const-string v6, "6dip"

    invoke-static {v3, v1, v4, v5, v6}, Lcom/paypal/android/sdk/cz;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/paypal/android/sdk/fz;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v1, v4, v5}, Lcom/paypal/android/sdk/cz;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v1

    const/16 v4, 0x8fd

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setId(I)V

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "30dip"

    const-string v6, "30dip"

    const/16 v7, 0x9

    invoke-static {v4, v5, v6, v7}, Lcom/paypal/android/sdk/cz;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v3, v1, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v4, "4dip"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v1, v4, v5, v6, v7}, Lcom/paypal/android/sdk/cz;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "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"

    const-string v5, "checked"

    invoke-static {v1, v4, v5}, Lcom/paypal/android/sdk/cz;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v1

    const/16 v4, 0x8ff

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setId(I)V

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "20dip"

    const-string v6, "20dip"

    const/16 v7, 0xb

    invoke-static {v4, v5, v6, v7}, Lcom/paypal/android/sdk/cz;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v3, v1, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v4, Lcom/paypal/android/sdk/cy;->b:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "8dip"

    const/4 v7, 0x0

    invoke-static {v1, v4, v5, v6, v7}, Lcom/paypal/android/sdk/cz;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v4, p0, Lcom/paypal/android/sdk/ga;->a:I

    if-eq p1, v4, :cond_91

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_91
    invoke-virtual {v0}, Lcom/paypal/android/sdk/fz;->g()Z

    move-result v1

    if-eqz v1, :cond_171

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x8fe

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setId(I)V

    const/16 v1, 0x8fe

    const/16 v6, 0x53

    invoke-static {v5, v6}, Lcom/paypal/android/sdk/cz;->b(Landroid/widget/TextView;I)V

    const/4 v6, -0x2

    const/4 v7, -0x2

    const/4 v8, 0x1

    const/16 v9, 0x8fd

    invoke-static {v6, v7, v8, v9}, Lcom/paypal/android/sdk/cz;->a(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0x8ff

    invoke-virtual {v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v3, v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v6, "6dip"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Lcom/paypal/android/sdk/cz;->b(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/paypal/android/sdk/fz;->e()Z

    move-result v6

    if-eqz v6, :cond_106

    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x902

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setId(I)V

    const/16 v1, 0x902

    const/16 v7, 0x53

    invoke-static {v6, v7}, Lcom/paypal/android/sdk/cz;->c(Landroid/widget/TextView;I)V

    const/4 v7, -0x2

    const/4 v8, -0x2

    const/4 v9, 0x1

    const/16 v10, 0x8fd

    invoke-static {v7, v8, v9, v10}, Lcom/paypal/android/sdk/cz;->a(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v7

    const/4 v8, 0x0

    const/16 v9, 0x8ff

    invoke-virtual {v7, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v8, 0x3

    const/16 v9, 0x8fe

    invoke-virtual {v7, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v3, v6, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v7, "6dip"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v6, v7, v8, v9, v10}, Lcom/paypal/android/sdk/cz;->b(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/paypal/android/sdk/fw;->av:Lcom/paypal/android/sdk/fw;

    invoke-static {v7}, Lcom/paypal/android/sdk/fu;->a(Lcom/paypal/android/sdk/fw;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_106
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v7, 0x901

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setId(I)V

    const/16 v7, 0x53

    invoke-static {v6, v7}, Lcom/paypal/android/sdk/cz;->d(Landroid/widget/TextView;I)V

    const/4 v7, -0x2

    const/4 v8, -0x2

    const/4 v9, 0x1

    const/16 v10, 0x8fd

    invoke-static {v7, v8, v9, v10}, Lcom/paypal/android/sdk/cz;->a(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v7

    const/4 v8, 0x3

    invoke-virtual {v7, v8, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v3, v6, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "6dip"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v6, v1, v7, v8, v9}, Lcom/paypal/android/sdk/cz;->b(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v4, -0x2

    const/4 v7, -0x2

    const/4 v8, 0x0

    const/16 v9, 0x8ff

    invoke-static {v4, v7, v8, v9}, Lcom/paypal/android/sdk/cz;->a(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v4

    const/16 v7, 0x8

    const/16 v8, 0x901

    invoke-virtual {v4, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v3, v1, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v3, 0x55

    invoke-static {v1, v3}, Lcom/paypal/android/sdk/cz;->d(Landroid/widget/TextView;I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v7, "6dip"

    const/4 v8, 0x0

    invoke-static {v1, v3, v4, v7, v8}, Lcom/paypal/android/sdk/cz;->b(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/paypal/android/sdk/fz;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/paypal/android/sdk/fz;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/paypal/android/sdk/fz;->f()Lcom/paypal/android/sdk/gc;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/paypal/android/sdk/gc;->a(I)Lcom/paypal/android/sdk/gb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/gb;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_170
    return-object v2

    :cond_171
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3, v0}, Lcom/paypal/android/sdk/ga;->a(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/paypal/android/sdk/fz;)V

    goto :goto_170
.end method
