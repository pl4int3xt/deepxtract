.class Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TranslationAnimationCreator.java"

# interfaces
.implements Landroidx/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/TranslationAnimationCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransitionPositionListener"
.end annotation


# instance fields
.field private mIsTransitionCanceled:Z

.field private final mMovingView:Landroid/view/View;

.field private mPausedX:F

.field private mPausedY:F

.field private final mTerminalX:F

.field private final mTerminalY:F

.field private mTransitionPosition:[I

.field private final mViewInHierarchy:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/view/View;FF)V
    .locals 0

    .line 93
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 94
    iput-object p1, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    .line 95
    iput-object p2, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mViewInHierarchy:Landroid/view/View;

    .line 96
    iput p3, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalX:F

    .line 97
    iput p4, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalY:F

    .line 98
    sget p1, Landroidx/transition/R$id;->transition_position:I

    invoke-virtual {p2, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    if-eqz p1, :cond_0

    .line 100
    sget p1, Landroidx/transition/R$id;->transition_position:I

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private setInterruptedPosition()V
    .locals 3

    .line 165
    iget-object v0, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 166
    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    .line 168
    :cond_0
    iget-object v0, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    iget-object v1, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 169
    iget-object v0, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mViewInHierarchy:Landroid/view/View;

    sget v1, Landroidx/transition/R$id;->transition_position:I

    iget-object v2, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const/4 p1, 0x1

    .line 106
    iput-boolean p1, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mIsTransitionCanceled:Z

    .line 107
    iget-object p1, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    iget v0, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalX:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 108
    iget-object p1, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    iget v0, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalY:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x0

    .line 123
    invoke-virtual {p0, p1, v0}, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->onAnimationEnd(Landroid/animation/Animator;Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;Z)V
    .locals 0

    if-nez p2, :cond_0

    .line 116
    iget-object p1, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    iget p2, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalX:F

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 117
    iget-object p1, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    iget p2, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalY:F

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method public onTransitionCancel(Landroidx/transition/Transition;)V
    .locals 1

    const/4 p1, 0x1

    .line 144
    iput-boolean p1, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mIsTransitionCanceled:Z

    .line 145
    iget-object p1, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    iget v0, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalX:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 146
    iget-object p1, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    iget v0, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalY:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public onTransitionEnd(Landroidx/transition/Transition;)V
    .locals 1

    const/4 v0, 0x0

    .line 139
    invoke-virtual {p0, p1, v0}, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->onTransitionEnd(Landroidx/transition/Transition;Z)V

    return-void
.end method

.method public onTransitionEnd(Landroidx/transition/Transition;Z)V
    .locals 1

    .line 132
    iget-boolean p1, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mIsTransitionCanceled:Z

    if-nez p1, :cond_0

    .line 133
    iget-object p1, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mViewInHierarchy:Landroid/view/View;

    sget p2, Landroidx/transition/R$id;->transition_position:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onTransitionPause(Landroidx/transition/Transition;)V
    .locals 1

    .line 151
    invoke-direct {p0}, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->setInterruptedPosition()V

    .line 152
    iget-object p1, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p1

    iput p1, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mPausedX:F

    .line 153
    iget-object p1, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    iput p1, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mPausedY:F

    .line 154
    iget-object p1, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    iget v0, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalX:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 155
    iget-object p1, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    iget v0, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalY:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public onTransitionResume(Landroidx/transition/Transition;)V
    .locals 1

    .line 160
    iget-object p1, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    iget v0, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mPausedX:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 161
    iget-object p1, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    iget v0, p0, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mPausedY:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public onTransitionStart(Landroidx/transition/Transition;)V
    .locals 0

    return-void
.end method
