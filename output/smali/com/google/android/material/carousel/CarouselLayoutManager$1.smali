.class Lcom/google/android/material/carousel/CarouselLayoutManager$1;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "CarouselLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/carousel/CarouselLayoutManager;->smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/carousel/CarouselLayoutManager;


# direct methods
.method constructor <init>(Lcom/google/android/material/carousel/CarouselLayoutManager;Landroid/content/Context;)V
    .locals 0

    .line 1248
    iput-object p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager$1;->this$0:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public calculateDxToMakeVisible(Landroid/view/View;I)I
    .locals 0

    .line 1257
    iget-object p2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager$1;->this$0:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-static {p2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->access$000(Lcom/google/android/material/carousel/CarouselLayoutManager;)Lcom/google/android/material/carousel/KeylineStateList;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager$1;->this$0:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {p2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isHorizontal()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 1262
    :cond_0
    iget-object p2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager$1;->this$0:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {p2, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->calculateScrollDeltaToMakePositionVisible(I)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public calculateDyToMakeVisible(Landroid/view/View;I)I
    .locals 0

    .line 1267
    iget-object p2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager$1;->this$0:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-static {p2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->access$000(Lcom/google/android/material/carousel/CarouselLayoutManager;)Lcom/google/android/material/carousel/KeylineStateList;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager$1;->this$0:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {p2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isHorizontal()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 1272
    :cond_0
    iget-object p2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager$1;->this$0:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {p2, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->calculateScrollDeltaToMakePositionVisible(I)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 1

    .line 1252
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager$1;->this$0:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {v0, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method
