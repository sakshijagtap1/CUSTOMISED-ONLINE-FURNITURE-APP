.class Landroid/support/design/widget/TabLayout$AdapterChangeListener;
.super Ljava/lang/Object;
.source "TabLayout.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterChangeListener"
.end annotation


# instance fields
.field private mAutoRefresh:Z

.field final synthetic this$0:Landroid/support/design/widget/TabLayout;


# direct methods
.method private constructor <init>(Landroid/support/design/widget/TabLayout;)V
    .registers 2

    .prologue
    .line 2182
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$AdapterChangeListener;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/design/widget/TabLayout;Landroid/support/design/widget/TabLayout$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/support/design/widget/TabLayout;
    .param p2, "x1"    # Landroid/support/design/widget/TabLayout$1;

    .prologue
    .line 2182
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout$AdapterChangeListener;-><init>(Landroid/support/design/widget/TabLayout;)V

    return-void
.end method


# virtual methods
.method public onAdapterChanged(Landroid/support/v4/view/ViewPager;Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V
    .registers 6
    .param p1, "viewPager"    # Landroid/support/v4/view/ViewPager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "oldAdapter"    # Landroid/support/v4/view/PagerAdapter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "newAdapter"    # Landroid/support/v4/view/PagerAdapter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2188
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$AdapterChangeListener;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v0}, Landroid/support/design/widget/TabLayout;->access$3000(Landroid/support/design/widget/TabLayout;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    if-ne v0, p1, :cond_f

    .line 2189
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$AdapterChangeListener;->this$0:Landroid/support/design/widget/TabLayout;

    iget-boolean v1, p0, Landroid/support/design/widget/TabLayout$AdapterChangeListener;->mAutoRefresh:Z

    invoke-static {v0, p3, v1}, Landroid/support/design/widget/TabLayout;->access$3100(Landroid/support/design/widget/TabLayout;Landroid/support/v4/view/PagerAdapter;Z)V

    .line 2191
    :cond_f
    return-void
.end method

.method setAutoRefresh(Z)V
    .registers 2
    .param p1, "autoRefresh"    # Z

    .prologue
    .line 2194
    iput-boolean p1, p0, Landroid/support/design/widget/TabLayout$AdapterChangeListener;->mAutoRefresh:Z

    .line 2195
    return-void
.end method
