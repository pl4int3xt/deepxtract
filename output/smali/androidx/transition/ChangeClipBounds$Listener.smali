.class Landroidx/transition/ChangeClipBounds$Listener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChangeClipBounds.java"

# interfaces
.implements Landroidx/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/ChangeClipBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Listener"
.end annotation


# instance fields
.field private final mEnd:Landroid/graphics/Rect;

.field private final mStart:Landroid/graphics/Rect;

.field private final mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    .line 141
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 142
    iput-object p1, p0, Landroidx/transition/ChangeClipBounds$Listener;->mView:Landroid/view/View;

    .line 143
    iput-object p2, p0, Landroidx/transition/ChangeClipBounds$Listener;->mStart:Landroid/graphics/Rect;

    .line 144
    iput-object p3, p0, Landroidx/transition/ChangeClipBounds$Listener;->mEnd:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x0

    .line 181
    invoke-virtual {p0, p1, v0}, Landroidx/transition/ChangeClipBounds$Listener;->onAnimationEnd(Landroid/animation/Animator;Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;Z)V
    .locals 0

    if-nez p2, :cond_0

    .line 187
    iget-object p1, p0, Landroidx/transition/ChangeClipBounds$Listener;->mView:Landroid/view/View;

    iget-object p2, p0, Landroidx/transition/ChangeClipBounds$Listener;->mEnd:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 189
    :cond_0
    iget-object p1, p0, Landroidx/transition/ChangeClipBounds$Listener;->mView:Landroid/view/View;

    iget-object p2, p0, Landroidx/transition/ChangeClipBounds$Listener;->mStart:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method public onTransitionCancel(Landroidx/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionEnd(Landroidx/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionPause(Landroidx/transition/Transition;)V
    .locals 2

    .line 164
    iget-object p1, p0, Landroidx/transition/ChangeClipBounds$Listener;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object p1

    if-nez p1, :cond_0

    .line 166
    sget-object p1, Landroidx/transition/ChangeClipBounds;->NULL_SENTINEL:Landroid/graphics/Rect;

    .line 168
    :cond_0
    iget-object v0, p0, Landroidx/transition/ChangeClipBounds$Listener;->mView:Landroid/view/View;

    sget v1, Landroidx/transition/R$id;->transition_clip:I

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 169
    iget-object p1, p0, Landroidx/transition/ChangeClipBounds$Listener;->mView:Landroid/view/View;

    iget-object v0, p0, Landroidx/transition/ChangeClipBounds$Listener;->mEnd:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onTransitionResume(Landroidx/transition/Transition;)V
    .locals 2

    .line 174
    iget-object p1, p0, Landroidx/transition/ChangeClipBounds$Listener;->mView:Landroid/view/View;

    sget v0, Landroidx/transition/R$id;->transition_clip:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    .line 175
    iget-object v0, p0, Landroidx/transition/ChangeClipBounds$Listener;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 176
    iget-object p1, p0, Landroidx/transition/ChangeClipBounds$Listener;->mView:Landroid/view/View;

    sget v0, Landroidx/transition/R$id;->transition_clip:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public onTransitionStart(Landroidx/transition/Transition;)V
    .locals 0

    return-void
.end method
