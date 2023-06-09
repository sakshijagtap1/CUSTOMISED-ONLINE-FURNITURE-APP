.class public Landroid/support/constraint/solver/widgets/Analyzer;
.super Ljava/lang/Object;
.source "Analyzer.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static determineGroups(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;)V
    .registers 14
    .param p0, "layoutWidget"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 45
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getOptimizationLevel()I

    move-result v11

    and-int/lit8 v11, v11, 0x20

    const/16 v12, 0x20

    if-eq v11, v12, :cond_10

    .line 46
    invoke-static {p0}, Landroid/support/constraint/solver/widgets/Analyzer;->singleGroup(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;)V

    .line 100
    :goto_f
    return-void

    .line 49
    :cond_10
    iput-boolean v9, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mSkipSolver:Z

    .line 50
    iput-boolean v10, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mGroupsWrapOptimized:Z

    .line 51
    iput-boolean v10, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalWrapOptimized:Z

    .line 52
    iput-boolean v10, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalWrapOptimized:Z

    .line 53
    iget-object v8, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 54
    .local v8, "widgets":Ljava/util/List;, "Ljava/util/List<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    iget-object v7, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWidgetGroups:Ljava/util/List;

    .line 55
    .local v7, "widgetGroups":Ljava/util/List;, "Ljava/util/List<Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;>;"
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v11

    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v11, v12, :cond_4f

    move v2, v9

    .line 56
    .local v2, "horizontalWrapContent":Z
    :goto_25
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v11

    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v11, v12, :cond_51

    move v5, v9

    .line 57
    .local v5, "verticalWrapContent":Z
    :goto_2e
    if-nez v2, :cond_32

    if-eqz v5, :cond_53

    :cond_32
    move v1, v9

    .line 58
    .local v1, "hasWrapContent":Z
    :goto_33
    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 60
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_55

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 61
    .local v6, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const/4 v12, 0x0

    iput-object v12, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;

    .line 62
    iput-boolean v10, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mGroupsToSolver:Z

    .line 63
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->resetResolutionNodes()V

    goto :goto_3a

    .end local v1    # "hasWrapContent":Z
    .end local v2    # "horizontalWrapContent":Z
    .end local v5    # "verticalWrapContent":Z
    .end local v6    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_4f
    move v2, v10

    .line 55
    goto :goto_25

    .restart local v2    # "horizontalWrapContent":Z
    :cond_51
    move v5, v10

    .line 56
    goto :goto_2e

    .restart local v5    # "verticalWrapContent":Z
    :cond_53
    move v1, v10

    .line 57
    goto :goto_33

    .line 65
    .restart local v1    # "hasWrapContent":Z
    :cond_55
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_59
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_75

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 66
    .restart local v6    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v12, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;

    if-nez v12, :cond_59

    .line 67
    invoke-static {v6, v7, v1}, Landroid/support/constraint/solver/widgets/Analyzer;->determineGroups(Landroid/support/constraint/solver/widgets/ConstraintWidget;Ljava/util/List;Z)Z

    move-result v12

    if-nez v12, :cond_59

    .line 68
    invoke-static {p0}, Landroid/support/constraint/solver/widgets/Analyzer;->singleGroup(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;)V

    .line 69
    iput-boolean v10, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mSkipSolver:Z

    goto :goto_f

    .line 74
    .end local v6    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_75
    const/4 v4, 0x0

    .line 75
    .local v4, "measuredWidth":I
    const/4 v3, 0x0

    .line 77
    .local v3, "measuredHeight":I
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_7b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_98

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;

    .line 79
    .local v0, "group":Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;
    invoke-static {v0, v10}, Landroid/support/constraint/solver/widgets/Analyzer;->getMaxDimension(Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;I)I

    move-result v12

    .line 78
    invoke-static {v4, v12}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 81
    invoke-static {v0, v9}, Landroid/support/constraint/solver/widgets/Analyzer;->getMaxDimension(Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;I)I

    move-result v12

    .line 80
    invoke-static {v3, v12}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 82
    goto :goto_7b

    .line 84
    .end local v0    # "group":Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;
    :cond_98
    if-eqz v2, :cond_a8

    .line 85
    sget-object v11, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p0, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 86
    invoke-virtual {p0, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 87
    iput-boolean v9, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mGroupsWrapOptimized:Z

    .line 88
    iput-boolean v9, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalWrapOptimized:Z

    .line 89
    iput v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWrapFixedWidth:I

    .line 91
    :cond_a8
    if-eqz v5, :cond_b8

    .line 92
    sget-object v11, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p0, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 93
    invoke-virtual {p0, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 94
    iput-boolean v9, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mGroupsWrapOptimized:Z

    .line 95
    iput-boolean v9, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalWrapOptimized:Z

    .line 96
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWrapFixedHeight:I

    .line 98
    :cond_b8
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v11

    invoke-static {v7, v10, v11}, Landroid/support/constraint/solver/widgets/Analyzer;->setPosition(Ljava/util/List;II)V

    .line 99
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/support/constraint/solver/widgets/Analyzer;->setPosition(Ljava/util/List;II)V

    goto/16 :goto_f
.end method

.method private static determineGroups(Landroid/support/constraint/solver/widgets/ConstraintWidget;Ljava/util/List;Z)Z
    .registers 6
    .param p0, "widget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .param p2, "hasWrapContent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            "Ljava/util/List",
            "<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, "widgetGroups":Ljava/util/List;, "Ljava/util/List<Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;>;"
    new-instance v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;-><init>(Ljava/util/List;Z)V

    .line 111
    .local v0, "traverseList":Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-static {p0, v0, p1, p2}, Landroid/support/constraint/solver/widgets/Analyzer;->traverse(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;Ljava/util/List;Z)Z

    move-result v1

    return v1
.end method

.method private static getMaxDimension(Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;I)I
    .registers 12
    .param p0, "group"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;
    .param p1, "orientation"    # I

    .prologue
    const/4 v7, 0x0

    .line 274
    const/4 v0, 0x0

    .line 275
    .local v0, "dimension":I
    mul-int/lit8 v2, p1, 0x2

    .line 276
    .local v2, "offset":I
    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->getStartWidgets(I)Ljava/util/List;

    move-result-object v4

    .line 277
    .local v4, "startWidgets":Ljava/util/List;, "Ljava/util/List<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 278
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v3, :cond_3f

    .line 279
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 280
    .local v6, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v8, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v9, v2, 0x1

    aget-object v8, v8, v9

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_31

    iget-object v8, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v8, v8, v2

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_3d

    iget-object v8, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v9, v2, 0x1

    aget-object v8, v8, v9

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_3d

    :cond_31
    const/4 v5, 0x1

    .line 283
    .local v5, "topLeftFlow":Z
    :goto_32
    invoke-static {v6, p1, v5, v7}, Landroid/support/constraint/solver/widgets/Analyzer;->getMaxDimensionTraversal(Landroid/support/constraint/solver/widgets/ConstraintWidget;IZI)I

    move-result v8

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 278
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .end local v5    # "topLeftFlow":Z
    :cond_3d
    move v5, v7

    .line 280
    goto :goto_32

    .line 286
    .end local v6    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_3f
    iget-object v7, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mGroupDimensions:[I

    aput v0, v7, p1

    .line 287
    return v0
.end method

.method private static getMaxDimensionTraversal(Landroid/support/constraint/solver/widgets/ConstraintWidget;IZI)I
    .registers 30
    .param p0, "widget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .param p1, "orientation"    # I
    .param p2, "topLeftFlow"    # Z
    .param p3, "depth"    # I

    .prologue
    .line 304
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOptimizerMeasurable:Z

    move/from16 v23, v0

    if-nez v23, :cond_a

    .line 305
    const/4 v8, 0x0

    .line 413
    :cond_9
    :goto_9
    return v8

    .line 309
    :cond_a
    const/4 v8, 0x0

    .line 310
    .local v8, "dimension":I
    const/4 v11, 0x0

    .line 311
    .local v11, "dimensionPre":I
    const/4 v10, 0x0

    .line 316
    .local v10, "dimensionPost":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v23, v0

    if-eqz v23, :cond_c3

    const/16 v23, 0x1

    move/from16 v0, p1

    move/from16 v1, v23

    if-ne v0, v1, :cond_c3

    const/16 v17, 0x1

    .line 318
    .local v17, "hasBaseline":Z
    :goto_25
    if-eqz p2, :cond_c7

    .line 319
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v7

    .line 320
    .local v7, "baselinePreDistance":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v23

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v24

    sub-int v6, v23, v24

    .line 321
    .local v6, "baselinePostDistance":I
    mul-int/lit8 v21, p1, 0x2

    .line 322
    .local v21, "startOffset":I
    add-int/lit8 v15, v21, 0x1

    .line 332
    .local v15, "endOffset":I
    :goto_39
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v23, v0

    aget-object v23, v23, v15

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v23, v0

    if-eqz v23, :cond_db

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v23, v0

    aget-object v23, v23, v21

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v23, v0

    if-nez v23, :cond_db

    .line 333
    const/16 v16, -0x1

    .line 334
    .local v16, "flow":I
    move/from16 v5, v21

    .line 335
    .local v5, "aux":I
    move/from16 v21, v15

    .line 336
    move v15, v5

    .line 341
    .end local v5    # "aux":I
    :goto_60
    if-eqz v17, :cond_64

    .line 342
    sub-int p3, p3, v7

    .line 345
    :cond_64
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v23, v0

    aget-object v23, v23, v21

    invoke-virtual/range {v23 .. v23}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v23

    mul-int v23, v23, v16

    invoke-static/range {p0 .. p1}, Landroid/support/constraint/solver/widgets/Analyzer;->getParentBiasOffset(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)I

    move-result v24

    add-int v8, v23, v24

    .line 346
    add-int v13, v8, p3

    .line 347
    .local v13, "downDepth":I
    if-nez p1, :cond_de

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v23

    :goto_80
    mul-int v20, v23, v16

    .line 348
    .local v20, "postTemp":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v23, v0

    aget-object v23, v23, v21

    invoke-virtual/range {v23 .. v23}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependents:Ljava/util/HashSet;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_98
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_e3

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/support/constraint/solver/widgets/ResolutionNode;

    .local v22, "targetNode":Landroid/support/constraint/solver/widgets/ResolutionNode;
    move-object/from16 v4, v22

    .line 349
    check-cast v4, Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    .line 350
    .local v4, "anchor":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    iget-object v0, v4, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->myAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v1, v2, v13}, Landroid/support/constraint/solver/widgets/Analyzer;->getMaxDimensionTraversal(Landroid/support/constraint/solver/widgets/ConstraintWidget;IZI)I

    move-result v24

    move/from16 v0, v24

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 351
    goto :goto_98

    .line 316
    .end local v4    # "anchor":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .end local v6    # "baselinePostDistance":I
    .end local v7    # "baselinePreDistance":I
    .end local v13    # "downDepth":I
    .end local v15    # "endOffset":I
    .end local v16    # "flow":I
    .end local v17    # "hasBaseline":Z
    .end local v20    # "postTemp":I
    .end local v21    # "startOffset":I
    .end local v22    # "targetNode":Landroid/support/constraint/solver/widgets/ResolutionNode;
    :cond_c3
    const/16 v17, 0x0

    goto/16 :goto_25

    .line 324
    .restart local v17    # "hasBaseline":Z
    :cond_c7
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v23

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v24

    sub-int v7, v23, v24

    .line 325
    .restart local v7    # "baselinePreDistance":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v6

    .line 326
    .restart local v6    # "baselinePostDistance":I
    mul-int/lit8 v15, p1, 0x2

    .line 327
    .restart local v15    # "endOffset":I
    add-int/lit8 v21, v15, 0x1

    .restart local v21    # "startOffset":I
    goto/16 :goto_39

    .line 338
    :cond_db
    const/16 v16, 0x1

    .restart local v16    # "flow":I
    goto :goto_60

    .line 347
    .restart local v13    # "downDepth":I
    :cond_de
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v23

    goto :goto_80

    .line 352
    .restart local v20    # "postTemp":I
    :cond_e3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v23, v0

    aget-object v23, v23, v15

    invoke-virtual/range {v23 .. v23}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependents:Ljava/util/HashSet;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_f9
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_128

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/support/constraint/solver/widgets/ResolutionNode;

    .restart local v22    # "targetNode":Landroid/support/constraint/solver/widgets/ResolutionNode;
    move-object/from16 v4, v22

    .line 353
    check-cast v4, Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    .line 354
    .restart local v4    # "anchor":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    iget-object v0, v4, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->myAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v24, v0

    add-int v25, v20, v13

    move-object/from16 v0, v24

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Landroid/support/constraint/solver/widgets/Analyzer;->getMaxDimensionTraversal(Landroid/support/constraint/solver/widgets/ConstraintWidget;IZI)I

    move-result v24

    move/from16 v0, v24

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 355
    goto :goto_f9

    .line 356
    .end local v4    # "anchor":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .end local v22    # "targetNode":Landroid/support/constraint/solver/widgets/ResolutionNode;
    :cond_128
    if-eqz v17, :cond_180

    .line 357
    sub-int/2addr v11, v7

    .line 358
    add-int/2addr v10, v6

    .line 364
    :goto_12c
    const/4 v9, 0x0

    .line 365
    .local v9, "dimensionBaseline":I
    const/16 v23, 0x1

    move/from16 v0, p1

    move/from16 v1, v23

    if-ne v0, v1, :cond_1d2

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependents:Ljava/util/HashSet;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_149
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_1b1

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/support/constraint/solver/widgets/ResolutionNode;

    .restart local v22    # "targetNode":Landroid/support/constraint/solver/widgets/ResolutionNode;
    move-object/from16 v4, v22

    .line 367
    check-cast v4, Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    .line 368
    .restart local v4    # "anchor":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    const/16 v24, 0x1

    move/from16 v0, v16

    move/from16 v1, v24

    if-ne v0, v1, :cond_190

    .line 369
    iget-object v0, v4, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->myAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v24, v0

    add-int v25, v7, v13

    move-object/from16 v0, v24

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Landroid/support/constraint/solver/widgets/Analyzer;->getMaxDimensionTraversal(Landroid/support/constraint/solver/widgets/ConstraintWidget;IZI)I

    move-result v24

    move/from16 v0, v24

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto :goto_149

    .line 360
    .end local v4    # "anchor":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .end local v9    # "dimensionBaseline":I
    .end local v22    # "targetNode":Landroid/support/constraint/solver/widgets/ResolutionNode;
    :cond_180
    if-nez p1, :cond_18b

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v23

    :goto_186
    mul-int v23, v23, v16

    add-int v10, v10, v23

    goto :goto_12c

    :cond_18b
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v23

    goto :goto_186

    .line 371
    .restart local v4    # "anchor":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .restart local v9    # "dimensionBaseline":I
    .restart local v22    # "targetNode":Landroid/support/constraint/solver/widgets/ResolutionNode;
    :cond_190
    iget-object v0, v4, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->myAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v24, v0

    mul-int v25, v6, v16

    add-int v25, v25, v13

    move-object/from16 v0, v24

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Landroid/support/constraint/solver/widgets/Analyzer;->getMaxDimensionTraversal(Landroid/support/constraint/solver/widgets/ConstraintWidget;IZI)I

    move-result v24

    move/from16 v0, v24

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto :goto_149

    .line 374
    .end local v4    # "anchor":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .end local v22    # "targetNode":Landroid/support/constraint/solver/widgets/ResolutionNode;
    :cond_1b1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependents:Ljava/util/HashSet;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashSet;->size()I

    move-result v23

    if-lez v23, :cond_1d2

    if-nez v17, :cond_1d2

    .line 375
    const/16 v23, 0x1

    move/from16 v0, v16

    move/from16 v1, v23

    if-ne v0, v1, :cond_294

    .line 376
    add-int/2addr v9, v7

    .line 383
    :cond_1d2
    :goto_1d2
    move v12, v8

    .line 384
    .local v12, "distanceBeforeWidget":I
    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v23

    move/from16 v0, v23

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v23

    add-int v8, v8, v23

    .line 385
    add-int v18, p3, v12

    .line 386
    .local v18, "leftTop":I
    add-int v14, v18, v20

    .line 387
    .local v14, "end":I
    const/16 v23, -0x1

    move/from16 v0, v16

    move/from16 v1, v23

    if-ne v0, v1, :cond_1f0

    .line 388
    move v5, v14

    .line 389
    .restart local v5    # "aux":I
    move/from16 v14, v18

    .line 390
    move/from16 v18, v5

    .line 392
    .end local v5    # "aux":I
    :cond_1f0
    if-eqz p2, :cond_297

    .line 393
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/support/constraint/solver/widgets/Optimizer;->setOptimizedWidget(Landroid/support/constraint/solver/widgets/ConstraintWidget;II)V

    .line 394
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    invoke-virtual {v0, v1, v14, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setFrame(III)V

    .line 400
    :goto_204
    invoke-virtual/range {p0 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v23

    sget-object v24, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_22b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    move/from16 v23, v0

    const/16 v24, 0x0

    cmpl-float v23, v23, v24

    if-eqz v23, :cond_22b

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->addWidgetsToSet(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)V

    .line 405
    :cond_22b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v23, v0

    aget-object v23, v23, v21

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v23, v0

    if-eqz v23, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v23, v0

    aget-object v23, v23, v15

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v23, v0

    if-eqz v23, :cond_9

    .line 407
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v19

    .line 408
    .local v19, "parent":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v23, v0

    aget-object v23, v23, v21

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v23, v0

    aget-object v23, v23, v15

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->addWidgetsToSet(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)V

    goto/16 :goto_9

    .line 378
    .end local v12    # "distanceBeforeWidget":I
    .end local v14    # "end":I
    .end local v18    # "leftTop":I
    .end local v19    # "parent":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_294
    sub-int/2addr v9, v6

    goto/16 :goto_1d2

    .line 396
    .restart local v12    # "distanceBeforeWidget":I
    .restart local v14    # "end":I
    .restart local v18    # "leftTop":I
    :cond_297
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->addWidgetsToSet(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)V

    .line 397
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setRelativePositioning(II)V

    goto/16 :goto_204
.end method

.method private static getParentBiasOffset(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)I
    .registers 10
    .param p0, "widget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .param p1, "orientation"    # I

    .prologue
    .line 505
    mul-int/lit8 v3, p1, 0x2

    .line 506
    .local v3, "offset":I
    iget-object v6, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v4, v6, v3

    .line 507
    .local v4, "startAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v6, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v7, v3, 0x1

    aget-object v1, v6, v7

    .line 508
    .local v1, "endAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v6, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_49

    iget-object v6, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v7, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-ne v6, v7, :cond_49

    iget-object v6, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_49

    iget-object v6, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v7, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-ne v6, v7, :cond_49

    .line 510
    const/4 v2, 0x0

    .line 511
    .local v2, "length":I
    const/4 v5, 0x0

    .line 512
    .local v5, "widgetDimension":I
    const/4 v0, 0x0

    .line 513
    .local v0, "bias":F
    iget-object v6, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v6, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getLength(I)I

    move-result v2

    .line 514
    if-nez p1, :cond_46

    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 516
    :goto_31
    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getLength(I)I

    move-result v5

    .line 517
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v6

    sub-int v6, v2, v6

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    sub-int v2, v6, v7

    .line 518
    sub-int/2addr v2, v5

    .line 519
    int-to-float v6, v2

    mul-float/2addr v6, v0

    float-to-int v2, v6

    .line 522
    .end local v0    # "bias":F
    .end local v2    # "length":I
    .end local v5    # "widgetDimension":I
    :goto_45
    return v2

    .line 514
    .restart local v0    # "bias":F
    .restart local v2    # "length":I
    .restart local v5    # "widgetDimension":I
    :cond_46
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    goto :goto_31

    .line 522
    .end local v0    # "bias":F
    .end local v2    # "length":I
    .end local v5    # "widgetDimension":I
    :cond_49
    const/4 v2, 0x0

    goto :goto_45
.end method

.method private static invalidate(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;)V
    .registers 4
    .param p0, "layoutWidget"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .param p1, "widget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .param p2, "group"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;

    .prologue
    const/4 v0, 0x0

    .line 260
    iput-boolean v0, p2, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mSkipSolver:Z

    .line 261
    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mSkipSolver:Z

    .line 262
    iput-boolean v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOptimizerMeasurable:Z

    .line 263
    return-void
.end method

.method private static resolveDimensionRatio(Landroid/support/constraint/solver/widgets/ConstraintWidget;)I
    .registers 4
    .param p0, "widget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .prologue
    .line 532
    const/4 v0, -0x1

    .line 533
    .local v0, "length":I
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v2, :cond_24

    .line 534
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    if-nez v1, :cond_1a

    .line 535
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 539
    :goto_16
    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 548
    :cond_19
    :goto_19
    return v0

    .line 537
    :cond_1a
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    div-float/2addr v1, v2

    float-to-int v0, v1

    goto :goto_16

    .line 540
    :cond_24
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v2, :cond_19

    .line 541
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3e

    .line 542
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 546
    :goto_3a
    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    goto :goto_19

    .line 544
    :cond_3e
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    div-float/2addr v1, v2

    float-to-int v0, v1

    goto :goto_3a
.end method

.method private static setConnection(Landroid/support/constraint/solver/widgets/ConstraintAnchor;)V
    .registers 3
    .param p0, "originAnchor"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .prologue
    .line 417
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v0

    .line 418
    .local v0, "originNode":Landroid/support/constraint/solver/widgets/ResolutionNode;
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_17

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eq v1, p0, :cond_17

    .line 420
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    .line 422
    :cond_17
    return-void
.end method

.method public static setPosition(Ljava/util/List;II)V
    .registers 9
    .param p1, "orientation"    # I
    .param p2, "containerLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 444
    .local p0, "groups":Ljava/util/List;, "Ljava/util/List<Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 445
    .local v1, "groupsSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v1, :cond_2c

    .line 446
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;

    .line 447
    .local v0, "group":Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;
    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->getWidgetsToSet(I)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_15
    :goto_15
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_29

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 449
    .local v3, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-boolean v5, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOptimizerMeasurable:Z

    if-eqz v5, :cond_15

    .line 450
    invoke-static {v3, p1, p2}, Landroid/support/constraint/solver/widgets/Analyzer;->updateSizeDependentWidgets(Landroid/support/constraint/solver/widgets/ConstraintWidget;II)V

    goto :goto_15

    .line 445
    .end local v3    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 454
    .end local v0    # "group":Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;
    :cond_2c
    return-void
.end method

.method private static singleGroup(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;)V
    .registers 5
    .param p0, "layoutWidget"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .prologue
    .line 431
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWidgetGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 432
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWidgetGroups:Ljava/util/List;

    const/4 v1, 0x0

    new-instance v2, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 433
    return-void
.end method

.method private static traverse(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;Ljava/util/List;Z)Z
    .registers 15
    .param p0, "widget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .param p1, "upperGroup"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;
    .param p3, "hasWrapContent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            "Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;",
            "Ljava/util/List",
            "<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 128
    .local p2, "widgetGroups":Ljava/util/List;, "Ljava/util/List<Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;>;"
    if-nez p0, :cond_4

    .line 129
    const/4 v8, 0x1

    .line 256
    :goto_3
    return v8

    .line 131
    :cond_4
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOptimizerMeasured:Z

    .line 132
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 133
    .local v5, "layoutWidget":Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    iget-object v8, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;

    if-nez v8, :cond_1de

    .line 135
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOptimizerMeasurable:Z

    .line 136
    iget-object v8, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mConstrainedGroup:Ljava/util/List;

    invoke-interface {v8, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;

    .line 139
    iget-object v8, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v8, :cond_46

    iget-object v8, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v8, :cond_46

    iget-object v8, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v8, :cond_46

    iget-object v8, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v8, :cond_46

    iget-object v8, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v8, :cond_46

    iget-object v8, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenter:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v8, :cond_46

    .line 145
    invoke-static {v5, p0, p1}, Landroid/support/constraint/solver/widgets/Analyzer;->invalidate(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;)V

    .line 146
    if-eqz p3, :cond_46

    .line 147
    const/4 v8, 0x0

    goto :goto_3

    .line 151
    :cond_46
    iget-object v8, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_7f

    iget-object v8, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_7f

    .line 153
    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v8

    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v9, :cond_62

    const/4 v7, 0x1

    .line 154
    .local v7, "wrap":Z
    :goto_5b
    if-eqz p3, :cond_64

    .line 155
    invoke-static {v5, p0, p1}, Landroid/support/constraint/solver/widgets/Analyzer;->invalidate(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;)V

    .line 156
    const/4 v8, 0x0

    goto :goto_3

    .line 153
    .end local v7    # "wrap":Z
    :cond_62
    const/4 v7, 0x0

    goto :goto_5b

    .line 157
    .restart local v7    # "wrap":Z
    :cond_64
    iget-object v8, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v9

    if-ne v8, v9, :cond_7c

    iget-object v8, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 158
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v9

    if-eq v8, v9, :cond_7f

    .line 159
    :cond_7c
    invoke-static {v5, p0, p1}, Landroid/support/constraint/solver/widgets/Analyzer;->invalidate(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;)V

    .line 163
    .end local v7    # "wrap":Z
    :cond_7f
    iget-object v8, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_b9

    iget-object v8, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_b9

    .line 165
    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v8

    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v9, :cond_9c

    const/4 v7, 0x1

    .line 166
    .restart local v7    # "wrap":Z
    :goto_94
    if-eqz p3, :cond_9e

    .line 167
    invoke-static {v5, p0, p1}, Landroid/support/constraint/solver/widgets/Analyzer;->invalidate(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;)V

    .line 168
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 165
    .end local v7    # "wrap":Z
    :cond_9c
    const/4 v7, 0x0

    goto :goto_94

    .line 169
    .restart local v7    # "wrap":Z
    :cond_9e
    iget-object v8, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v9

    if-ne v8, v9, :cond_b6

    iget-object v8, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 170
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v9

    if-eq v8, v9, :cond_b9

    .line 171
    :cond_b6
    invoke-static {v5, p0, p1}, Landroid/support/constraint/solver/widgets/Analyzer;->invalidate(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;)V

    .line 174
    .end local v7    # "wrap":Z
    :cond_b9
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v8

    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v9, :cond_1c0

    const/4 v8, 0x1

    .line 175
    :goto_c2
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v9

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v9, v10, :cond_1c3

    const/4 v9, 0x1

    :goto_cb
    xor-int/2addr v8, v9

    if-eqz v8, :cond_1c6

    iget v8, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_1c6

    .line 178
    invoke-static {p0}, Landroid/support/constraint/solver/widgets/Analyzer;->resolveDimensionRatio(Landroid/support/constraint/solver/widgets/ConstraintWidget;)I

    .line 187
    :cond_d8
    iget-object v8, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v8, :cond_e4

    iget-object v8, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_130

    :cond_e4
    iget-object v8, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_fa

    iget-object v8, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v9, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-ne v8, v9, :cond_fa

    iget-object v8, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_130

    :cond_fa
    iget-object v8, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_110

    iget-object v8, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v9, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-ne v8, v9, :cond_110

    iget-object v8, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_130

    :cond_110
    iget-object v8, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_143

    iget-object v8, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v9, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-ne v8, v9, :cond_143

    iget-object v8, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_143

    iget-object v8, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v9, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-ne v8, v9, :cond_143

    :cond_130
    iget-object v8, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenter:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v8, :cond_143

    .line 193
    instance-of v8, p0, Landroid/support/constraint/solver/widgets/Guideline;

    if-nez v8, :cond_143

    instance-of v8, p0, Landroid/support/constraint/solver/widgets/Helper;

    if-nez v8, :cond_143

    .line 194
    iget-object v8, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mStartHorizontalWidgets:Ljava/util/List;

    invoke-interface {v8, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    :cond_143
    iget-object v8, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v8, :cond_14f

    iget-object v8, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_19b

    :cond_14f
    iget-object v8, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_165

    iget-object v8, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v9, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-ne v8, v9, :cond_165

    iget-object v8, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_19b

    :cond_165
    iget-object v8, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_17b

    iget-object v8, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v9, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-ne v8, v9, :cond_17b

    iget-object v8, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_19b

    :cond_17b
    iget-object v8, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_1b4

    iget-object v8, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v9, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-ne v8, v9, :cond_1b4

    iget-object v8, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_1b4

    iget-object v8, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v9, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-ne v8, v9, :cond_1b4

    :cond_19b
    iget-object v8, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenter:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v8, :cond_1b4

    iget-object v8, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v8, :cond_1b4

    .line 205
    instance-of v8, p0, Landroid/support/constraint/solver/widgets/Guideline;

    if-nez v8, :cond_1b4

    instance-of v8, p0, Landroid/support/constraint/solver/widgets/Helper;

    if-nez v8, :cond_1b4

    .line 206
    iget-object v8, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mStartVerticalWidgets:Ljava/util/List;

    invoke-interface {v8, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    :cond_1b4
    instance-of v8, p0, Landroid/support/constraint/solver/widgets/Helper;

    if-eqz v8, :cond_23d

    .line 227
    invoke-static {v5, p0, p1}, Landroid/support/constraint/solver/widgets/Analyzer;->invalidate(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;)V

    .line 228
    if-eqz p3, :cond_225

    .line 229
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 174
    :cond_1c0
    const/4 v8, 0x0

    goto/16 :goto_c2

    .line 175
    :cond_1c3
    const/4 v9, 0x0

    goto/16 :goto_cb

    .line 179
    :cond_1c6
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v8

    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v8, v9, :cond_1d6

    .line 180
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v8

    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v9, :cond_d8

    .line 181
    :cond_1d6
    invoke-static {v5, p0, p1}, Landroid/support/constraint/solver/widgets/Analyzer;->invalidate(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;)V

    .line 182
    if-eqz p3, :cond_d8

    .line 183
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 211
    :cond_1de
    iget-object v8, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;

    if-eq v8, p1, :cond_222

    .line 212
    iget-object v8, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mConstrainedGroup:Ljava/util/List;

    iget-object v9, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mConstrainedGroup:Ljava/util/List;

    invoke-interface {v8, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 213
    iget-object v8, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mStartHorizontalWidgets:Ljava/util/List;

    iget-object v9, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mStartHorizontalWidgets:Ljava/util/List;

    invoke-interface {v8, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 214
    iget-object v8, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mStartVerticalWidgets:Ljava/util/List;

    iget-object v9, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mStartVerticalWidgets:Ljava/util/List;

    invoke-interface {v8, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 215
    iget-object v8, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;

    iget-boolean v8, v8, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mSkipSolver:Z

    if-nez v8, :cond_206

    .line 216
    const/4 v8, 0x0

    iput-boolean v8, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mSkipSolver:Z

    .line 218
    :cond_206
    iget-object v8, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;

    invoke-interface {p2, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 219
    iget-object v8, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;->mConstrainedGroup:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_213
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_222

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 220
    .local v2, "auxWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iput-object p1, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;

    goto :goto_213

    .line 223
    .end local v2    # "auxWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_222
    const/4 v8, 0x1

    goto/16 :goto_3

    :cond_225
    move-object v3, p0

    .line 231
    check-cast v3, Landroid/support/constraint/solver/widgets/Helper;

    .line 232
    .local v3, "hWidget":Landroid/support/constraint/solver/widgets/Helper;
    const/4 v6, 0x0

    .local v6, "widgetsCount":I
    :goto_229
    iget v8, v3, Landroid/support/constraint/solver/widgets/Helper;->mWidgetsCount:I

    if-ge v6, v8, :cond_23d

    .line 233
    iget-object v8, v3, Landroid/support/constraint/solver/widgets/Helper;->mWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v8, v8, v6

    invoke-static {v8, p1, p2, p3}, Landroid/support/constraint/solver/widgets/Analyzer;->traverse(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;Ljava/util/List;Z)Z

    move-result v8

    if-nez v8, :cond_23a

    .line 234
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 232
    :cond_23a
    add-int/lit8 v6, v6, 0x1

    goto :goto_229

    .line 239
    .end local v3    # "hWidget":Landroid/support/constraint/solver/widgets/Helper;
    .end local v6    # "widgetsCount":I
    :cond_23d
    iget-object v8, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    array-length v1, v8

    .line 240
    .local v1, "anchorsSize":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_241
    if-ge v4, v1, :cond_276

    .line 241
    iget-object v8, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v0, v8, v4

    .line 242
    .local v0, "anchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v8, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_273

    iget-object v8, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v9

    if-eq v8, v9, :cond_273

    .line 243
    iget-object v8, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v8, v9, :cond_263

    .line 244
    invoke-static {v5, p0, p1}, Landroid/support/constraint/solver/widgets/Analyzer;->invalidate(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;)V

    .line 245
    if-eqz p3, :cond_266

    .line 246
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 249
    :cond_263
    invoke-static {v0}, Landroid/support/constraint/solver/widgets/Analyzer;->setConnection(Landroid/support/constraint/solver/widgets/ConstraintAnchor;)V

    .line 251
    :cond_266
    iget-object v8, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-static {v8, p1, p2, p3}, Landroid/support/constraint/solver/widgets/Analyzer;->traverse(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidgetGroup;Ljava/util/List;Z)Z

    move-result v8

    if-nez v8, :cond_273

    .line 252
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 240
    :cond_273
    add-int/lit8 v4, v4, 0x1

    goto :goto_241

    .line 256
    .end local v0    # "anchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_276
    const/4 v8, 0x1

    goto/16 :goto_3
.end method

.method private static updateSizeDependentWidgets(Landroid/support/constraint/solver/widgets/ConstraintWidget;II)V
    .registers 13
    .param p0, "widget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .param p1, "orientation"    # I
    .param p2, "containerLength"    # I

    .prologue
    const/4 v7, 0x1

    .line 467
    mul-int/lit8 v4, p1, 0x2

    .line 468
    .local v4, "offset":I
    iget-object v8, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v6, v8, v4

    .line 469
    .local v6, "startAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v8, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v9, v4, 0x1

    aget-object v1, v8, v9

    .line 470
    .local v1, "endAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v8, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_26

    iget-object v8, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_26

    move v2, v7

    .line 471
    .local v2, "hasBias":Z
    :goto_16
    if-eqz v2, :cond_28

    .line 472
    invoke-static {p0, p1}, Landroid/support/constraint/solver/widgets/Analyzer;->getParentBiasOffset(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)I

    move-result v7

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v8

    add-int v5, v7, v8

    .line 473
    .local v5, "start":I
    invoke-static {p0, p1, v5}, Landroid/support/constraint/solver/widgets/Optimizer;->setOptimizedWidget(Landroid/support/constraint/solver/widgets/ConstraintWidget;II)V

    .line 495
    :goto_25
    return-void

    .line 470
    .end local v2    # "hasBias":Z
    .end local v5    # "start":I
    :cond_26
    const/4 v2, 0x0

    goto :goto_16

    .line 481
    .restart local v2    # "hasBias":Z
    :cond_28
    iget v8, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_63

    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v8

    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v9, :cond_63

    .line 482
    invoke-static {p0}, Landroid/support/constraint/solver/widgets/Analyzer;->resolveDimensionRatio(Landroid/support/constraint/solver/widgets/ConstraintWidget;)I

    move-result v3

    .line 483
    .local v3, "length":I
    iget-object v8, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v8, v8, v4

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v8

    iget v8, v8, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    float-to-int v5, v8

    .line 484
    .restart local v5    # "start":I
    add-int v0, v5, v3

    .line 485
    .local v0, "end":I
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v8

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v9

    iput-object v9, v8, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    .line 486
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v8

    int-to-float v9, v3

    iput v9, v8, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 487
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v8

    iput v7, v8, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->state:I

    .line 488
    invoke-virtual {p0, v5, v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setFrame(III)V

    goto :goto_25

    .line 491
    .end local v0    # "end":I
    .end local v3    # "length":I
    .end local v5    # "start":I
    :cond_63
    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getRelativePositioning(I)I

    move-result v7

    sub-int v0, p2, v7

    .line 492
    .restart local v0    # "end":I
    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getLength(I)I

    move-result v7

    sub-int v5, v0, v7

    .line 493
    .restart local v5    # "start":I
    invoke-virtual {p0, v5, v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setFrame(III)V

    .line 494
    invoke-static {p0, p1, v5}, Landroid/support/constraint/solver/widgets/Optimizer;->setOptimizedWidget(Landroid/support/constraint/solver/widgets/ConstraintWidget;II)V

    goto :goto_25
.end method
