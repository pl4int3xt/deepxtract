.class public Landroidx/transition/FragmentTransitionSupport;
.super Landroidx/fragment/app/FragmentTransitionImpl;
.source "FragmentTransitionSupport.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Landroidx/fragment/app/FragmentTransitionImpl;-><init>()V

    return-void
.end method

.method private static hasSimpleTarget(Landroidx/transition/Transition;)Z
    .locals 1

    .line 128
    invoke-virtual {p0}, Landroidx/transition/Transition;->getTargetIds()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroidx/transition/FragmentTransitionSupport;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    invoke-virtual {p0}, Landroidx/transition/Transition;->getTargetNames()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroidx/transition/FragmentTransitionSupport;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    invoke-virtual {p0}, Landroidx/transition/Transition;->getTargetTypes()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Landroidx/transition/FragmentTransitionSupport;->isNullOrEmpty(Ljava/util/List;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static synthetic lambda$setListenerForTransitionEnd$0(Ljava/lang/Runnable;Landroidx/transition/Transition;Ljava/lang/Runnable;)V
    .locals 0

    if-nez p0, :cond_0

    .line 339
    invoke-virtual {p1}, Landroidx/transition/Transition;->cancel()V

    .line 340
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 342
    :cond_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method


# virtual methods
.method public addTarget(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 408
    check-cast p1, Landroidx/transition/Transition;

    .line 409
    invoke-virtual {p1, p2}, Landroidx/transition/Transition;->addTarget(Landroid/view/View;)Landroidx/transition/Transition;

    :cond_0
    return-void
.end method

.method public addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 104
    check-cast p1, Landroidx/transition/Transition;

    if-nez p1, :cond_0

    return-void

    .line 108
    :cond_0
    instance-of v0, p1, Landroidx/transition/TransitionSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 109
    check-cast p1, Landroidx/transition/TransitionSet;

    .line 110
    invoke-virtual {p1}, Landroidx/transition/TransitionSet;->getTransitionCount()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 112
    invoke-virtual {p1, v1}, Landroidx/transition/TransitionSet;->getTransitionAt(I)Landroidx/transition/Transition;

    move-result-object v2

    .line 113
    invoke-virtual {p0, v2, p2}, Landroidx/transition/FragmentTransitionSupport;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    :cond_1
    invoke-static {p1}, Landroidx/transition/FragmentTransitionSupport;->hasSimpleTarget(Landroidx/transition/Transition;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 116
    invoke-virtual {p1}, Landroidx/transition/Transition;->getTargets()Ljava/util/List;

    move-result-object v0

    .line 117
    invoke-static {v0}, Landroidx/transition/FragmentTransitionSupport;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 121
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p1, v2}, Landroidx/transition/Transition;->addTarget(Landroid/view/View;)Landroidx/transition/Transition;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public animateToEnd(Ljava/lang/Object;)V
    .locals 0

    .line 271
    check-cast p1, Landroidx/transition/TransitionSeekController;

    .line 272
    invoke-interface {p1}, Landroidx/transition/TransitionSeekController;->animateToEnd()V

    return-void
.end method

.method public animateToStart(Ljava/lang/Object;Ljava/lang/Runnable;)V
    .locals 0

    .line 278
    check-cast p1, Landroidx/transition/TransitionSeekController;

    .line 279
    invoke-interface {p1, p2}, Landroidx/transition/TransitionSeekController;->animateToStart(Ljava/lang/Runnable;)V

    return-void
.end method

.method public beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V
    .locals 0

    .line 225
    check-cast p2, Landroidx/transition/Transition;

    invoke-static {p1, p2}, Landroidx/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    return-void
.end method

.method public canHandle(Ljava/lang/Object;)Z
    .locals 0

    .line 46
    instance-of p1, p1, Landroidx/transition/Transition;

    return p1
.end method

.method public cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_0

    .line 54
    check-cast p1, Landroidx/transition/Transition;

    invoke-virtual {p1}, Landroidx/transition/Transition;->clone()Landroidx/transition/Transition;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public controlDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 249
    check-cast p2, Landroidx/transition/Transition;

    invoke-static {p1, p2}, Landroidx/transition/TransitionManager;->controlDelayedTransition(Landroid/view/ViewGroup;Landroidx/transition/Transition;)Landroidx/transition/TransitionSeekController;

    move-result-object p1

    return-object p1
.end method

.method public isSeekingSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSeekingSupported(Ljava/lang/Object;)Z
    .locals 3

    .line 235
    move-object v0, p1

    check-cast v0, Landroidx/transition/Transition;

    invoke-virtual {v0}, Landroidx/transition/Transition;->isSeekingSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Predictive back not available for AndroidX Transition "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ". Please enable seeking support for the designated transition by overriding isSeekingSupported()."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "FragmentManager"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method public mergeTransitionsInSequence(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 198
    check-cast p1, Landroidx/transition/Transition;

    .line 199
    check-cast p2, Landroidx/transition/Transition;

    .line 200
    check-cast p3, Landroidx/transition/Transition;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 202
    new-instance v0, Landroidx/transition/TransitionSet;

    invoke-direct {v0}, Landroidx/transition/TransitionSet;-><init>()V

    .line 203
    invoke-virtual {v0, p1}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    move-result-object p1

    .line 204
    invoke-virtual {p1, p2}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    move-result-object p1

    const/4 p2, 0x1

    .line 205
    invoke-virtual {p1, p2}, Landroidx/transition/TransitionSet;->setOrdering(I)Landroidx/transition/TransitionSet;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    move-object p1, p2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p3, :cond_4

    .line 212
    new-instance p2, Landroidx/transition/TransitionSet;

    invoke-direct {p2}, Landroidx/transition/TransitionSet;-><init>()V

    if-eqz p1, :cond_3

    .line 214
    invoke-virtual {p2, p1}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    .line 216
    :cond_3
    invoke-virtual {p2, p3}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    return-object p2

    :cond_4
    return-object p1
.end method

.method public mergeTransitionsTogether(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 137
    new-instance v0, Landroidx/transition/TransitionSet;

    invoke-direct {v0}, Landroidx/transition/TransitionSet;-><init>()V

    if-eqz p1, :cond_0

    .line 139
    check-cast p1, Landroidx/transition/Transition;

    invoke-virtual {v0, p1}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    :cond_0
    if-eqz p2, :cond_1

    .line 142
    check-cast p2, Landroidx/transition/Transition;

    invoke-virtual {v0, p2}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    :cond_1
    if-eqz p3, :cond_2

    .line 145
    check-cast p3, Landroidx/transition/Transition;

    invoke-virtual {v0, p3}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    :cond_2
    return-object v0
.end method

.method public removeTarget(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 416
    check-cast p1, Landroidx/transition/Transition;

    .line 417
    invoke-virtual {p1, p2}, Landroidx/transition/Transition;->removeTarget(Landroid/view/View;)Landroidx/transition/Transition;

    :cond_0
    return-void
.end method

.method public replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 381
    check-cast p1, Landroidx/transition/Transition;

    .line 382
    instance-of v0, p1, Landroidx/transition/TransitionSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 383
    check-cast p1, Landroidx/transition/TransitionSet;

    .line 384
    invoke-virtual {p1}, Landroidx/transition/TransitionSet;->getTransitionCount()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 386
    invoke-virtual {p1, v1}, Landroidx/transition/TransitionSet;->getTransitionAt(I)Landroidx/transition/Transition;

    move-result-object v2

    .line 387
    invoke-virtual {p0, v2, p2, p3}, Landroidx/transition/FragmentTransitionSupport;->replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 389
    :cond_0
    invoke-static {p1}, Landroidx/transition/FragmentTransitionSupport;->hasSimpleTarget(Landroidx/transition/Transition;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 390
    invoke-virtual {p1}, Landroidx/transition/Transition;->getTargets()Ljava/util/List;

    move-result-object v0

    .line 391
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 392
    invoke-interface {v0, p2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p3, :cond_1

    move v0, v1

    goto :goto_1

    .line 394
    :cond_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 396
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p1, v2}, Landroidx/transition/Transition;->addTarget(Landroid/view/View;)Landroidx/transition/Transition;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 398
    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_2
    if-ltz p3, :cond_3

    .line 399
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroidx/transition/Transition;->removeTarget(Landroid/view/View;)Landroidx/transition/Transition;

    add-int/lit8 p3, p3, -0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public scheduleHideFragmentView(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 153
    check-cast p1, Landroidx/transition/Transition;

    .line 154
    new-instance v0, Landroidx/transition/FragmentTransitionSupport$2;

    invoke-direct {v0, p0, p2, p3}, Landroidx/transition/FragmentTransitionSupport$2;-><init>(Landroidx/transition/FragmentTransitionSupport;Landroid/view/View;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v0}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    return-void
.end method

.method public scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 288
    move-object v0, p1

    check-cast v0, Landroidx/transition/Transition;

    .line 289
    new-instance v9, Landroidx/transition/FragmentTransitionSupport$3;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Landroidx/transition/FragmentTransitionSupport$3;-><init>(Landroidx/transition/FragmentTransitionSupport;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v9}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    return-void
.end method

.method public setCurrentPlayTime(Ljava/lang/Object;F)V
    .locals 6

    .line 254
    check-cast p1, Landroidx/transition/TransitionSeekController;

    .line 255
    invoke-interface {p1}, Landroidx/transition/TransitionSeekController;->isReady()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 256
    invoke-interface {p1}, Landroidx/transition/TransitionSeekController;->getDurationMillis()J

    move-result-wide v0

    long-to-float v0, v0

    mul-float/2addr p2, v0

    float-to-long v0, p2

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    const-wide/16 v2, 0x1

    if-nez p2, :cond_0

    move-wide v0, v2

    .line 262
    :cond_0
    invoke-interface {p1}, Landroidx/transition/TransitionSeekController;->getDurationMillis()J

    move-result-wide v4

    cmp-long p2, v0, v4

    if-nez p2, :cond_1

    .line 263
    invoke-interface {p1}, Landroidx/transition/TransitionSeekController;->getDurationMillis()J

    move-result-wide v0

    sub-long/2addr v0, v2

    .line 265
    :cond_1
    invoke-interface {p1, v0, v1}, Landroidx/transition/TransitionSeekController;->setCurrentPlayTimeMillis(J)V

    :cond_2
    return-void
.end method

.method public setEpicenter(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 424
    check-cast p1, Landroidx/transition/Transition;

    .line 425
    new-instance v0, Landroidx/transition/FragmentTransitionSupport$5;

    invoke-direct {v0, p0, p2}, Landroidx/transition/FragmentTransitionSupport$5;-><init>(Landroidx/transition/FragmentTransitionSupport;Landroid/graphics/Rect;)V

    invoke-virtual {p1, v0}, Landroidx/transition/Transition;->setEpicenterCallback(Landroidx/transition/Transition$EpicenterCallback;)V

    :cond_0
    return-void
.end method

.method public setEpicenter(Ljava/lang/Object;Landroid/view/View;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 89
    check-cast p1, Landroidx/transition/Transition;

    .line 90
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 91
    invoke-virtual {p0, p2, v0}, Landroidx/transition/FragmentTransitionSupport;->getBoundsOnScreen(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 93
    new-instance p2, Landroidx/transition/FragmentTransitionSupport$1;

    invoke-direct {p2, p0, v0}, Landroidx/transition/FragmentTransitionSupport$1;-><init>(Landroidx/transition/FragmentTransitionSupport;Landroid/graphics/Rect;)V

    invoke-virtual {p1, p2}, Landroidx/transition/Transition;->setEpicenterCallback(Landroidx/transition/Transition$EpicenterCallback;)V

    :cond_0
    return-void
.end method

.method public setListenerForTransitionEnd(Landroidx/fragment/app/Fragment;Ljava/lang/Object;Landroidx/core/os/CancellationSignal;Ljava/lang/Runnable;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 327
    invoke-virtual/range {v0 .. v5}, Landroidx/transition/FragmentTransitionSupport;->setListenerForTransitionEnd(Landroidx/fragment/app/Fragment;Ljava/lang/Object;Landroidx/core/os/CancellationSignal;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public setListenerForTransitionEnd(Landroidx/fragment/app/Fragment;Ljava/lang/Object;Landroidx/core/os/CancellationSignal;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    .line 336
    check-cast p2, Landroidx/transition/Transition;

    .line 337
    new-instance p1, Landroidx/transition/FragmentTransitionSupport$$ExternalSyntheticLambda0;

    invoke-direct {p1, p4, p2, p5}, Landroidx/transition/FragmentTransitionSupport$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;Landroidx/transition/Transition;Ljava/lang/Runnable;)V

    invoke-virtual {p3, p1}, Landroidx/core/os/CancellationSignal;->setOnCancelListener(Landroidx/core/os/CancellationSignal$OnCancelListener;)V

    .line 345
    new-instance p1, Landroidx/transition/FragmentTransitionSupport$4;

    invoke-direct {p1, p0, p5}, Landroidx/transition/FragmentTransitionSupport$4;-><init>(Landroidx/transition/FragmentTransitionSupport;Ljava/lang/Runnable;)V

    invoke-virtual {p2, p1}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    return-void
.end method

.method public setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 73
    check-cast p1, Landroidx/transition/TransitionSet;

    .line 74
    invoke-virtual {p1}, Landroidx/transition/TransitionSet;->getTargets()Ljava/util/List;

    move-result-object v0

    .line 75
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 76
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 78
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 79
    invoke-static {v0, v3}, Landroidx/transition/FragmentTransitionSupport;->bfsAddViewChildren(Ljava/util/List;Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 81
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-virtual {p0, p1, p3}, Landroidx/transition/FragmentTransitionSupport;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    return-void
.end method

.method public swapSharedElementTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 369
    check-cast p1, Landroidx/transition/TransitionSet;

    if-eqz p1, :cond_0

    .line 371
    invoke-virtual {p1}, Landroidx/transition/TransitionSet;->getTargets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 372
    invoke-virtual {p1}, Landroidx/transition/TransitionSet;->getTargets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 373
    invoke-virtual {p0, p1, p2, p3}, Landroidx/transition/FragmentTransitionSupport;->replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public wrapTransitionInSet(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 65
    :cond_0
    new-instance v0, Landroidx/transition/TransitionSet;

    invoke-direct {v0}, Landroidx/transition/TransitionSet;-><init>()V

    .line 66
    check-cast p1, Landroidx/transition/Transition;

    invoke-virtual {v0, p1}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    return-object v0
.end method
