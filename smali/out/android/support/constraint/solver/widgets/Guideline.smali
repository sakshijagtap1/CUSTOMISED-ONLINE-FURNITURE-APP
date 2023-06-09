.class public Landroid/support/constraint/solver/widgets/Guideline;
.super Landroid/support/constraint/solver/widgets/ConstraintWidget;
.source "Guideline.java"


# static fields
.field public static final HORIZONTAL:I = 0x0

.field public static final RELATIVE_BEGIN:I = 0x1

.field public static final RELATIVE_END:I = 0x2

.field public static final RELATIVE_PERCENT:I = 0x0

.field public static final RELATIVE_UNKNWON:I = -0x1

.field public static final VERTICAL:I = 0x1


# instance fields
.field private mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field private mHead:Landroid/support/constraint/solver/widgets/Rectangle;

.field private mHeadSize:I

.field private mIsPositionRelaxed:Z

.field private mMinimumPosition:I

.field private mOrientation:I

.field protected mRelativeBegin:I

.field protected mRelativeEnd:I

.field protected mRelativePercent:F


# direct methods
.method public constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 50
    invoke-direct {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;-><init>()V

    .line 38
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativePercent:F

    .line 39
    iput v4, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    .line 40
    iput v4, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    .line 42
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iput-object v2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 43
    iput v3, p0, Landroid/support/constraint/solver/widgets/Guideline;->mOrientation:I

    .line 44
    iput-boolean v3, p0, Landroid/support/constraint/solver/widgets/Guideline;->mIsPositionRelaxed:Z

    .line 45
    iput v3, p0, Landroid/support/constraint/solver/widgets/Guideline;->mMinimumPosition:I

    .line 47
    new-instance v2, Landroid/support/constraint/solver/widgets/Rectangle;

    invoke-direct {v2}, Landroid/support/constraint/solver/widgets/Rectangle;-><init>()V

    iput-object v2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mHead:Landroid/support/constraint/solver/widgets/Rectangle;

    .line 48
    const/16 v2, 0x8

    iput v2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mHeadSize:I

    .line 51
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 52
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchors:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    array-length v0, v2

    .line 54
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_32
    if-ge v1, v0, :cond_3d

    .line 55
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aput-object v3, v2, v1

    .line 54
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 57
    :cond_3d
    return-void
.end method


# virtual methods
.method public addToSolver(Landroid/support/constraint/solver/LinearSystem;)V
    .registers 16
    .param p1, "system"    # Landroid/support/constraint/solver/LinearSystem;

    .prologue
    const/4 v13, 0x6

    const/4 v12, -0x1

    const/4 v11, 0x5

    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 250
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v8

    check-cast v8, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 251
    .local v8, "parent":Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    if-nez v8, :cond_e

    .line 285
    :cond_d
    :goto_d
    return-void

    .line 254
    :cond_e
    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v6

    .line 255
    .local v6, "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v7

    .line 256
    .local v7, "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v5, p0, Landroid/support/constraint/solver/widgets/Guideline;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v5, :cond_67

    iget-object v5, p0, Landroid/support/constraint/solver/widgets/Guideline;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v5, v5, v4

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v10, :cond_65

    move v9, v0

    .line 257
    .local v9, "parentWrapContent":Z
    :goto_29
    iget v5, p0, Landroid/support/constraint/solver/widgets/Guideline;->mOrientation:I

    if-nez v5, :cond_48

    .line 258
    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v6

    .line 259
    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v7

    .line 260
    iget-object v5, p0, Landroid/support/constraint/solver/widgets/Guideline;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v5, :cond_6b

    iget-object v5, p0, Landroid/support/constraint/solver/widgets/Guideline;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v5, v5, v0

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v10, :cond_69

    move v9, v0

    .line 262
    :cond_48
    :goto_48
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    if-eq v0, v12, :cond_6d

    .line 263
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v1

    .line 264
    .local v1, "guide":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual {p1, v6}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v2

    .line 265
    .local v2, "parentLeft":Landroid/support/constraint/solver/SolverVariable;
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    invoke-virtual {p1, v1, v2, v0, v13}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 266
    if-eqz v9, :cond_d

    .line 267
    invoke-virtual {p1, v7}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    invoke-virtual {p1, v0, v1, v4, v11}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_d

    .end local v1    # "guide":Landroid/support/constraint/solver/SolverVariable;
    .end local v2    # "parentLeft":Landroid/support/constraint/solver/SolverVariable;
    .end local v9    # "parentWrapContent":Z
    :cond_65
    move v9, v4

    .line 256
    goto :goto_29

    :cond_67
    move v9, v4

    goto :goto_29

    .restart local v9    # "parentWrapContent":Z
    :cond_69
    move v9, v4

    .line 260
    goto :goto_48

    :cond_6b
    move v9, v4

    goto :goto_48

    .line 269
    :cond_6d
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    if-eq v0, v12, :cond_8e

    .line 270
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v1

    .line 271
    .restart local v1    # "guide":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual {p1, v7}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v3

    .line 272
    .local v3, "parentRight":Landroid/support/constraint/solver/SolverVariable;
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    neg-int v0, v0

    invoke-virtual {p1, v1, v3, v0, v13}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 273
    if-eqz v9, :cond_d

    .line 274
    invoke-virtual {p1, v6}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    invoke-virtual {p1, v1, v0, v4, v11}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 275
    invoke-virtual {p1, v3, v1, v4, v11}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_d

    .line 277
    .end local v1    # "guide":Landroid/support/constraint/solver/SolverVariable;
    .end local v3    # "parentRight":Landroid/support/constraint/solver/SolverVariable;
    :cond_8e
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativePercent:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_d

    .line 278
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v1

    .line 279
    .restart local v1    # "guide":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual {p1, v6}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v2

    .line 280
    .restart local v2    # "parentLeft":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual {p1, v7}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v3

    .line 281
    .restart local v3    # "parentRight":Landroid/support/constraint/solver/SolverVariable;
    iget v4, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativePercent:F

    iget-boolean v5, p0, Landroid/support/constraint/solver/widgets/Guideline;->mIsPositionRelaxed:Z

    move-object v0, p1

    .line 282
    invoke-static/range {v0 .. v5}, Landroid/support/constraint/solver/LinearSystem;->createRowDimensionPercent(Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;FZ)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v0

    .line 281
    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    goto/16 :goto_d
.end method

.method public allowedInBarrier()Z
    .registers 2

    .prologue
    .line 61
    const/4 v0, 0x1

    return v0
.end method

.method public analyze(I)V
    .registers 10
    .param p1, "optimizationLevel"    # I

    .prologue
    const/high16 v7, -0x40800000    # -1.0f

    const/4 v6, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    .line 213
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    .line 214
    .local v0, "constraintWidgetContainer":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-nez v0, :cond_c

    .line 246
    :cond_b
    :goto_b
    return-void

    .line 217
    :cond_c
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getOrientation()I

    move-result v2

    if-ne v2, v5, :cond_b5

    .line 218
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v2

    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v3

    invoke-virtual {v2, v5, v3, v6}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    .line 219
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v2

    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v3

    invoke-virtual {v2, v5, v3, v6}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    .line 220
    iget v2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    if-eq v2, v4, :cond_57

    .line 221
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v2

    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v3

    iget v4, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    invoke-virtual {v2, v5, v3, v4}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    .line 222
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v2

    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v3

    iget v4, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    invoke-virtual {v2, v5, v3, v4}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto :goto_b

    .line 223
    :cond_57
    iget v2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    if-eq v2, v4, :cond_80

    .line 224
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v2

    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v3

    iget v4, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    neg-int v4, v4

    invoke-virtual {v2, v5, v3, v4}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    .line 225
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v2

    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v3

    iget v4, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    neg-int v4, v4

    invoke-virtual {v2, v5, v3, v4}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto :goto_b

    .line 226
    :cond_80
    iget v2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativePercent:F

    cmpl-float v2, v2, v7

    if-eqz v2, :cond_b

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v2

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_b

    .line 227
    iget v2, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    int-to-float v2, v2

    iget v3, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativePercent:F

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 228
    .local v1, "position":I
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v2

    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v3

    invoke-virtual {v2, v5, v3, v1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    .line 229
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v2

    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v3

    invoke-virtual {v2, v5, v3, v1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_b

    .line 232
    .end local v1    # "position":I
    :cond_b5
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v2

    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v3

    invoke-virtual {v2, v5, v3, v6}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    .line 233
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v2

    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v3

    invoke-virtual {v2, v5, v3, v6}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    .line 234
    iget v2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    if-eq v2, v4, :cond_fb

    .line 235
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v2

    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v3

    iget v4, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    invoke-virtual {v2, v5, v3, v4}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    .line 236
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v2

    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v3

    iget v4, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    invoke-virtual {v2, v5, v3, v4}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_b

    .line 237
    :cond_fb
    iget v2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    if-eq v2, v4, :cond_125

    .line 238
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v2

    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v3

    iget v4, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    neg-int v4, v4

    invoke-virtual {v2, v5, v3, v4}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    .line 239
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v2

    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v3

    iget v4, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    neg-int v4, v4

    invoke-virtual {v2, v5, v3, v4}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_b

    .line 240
    :cond_125
    iget v2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativePercent:F

    cmpl-float v2, v2, v7

    if-eqz v2, :cond_b

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v2

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_b

    .line 241
    iget v2, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    int-to-float v2, v2

    iget v3, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativePercent:F

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 242
    .restart local v1    # "position":I
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v2

    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v3

    invoke-virtual {v2, v5, v3, v1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    .line 243
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v2

    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v3

    invoke-virtual {v2, v5, v3, v1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_b
.end method

.method public cyclePosition()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 356
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    if-eq v0, v2, :cond_9

    .line 358
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->inferRelativePercentPosition()V

    .line 366
    :cond_8
    :goto_8
    return-void

    .line 359
    :cond_9
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativePercent:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_15

    .line 361
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->inferRelativeEndPosition()V

    goto :goto_8

    .line 362
    :cond_15
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    if-eq v0, v2, :cond_8

    .line 364
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->inferRelativeBeginPosition()V

    goto :goto_8
.end method

.method public getAnchor()Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-object v0
.end method

.method public getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .registers 4
    .param p1, "anchorType"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .prologue
    .line 137
    sget-object v0, Landroid/support/constraint/solver/widgets/Guideline$1;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_26

    .line 159
    :cond_b
    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 140
    :pswitch_15
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    .line 141
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 157
    :goto_1c
    return-object v0

    .line 147
    :pswitch_1d
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mOrientation:I

    if-nez v0, :cond_b

    .line 148
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    goto :goto_1c

    .line 157
    :pswitch_24
    const/4 v0, 0x0

    goto :goto_1c

    .line 137
    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_15
        :pswitch_15
        :pswitch_1d
        :pswitch_1d
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
    .end packed-switch
.end method

.method public getAnchors()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/constraint/solver/widgets/ConstraintAnchor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchors:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getHead()Landroid/support/constraint/solver/widgets/Rectangle;
    .registers 6

    .prologue
    .line 78
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mHead:Landroid/support/constraint/solver/widgets/Rectangle;

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getDrawX()I

    move-result v1

    iget v2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mHeadSize:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getDrawY()I

    move-result v2

    iget v3, p0, Landroid/support/constraint/solver/widgets/Guideline;->mHeadSize:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/support/constraint/solver/widgets/Guideline;->mHeadSize:I

    mul-int/lit8 v3, v3, 0x2

    iget v4, p0, Landroid/support/constraint/solver/widgets/Guideline;->mHeadSize:I

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/constraint/solver/widgets/Rectangle;->setBounds(IIII)V

    .line 80
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getOrientation()I

    move-result v0

    if-nez v0, :cond_40

    .line 81
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mHead:Landroid/support/constraint/solver/widgets/Rectangle;

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getDrawX()I

    move-result v1

    iget v2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mHeadSize:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 82
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getDrawY()I

    move-result v2

    iget v3, p0, Landroid/support/constraint/solver/widgets/Guideline;->mHeadSize:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/support/constraint/solver/widgets/Guideline;->mHeadSize:I

    mul-int/lit8 v3, v3, 0x2

    iget v4, p0, Landroid/support/constraint/solver/widgets/Guideline;->mHeadSize:I

    mul-int/lit8 v4, v4, 0x2

    .line 81
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/constraint/solver/widgets/Rectangle;->setBounds(IIII)V

    .line 85
    :cond_40
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mHead:Landroid/support/constraint/solver/widgets/Rectangle;

    return-object v0
.end method

.method public getOrientation()I
    .registers 2

    .prologue
    .line 121
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mOrientation:I

    return v0
.end method

.method public getRelativeBegin()I
    .registers 2

    .prologue
    .line 200
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    return v0
.end method

.method public getRelativeBehaviour()I
    .registers 4

    .prologue
    const/4 v0, -0x1

    .line 65
    iget v1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativePercent:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_b

    .line 66
    const/4 v0, 0x0

    .line 74
    :cond_a
    :goto_a
    return v0

    .line 68
    :cond_b
    iget v1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    if-eq v1, v0, :cond_11

    .line 69
    const/4 v0, 0x1

    goto :goto_a

    .line 71
    :cond_11
    iget v1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    if-eq v1, v0, :cond_a

    .line 72
    const/4 v0, 0x2

    goto :goto_a
.end method

.method public getRelativeEnd()I
    .registers 2

    .prologue
    .line 204
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    return v0
.end method

.method public getRelativePercent()F
    .registers 2

    .prologue
    .line 196
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativePercent:F

    return v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 117
    const-string v0, "Guideline"

    return-object v0
.end method

.method inferRelativeBeginPosition()V
    .registers 3

    .prologue
    .line 340
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getX()I

    move-result v0

    .line 341
    .local v0, "position":I
    iget v1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mOrientation:I

    if-nez v1, :cond_c

    .line 342
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getY()I

    move-result v0

    .line 344
    :cond_c
    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/Guideline;->setGuideBegin(I)V

    .line 345
    return-void
.end method

.method inferRelativeEndPosition()V
    .registers 4

    .prologue
    .line 348
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getX()I

    move-result v2

    sub-int v0, v1, v2

    .line 349
    .local v0, "position":I
    iget v1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mOrientation:I

    if-nez v1, :cond_20

    .line 350
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getY()I

    move-result v2

    sub-int v0, v1, v2

    .line 352
    :cond_20
    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/Guideline;->setGuideEnd(I)V

    .line 353
    return-void
.end method

.method inferRelativePercentPosition()V
    .registers 4

    .prologue
    .line 332
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 333
    .local v0, "percent":F
    iget v1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mOrientation:I

    if-nez v1, :cond_24

    .line 334
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getY()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 336
    :cond_24
    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/Guideline;->setGuidePercent(F)V

    .line 337
    return-void
.end method

.method public setDrawOrigin(II)V
    .registers 9
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/high16 v5, -0x40800000    # -1.0f

    const/4 v4, -0x1

    .line 308
    iget v2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3b

    .line 309
    iget v2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mOffsetX:I

    sub-int v1, p1, v2

    .line 310
    .local v1, "position":I
    iget v2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    if-eq v2, v4, :cond_14

    .line 311
    invoke-virtual {p0, v1}, Landroid/support/constraint/solver/widgets/Guideline;->setGuideBegin(I)V

    .line 329
    :cond_13
    :goto_13
    return-void

    .line 312
    :cond_14
    iget v2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    if-eq v2, v4, :cond_25

    .line 313
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0, v2}, Landroid/support/constraint/solver/widgets/Guideline;->setGuideEnd(I)V

    goto :goto_13

    .line 314
    :cond_25
    iget v2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativePercent:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_13

    .line 315
    int-to-float v2, v1

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 316
    .local v0, "percent":F
    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/Guideline;->setGuidePercent(F)V

    goto :goto_13

    .line 319
    .end local v0    # "percent":F
    .end local v1    # "position":I
    :cond_3b
    iget v2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mOffsetY:I

    sub-int v1, p2, v2

    .line 320
    .restart local v1    # "position":I
    iget v2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    if-eq v2, v4, :cond_47

    .line 321
    invoke-virtual {p0, v1}, Landroid/support/constraint/solver/widgets/Guideline;->setGuideBegin(I)V

    goto :goto_13

    .line 322
    :cond_47
    iget v2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    if-eq v2, v4, :cond_58

    .line 323
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0, v2}, Landroid/support/constraint/solver/widgets/Guideline;->setGuideEnd(I)V

    goto :goto_13

    .line 324
    :cond_58
    iget v2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativePercent:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_13

    .line 325
    int-to-float v2, v1

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 326
    .restart local v0    # "percent":F
    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/Guideline;->setGuidePercent(F)V

    goto :goto_13
.end method

.method public setGuideBegin(I)V
    .registers 4
    .param p1, "value"    # I

    .prologue
    const/4 v1, -0x1

    .line 180
    if-le p1, v1, :cond_b

    .line 181
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativePercent:F

    .line 182
    iput p1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    .line 183
    iput v1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    .line 185
    :cond_b
    return-void
.end method

.method public setGuideEnd(I)V
    .registers 4
    .param p1, "value"    # I

    .prologue
    const/4 v1, -0x1

    .line 188
    if-le p1, v1, :cond_b

    .line 189
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativePercent:F

    .line 190
    iput v1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    .line 191
    iput p1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    .line 193
    :cond_b
    return-void
.end method

.method public setGuidePercent(F)V
    .registers 4
    .param p1, "value"    # F

    .prologue
    const/4 v1, -0x1

    .line 172
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_d

    .line 173
    iput p1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativePercent:F

    .line 174
    iput v1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    .line 175
    iput v1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    .line 177
    :cond_d
    return-void
.end method

.method public setGuidePercent(I)V
    .registers 4
    .param p1, "value"    # I

    .prologue
    .line 168
    int-to-float v0, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/Guideline;->setGuidePercent(F)V

    .line 169
    return-void
.end method

.method public setMinimumPosition(I)V
    .registers 2
    .param p1, "minimum"    # I

    .prologue
    .line 125
    iput p1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mMinimumPosition:I

    .line 126
    return-void
.end method

.method public setOrientation(I)V
    .registers 6
    .param p1, "orientation"    # I

    .prologue
    .line 89
    iget v2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mOrientation:I

    if-ne v2, p1, :cond_5

    .line 104
    :cond_4
    return-void

    .line 92
    :cond_5
    iput p1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mOrientation:I

    .line 93
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 94
    iget v2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2b

    .line 95
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iput-object v2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 99
    :goto_15
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchors:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    array-length v0, v2

    .line 101
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_20
    if-ge v1, v0, :cond_4

    .line 102
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aput-object v3, v2, v1

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 97
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_2b
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iput-object v2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    goto :goto_15
.end method

.method public setPositionRelaxed(Z)V
    .registers 3
    .param p1, "value"    # Z

    .prologue
    .line 129
    iget-boolean v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mIsPositionRelaxed:Z

    if-ne v0, p1, :cond_5

    .line 133
    :goto_4
    return-void

    .line 132
    :cond_5
    iput-boolean p1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mIsPositionRelaxed:Z

    goto :goto_4
.end method

.method public updateFromSolver(Landroid/support/constraint/solver/LinearSystem;)V
    .registers 6
    .param p1, "system"    # Landroid/support/constraint/solver/LinearSystem;

    .prologue
    const/4 v3, 0x0

    .line 289
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v1

    if-nez v1, :cond_8

    .line 304
    :goto_7
    return-void

    .line 292
    :cond_8
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v1}, Landroid/support/constraint/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v0

    .line 293
    .local v0, "value":I
    iget v1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_28

    .line 294
    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/Guideline;->setX(I)V

    .line 295
    invoke-virtual {p0, v3}, Landroid/support/constraint/solver/widgets/Guideline;->setY(I)V

    .line 296
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/constraint/solver/widgets/Guideline;->setHeight(I)V

    .line 297
    invoke-virtual {p0, v3}, Landroid/support/constraint/solver/widgets/Guideline;->setWidth(I)V

    goto :goto_7

    .line 299
    :cond_28
    invoke-virtual {p0, v3}, Landroid/support/constraint/solver/widgets/Guideline;->setX(I)V

    .line 300
    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/Guideline;->setY(I)V

    .line 301
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/constraint/solver/widgets/Guideline;->setWidth(I)V

    .line 302
    invoke-virtual {p0, v3}, Landroid/support/constraint/solver/widgets/Guideline;->setHeight(I)V

    goto :goto_7
.end method
