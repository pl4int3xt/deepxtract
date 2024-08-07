.class public abstract Lcom/google/android/material/carousel/CarouselStrategy;
.super Ljava/lang/Object;
.source "CarouselStrategy.java"


# instance fields
.field private smallSizeMax:F

.field private smallSizeMin:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static doubleCounts([I)[I
    .locals 4

    .line 125
    array-length v0, p0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 127
    aget v3, p0, v2

    mul-int/lit8 v3, v3, 0x2

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method static getChildMaskPercentage(FFF)F
    .locals 0

    sub-float/2addr p0, p2

    sub-float/2addr p1, p2

    div-float/2addr p0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, p0

    return p1
.end method


# virtual methods
.method public getSmallItemSizeMax()F
    .locals 1

    .line 193
    iget v0, p0, Lcom/google/android/material/carousel/CarouselStrategy;->smallSizeMax:F

    return v0
.end method

.method public getSmallItemSizeMin()F
    .locals 1

    .line 185
    iget v0, p0, Lcom/google/android/material/carousel/CarouselStrategy;->smallSizeMin:F

    return v0
.end method

.method initialize(Landroid/content/Context;)V
    .locals 3

    .line 36
    iget v0, p0, Lcom/google/android/material/carousel/CarouselStrategy;->smallSizeMin:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->getSmallSizeMin(Landroid/content/Context;)F

    move-result v0

    :goto_0
    iput v0, p0, Lcom/google/android/material/carousel/CarouselStrategy;->smallSizeMin:F

    .line 38
    iget v0, p0, Lcom/google/android/material/carousel/CarouselStrategy;->smallSizeMax:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->getSmallSizeMax(Landroid/content/Context;)F

    move-result v0

    :goto_1
    iput v0, p0, Lcom/google/android/material/carousel/CarouselStrategy;->smallSizeMax:F

    return-void
.end method

.method isContained()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method abstract onFirstChildMeasuredWithMargins(Lcom/google/android/material/carousel/Carousel;Landroid/view/View;)Lcom/google/android/material/carousel/KeylineState;
.end method

.method public setSmallItemSizeMax(F)V
    .locals 0

    .line 178
    iput p1, p0, Lcom/google/android/material/carousel/CarouselStrategy;->smallSizeMax:F

    return-void
.end method

.method public setSmallItemSizeMin(F)V
    .locals 0

    .line 165
    iput p1, p0, Lcom/google/android/material/carousel/CarouselStrategy;->smallSizeMin:F

    return-void
.end method

.method shouldRefreshKeylineState(Lcom/google/android/material/carousel/Carousel;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
