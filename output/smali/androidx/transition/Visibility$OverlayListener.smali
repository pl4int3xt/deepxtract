.class Landroidx/transition/Visibility$OverlayListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Visibility.java"

# interfaces
.implements Landroidx/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/Visibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverlayListener"
.end annotation


# instance fields
.field private mHasOverlay:Z

.field private final mOverlayHost:Landroid/view/ViewGroup;

.field private final mOverlayView:Landroid/view/View;

.field private final mStartView:Landroid/view/View;

.field final synthetic this$0:Landroidx/transition/Visibility;


# direct methods
.method constructor <init>(Landroidx/transition/Visibility;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 617
    iput-object p1, p0, Landroidx/transition/Visibility$OverlayListener;->this$0:Landroidx/transition/Visibility;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x1

    .line 615
    iput-boolean p1, p0, Landroidx/transition/Visibility$OverlayListener;->mHasOverlay:Z

    .line 618
    iput-object p2, p0, Landroidx/transition/Visibility$OverlayListener;->mOverlayHost:Landroid/view/ViewGroup;

    .line 619
    iput-object p3, p0, Landroidx/transition/Visibility$OverlayListener;->mOverlayView:Landroid/view/View;

    .line 620
    iput-object p4, p0, Landroidx/transition/Visibility$OverlayListener;->mStartView:Landroid/view/View;

    return-void
.end method

.method private removeFromOverlay()V
    .locals 3

    .line 683
    iget-object v0, p0, Landroidx/transition/Visibility$OverlayListener;->mStartView:Landroid/view/View;

    sget v1, Landroidx/transition/R$id;->save_overlay_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 684
    iget-object v0, p0, Landroidx/transition/Visibility$OverlayListener;->mOverlayHost:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    iget-object v1, p0, Landroidx/transition/Visibility$OverlayListener;->mOverlayView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 685
    iput-boolean v0, p0, Landroidx/transition/Visibility$OverlayListener;->mHasOverlay:Z

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 648
    invoke-direct {p0}, Landroidx/transition/Visibility$OverlayListener;->removeFromOverlay()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;Z)V
    .locals 0

    if-nez p2, :cond_0

    .line 654
    invoke-direct {p0}, Landroidx/transition/Visibility$OverlayListener;->removeFromOverlay()V

    :cond_0
    return-void
.end method

.method public onAnimationPause(Landroid/animation/Animator;)V
    .locals 1

    .line 625
    iget-object p1, p0, Landroidx/transition/Visibility$OverlayListener;->mOverlayHost:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p1

    iget-object v0, p0, Landroidx/transition/Visibility$OverlayListener;->mOverlayView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationResume(Landroid/animation/Animator;)V
    .locals 1

    .line 630
    iget-object p1, p0, Landroidx/transition/Visibility$OverlayListener;->mOverlayView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_0

    .line 631
    iget-object p1, p0, Landroidx/transition/Visibility$OverlayListener;->mOverlayHost:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p1

    iget-object v0, p0, Landroidx/transition/Visibility$OverlayListener;->mOverlayView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    goto :goto_0

    .line 633
    :cond_0
    iget-object p1, p0, Landroidx/transition/Visibility$OverlayListener;->this$0:Landroidx/transition/Visibility;

    invoke-virtual {p1}, Landroidx/transition/Visibility;->cancel()V

    :goto_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 640
    iget-object p1, p0, Landroidx/transition/Visibility$OverlayListener;->mStartView:Landroid/view/View;

    sget p2, Landroidx/transition/R$id;->save_overlay_view:I

    iget-object v0, p0, Landroidx/transition/Visibility$OverlayListener;->mOverlayView:Landroid/view/View;

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 641
    iget-object p1, p0, Landroidx/transition/Visibility$OverlayListener;->mOverlayHost:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p1

    iget-object p2, p0, Landroidx/transition/Visibility$OverlayListener;->mOverlayView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    const/4 p1, 0x1

    .line 642
    iput-boolean p1, p0, Landroidx/transition/Visibility$OverlayListener;->mHasOverlay:Z

    :cond_0
    return-void
.end method

.method public onTransitionCancel(Landroidx/transition/Transition;)V
    .locals 0

    .line 677
    iget-boolean p1, p0, Landroidx/transition/Visibility$OverlayListener;->mHasOverlay:Z

    if-eqz p1, :cond_0

    .line 678
    invoke-direct {p0}, Landroidx/transition/Visibility$OverlayListener;->removeFromOverlay()V

    :cond_0
    return-void
.end method

.method public onTransitionEnd(Landroidx/transition/Transition;)V
    .locals 0

    .line 660
    invoke-virtual {p1, p0}, Landroidx/transition/Transition;->removeListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    return-void
.end method

.method public onTransitionPause(Landroidx/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionResume(Landroidx/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionStart(Landroidx/transition/Transition;)V
    .locals 0

    return-void
.end method
