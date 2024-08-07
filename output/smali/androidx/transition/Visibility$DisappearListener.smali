.class Landroidx/transition/Visibility$DisappearListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Visibility.java"

# interfaces
.implements Landroidx/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/Visibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DisappearListener"
.end annotation


# instance fields
.field mCanceled:Z

.field private final mFinalVisibility:I

.field private mLayoutSuppressed:Z

.field private final mParent:Landroid/view/ViewGroup;

.field private final mSuppressLayout:Z

.field private final mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;IZ)V
    .locals 1

    .line 517
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 v0, 0x0

    .line 515
    iput-boolean v0, p0, Landroidx/transition/Visibility$DisappearListener;->mCanceled:Z

    .line 518
    iput-object p1, p0, Landroidx/transition/Visibility$DisappearListener;->mView:Landroid/view/View;

    .line 519
    iput p2, p0, Landroidx/transition/Visibility$DisappearListener;->mFinalVisibility:I

    .line 520
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Landroidx/transition/Visibility$DisappearListener;->mParent:Landroid/view/ViewGroup;

    .line 521
    iput-boolean p3, p0, Landroidx/transition/Visibility$DisappearListener;->mSuppressLayout:Z

    const/4 p1, 0x1

    .line 523
    invoke-direct {p0, p1}, Landroidx/transition/Visibility$DisappearListener;->suppressLayout(Z)V

    return-void
.end method

.method private hideViewWhenNotCanceled()V
    .locals 2

    .line 592
    iget-boolean v0, p0, Landroidx/transition/Visibility$DisappearListener;->mCanceled:Z

    if-nez v0, :cond_0

    .line 594
    iget-object v0, p0, Landroidx/transition/Visibility$DisappearListener;->mView:Landroid/view/View;

    iget v1, p0, Landroidx/transition/Visibility$DisappearListener;->mFinalVisibility:I

    invoke-static {v0, v1}, Landroidx/transition/ViewUtils;->setTransitionVisibility(Landroid/view/View;I)V

    .line 595
    iget-object v0, p0, Landroidx/transition/Visibility$DisappearListener;->mParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 596
    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_0
    const/4 v0, 0x0

    .line 600
    invoke-direct {p0, v0}, Landroidx/transition/Visibility$DisappearListener;->suppressLayout(Z)V

    return-void
.end method

.method private suppressLayout(Z)V
    .locals 1

    .line 604
    iget-boolean v0, p0, Landroidx/transition/Visibility$DisappearListener;->mSuppressLayout:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/transition/Visibility$DisappearListener;->mLayoutSuppressed:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroidx/transition/Visibility$DisappearListener;->mParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 605
    iput-boolean p1, p0, Landroidx/transition/Visibility$DisappearListener;->mLayoutSuppressed:Z

    .line 606
    invoke-static {v0, p1}, Landroidx/transition/ViewGroupUtils;->suppressLayout(Landroid/view/ViewGroup;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 528
    iput-boolean p1, p0, Landroidx/transition/Visibility$DisappearListener;->mCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 541
    invoke-direct {p0}, Landroidx/transition/Visibility$DisappearListener;->hideViewWhenNotCanceled()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;Z)V
    .locals 0

    if-nez p2, :cond_0

    .line 557
    invoke-direct {p0}, Landroidx/transition/Visibility$DisappearListener;->hideViewWhenNotCanceled()V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 547
    iget-object p1, p0, Landroidx/transition/Visibility$DisappearListener;->mView:Landroid/view/View;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroidx/transition/ViewUtils;->setTransitionVisibility(Landroid/view/View;I)V

    .line 548
    iget-object p1, p0, Landroidx/transition/Visibility$DisappearListener;->mParent:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 549
    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    :cond_0
    return-void
.end method

.method public onTransitionCancel(Landroidx/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionEnd(Landroidx/transition/Transition;)V
    .locals 0

    .line 568
    invoke-virtual {p1, p0}, Landroidx/transition/Transition;->removeListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    return-void
.end method

.method public onTransitionPause(Landroidx/transition/Transition;)V
    .locals 1

    const/4 p1, 0x0

    .line 577
    invoke-direct {p0, p1}, Landroidx/transition/Visibility$DisappearListener;->suppressLayout(Z)V

    .line 578
    iget-boolean p1, p0, Landroidx/transition/Visibility$DisappearListener;->mCanceled:Z

    if-nez p1, :cond_0

    .line 579
    iget-object p1, p0, Landroidx/transition/Visibility$DisappearListener;->mView:Landroid/view/View;

    iget v0, p0, Landroidx/transition/Visibility$DisappearListener;->mFinalVisibility:I

    invoke-static {p1, v0}, Landroidx/transition/ViewUtils;->setTransitionVisibility(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public onTransitionResume(Landroidx/transition/Transition;)V
    .locals 1

    const/4 p1, 0x1

    .line 585
    invoke-direct {p0, p1}, Landroidx/transition/Visibility$DisappearListener;->suppressLayout(Z)V

    .line 586
    iget-boolean p1, p0, Landroidx/transition/Visibility$DisappearListener;->mCanceled:Z

    if-nez p1, :cond_0

    .line 587
    iget-object p1, p0, Landroidx/transition/Visibility$DisappearListener;->mView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/transition/ViewUtils;->setTransitionVisibility(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public onTransitionStart(Landroidx/transition/Transition;)V
    .locals 0

    return-void
.end method
