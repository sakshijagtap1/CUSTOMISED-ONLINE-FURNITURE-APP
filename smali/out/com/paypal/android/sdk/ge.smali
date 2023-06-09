.class public final Lcom/paypal/android/sdk/ge;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/view/ViewGroup;

.field private b:Landroid/view/ViewGroup;

.field private c:Lcom/paypal/android/sdk/gk;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Lcom/paypal/android/sdk/gj;

.field private j:Lcom/paypal/android/sdk/fy;

.field private k:Lcom/paypal/android/sdk/gk;

.field private l:Lcom/paypal/android/sdk/gp;

.field private m:Lcom/paypal/android/sdk/gp;

.field private n:Lcom/paypal/android/sdk/gg;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 11

    const/4 v7, 0x0

    const/4 v6, -0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/paypal/android/sdk/cz;->a(Landroid/content/Context;)Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/ge;->b:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/paypal/android/sdk/ge;->b:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/paypal/android/sdk/cz;->a(Landroid/view/ViewGroup;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/ge;->d:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/paypal/android/sdk/ge;->d:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/paypal/android/sdk/cz;->b(Landroid/view/ViewGroup;)Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/paypal/android/sdk/ge;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/paypal/android/sdk/ge;->e:Landroid/widget/TextView;

    const-string v2, "0dip"

    const-string v3, "0dip"

    const-string v4, "0dip"

    const-string v5, "14dip"

    invoke-static {v1, v2, v3, v4, v5}, Lcom/paypal/android/sdk/cz;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/paypal/android/sdk/ge;->e:Landroid/widget/TextView;

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lcom/paypal/android/sdk/ge;->e:Landroid/widget/TextView;

    sget v2, Lcom/paypal/android/sdk/cy;->a:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/paypal/android/sdk/ge;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/paypal/android/sdk/ge;->e:Landroid/widget/TextView;

    invoke-static {v1, v6, v6}, Lcom/paypal/android/sdk/cz;->a(Landroid/view/View;II)V

    new-instance v1, Lcom/paypal/android/sdk/gk;

    const-string v2, "description"

    invoke-direct {v1, p1, v2}, Lcom/paypal/android/sdk/gk;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/paypal/android/sdk/ge;->c:Lcom/paypal/android/sdk/gk;

    iget-object v1, p0, Lcom/paypal/android/sdk/ge;->c:Lcom/paypal/android/sdk/gk;

    iget-object v1, v1, Lcom/paypal/android/sdk/gk;->d:Landroid/widget/TextView;

    sget-object v2, Lcom/paypal/android/sdk/cy;->r:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/paypal/android/sdk/ge;->c:Lcom/paypal/android/sdk/gk;

    iget-object v1, v1, Lcom/paypal/android/sdk/gk;->a:Landroid/widget/TableLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/paypal/android/sdk/ge;->c:Lcom/paypal/android/sdk/gk;

    iget-object v1, v1, Lcom/paypal/android/sdk/gk;->a:Landroid/widget/TableLayout;

    invoke-static {v1}, Lcom/paypal/android/sdk/cz;->a(Landroid/view/View;)V

    invoke-static {v0}, Lcom/paypal/android/sdk/cz;->a(Landroid/widget/LinearLayout;)Landroid/view/View;

    if-eqz p2, :cond_121

    new-instance v1, Lcom/paypal/android/sdk/gg;

    invoke-direct {v1, p1}, Lcom/paypal/android/sdk/gg;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/paypal/android/sdk/ge;->n:Lcom/paypal/android/sdk/gg;

    iget-object v1, p0, Lcom/paypal/android/sdk/ge;->n:Lcom/paypal/android/sdk/gg;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/gg;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {v0}, Lcom/paypal/android/sdk/cz;->a(Landroid/widget/LinearLayout;)Landroid/view/View;

    new-instance v1, Lcom/paypal/android/sdk/gp;

    invoke-direct {v1, p1}, Lcom/paypal/android/sdk/gp;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/paypal/android/sdk/ge;->l:Lcom/paypal/android/sdk/gp;

    iget-object v1, p0, Lcom/paypal/android/sdk/ge;->l:Lcom/paypal/android/sdk/gp;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/gp;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_8d
    new-instance v1, Lcom/paypal/android/sdk/gp;

    invoke-direct {v1, p1}, Lcom/paypal/android/sdk/gp;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/paypal/android/sdk/ge;->m:Lcom/paypal/android/sdk/gp;

    iget-object v1, p0, Lcom/paypal/android/sdk/ge;->m:Lcom/paypal/android/sdk/gp;

    new-instance v2, Lcom/paypal/android/sdk/gl;

    invoke-direct {v2}, Lcom/paypal/android/sdk/gl;-><init>()V

    invoke-virtual {v1, p1, v2}, Lcom/paypal/android/sdk/gp;->a(Landroid/content/Context;Lcom/paypal/android/sdk/go;)V

    iget-object v1, p0, Lcom/paypal/android/sdk/ge;->m:Lcom/paypal/android/sdk/gp;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/gp;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/paypal/android/sdk/ge;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/paypal/android/sdk/ge;->g:Landroid/widget/TextView;

    const v2, 0xa7fa

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    iget-object v1, p0, Lcom/paypal/android/sdk/ge;->g:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/paypal/android/sdk/cz;->b(Landroid/widget/TextView;)V

    iget-object v1, p0, Lcom/paypal/android/sdk/ge;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/paypal/android/sdk/ge;->g:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-static {v1, v2, v6}, Lcom/paypal/android/sdk/cz;->a(Landroid/view/View;II)V

    iget-object v1, p0, Lcom/paypal/android/sdk/ge;->g:Landroid/widget/TextView;

    const-string v2, "20dip"

    const-string v3, "10dip"

    invoke-static {v1, v7, v2, v7, v3}, Lcom/paypal/android/sdk/cz;->b(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/paypal/android/sdk/ge;->g:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v1, 0x1

    const v2, 0xa7f9

    invoke-static {p1, v1, v2, v0}, Lcom/paypal/android/sdk/cz;->a(Landroid/content/Context;ZILandroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/ge;->f:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/ge;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/paypal/android/sdk/ge;->h:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/paypal/android/sdk/cz;->a(Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/ge;->h:Landroid/widget/TextView;

    const-string v1, "init"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/ge;->f:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/paypal/android/sdk/ge;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/paypal/android/sdk/fy;

    invoke-direct {v0, p1}, Lcom/paypal/android/sdk/fy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/ge;->j:Lcom/paypal/android/sdk/fy;

    iget-object v0, p0, Lcom/paypal/android/sdk/ge;->d:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/paypal/android/sdk/ge;->j:Lcom/paypal/android/sdk/fy;

    iget-object v1, v1, Lcom/paypal/android/sdk/fy;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/ge;->j:Lcom/paypal/android/sdk/fy;

    iget-object v0, v0, Lcom/paypal/android/sdk/fy;->a:Landroid/widget/LinearLayout;

    invoke-static {v0, v6, v6}, Lcom/paypal/android/sdk/cz;->a(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/paypal/android/sdk/ge;->j:Lcom/paypal/android/sdk/fy;

    iget-object v0, v0, Lcom/paypal/android/sdk/fy;->a:Landroid/widget/LinearLayout;

    const/16 v1, 0x11

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lcom/paypal/android/sdk/cz;->a(Landroid/view/View;IF)V

    iget-object v0, p0, Lcom/paypal/android/sdk/ge;->b:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/paypal/android/sdk/ge;->a:Landroid/view/ViewGroup;

    return-void

    :cond_121
    new-instance v1, Lcom/paypal/android/sdk/gj;

    invoke-direct {v1, p1}, Lcom/paypal/android/sdk/gj;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/paypal/android/sdk/ge;->i:Lcom/paypal/android/sdk/gj;

    iget-object v1, p0, Lcom/paypal/android/sdk/ge;->i:Lcom/paypal/android/sdk/gj;

    iget-object v1, v1, Lcom/paypal/android/sdk/gj;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/paypal/android/sdk/ge;->i:Lcom/paypal/android/sdk/gj;

    iget-object v1, v1, Lcom/paypal/android/sdk/gj;->a:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/paypal/android/sdk/cz;->a(Landroid/view/View;)V

    invoke-static {v0}, Lcom/paypal/android/sdk/cz;->a(Landroid/widget/LinearLayout;)Landroid/view/View;

    new-instance v1, Lcom/paypal/android/sdk/gk;

    const-string v2, "00 / 0000"

    invoke-direct {v1, p1, v2}, Lcom/paypal/android/sdk/gk;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/paypal/android/sdk/ge;->k:Lcom/paypal/android/sdk/gk;

    iget-object v1, p0, Lcom/paypal/android/sdk/ge;->k:Lcom/paypal/android/sdk/gk;

    iget-object v1, v1, Lcom/paypal/android/sdk/gk;->a:Landroid/widget/TableLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/paypal/android/sdk/ge;->k:Lcom/paypal/android/sdk/gk;

    iget-object v1, v1, Lcom/paypal/android/sdk/gk;->a:Landroid/widget/TableLayout;

    invoke-static {v1}, Lcom/paypal/android/sdk/cz;->a(Landroid/view/View;)V

    goto/16 :goto_8d
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/ge;->a:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final a(Landroid/content/Context;Lcom/paypal/android/sdk/fz;)V
    .registers 4

    iget-object v0, p0, Lcom/paypal/android/sdk/ge;->l:Lcom/paypal/android/sdk/gp;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/paypal/android/sdk/ge;->l:Lcom/paypal/android/sdk/gp;

    invoke-virtual {v0, p1, p2}, Lcom/paypal/android/sdk/gp;->a(Landroid/content/Context;Lcom/paypal/android/sdk/go;)V

    :cond_9
    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/paypal/android/sdk/gl;)V
    .registers 4

    iget-object v0, p0, Lcom/paypal/android/sdk/ge;->m:Lcom/paypal/android/sdk/gp;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/paypal/android/sdk/ge;->m:Lcom/paypal/android/sdk/gp;

    invoke-virtual {v0, p1, p2}, Lcom/paypal/android/sdk/gp;->a(Landroid/content/Context;Lcom/paypal/android/sdk/go;)V

    :cond_9
    return-void
.end method

.method public final a(Landroid/text/SpannableString;)V
    .registers 4

    invoke-static {p1}, Lcom/paypal/android/sdk/d;->d(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/paypal/android/sdk/ge;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/ge;->g:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/paypal/android/sdk/ge;->g:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_11
.end method

.method public final a(Landroid/view/View$OnClickListener;)V
    .registers 3

    iget-object v0, p0, Lcom/paypal/android/sdk/ge;->n:Lcom/paypal/android/sdk/gg;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/paypal/android/sdk/ge;->n:Lcom/paypal/android/sdk/gg;

    invoke-virtual {v0, p1}, Lcom/paypal/android/sdk/gg;->a(Landroid/view/View$OnClickListener;)V

    :cond_9
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/paypal/android/sdk/ge;->n:Lcom/paypal/android/sdk/gg;

    invoke-virtual {v0, p1}, Lcom/paypal/android/sdk/gg;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/paypal/android/sdk/ge;->i:Lcom/paypal/android/sdk/gj;

    iget-object v0, v0, Lcom/paypal/android/sdk/gj;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/ge;->i:Lcom/paypal/android/sdk/gj;

    iget-object v0, v0, Lcom/paypal/android/sdk/gj;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/ge;->k:Lcom/paypal/android/sdk/gk;

    iget-object v0, v0, Lcom/paypal/android/sdk/gk;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/paypal/android/sdk/ge;->c:Lcom/paypal/android/sdk/gk;

    iget-object v0, v0, Lcom/paypal/android/sdk/gk;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/ge;->c:Lcom/paypal/android/sdk/gk;

    iget-object v0, v0, Lcom/paypal/android/sdk/gk;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final a(Z)V
    .registers 5

    const/4 v2, 0x0

    if-eqz p1, :cond_26

    invoke-static {}, Lcom/paypal/android/sdk/d;->b()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/paypal/android/sdk/ge;->h:Landroid/widget/TextView;

    sget-object v1, Lcom/paypal/android/sdk/fw;->a:Lcom/paypal/android/sdk/fw;

    invoke-static {v1}, Lcom/paypal/android/sdk/fu;->a(Lcom/paypal/android/sdk/fw;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_14
    iget-object v0, p0, Lcom/paypal/android/sdk/ge;->n:Lcom/paypal/android/sdk/gg;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/gg;->b()V

    :goto_19
    return-void

    :cond_1a
    iget-object v0, p0, Lcom/paypal/android/sdk/ge;->h:Landroid/widget/TextView;

    sget-object v1, Lcom/paypal/android/sdk/fw;->E:Lcom/paypal/android/sdk/fw;

    invoke-static {v1}, Lcom/paypal/android/sdk/fu;->a(Lcom/paypal/android/sdk/fw;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_14

    :cond_26
    iget-object v0, p0, Lcom/paypal/android/sdk/ge;->h:Landroid/widget/TextView;

    sget-object v1, Lcom/paypal/android/sdk/fw;->C:Lcom/paypal/android/sdk/fw;

    invoke-static {v1}, Lcom/paypal/android/sdk/fu;->a(Lcom/paypal/android/sdk/fw;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/ge;->i:Lcom/paypal/android/sdk/gj;

    iget-object v0, v0, Lcom/paypal/android/sdk/gj;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/ge;->k:Lcom/paypal/android/sdk/gk;

    iget-object v0, v0, Lcom/paypal/android/sdk/gk;->a:Landroid/widget/TableLayout;

    invoke-virtual {v0, v2}, Landroid/widget/TableLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/ge;->k:Lcom/paypal/android/sdk/gk;

    iget-object v0, v0, Lcom/paypal/android/sdk/gk;->d:Landroid/widget/TextView;

    sget-object v1, Lcom/paypal/android/sdk/fw;->ah:Lcom/paypal/android/sdk/fw;

    invoke-static {v1}, Lcom/paypal/android/sdk/fu;->a(Lcom/paypal/android/sdk/fw;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_19
.end method

.method public final b()Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/ge;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method public final b(Landroid/view/View$OnClickListener;)V
    .registers 3

    iget-object v0, p0, Lcom/paypal/android/sdk/ge;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final b(Z)V
    .registers 3

    iget-object v0, p0, Lcom/paypal/android/sdk/ge;->f:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/paypal/android/sdk/ge;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    :cond_9
    return-void
.end method

.method public final c()V
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/ge;->c:Lcom/paypal/android/sdk/gk;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/gk;->a()V

    return-void
.end method

.method public final c(Landroid/view/View$OnClickListener;)V
    .registers 3

    iget-object v0, p0, Lcom/paypal/android/sdk/ge;->l:Lcom/paypal/android/sdk/gp;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/paypal/android/sdk/ge;->l:Lcom/paypal/android/sdk/gp;

    invoke-virtual {v0, p1}, Lcom/paypal/android/sdk/gp;->a(Landroid/view/View$OnClickListener;)V

    :cond_9
    return-void
.end method

.method public final d()Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/ge;->j:Lcom/paypal/android/sdk/fy;

    iget-object v0, v0, Lcom/paypal/android/sdk/fy;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method public final d(Landroid/view/View$OnClickListener;)V
    .registers 3

    iget-object v0, p0, Lcom/paypal/android/sdk/ge;->m:Lcom/paypal/android/sdk/gp;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/paypal/android/sdk/ge;->m:Lcom/paypal/android/sdk/gp;

    invoke-virtual {v0, p1}, Lcom/paypal/android/sdk/gp;->a(Landroid/view/View$OnClickListener;)V

    :cond_9
    return-void
.end method

.method public final e()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/ge;->l:Lcom/paypal/android/sdk/gp;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/paypal/android/sdk/ge;->l:Lcom/paypal/android/sdk/gp;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/gp;->a()Landroid/view/View;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final f()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/ge;->m:Lcom/paypal/android/sdk/gp;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/paypal/android/sdk/ge;->m:Lcom/paypal/android/sdk/gp;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/gp;->a()Landroid/view/View;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
