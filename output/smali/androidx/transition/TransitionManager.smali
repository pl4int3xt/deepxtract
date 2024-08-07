.class public Landroidx/transition/TransitionManager;
.super Ljava/lang/Object;
.source "TransitionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/TransitionManager$MultiListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TransitionManager"

.field private static sDefaultTransition:Landroidx/transition/Transition;

.field static sPendingTransitions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private static sRunningTransitions:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/collection/ArrayMap<",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList<",
            "Landroidx/transition/Transition;",
            ">;>;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private mScenePairTransitions:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Landroidx/transition/Scene;",
            "Landroidx/collection/ArrayMap<",
            "Landroidx/transition/Scene;",
            "Landroidx/transition/Transition;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSceneTransitions:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Landroidx/transition/Scene;",
            "Landroidx/transition/Transition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 84
    new-instance v0, Landroidx/transition/AutoTransition;

    invoke-direct {v0}, Landroidx/transition/AutoTransition;-><init>()V

    sput-object v0, Landroidx/transition/TransitionManager;->sDefaultTransition:Landroidx/transition/Transition;

    .line 89
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/transition/TransitionManager;->sRunningTransitions:Ljava/lang/ThreadLocal;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroidx/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/transition/TransitionManager;->mSceneTransitions:Landroidx/collection/ArrayMap;

    .line 87
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/transition/TransitionManager;->mScenePairTransitions:Landroidx/collection/ArrayMap;

    return-void
.end method

.method public static beginDelayedTransition(Landroid/view/ViewGroup;)V
    .locals 1

    const/4 v0, 0x0

    .line 432
    invoke-static {p0, v0}, Landroidx/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    return-void
.end method

.method public static beginDelayedTransition(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V
    .locals 1

    .line 460
    sget-object v0, Landroidx/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 465
    sget-object v0, Landroidx/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez p1, :cond_0

    .line 467
    sget-object p1, Landroidx/transition/TransitionManager;->sDefaultTransition:Landroidx/transition/Transition;

    .line 469
    :cond_0
    invoke-virtual {p1}, Landroidx/transition/Transition;->clone()Landroidx/transition/Transition;

    move-result-object p1

    .line 470
    invoke-static {p0, p1}, Landroidx/transition/TransitionManager;->sceneChangeSetup(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    const/4 v0, 0x0

    .line 471
    invoke-static {p0, v0}, Landroidx/transition/Scene;->setCurrentScene(Landroid/view/ViewGroup;Landroidx/transition/Scene;)V

    .line 472
    invoke-static {p0, p1}, Landroidx/transition/TransitionManager;->sceneChangeRunTransition(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    :cond_1
    return-void
.end method

.method private static changeScene(Landroidx/transition/Scene;Landroidx/transition/Transition;)V
    .locals 3

    .line 168
    invoke-virtual {p0}, Landroidx/transition/Scene;->getSceneRoot()Landroid/view/ViewGroup;

    move-result-object v0

    .line 170
    sget-object v1, Landroidx/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 171
    invoke-static {v0}, Landroidx/transition/Scene;->getCurrentScene(Landroid/view/ViewGroup;)Landroidx/transition/Scene;

    move-result-object v1

    if-nez p1, :cond_1

    if-eqz v1, :cond_0

    .line 175
    invoke-virtual {v1}, Landroidx/transition/Scene;->exit()V

    .line 178
    :cond_0
    invoke-virtual {p0}, Landroidx/transition/Scene;->enter()V

    goto :goto_0

    .line 180
    :cond_1
    sget-object v2, Landroidx/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    invoke-virtual {p1}, Landroidx/transition/Transition;->clone()Landroidx/transition/Transition;

    move-result-object p1

    if-eqz v1, :cond_2

    .line 184
    invoke-virtual {v1}, Landroidx/transition/Scene;->isCreatedFromLayoutResource()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 185
    invoke-virtual {p1, v1}, Landroidx/transition/Transition;->setCanRemoveViews(Z)V

    .line 188
    :cond_2
    invoke-static {v0, p1}, Landroidx/transition/TransitionManager;->sceneChangeSetup(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    .line 190
    invoke-virtual {p0}, Landroidx/transition/Scene;->enter()V

    .line 192
    invoke-static {v0, p1}, Landroidx/transition/TransitionManager;->sceneChangeRunTransition(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static controlDelayedTransition(Landroid/view/ViewGroup;Landroidx/transition/Transition;)Landroidx/transition/TransitionSeekController;
    .locals 3

    .line 507
    sget-object v0, Landroidx/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    if-ge v0, v2, :cond_0

    goto :goto_0

    .line 511
    :cond_0
    invoke-virtual {p1}, Landroidx/transition/Transition;->isSeekingSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 518
    sget-object v0, Landroidx/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    invoke-virtual {p1}, Landroidx/transition/Transition;->clone()Landroidx/transition/Transition;

    move-result-object p1

    .line 520
    new-instance v0, Landroidx/transition/TransitionSet;

    invoke-direct {v0}, Landroidx/transition/TransitionSet;-><init>()V

    .line 521
    invoke-virtual {v0, p1}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    .line 522
    invoke-static {p0, v0}, Landroidx/transition/TransitionManager;->sceneChangeSetup(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    .line 523
    invoke-static {p0, v1}, Landroidx/transition/Scene;->setCurrentScene(Landroid/view/ViewGroup;Landroidx/transition/Scene;)V

    .line 524
    invoke-static {p0, v0}, Landroidx/transition/TransitionManager;->sceneChangeRunTransition(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    .line 525
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 526
    invoke-virtual {v0}, Landroidx/transition/TransitionSet;->createSeekController()Landroidx/transition/TransitionSeekController;

    move-result-object p0

    return-object p0

    .line 512
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The Transition must support seeking."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public static createSeekController(Landroidx/transition/Scene;Landroidx/transition/Transition;)Landroidx/transition/TransitionSeekController;
    .locals 5

    .line 371
    invoke-virtual {p0}, Landroidx/transition/Scene;->getSceneRoot()Landroid/view/ViewGroup;

    move-result-object v0

    .line 373
    invoke-virtual {p1}, Landroidx/transition/Transition;->isSeekingSupported()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 376
    sget-object v1, Landroidx/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 379
    :cond_0
    invoke-static {v0}, Landroidx/transition/Scene;->getCurrentScene(Landroid/view/ViewGroup;)Landroidx/transition/Scene;

    move-result-object v1

    .line 380
    invoke-virtual {v0}, Landroid/view/ViewGroup;->isLaidOut()Z

    move-result v3

    if-eqz v3, :cond_3

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x22

    if-ge v3, v4, :cond_1

    goto :goto_0

    .line 390
    :cond_1
    sget-object v2, Landroidx/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    invoke-virtual {p1}, Landroidx/transition/Transition;->clone()Landroidx/transition/Transition;

    move-result-object p1

    .line 392
    new-instance v2, Landroidx/transition/TransitionSet;

    invoke-direct {v2}, Landroidx/transition/TransitionSet;-><init>()V

    .line 393
    invoke-virtual {v2, p1}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    if-eqz v1, :cond_2

    .line 394
    invoke-virtual {v1}, Landroidx/transition/Scene;->isCreatedFromLayoutResource()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 395
    invoke-virtual {v2, p1}, Landroidx/transition/TransitionSet;->setCanRemoveViews(Z)V

    .line 397
    :cond_2
    invoke-static {v0, v2}, Landroidx/transition/TransitionManager;->sceneChangeSetup(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    .line 398
    invoke-virtual {p0}, Landroidx/transition/Scene;->enter()V

    .line 400
    invoke-static {v0, v2}, Landroidx/transition/TransitionManager;->sceneChangeRunTransition(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    .line 401
    invoke-virtual {v2}, Landroidx/transition/TransitionSet;->createSeekController()Landroidx/transition/TransitionSeekController;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    if-eqz v1, :cond_4

    .line 385
    invoke-virtual {v1}, Landroidx/transition/Scene;->exit()V

    .line 387
    :cond_4
    invoke-virtual {p0}, Landroidx/transition/Scene;->enter()V

    return-object v2

    .line 374
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The Transition must support seeking."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static endTransitions(Landroid/view/ViewGroup;)V
    .locals 3

    .line 535
    sget-object v0, Landroidx/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 536
    invoke-static {}, Landroidx/transition/TransitionManager;->getRunningTransitions()Landroidx/collection/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 537
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 539
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 540
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 541
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/Transition;

    .line 542
    invoke-virtual {v2, p0}, Landroidx/transition/Transition;->forceToEnd(Landroid/view/ViewGroup;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static getRunningTransitions()Landroidx/collection/ArrayMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/ArrayMap<",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList<",
            "Landroidx/transition/Transition;",
            ">;>;"
        }
    .end annotation

    .line 199
    sget-object v0, Landroidx/transition/TransitionManager;->sRunningTransitions:Ljava/lang/ThreadLocal;

    .line 200
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/collection/ArrayMap;

    if-eqz v0, :cond_0

    return-object v0

    .line 207
    :cond_0
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    .line 208
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 209
    sget-object v2, Landroidx/transition/TransitionManager;->sRunningTransitions:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object v0
.end method

.method private getTransition(Landroidx/transition/Scene;)Landroidx/transition/Transition;
    .locals 2

    .line 140
    invoke-virtual {p1}, Landroidx/transition/Scene;->getSceneRoot()Landroid/view/ViewGroup;

    move-result-object v0

    .line 142
    invoke-static {v0}, Landroidx/transition/Scene;->getCurrentScene(Landroid/view/ViewGroup;)Landroidx/transition/Scene;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v1, p0, Landroidx/transition/TransitionManager;->mScenePairTransitions:Landroidx/collection/ArrayMap;

    .line 145
    invoke-virtual {v1, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/collection/ArrayMap;

    if-eqz v1, :cond_0

    .line 147
    invoke-virtual {v1, v0}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/transition/Transition;

    if-eqz v0, :cond_0

    return-object v0

    .line 153
    :cond_0
    iget-object v0, p0, Landroidx/transition/TransitionManager;->mSceneTransitions:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/transition/Transition;

    if-eqz p1, :cond_1

    goto :goto_0

    .line 154
    :cond_1
    sget-object p1, Landroidx/transition/TransitionManager;->sDefaultTransition:Landroidx/transition/Transition;

    :goto_0
    return-object p1
.end method

.method public static go(Landroidx/transition/Scene;)V
    .locals 1

    .line 348
    sget-object v0, Landroidx/transition/TransitionManager;->sDefaultTransition:Landroidx/transition/Transition;

    invoke-static {p0, v0}, Landroidx/transition/TransitionManager;->changeScene(Landroidx/transition/Scene;Landroidx/transition/Transition;)V

    return-void
.end method

.method public static go(Landroidx/transition/Scene;Landroidx/transition/Transition;)V
    .locals 0

    .line 419
    invoke-static {p0, p1}, Landroidx/transition/TransitionManager;->changeScene(Landroidx/transition/Scene;Landroidx/transition/Transition;)V

    return-void
.end method

.method private static sceneChangeRunTransition(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 216
    new-instance v0, Landroidx/transition/TransitionManager$MultiListener;

    invoke-direct {v0, p1, p0}, Landroidx/transition/TransitionManager$MultiListener;-><init>(Landroidx/transition/Transition;Landroid/view/ViewGroup;)V

    .line 217
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 218
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    return-void
.end method

.method private static sceneChangeSetup(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V
    .locals 2

    .line 308
    invoke-static {}, Landroidx/transition/TransitionManager;->getRunningTransitions()Landroidx/collection/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 311
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/Transition;

    .line 312
    invoke-virtual {v1, p0}, Landroidx/transition/Transition;->pause(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 317
    invoke-virtual {p1, p0, v0}, Landroidx/transition/Transition;->captureValues(Landroid/view/ViewGroup;Z)V

    .line 321
    :cond_1
    invoke-static {p0}, Landroidx/transition/Scene;->getCurrentScene(Landroid/view/ViewGroup;)Landroidx/transition/Scene;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 323
    invoke-virtual {p0}, Landroidx/transition/Scene;->exit()V

    :cond_2
    return-void
.end method


# virtual methods
.method public setTransition(Landroidx/transition/Scene;Landroidx/transition/Scene;Landroidx/transition/Transition;)V
    .locals 2

    .line 120
    iget-object v0, p0, Landroidx/transition/TransitionManager;->mScenePairTransitions:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p2}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/collection/ArrayMap;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    .line 123
    iget-object v1, p0, Landroidx/transition/TransitionManager;->mScenePairTransitions:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, p2, v0}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    :cond_0
    invoke-virtual {v0, p1, p3}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setTransition(Landroidx/transition/Scene;Landroidx/transition/Transition;)V
    .locals 1

    .line 103
    iget-object v0, p0, Landroidx/transition/TransitionManager;->mSceneTransitions:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public transitionTo(Landroidx/transition/Scene;)V
    .locals 1

    .line 338
    invoke-direct {p0, p1}, Landroidx/transition/TransitionManager;->getTransition(Landroidx/transition/Scene;)Landroidx/transition/Transition;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/transition/TransitionManager;->changeScene(Landroidx/transition/Scene;Landroidx/transition/Transition;)V

    return-void
.end method
