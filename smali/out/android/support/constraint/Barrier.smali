.class public Landroid/support/constraint/Barrier;
.super Landroid/support/constraint/ConstraintHelper;
.source "Barrier.java"


# static fields
.field public static final BOTTOM:I = 0x3

.field public static final END:I = 0x6

.field public static final LEFT:I = 0x0

.field public static final RIGHT:I = 0x1

.field public static final START:I = 0x5

.field public static final TOP:I = 0x2


# instance fields
.field private mBarrier:Landroid/support/constraint/solver/widgets/Barrier;

.field private mIndicatedType:I

.field private mResolvedType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintHelper;-><init>(Landroid/content/Context;)V

    .line 116
    const/16 v0, 0x8

    invoke-super {p0, v0}, Landroid/support/constraint/ConstraintHelper;->setVisibility(I)V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Landroid/support/constraint/ConstraintHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 121
    const/16 v0, 0x8

    invoke-super {p0, v0}, Landroid/support/constraint/ConstraintHelper;->setVisibility(I)V

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 125
    invoke-direct {p0, p1, p2, p3}, Landroid/support/constraint/ConstraintHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 126
    const/16 v0, 0x8

    invoke-super {p0, v0}, Landroid/support/constraint/ConstraintHelper;->setVisibility(I)V

    .line 127
    return-void
.end method


# virtual methods
.method public allowsGoneWidget()Z
    .registers 2

    .prologue
    .line 204
    iget-object v0, p0, Landroid/support/constraint/Barrier;->mBarrier:Landroid/support/constraint/solver/widgets/Barrier;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/Barrier;->allowsGoneWidget()Z

    move-result v0

    return v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 135
    iget v0, p0, Landroid/support/constraint/Barrier;->mIndicatedType:I

    return v0
.end method

.method protected init(Landroid/util/AttributeSet;)V
    .registers 8
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 181
    invoke-super {p0, p1}, Landroid/support/constraint/ConstraintHelper;->init(Landroid/util/AttributeSet;)V

    .line 182
    new-instance v4, Landroid/support/constraint/solver/widgets/Barrier;

    invoke-direct {v4}, Landroid/support/constraint/solver/widgets/Barrier;-><init>()V

    iput-object v4, p0, Landroid/support/constraint/Barrier;->mBarrier:Landroid/support/constraint/solver/widgets/Barrier;

    .line 183
    if-eqz p1, :cond_3f

    .line 184
    invoke-virtual {p0}, Landroid/support/constraint/Barrier;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout:[I

    invoke-virtual {v4, p1, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 185
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 186
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1b
    if-ge v3, v0, :cond_3f

    .line 187
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 188
    .local v2, "attr":I
    sget v4, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_barrierDirection:I

    if-ne v2, v4, :cond_30

    .line 189
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/support/constraint/Barrier;->setType(I)V

    .line 186
    :cond_2d
    :goto_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 190
    :cond_30
    sget v4, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_barrierAllowsGoneWidgets:I

    if-ne v2, v4, :cond_2d

    .line 191
    iget-object v4, p0, Landroid/support/constraint/Barrier;->mBarrier:Landroid/support/constraint/solver/widgets/Barrier;

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/support/constraint/solver/widgets/Barrier;->setAllowsGoneWidget(Z)V

    goto :goto_2d

    .line 195
    .end local v0    # "N":I
    .end local v1    # "a":Landroid/content/res/TypedArray;
    .end local v2    # "attr":I
    .end local v3    # "i":I
    :cond_3f
    iget-object v4, p0, Landroid/support/constraint/Barrier;->mBarrier:Landroid/support/constraint/solver/widgets/Barrier;

    iput-object v4, p0, Landroid/support/constraint/Barrier;->mHelperWidget:Landroid/support/constraint/solver/widgets/Helper;

    .line 196
    invoke-virtual {p0}, Landroid/support/constraint/Barrier;->validateParams()V

    .line 197
    return-void
.end method

.method public setAllowsGoneWidget(Z)V
    .registers 3
    .param p1, "supportGone"    # Z

    .prologue
    .line 200
    iget-object v0, p0, Landroid/support/constraint/Barrier;->mBarrier:Landroid/support/constraint/solver/widgets/Barrier;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/Barrier;->setAllowsGoneWidget(Z)V

    .line 201
    return-void
.end method

.method public setType(I)V
    .registers 10
    .param p1, "type"    # I

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x5

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 144
    iput p1, p0, Landroid/support/constraint/Barrier;->mIndicatedType:I

    .line 145
    iput p1, p0, Landroid/support/constraint/Barrier;->mResolvedType:I

    .line 146
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-ge v4, v5, :cond_23

    .line 149
    iget v4, p0, Landroid/support/constraint/Barrier;->mIndicatedType:I

    if-ne v4, v6, :cond_1c

    .line 150
    iput v3, p0, Landroid/support/constraint/Barrier;->mResolvedType:I

    .line 172
    :cond_14
    :goto_14
    iget-object v2, p0, Landroid/support/constraint/Barrier;->mBarrier:Landroid/support/constraint/solver/widgets/Barrier;

    iget v3, p0, Landroid/support/constraint/Barrier;->mResolvedType:I

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/Barrier;->setBarrierType(I)V

    .line 173
    return-void

    .line 151
    :cond_1c
    iget v3, p0, Landroid/support/constraint/Barrier;->mIndicatedType:I

    if-ne v3, v7, :cond_14

    .line 152
    iput v2, p0, Landroid/support/constraint/Barrier;->mResolvedType:I

    goto :goto_14

    .line 156
    :cond_23
    invoke-virtual {p0}, Landroid/support/constraint/Barrier;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 157
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    if-ne v2, v4, :cond_3b

    move v1, v2

    .line 158
    .local v1, "isRtl":Z
    :goto_32
    if-eqz v1, :cond_44

    .line 159
    iget v4, p0, Landroid/support/constraint/Barrier;->mIndicatedType:I

    if-ne v4, v6, :cond_3d

    .line 160
    iput v2, p0, Landroid/support/constraint/Barrier;->mResolvedType:I

    goto :goto_14

    .end local v1    # "isRtl":Z
    :cond_3b
    move v1, v3

    .line 157
    goto :goto_32

    .line 161
    .restart local v1    # "isRtl":Z
    :cond_3d
    iget v2, p0, Landroid/support/constraint/Barrier;->mIndicatedType:I

    if-ne v2, v7, :cond_14

    .line 162
    iput v3, p0, Landroid/support/constraint/Barrier;->mResolvedType:I

    goto :goto_14

    .line 165
    :cond_44
    iget v4, p0, Landroid/support/constraint/Barrier;->mIndicatedType:I

    if-ne v4, v6, :cond_4b

    .line 166
    iput v3, p0, Landroid/support/constraint/Barrier;->mResolvedType:I

    goto :goto_14

    .line 167
    :cond_4b
    iget v3, p0, Landroid/support/constraint/Barrier;->mIndicatedType:I

    if-ne v3, v7, :cond_14

    .line 168
    iput v2, p0, Landroid/support/constraint/Barrier;->mResolvedType:I

    goto :goto_14
.end method
