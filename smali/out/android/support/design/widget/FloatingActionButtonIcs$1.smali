.class Landroid/support/design/widget/FloatingActionButtonIcs$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FloatingActionButtonIcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/FloatingActionButtonIcs;->hide(Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$0:Landroid/support/design/widget/FloatingActionButtonIcs;

.field final synthetic val$fromUser:Z

.field final synthetic val$listener:Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;


# direct methods
.method constructor <init>(Landroid/support/design/widget/FloatingActionButtonIcs;ZLandroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;)V
    .registers 4
    .param p1, "this$0"    # Landroid/support/design/widget/FloatingActionButtonIcs;

    .prologue
    .line 75
    iput-object p1, p0, Landroid/support/design/widget/FloatingActionButtonIcs$1;->this$0:Landroid/support/design/widget/FloatingActionButtonIcs;

    iput-boolean p2, p0, Landroid/support/design/widget/FloatingActionButtonIcs$1;->val$fromUser:Z

    iput-object p3, p0, Landroid/support/design/widget/FloatingActionButtonIcs$1;->val$listener:Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 87
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonIcs$1;->this$0:Landroid/support/design/widget/FloatingActionButtonIcs;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/design/widget/FloatingActionButtonIcs;->access$002(Landroid/support/design/widget/FloatingActionButtonIcs;Z)Z

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/FloatingActionButtonIcs$1;->mCancelled:Z

    .line 89
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 93
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonIcs$1;->this$0:Landroid/support/design/widget/FloatingActionButtonIcs;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/design/widget/FloatingActionButtonIcs;->access$002(Landroid/support/design/widget/FloatingActionButtonIcs;Z)Z

    .line 94
    iget-boolean v0, p0, Landroid/support/design/widget/FloatingActionButtonIcs$1;->mCancelled:Z

    if-nez v0, :cond_1e

    .line 95
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonIcs$1;->this$0:Landroid/support/design/widget/FloatingActionButtonIcs;

    iget-object v0, v0, Landroid/support/design/widget/FloatingActionButtonIcs;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    const/16 v1, 0x8

    iget-boolean v2, p0, Landroid/support/design/widget/FloatingActionButtonIcs$1;->val$fromUser:Z

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/VisibilityAwareImageButton;->internalSetVisibility(IZ)V

    .line 96
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonIcs$1;->val$listener:Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;

    if-eqz v0, :cond_1e

    .line 97
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonIcs$1;->val$listener:Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;

    invoke-interface {v0}, Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;->onHidden()V

    .line 100
    :cond_1e
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 80
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonIcs$1;->this$0:Landroid/support/design/widget/FloatingActionButtonIcs;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/design/widget/FloatingActionButtonIcs;->access$002(Landroid/support/design/widget/FloatingActionButtonIcs;Z)Z

    .line 81
    iput-boolean v2, p0, Landroid/support/design/widget/FloatingActionButtonIcs$1;->mCancelled:Z

    .line 82
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonIcs$1;->this$0:Landroid/support/design/widget/FloatingActionButtonIcs;

    iget-object v0, v0, Landroid/support/design/widget/FloatingActionButtonIcs;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    iget-boolean v1, p0, Landroid/support/design/widget/FloatingActionButtonIcs$1;->val$fromUser:Z

    invoke-virtual {v0, v2, v1}, Landroid/support/design/widget/VisibilityAwareImageButton;->internalSetVisibility(IZ)V

    .line 83
    return-void
.end method
