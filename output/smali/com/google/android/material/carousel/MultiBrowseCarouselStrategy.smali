.class public final Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;
.super Lcom/google/android/material/carousel/CarouselStrategy;
.source "MultiBrowseCarouselStrategy.java"


# static fields
.field private static final MEDIUM_COUNTS:[I

.field private static final SMALL_COUNTS:[I


# instance fields
.field private keylineCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    .line 51
    filled-new-array {v0}, [I

    move-result-object v1

    sput-object v1, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->SMALL_COUNTS:[I

    const/4 v1, 0x0

    .line 52
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->MEDIUM_COUNTS:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselStrategy;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->keylineCount:I

    return-void
.end method


# virtual methods
.method ensureArrangementFitsItemCount(Lcom/google/android/material/carousel/Arrangement;I)Z
    .locals 3

    .line 161
    invoke-virtual {p1}, Lcom/google/android/material/carousel/Arrangement;->getItemCount()I

    move-result v0

    sub-int/2addr v0, p2

    const/4 p2, 0x1

    if-lez v0, :cond_1

    .line 162
    iget v1, p1, Lcom/google/android/material/carousel/Arrangement;->smallCount:I

    if-gtz v1, :cond_0

    iget v1, p1, Lcom/google/android/material/carousel/Arrangement;->mediumCount:I

    if-le v1, p2, :cond_1

    :cond_0
    move v1, p2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-lez v0, :cond_4

    .line 166
    iget v2, p1, Lcom/google/android/material/carousel/Arrangement;->smallCount:I

    if-lez v2, :cond_2

    .line 167
    iget v2, p1, Lcom/google/android/material/carousel/Arrangement;->smallCount:I

    sub-int/2addr v2, p2

    iput v2, p1, Lcom/google/android/material/carousel/Arrangement;->smallCount:I

    goto :goto_1

    .line 168
    :cond_2
    iget v2, p1, Lcom/google/android/material/carousel/Arrangement;->mediumCount:I

    if-le v2, p2, :cond_3

    .line 170
    iget v2, p1, Lcom/google/android/material/carousel/Arrangement;->mediumCount:I

    sub-int/2addr v2, p2

    iput v2, p1, Lcom/google/android/material/carousel/Arrangement;->mediumCount:I

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    return v1
.end method

.method onFirstChildMeasuredWithMargins(Lcom/google/android/material/carousel/Carousel;Landroid/view/View;)Lcom/google/android/material/carousel/KeylineState;
    .locals 17

    move-object/from16 v0, p0

    .line 61
    invoke-interface/range {p1 .. p1}, Lcom/google/android/material/carousel/Carousel;->getContainerHeight()I

    move-result v1

    int-to-float v1, v1

    .line 62
    invoke-interface/range {p1 .. p1}, Lcom/google/android/material/carousel/Carousel;->isHorizontal()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    invoke-interface/range {p1 .. p1}, Lcom/google/android/material/carousel/Carousel;->getContainerWidth()I

    move-result v1

    int-to-float v1, v1

    .line 66
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 67
    iget v3, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    iget v4, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    .line 68
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    .line 70
    invoke-interface/range {p1 .. p1}, Lcom/google/android/material/carousel/Carousel;->isHorizontal()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 71
    iget v3, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    iget v2, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v3, v2

    int-to-float v3, v3

    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v4, v2

    :cond_1
    move v11, v3

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->getSmallItemSizeMin()F

    move-result v2

    add-float v12, v2, v11

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->getSmallItemSizeMax()F

    move-result v2

    add-float/2addr v2, v11

    .line 77
    invoke-static {v2, v12}, Ljava/lang/Math;->max(FF)F

    move-result v13

    add-float v2, v4, v11

    .line 79
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v14

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v4, v2

    add-float/2addr v4, v11

    add-float v2, v12, v11

    add-float v3, v13, v11

    .line 85
    invoke-static {v4, v2, v3}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v15

    add-float v2, v14, v15

    const/high16 v3, 0x40000000    # 2.0f

    div-float v16, v2, v3

    .line 96
    sget-object v2, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->SMALL_COUNTS:[I

    mul-float/2addr v3, v12

    cmpg-float v3, v1, v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-gez v3, :cond_2

    .line 101
    new-array v2, v5, [I

    aput v4, v2, v4

    .line 104
    :cond_2
    sget-object v3, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->MEDIUM_COUNTS:[I

    .line 105
    invoke-interface/range {p1 .. p1}, Lcom/google/android/material/carousel/Carousel;->getCarouselAlignment()I

    move-result v6

    if-ne v6, v5, :cond_3

    .line 106
    invoke-static {v2}, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->doubleCounts([I)[I

    move-result-object v2

    .line 107
    invoke-static {v3}, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->doubleCounts([I)[I

    move-result-object v3

    :cond_3
    move-object v6, v2

    move-object v8, v3

    .line 114
    invoke-static {v8}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->maxValue([I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v16

    sub-float v2, v1, v2

    .line 115
    invoke-static {v6}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->maxValue([I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v13

    sub-float/2addr v2, v3

    div-float/2addr v2, v14

    float-to-double v2, v2

    .line 116
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    double-to-int v2, v2

    div-float v3, v1, v14

    float-to-double v9, v3

    .line 117
    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v3, v9

    sub-int v2, v3, v2

    add-int/2addr v2, v5

    .line 118
    new-array v10, v2, [I

    :goto_0
    if-ge v4, v2, :cond_4

    sub-int v5, v3, v4

    .line 120
    aput v5, v10, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    move v2, v1

    move v3, v15

    move v4, v12

    move v5, v13

    move/from16 v7, v16

    move v9, v14

    .line 123
    invoke-static/range {v2 .. v10}, Lcom/google/android/material/carousel/Arrangement;->findLowestCostArrangement(FFFF[IF[IF[I)Lcom/google/android/material/carousel/Arrangement;

    move-result-object v2

    .line 134
    invoke-virtual {v2}, Lcom/google/android/material/carousel/Arrangement;->getItemCount()I

    move-result v3

    iput v3, v0, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->keylineCount:I

    .line 136
    invoke-interface/range {p1 .. p1}, Lcom/google/android/material/carousel/Carousel;->getItemCount()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->ensureArrangementFitsItemCount(Lcom/google/android/material/carousel/Arrangement;I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 139
    iget v3, v2, Lcom/google/android/material/carousel/Arrangement;->smallCount:I

    filled-new-array {v3}, [I

    move-result-object v6

    iget v3, v2, Lcom/google/android/material/carousel/Arrangement;->mediumCount:I

    filled-new-array {v3}, [I

    move-result-object v8

    iget v2, v2, Lcom/google/android/material/carousel/Arrangement;->largeCount:I

    filled-new-array {v2}, [I

    move-result-object v10

    move v2, v1

    move v3, v15

    move v4, v12

    move v5, v13

    move/from16 v7, v16

    move v9, v14

    .line 140
    invoke-static/range {v2 .. v10}, Lcom/google/android/material/carousel/Arrangement;->findLowestCostArrangement(FFFF[IF[IF[I)Lcom/google/android/material/carousel/Arrangement;

    move-result-object v2

    .line 153
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 157
    invoke-interface/range {p1 .. p1}, Lcom/google/android/material/carousel/Carousel;->getCarouselAlignment()I

    move-result v4

    .line 152
    invoke-static {v3, v11, v1, v2, v4}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->createKeylineState(Landroid/content/Context;FFLcom/google/android/material/carousel/Arrangement;I)Lcom/google/android/material/carousel/KeylineState;

    move-result-object v1

    return-object v1
.end method

.method shouldRefreshKeylineState(Lcom/google/android/material/carousel/Carousel;I)Z
    .locals 2

    .line 182
    iget v0, p0, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->keylineCount:I

    if-ge p2, v0, :cond_0

    invoke-interface {p1}, Lcom/google/android/material/carousel/Carousel;->getItemCount()I

    move-result v0

    iget v1, p0, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->keylineCount:I

    if-ge v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->keylineCount:I

    if-lt p2, v0, :cond_2

    .line 183
    invoke-interface {p1}, Lcom/google/android/material/carousel/Carousel;->getItemCount()I

    move-result p1

    iget p2, p0, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->keylineCount:I

    if-ge p1, p2, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
