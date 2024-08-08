.class Lcom/google/android/material/carousel/CarouselOrientationHelper$1;
.super Lcom/google/android/material/carousel/CarouselOrientationHelper;
.source "CarouselOrientationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/carousel/CarouselOrientationHelper;->createVerticalHelper(Lcom/google/android/material/carousel/CarouselLayoutManager;)Lcom/google/android/material/carousel/CarouselOrientationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$carouselLayoutManager:Lcom/google/android/material/carousel/CarouselLayoutManager;


# direct methods
.method constructor <init>(ILcom/google/android/material/carousel/CarouselLayoutManager;)V
    .locals 0

    .line 163
    iput-object p2, p0, Lcom/google/android/material/carousel/CarouselOrientationHelper$1;->val$carouselLayoutManager:Lcom/google/android/material/carousel/CarouselLayoutManager;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/carousel/CarouselOrientationHelper;-><init>(ILcom/google/android/material/carousel/CarouselOrientationHelper$1;)V

    return-void
.end method


# virtual methods
.method public containMaskWithinBounds(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 2

    .line 228
    iget v0, p2, Landroid/graphics/RectF;->top:F

    iget v1, p3, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    iget v1, p3, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 229
    iget v0, p3, Landroid/graphics/RectF;->top:F

    iget v1, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    .line 230
    iget v1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->top:F

    .line 231
    iget v1, p3, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v0

    iput v1, p3, Landroid/graphics/RectF;->top:F

    .line 234
    :cond_0
    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    iget v1, p3, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget v0, p2, Landroid/graphics/RectF;->top:F

    iget v1, p3, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 235
    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    iget p3, p3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, p3

    .line 236
    iget p3, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p3, v0

    iget v1, p1, Landroid/graphics/RectF;->top:F

    invoke-static {p3, v1}, Ljava/lang/Math;->max(FF)F

    move-result p3

    iput p3, p1, Landroid/graphics/RectF;->bottom:F

    .line 237
    iget p1, p2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p1, v0

    iget p3, p2, Landroid/graphics/RectF;->top:F

    invoke-static {p1, p3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p2, Landroid/graphics/RectF;->bottom:F

    :cond_1
    return-void
.end method

.method getDecoratedCrossAxisMeasurement(Landroid/view/View;)I
    .locals 2

    .line 198
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 199
    iget-object v1, p0, Lcom/google/android/material/carousel/CarouselOrientationHelper$1;->val$carouselLayoutManager:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {v1, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result p1

    iget v1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr p1, v1

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method public getMaskMargins(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)F
    .locals 1

    .line 217
    iget v0, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    iget p1, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v0, p1

    int-to-float p1, v0

    return p1
.end method

.method public getMaskRect(FFFF)Landroid/graphics/RectF;
    .locals 1

    .line 223
    new-instance p4, Landroid/graphics/RectF;

    const/4 v0, 0x0

    sub-float/2addr p1, p3

    invoke-direct {p4, v0, p3, p2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p4
.end method

.method getParentBottom()I
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselOrientationHelper$1;->val$carouselLayoutManager:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getHeight()I

    move-result v0

    return v0
.end method

.method getParentEnd()I
    .locals 1

    .line 182
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselOrientationHelper$1;->getParentBottom()I

    move-result v0

    return v0
.end method

.method getParentLeft()I
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselOrientationHelper$1;->val$carouselLayoutManager:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getPaddingLeft()I

    move-result v0

    return v0
.end method

.method getParentRight()I
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselOrientationHelper$1;->val$carouselLayoutManager:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/carousel/CarouselOrientationHelper$1;->val$carouselLayoutManager:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {v1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method getParentStart()I
    .locals 1

    .line 171
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselOrientationHelper$1;->getParentTop()I

    move-result v0

    return v0
.end method

.method getParentTop()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public layoutDecoratedWithMargins(Landroid/view/View;II)V
    .locals 6

    .line 205
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselOrientationHelper$1;->getParentLeft()I

    move-result v2

    .line 206
    invoke-virtual {p0, p1}, Lcom/google/android/material/carousel/CarouselOrientationHelper$1;->getDecoratedCrossAxisMeasurement(Landroid/view/View;)I

    move-result v0

    add-int v4, v2, v0

    .line 207
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselOrientationHelper$1;->val$carouselLayoutManager:Lcom/google/android/material/carousel/CarouselLayoutManager;

    move-object v1, p1

    move v3, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/carousel/CarouselLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    return-void
.end method

.method public moveMaskOnEdgeOutsideBounds(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 4

    .line 244
    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    iget v1, p3, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    if-gtz v0, :cond_0

    .line 245
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-float v0, v2

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 248
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 250
    :cond_0
    iget p2, p2, Landroid/graphics/RectF;->top:F

    iget p3, p3, Landroid/graphics/RectF;->bottom:F

    cmpl-float p2, p2, p3

    if-ltz p2, :cond_1

    .line 251
    iget p2, p1, Landroid/graphics/RectF;->top:F

    float-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p2

    double-to-float p2, p2

    add-float/2addr p2, v1

    iput p2, p1, Landroid/graphics/RectF;->top:F

    .line 254
    iget p2, p1, Landroid/graphics/RectF;->top:F

    iget p3, p1, Landroid/graphics/RectF;->bottom:F

    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    :cond_1
    return-void
.end method

.method public offsetChild(Landroid/view/View;Landroid/graphics/Rect;FF)V
    .locals 0

    .line 260
    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    add-float/2addr p2, p3

    sub-float/2addr p4, p2

    float-to-int p2, p4

    .line 261
    invoke-virtual {p1, p2}, Landroid/view/View;->offsetTopAndBottom(I)V

    return-void
.end method
