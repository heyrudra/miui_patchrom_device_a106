.class public Lcom/android/internal/widget/DialogViewAnimator;
.super Landroid/widget/ViewAnimator;
.source "DialogViewAnimator.java"


# instance fields
.field private final mMatchParentChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/DialogViewAnimator;->mMatchParentChildren:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/DialogViewAnimator;->mMatchParentChildren:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 23
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v2, v4, :cond_6

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    if-eq v2, v4, :cond_7

    const/16 v21, 0x1

    .local v21, "measureMatchParentChildren":Z
    :goto_0
    const/16 v19, 0x0

    .local v19, "maxHeight":I
    const/16 v20, 0x0

    .local v20, "maxWidth":I
    const/4 v9, 0x0

    .local v9, "childState":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DialogViewAnimator;->getChildCount()I

    move-result v11

    .local v11, "count":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    if-ge v13, v11, :cond_c

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/widget/DialogViewAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .local v3, "child":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DialogViewAnimator;->getMeasureAllChildren()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_5

    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/FrameLayout$LayoutParams;

    .local v15, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v2, v15, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_8

    const/16 v18, 0x1

    .local v18, "matchWidth":Z
    :goto_2
    iget v2, v15, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_9

    const/16 v17, 0x1

    .local v17, "matchHeight":Z
    :goto_3
    if-eqz v21, :cond_2

    if-nez v18, :cond_1

    if-eqz v17, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/DialogViewAnimator;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/widget/DialogViewAnimator;->measureChildWithMargins(Landroid/view/View;IIII)V

    const/16 v22, 0x0

    .local v22, "state":I
    if-eqz v21, :cond_3

    if-eqz v18, :cond_a

    :cond_3
    :goto_4
    if-eqz v21, :cond_4

    if-eqz v17, :cond_b

    :cond_4
    :goto_5
    move/from16 v0, v22

    invoke-static {v9, v0}, Lcom/android/internal/widget/DialogViewAnimator;->combineMeasuredStates(II)I

    move-result v9

    .end local v15    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v17    # "matchHeight":Z
    .end local v18    # "matchWidth":Z
    .end local v22    # "state":I
    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .end local v3    # "child":Landroid/view/View;
    .end local v9    # "childState":I
    .end local v11    # "count":I
    .end local v13    # "i":I
    .end local v19    # "maxHeight":I
    .end local v20    # "maxWidth":I
    .end local v21    # "measureMatchParentChildren":Z
    :cond_6
    const/16 v21, 0x1

    .restart local v21    # "measureMatchParentChildren":Z
    goto :goto_0

    .end local v21    # "measureMatchParentChildren":Z
    :cond_7
    const/16 v21, 0x0

    .restart local v21    # "measureMatchParentChildren":Z
    goto :goto_0

    .restart local v3    # "child":Landroid/view/View;
    .restart local v9    # "childState":I
    .restart local v11    # "count":I
    .restart local v13    # "i":I
    .restart local v15    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v19    # "maxHeight":I
    .restart local v20    # "maxWidth":I
    :cond_8
    const/16 v18, 0x0

    .restart local v18    # "matchWidth":Z
    goto :goto_2

    :cond_9
    const/16 v17, 0x0

    .restart local v17    # "matchHeight":Z
    goto :goto_3

    .restart local v22    # "state":I
    :cond_a
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v4, v15, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v4

    iget v4, v15, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v4

    move/from16 v0, v20

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v20

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result v2

    const/high16 v4, -0x1000000

    and-int/2addr v2, v4

    or-int/lit8 v22, v2, 0x0

    goto :goto_4

    :cond_b
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget v4, v15, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v4

    iget v4, v15, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v4

    move/from16 v0, v19

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v19

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeightAndState()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, -0x100

    or-int v22, v22, v2

    goto :goto_5

    .end local v3    # "child":Landroid/view/View;
    .end local v15    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v17    # "matchHeight":Z
    .end local v18    # "matchWidth":Z
    .end local v22    # "state":I
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingRight()I

    move-result v4

    add-int/2addr v2, v4

    add-int v20, v20, v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingTop()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingBottom()I

    move-result v4

    add-int/2addr v2, v4

    add-int v19, v19, v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DialogViewAnimator;->getSuggestedMinimumHeight()I

    move-result v2

    move/from16 v0, v19

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DialogViewAnimator;->getSuggestedMinimumWidth()I

    move-result v2

    move/from16 v0, v20

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DialogViewAnimator;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .local v12, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v12, :cond_d

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    move/from16 v0, v19

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v19

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    move/from16 v0, v20

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v20

    :cond_d
    move/from16 v0, v20

    move/from16 v1, p1

    invoke-static {v0, v1, v9}, Lcom/android/internal/widget/DialogViewAnimator;->resolveSizeAndState(III)I

    move-result v2

    shl-int/lit8 v4, v9, 0x10

    move/from16 v0, v19

    move/from16 v1, p2

    invoke-static {v0, v1, v4}, Lcom/android/internal/widget/DialogViewAnimator;->resolveSizeAndState(III)I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/android/internal/widget/DialogViewAnimator;->setMeasuredDimension(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/DialogViewAnimator;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v16

    .local v16, "matchCount":I
    const/4 v13, 0x0

    :goto_6
    move/from16 v0, v16

    if-ge v13, v0, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/DialogViewAnimator;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .restart local v3    # "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    .local v14, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v2, v14, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DialogViewAnimator;->getMeasuredWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingRight()I

    move-result v4

    sub-int/2addr v2, v4

    iget v4, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v2, v4

    iget v4, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .local v10, "childWidthMeasureSpec":I
    :goto_7
    iget v2, v14, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DialogViewAnimator;->getMeasuredHeight()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingTop()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v2, v4

    iget v4, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v2, v4

    iget v4, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .local v8, "childHeightMeasureSpec":I
    :goto_8
    invoke-virtual {v3, v10, v8}, Landroid/view/View;->measure(II)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .end local v8    # "childHeightMeasureSpec":I
    .end local v10    # "childWidthMeasureSpec":I
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingRight()I

    move-result v4

    add-int/2addr v2, v4

    iget v4, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v4

    iget v4, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v4

    iget v4, v14, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    move/from16 v0, p1

    invoke-static {v0, v2, v4}, Lcom/android/internal/widget/DialogViewAnimator;->getChildMeasureSpec(III)I

    move-result v10

    .restart local v10    # "childWidthMeasureSpec":I
    goto :goto_7

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingTop()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingBottom()I

    move-result v4

    add-int/2addr v2, v4

    iget v4, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v4

    iget v4, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v4

    iget v4, v14, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    move/from16 v0, p2

    invoke-static {v0, v2, v4}, Lcom/android/internal/widget/DialogViewAnimator;->getChildMeasureSpec(III)I

    move-result v8

    .restart local v8    # "childHeightMeasureSpec":I
    goto :goto_8

    .end local v3    # "child":Landroid/view/View;
    .end local v8    # "childHeightMeasureSpec":I
    .end local v10    # "childWidthMeasureSpec":I
    .end local v14    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/DialogViewAnimator;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
