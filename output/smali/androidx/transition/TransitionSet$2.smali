.class Landroidx/transition/TransitionSet$2;
.super Landroidx/transition/TransitionListenerAdapter;
.source "TransitionSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/transition/TransitionSet;->prepareAnimatorsForSeeking()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/transition/TransitionSet;


# direct methods
.method constructor <init>(Landroidx/transition/TransitionSet;)V
    .locals 0

    .line 532
    iput-object p1, p0, Landroidx/transition/TransitionSet$2;->this$0:Landroidx/transition/TransitionSet;

    invoke-direct {p0}, Landroidx/transition/TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroidx/transition/Transition;)V
    .locals 2

    .line 535
    iget-object v0, p0, Landroidx/transition/TransitionSet$2;->this$0:Landroidx/transition/TransitionSet;

    iget-object v0, v0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 536
    iget-object p1, p0, Landroidx/transition/TransitionSet$2;->this$0:Landroidx/transition/TransitionSet;

    invoke-virtual {p1}, Landroidx/transition/TransitionSet;->hasAnimators()Z

    move-result p1

    if-nez p1, :cond_0

    .line 537
    iget-object p1, p0, Landroidx/transition/TransitionSet$2;->this$0:Landroidx/transition/TransitionSet;

    sget-object v0, Landroidx/transition/Transition$TransitionNotification;->ON_CANCEL:Landroidx/transition/Transition$TransitionNotification;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/transition/TransitionSet;->notifyListeners(Landroidx/transition/Transition$TransitionNotification;Z)V

    .line 538
    iget-object p1, p0, Landroidx/transition/TransitionSet$2;->this$0:Landroidx/transition/TransitionSet;

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroidx/transition/TransitionSet;->mEnded:Z

    .line 539
    iget-object p1, p0, Landroidx/transition/TransitionSet$2;->this$0:Landroidx/transition/TransitionSet;

    sget-object v0, Landroidx/transition/Transition$TransitionNotification;->ON_END:Landroidx/transition/Transition$TransitionNotification;

    invoke-virtual {p1, v0, v1}, Landroidx/transition/TransitionSet;->notifyListeners(Landroidx/transition/Transition$TransitionNotification;Z)V

    :cond_0
    return-void
.end method
