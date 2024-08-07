.class final Lcom/google/android/material/sidesheet/LeftSheetDelegate;
.super Lcom/google/android/material/sidesheet/SheetDelegate;
.source "LeftSheetDelegate.java"


# instance fields
.field final sheetBehavior:Lcom/google/android/material/sidesheet/SideSheetBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/sidesheet/SideSheetBehavior<",
            "+",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/sidesheet/SideSheetBehavior<",
            "+",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Lcom/google/android/material/sidesheet/SheetDelegate;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/android/material/sidesheet/LeftSheetDelegate;->sheetBehavior:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    return-void
.end method


# virtual methods
.method calculateInnerMargin(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .locals 0

    .line 123
    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    return p1
.end method

.method calculateSlideOffset(I)F
    .locals 2

    .line 87
    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/LeftSheetDelegate;->getHiddenOffset()I

    move-result v0

    int-to-float v0, v0

    .line 88
    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/LeftSheetDelegate;->getExpandedOffset()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v0

    int-to-float p1, p1

    sub-float/2addr p1, v0

    div-float/2addr p1, v1

    return p1
.end method

.method getCoplanarSiblingAdjacentMargin(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .locals 0

    .line 113
    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    return p1
.end method

.method getExpandedOffset()I
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/google/android/material/sidesheet/LeftSheetDelegate;->sheetBehavior:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    invoke-virtual {v0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->getParentInnerEdge()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/sidesheet/LeftSheetDelegate;->sheetBehavior:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    invoke-virtual {v1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->getInnerMargin()I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method getHiddenOffset()I
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/google/android/material/sidesheet/LeftSheetDelegate;->sheetBehavior:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    invoke-virtual {v0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->getChildWidth()I

    move-result v0

    neg-int v0, v0

    iget-object v1, p0, Lcom/google/android/material/sidesheet/LeftSheetDelegate;->sheetBehavior:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    invoke-virtual {v1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->getInnerMargin()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method getMaxViewPositionHorizontal()I
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/google/android/material/sidesheet/LeftSheetDelegate;->sheetBehavior:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    invoke-virtual {v0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->getInnerMargin()I

    move-result v0

    return v0
.end method

.method getMinViewPositionHorizontal()I
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/google/android/material/sidesheet/LeftSheetDelegate;->sheetBehavior:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    invoke-virtual {v0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->getChildWidth()I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method getOuterEdge(Landroid/view/View;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(TV;)I"
        }
    .end annotation

    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/sidesheet/LeftSheetDelegate;->sheetBehavior:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    invoke-virtual {v0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->getInnerMargin()I

    move-result v0

    add-int/2addr p1, v0

    return p1
.end method

.method public getParentInnerEdge(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)I
    .locals 0

    .line 118
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getLeft()I

    move-result p1

    return p1
.end method

.method getSheetEdge()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method isExpandingOutwards(F)Z
    .locals 1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method isReleasedCloseToInnerEdge(Landroid/view/View;)Z
    .locals 2

    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/LeftSheetDelegate;->getExpandedOffset()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/LeftSheetDelegate;->getHiddenOffset()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method isSwipeSignificant(FF)Z
    .locals 0

    .line 70
    invoke-static {p1, p2}, Lcom/google/android/material/sidesheet/SheetUtils;->isSwipeMostlyHorizontal(FF)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 71
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object p2, p0, Lcom/google/android/material/sidesheet/LeftSheetDelegate;->sheetBehavior:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    invoke-virtual {p2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->getSignificantVelocityThreshold()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method shouldHide(Landroid/view/View;F)Z
    .locals 1

    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Lcom/google/android/material/sidesheet/LeftSheetDelegate;->sheetBehavior:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    invoke-virtual {v0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->getHideFriction()F

    move-result v0

    mul-float/2addr p2, v0

    add-float/2addr p1, p2

    .line 77
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object p2, p0, Lcom/google/android/material/sidesheet/LeftSheetDelegate;->sheetBehavior:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    invoke-virtual {p2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->getHideThreshold()F

    move-result p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method updateCoplanarSiblingAdjacentMargin(Landroid/view/ViewGroup$MarginLayoutParams;I)V
    .locals 0

    .line 108
    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    return-void
.end method

.method updateCoplanarSiblingLayoutParams(Landroid/view/ViewGroup$MarginLayoutParams;II)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/google/android/material/sidesheet/LeftSheetDelegate;->sheetBehavior:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    invoke-virtual {v0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->getParentWidth()I

    move-result v0

    if-gt p2, v0, :cond_0

    .line 101
    iput p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_0
    return-void
.end method
