.class Landroidx/transition/ChangeBounds$ClipListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChangeBounds.java"

# interfaces
.implements Landroidx/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/ChangeBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClipListener"
.end annotation


# instance fields
.field private final mEndBottom:I

.field private final mEndClip:Landroid/graphics/Rect;

.field private final mEndClipIsNull:Z

.field private final mEndLeft:I

.field private final mEndRight:I

.field private final mEndTop:I

.field private mIsCanceled:Z

.field private final mStartBottom:I

.field private final mStartClip:Landroid/graphics/Rect;

.field private final mStartClipIsNull:Z

.field private final mStartLeft:I

.field private final mStartRight:I

.field private final mStartTop:I

.field private final mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/graphics/Rect;ZLandroid/graphics/Rect;ZIIIIIIII)V
    .locals 0

    .line 420
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 421
    iput-object p1, p0, Landroidx/transition/ChangeBounds$ClipListener;->mView:Landroid/view/View;

    .line 422
    iput-object p2, p0, Landroidx/transition/ChangeBounds$ClipListener;->mStartClip:Landroid/graphics/Rect;

    .line 423
    iput-boolean p3, p0, Landroidx/transition/ChangeBounds$ClipListener;->mStartClipIsNull:Z

    .line 424
    iput-object p4, p0, Landroidx/transition/ChangeBounds$ClipListener;->mEndClip:Landroid/graphics/Rect;

    .line 425
    iput-boolean p5, p0, Landroidx/transition/ChangeBounds$ClipListener;->mEndClipIsNull:Z

    .line 426
    iput p6, p0, Landroidx/transition/ChangeBounds$ClipListener;->mStartLeft:I

    .line 427
    iput p7, p0, Landroidx/transition/ChangeBounds$ClipListener;->mStartTop:I

    .line 428
    iput p8, p0, Landroidx/transition/ChangeBounds$ClipListener;->mStartRight:I

    .line 429
    iput p9, p0, Landroidx/transition/ChangeBounds$ClipListener;->mStartBottom:I

    .line 430
    iput p10, p0, Landroidx/transition/ChangeBounds$ClipListener;->mEndLeft:I

    .line 431
    iput p11, p0, Landroidx/transition/ChangeBounds$ClipListener;->mEndTop:I

    .line 432
    iput p12, p0, Landroidx/transition/ChangeBounds$ClipListener;->mEndRight:I

    .line 433
    iput p13, p0, Landroidx/transition/ChangeBounds$ClipListener;->mEndBottom:I

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x0

    .line 443
    invoke-virtual {p0, p1, v0}, Landroidx/transition/ChangeBounds$ClipListener;->onAnimationEnd(Landroid/animation/Animator;Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;Z)V
    .locals 3

    .line 461
    iget-boolean p1, p0, Landroidx/transition/ChangeBounds$ClipListener;->mIsCanceled:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    if-eqz p2, :cond_2

    .line 465
    iget-boolean v0, p0, Landroidx/transition/ChangeBounds$ClipListener;->mStartClipIsNull:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/transition/ChangeBounds$ClipListener;->mStartClip:Landroid/graphics/Rect;

    goto :goto_0

    .line 466
    :cond_2
    iget-boolean v0, p0, Landroidx/transition/ChangeBounds$ClipListener;->mEndClipIsNull:Z

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object p1, p0, Landroidx/transition/ChangeBounds$ClipListener;->mEndClip:Landroid/graphics/Rect;

    .line 467
    :goto_0
    iget-object v0, p0, Landroidx/transition/ChangeBounds$ClipListener;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    if-eqz p2, :cond_4

    .line 469
    iget-object p1, p0, Landroidx/transition/ChangeBounds$ClipListener;->mView:Landroid/view/View;

    iget p2, p0, Landroidx/transition/ChangeBounds$ClipListener;->mStartLeft:I

    iget v0, p0, Landroidx/transition/ChangeBounds$ClipListener;->mStartTop:I

    iget v1, p0, Landroidx/transition/ChangeBounds$ClipListener;->mStartRight:I

    iget v2, p0, Landroidx/transition/ChangeBounds$ClipListener;->mStartBottom:I

    invoke-static {p1, p2, v0, v1, v2}, Landroidx/transition/ViewUtils;->setLeftTopRightBottom(Landroid/view/View;IIII)V

    goto :goto_1

    .line 472
    :cond_4
    iget-object p1, p0, Landroidx/transition/ChangeBounds$ClipListener;->mView:Landroid/view/View;

    iget p2, p0, Landroidx/transition/ChangeBounds$ClipListener;->mEndLeft:I

    iget v0, p0, Landroidx/transition/ChangeBounds$ClipListener;->mEndTop:I

    iget v1, p0, Landroidx/transition/ChangeBounds$ClipListener;->mEndRight:I

    iget v2, p0, Landroidx/transition/ChangeBounds$ClipListener;->mEndBottom:I

    invoke-static {p1, p2, v0, v1, v2}, Landroidx/transition/ViewUtils;->setLeftTopRightBottom(Landroid/view/View;IIII)V

    :goto_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x0

    .line 438
    invoke-virtual {p0, p1, v0}, Landroidx/transition/ChangeBounds$ClipListener;->onAnimationStart(Landroid/animation/Animator;Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;Z)V
    .locals 4

    .line 448
    iget p1, p0, Landroidx/transition/ChangeBounds$ClipListener;->mStartRight:I

    iget v0, p0, Landroidx/transition/ChangeBounds$ClipListener;->mStartLeft:I

    sub-int/2addr p1, v0

    iget v0, p0, Landroidx/transition/ChangeBounds$ClipListener;->mEndRight:I

    iget v1, p0, Landroidx/transition/ChangeBounds$ClipListener;->mEndLeft:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 449
    iget v0, p0, Landroidx/transition/ChangeBounds$ClipListener;->mStartBottom:I

    iget v1, p0, Landroidx/transition/ChangeBounds$ClipListener;->mStartTop:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/transition/ChangeBounds$ClipListener;->mEndBottom:I

    iget v2, p0, Landroidx/transition/ChangeBounds$ClipListener;->mEndTop:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz p2, :cond_0

    .line 451
    iget v1, p0, Landroidx/transition/ChangeBounds$ClipListener;->mEndLeft:I

    goto :goto_0

    :cond_0
    iget v1, p0, Landroidx/transition/ChangeBounds$ClipListener;->mStartLeft:I

    :goto_0
    if-eqz p2, :cond_1

    .line 452
    iget v2, p0, Landroidx/transition/ChangeBounds$ClipListener;->mEndTop:I

    goto :goto_1

    :cond_1
    iget v2, p0, Landroidx/transition/ChangeBounds$ClipListener;->mStartTop:I

    .line 453
    :goto_1
    iget-object v3, p0, Landroidx/transition/ChangeBounds$ClipListener;->mView:Landroid/view/View;

    add-int/2addr p1, v1

    add-int/2addr v0, v2

    invoke-static {v3, v1, v2, p1, v0}, Landroidx/transition/ViewUtils;->setLeftTopRightBottom(Landroid/view/View;IIII)V

    if-eqz p2, :cond_2

    .line 455
    iget-object p1, p0, Landroidx/transition/ChangeBounds$ClipListener;->mEndClip:Landroid/graphics/Rect;

    goto :goto_2

    :cond_2
    iget-object p1, p0, Landroidx/transition/ChangeBounds$ClipListener;->mStartClip:Landroid/graphics/Rect;

    .line 456
    :goto_2
    iget-object p2, p0, Landroidx/transition/ChangeBounds$ClipListener;->mView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onTransitionCancel(Landroidx/transition/Transition;)V
    .locals 0

    const/4 p1, 0x1

    .line 478
    iput-boolean p1, p0, Landroidx/transition/ChangeBounds$ClipListener;->mIsCanceled:Z

    return-void
.end method

.method public onTransitionEnd(Landroidx/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionPause(Landroidx/transition/Transition;)V
    .locals 2

    .line 483
    iget-object p1, p0, Landroidx/transition/ChangeBounds$ClipListener;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 484
    iget-object v0, p0, Landroidx/transition/ChangeBounds$ClipListener;->mView:Landroid/view/View;

    sget v1, Landroidx/transition/R$id;->transition_clip:I

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 485
    iget-boolean p1, p0, Landroidx/transition/ChangeBounds$ClipListener;->mEndClipIsNull:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/transition/ChangeBounds$ClipListener;->mEndClip:Landroid/graphics/Rect;

    .line 486
    :goto_0
    iget-object v0, p0, Landroidx/transition/ChangeBounds$ClipListener;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onTransitionResume(Landroidx/transition/Transition;)V
    .locals 3

    .line 491
    iget-object p1, p0, Landroidx/transition/ChangeBounds$ClipListener;->mView:Landroid/view/View;

    sget v0, Landroidx/transition/R$id;->transition_clip:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    .line 492
    iget-object v0, p0, Landroidx/transition/ChangeBounds$ClipListener;->mView:Landroid/view/View;

    sget v1, Landroidx/transition/R$id;->transition_clip:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 493
    iget-object v0, p0, Landroidx/transition/ChangeBounds$ClipListener;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onTransitionStart(Landroidx/transition/Transition;)V
    .locals 0

    return-void
.end method
