.class public Lcom/zhy/view/flowlayout/FlowLayout;
.super Landroid/view/ViewGroup;
.source "FlowLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FlowLayout"


# instance fields
.field protected mAllViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mLineHeight:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zhy/view/flowlayout/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zhy/view/flowlayout/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhy/view/flowlayout/FlowLayout;->mAllViews:Ljava/util/List;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhy/view/flowlayout/FlowLayout;->mLineHeight:Ljava/util/List;

    .line 20
    return-void
.end method


# virtual methods
.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 186
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 180
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/zhy/view/flowlayout/FlowLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 192
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 23
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhy/view/flowlayout/FlowLayout;->mAllViews:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->clear()V

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhy/view/flowlayout/FlowLayout;->mLineHeight:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->clear()V

    .line 102
    invoke-virtual/range {p0 .. p0}, Lcom/zhy/view/flowlayout/FlowLayout;->getWidth()I

    move-result v19

    .line 104
    .local v19, width:I
    const/4 v14, 0x0

    .line 105
    .local v14, lineWidth:I
    const/4 v11, 0x0

    .line 107
    .local v11, lineHeight:I
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v13, lineViews:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/zhy/view/flowlayout/FlowLayout;->getChildCount()I

    move-result v3

    .line 111
    .local v3, cCount:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v3, :cond_2

    .line 113
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/zhy/view/flowlayout/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 114
    .local v4, child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v20

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 111
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 118
    .local v15, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 119
    .local v6, childWidth:I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 121
    .local v5, childHeight:I
    add-int v20, v6, v14

    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v21, v0

    add-int v20, v20, v21

    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v21, v0

    add-int v20, v20, v21

    invoke-virtual/range {p0 .. p0}, Lcom/zhy/view/flowlayout/FlowLayout;->getPaddingLeft()I

    move-result v21

    sub-int v21, v19, v21

    invoke-virtual/range {p0 .. p0}, Lcom/zhy/view/flowlayout/FlowLayout;->getPaddingRight()I

    move-result v22

    sub-int v21, v21, v22

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_1

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhy/view/flowlayout/FlowLayout;->mLineHeight:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhy/view/flowlayout/FlowLayout;->mAllViews:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    const/4 v14, 0x0

    .line 127
    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v20, v0

    add-int v20, v20, v5

    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v21, v0

    add-int v11, v20, v21

    .line 128
    new-instance v13, Ljava/util/ArrayList;

    .end local v13           #lineViews:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .restart local v13       #lineViews:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    :cond_1
    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v20, v0

    add-int v20, v20, v6

    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v21, v0

    add-int v20, v20, v21

    add-int v14, v14, v20

    .line 131
    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v20, v0

    add-int v20, v20, v5

    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move/from16 v0, v20

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 133
    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 136
    .end local v4           #child:Landroid/view/View;
    .end local v5           #childHeight:I
    .end local v6           #childWidth:I
    .end local v15           #lp:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhy/view/flowlayout/FlowLayout;->mLineHeight:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhy/view/flowlayout/FlowLayout;->mAllViews:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-virtual/range {p0 .. p0}, Lcom/zhy/view/flowlayout/FlowLayout;->getPaddingLeft()I

    move-result v10

    .line 141
    .local v10, left:I
    invoke-virtual/range {p0 .. p0}, Lcom/zhy/view/flowlayout/FlowLayout;->getPaddingTop()I

    move-result v18

    .line 143
    .local v18, top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhy/view/flowlayout/FlowLayout;->mAllViews:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v12

    .line 145
    .local v12, lineNum:I
    const/4 v7, 0x0

    :goto_2
    if-ge v7, v12, :cond_5

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhy/view/flowlayout/FlowLayout;->mAllViews:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13           #lineViews:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    check-cast v13, Ljava/util/List;

    .line 148
    .restart local v13       #lineViews:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhy/view/flowlayout/FlowLayout;->mLineHeight:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 150
    const/4 v8, 0x0

    .local v8, j:I
    :goto_3
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v8, v0, :cond_4

    .line 152
    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 153
    .restart local v4       #child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v20

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 150
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 158
    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 161
    .restart local v15       #lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v20, v0

    add-int v9, v10, v20

    .line 162
    .local v9, lc:I
    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v20, v0

    add-int v17, v18, v20

    .line 163
    .local v17, tc:I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    add-int v16, v9, v20

    .line 164
    .local v16, rc:I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    add-int v2, v17, v20

    .line 166
    .local v2, bc:I
    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v4, v9, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 168
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v21, v0

    add-int v20, v20, v21

    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v21, v0

    add-int v20, v20, v21

    add-int v10, v10, v20

    goto :goto_4

    .line 171
    .end local v2           #bc:I
    .end local v4           #child:Landroid/view/View;
    .end local v9           #lc:I
    .end local v15           #lp:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v16           #rc:I
    .end local v17           #tc:I
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/zhy/view/flowlayout/FlowLayout;->getPaddingLeft()I

    move-result v10

    .line 172
    add-int v18, v18, v11

    .line 145
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 175
    .end local v8           #j:I
    :cond_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 20
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 35
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    .line 36
    .local v15, sizeWidth:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    .line 37
    .local v13, modeWidth:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    .line 38
    .local v14, sizeHeight:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 41
    .local v12, modeHeight:I
    const/16 v16, 0x0

    .line 42
    .local v16, width:I
    const/4 v7, 0x0

    .line 44
    .local v7, height:I
    const/4 v10, 0x0

    .line 45
    .local v10, lineWidth:I
    const/4 v9, 0x0

    .line 47
    .local v9, lineHeight:I
    invoke-virtual/range {p0 .. p0}, Lcom/zhy/view/flowlayout/FlowLayout;->getChildCount()I

    move-result v3

    .line 49
    .local v3, cCount:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v3, :cond_3

    .line 51
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/zhy/view/flowlayout/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 52
    .local v4, child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 54
    add-int/lit8 v17, v3, -0x1

    move/from16 v0, v17

    if-ne v8, v0, :cond_0

    .line 56
    move/from16 v0, v16

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 57
    add-int/2addr v7, v9

    .line 49
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 61
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v4, v1, v2}, Lcom/zhy/view/flowlayout/FlowLayout;->measureChild(Landroid/view/View;II)V

    .line 62
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 65
    .local v11, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v18, v0

    add-int v17, v17, v18

    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v18, v0

    add-int v6, v17, v18

    .line 67
    .local v6, childWidth:I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v18, v0

    add-int v17, v17, v18

    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v18, v0

    add-int v5, v17, v18

    .line 70
    .local v5, childHeight:I
    add-int v17, v10, v6

    invoke-virtual/range {p0 .. p0}, Lcom/zhy/view/flowlayout/FlowLayout;->getPaddingLeft()I

    move-result v18

    sub-int v18, v15, v18

    invoke-virtual/range {p0 .. p0}, Lcom/zhy/view/flowlayout/FlowLayout;->getPaddingRight()I

    move-result v19

    sub-int v18, v18, v19

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_2

    .line 72
    move/from16 v0, v16

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 73
    move v10, v6

    .line 74
    add-int/2addr v7, v9

    .line 75
    move v9, v5

    .line 81
    :goto_2
    add-int/lit8 v17, v3, -0x1

    move/from16 v0, v17

    if-ne v8, v0, :cond_0

    .line 83
    move/from16 v0, v16

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 84
    add-int/2addr v7, v9

    goto :goto_1

    .line 78
    :cond_2
    add-int/2addr v10, v6

    .line 79
    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto :goto_2

    .line 87
    .end local v4           #child:Landroid/view/View;
    .end local v5           #childHeight:I
    .end local v6           #childWidth:I
    .end local v11           #lp:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_3
    const/high16 v17, 0x4000

    move/from16 v0, v17

    if-ne v13, v0, :cond_4

    .end local v15           #sizeWidth:I
    :goto_3
    const/high16 v17, 0x4000

    move/from16 v0, v17

    if-ne v12, v0, :cond_5

    .end local v14           #sizeHeight:I
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v14}, Lcom/zhy/view/flowlayout/FlowLayout;->setMeasuredDimension(II)V

    .line 93
    return-void

    .line 87
    .restart local v14       #sizeHeight:I
    .restart local v15       #sizeWidth:I
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/zhy/view/flowlayout/FlowLayout;->getPaddingLeft()I

    move-result v17

    add-int v17, v17, v16

    invoke-virtual/range {p0 .. p0}, Lcom/zhy/view/flowlayout/FlowLayout;->getPaddingRight()I

    move-result v18

    add-int v15, v17, v18

    goto :goto_3

    .end local v15           #sizeWidth:I
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/zhy/view/flowlayout/FlowLayout;->getPaddingTop()I

    move-result v17

    add-int v17, v17, v7

    invoke-virtual/range {p0 .. p0}, Lcom/zhy/view/flowlayout/FlowLayout;->getPaddingBottom()I

    move-result v18

    add-int v14, v17, v18

    goto :goto_4
.end method
