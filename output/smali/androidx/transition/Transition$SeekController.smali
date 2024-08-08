.class Landroidx/transition/Transition$SeekController;
.super Landroidx/transition/TransitionListenerAdapter;
.source "Transition.java"

# interfaces
.implements Landroidx/transition/TransitionSeekController;
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/Transition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SeekController"
.end annotation


# instance fields
.field private mCurrentPlayTime:J

.field private mIsCanceled:Z

.field private mIsReady:Z

.field private mListenerCache:[Landroidx/core/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroidx/core/util/Consumer<",
            "Landroidx/transition/TransitionSeekController;",
            ">;"
        }
    .end annotation
.end field

.field private mOnProgressListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/core/util/Consumer<",
            "Landroidx/transition/TransitionSeekController;",
            ">;>;"
        }
    .end annotation
.end field

.field private mOnReadyListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/core/util/Consumer<",
            "Landroidx/transition/TransitionSeekController;",
            ">;>;"
        }
    .end annotation
.end field

.field private mResetToStartState:Ljava/lang/Runnable;

.field private mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private final mVelocityTracker:Landroidx/transition/VelocityTracker1D;

.field final synthetic this$0:Landroidx/transition/Transition;


# direct methods
.method constructor <init>(Landroidx/transition/Transition;)V
    .locals 2

    .line 2729
    iput-object p1, p0, Landroidx/transition/Transition$SeekController;->this$0:Landroidx/transition/Transition;

    invoke-direct {p0}, Landroidx/transition/TransitionListenerAdapter;-><init>()V

    const-wide/16 v0, -0x1

    .line 2732
    iput-wide v0, p0, Landroidx/transition/Transition$SeekController;->mCurrentPlayTime:J

    const/4 p1, 0x0

    .line 2733
    iput-object p1, p0, Landroidx/transition/Transition$SeekController;->mOnReadyListeners:Ljava/util/ArrayList;

    .line 2734
    iput-object p1, p0, Landroidx/transition/Transition$SeekController;->mOnProgressListeners:Ljava/util/ArrayList;

    .line 2739
    iput-object p1, p0, Landroidx/transition/Transition$SeekController;->mListenerCache:[Landroidx/core/util/Consumer;

    .line 2740
    new-instance p1, Landroidx/transition/VelocityTracker1D;

    invoke-direct {p1}, Landroidx/transition/VelocityTracker1D;-><init>()V

    iput-object p1, p0, Landroidx/transition/Transition$SeekController;->mVelocityTracker:Landroidx/transition/VelocityTracker1D;

    return-void
.end method

.method private callProgressListeners()V
    .locals 5

    .line 2937
    iget-object v0, p0, Landroidx/transition/Transition$SeekController;->mOnProgressListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2940
    :cond_0
    iget-object v0, p0, Landroidx/transition/Transition$SeekController;->mOnProgressListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2941
    iget-object v1, p0, Landroidx/transition/Transition$SeekController;->mListenerCache:[Landroidx/core/util/Consumer;

    if-nez v1, :cond_1

    .line 2942
    new-array v1, v0, [Landroidx/core/util/Consumer;

    iput-object v1, p0, Landroidx/transition/Transition$SeekController;->mListenerCache:[Landroidx/core/util/Consumer;

    .line 2944
    :cond_1
    iget-object v1, p0, Landroidx/transition/Transition$SeekController;->mOnProgressListeners:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/transition/Transition$SeekController;->mListenerCache:[Landroidx/core/util/Consumer;

    .line 2945
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/core/util/Consumer;

    const/4 v2, 0x0

    .line 2946
    iput-object v2, p0, Landroidx/transition/Transition$SeekController;->mListenerCache:[Landroidx/core/util/Consumer;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 2948
    aget-object v4, v1, v3

    invoke-interface {v4, p0}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 2949
    aput-object v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2951
    :cond_2
    iput-object v1, p0, Landroidx/transition/Transition$SeekController;->mListenerCache:[Landroidx/core/util/Consumer;

    :cond_3
    :goto_1
    return-void
.end method

.method private ensureAnimation()V
    .locals 5

    .line 2862
    iget-object v0, p0, Landroidx/transition/Transition$SeekController;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_0

    return-void

    .line 2865
    :cond_0
    iget-object v0, p0, Landroidx/transition/Transition$SeekController;->mVelocityTracker:Landroidx/transition/VelocityTracker1D;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Landroidx/transition/Transition$SeekController;->mCurrentPlayTime:J

    long-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroidx/transition/VelocityTracker1D;->addDataPoint(JF)V

    .line 2867
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>()V

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    iput-object v0, p0, Landroidx/transition/Transition$SeekController;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 2868
    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 2869
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 v1, 0x43480000    # 200.0f

    .line 2870
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 2871
    iget-object v1, p0, Landroidx/transition/Transition$SeekController;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 2872
    iget-object v0, p0, Landroidx/transition/Transition$SeekController;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-wide v1, p0, Landroidx/transition/Transition$SeekController;->mCurrentPlayTime:J

    long-to-float v1, v1

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 2873
    iget-object v0, p0, Landroidx/transition/Transition$SeekController;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 2874
    iget-object v0, p0, Landroidx/transition/Transition$SeekController;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Landroidx/transition/Transition$SeekController;->mVelocityTracker:Landroidx/transition/VelocityTracker1D;

    invoke-virtual {v1}, Landroidx/transition/VelocityTracker1D;->calculateVelocity()F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 2875
    iget-object v0, p0, Landroidx/transition/Transition$SeekController;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Landroidx/transition/Transition$SeekController;->getDurationMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    long-to-float v1, v1

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setMaxValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 2876
    iget-object v0, p0, Landroidx/transition/Transition$SeekController;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setMinValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 2877
    iget-object v0, p0, Landroidx/transition/Transition$SeekController;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 2878
    iget-object v0, p0, Landroidx/transition/Transition$SeekController;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Landroidx/transition/Transition$SeekController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroidx/transition/Transition$SeekController$$ExternalSyntheticLambda0;-><init>(Landroidx/transition/Transition$SeekController;)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    return-void
.end method


# virtual methods
.method public addOnProgressChangedListener(Landroidx/core/util/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer<",
            "Landroidx/transition/TransitionSeekController;",
            ">;)V"
        }
    .end annotation

    .line 2921
    iget-object v0, p0, Landroidx/transition/Transition$SeekController;->mOnProgressListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2922
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/transition/Transition$SeekController;->mOnProgressListeners:Ljava/util/ArrayList;

    .line 2924
    :cond_0
    iget-object v0, p0, Landroidx/transition/Transition$SeekController;->mOnProgressListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnReadyListener(Landroidx/core/util/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer<",
            "Landroidx/transition/TransitionSeekController;",
            ">;)V"
        }
    .end annotation

    .line 2826
    invoke-virtual {p0}, Landroidx/transition/Transition$SeekController;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2827
    invoke-interface {p1, p0}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 2830
    :cond_0
    iget-object v0, p0, Landroidx/transition/Transition$SeekController;->mOnReadyListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 2831
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/transition/Transition$SeekController;->mOnReadyListeners:Ljava/util/ArrayList;

    .line 2833
    :cond_1
    iget-object v0, p0, Landroidx/transition/Transition$SeekController;->mOnReadyListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public animateToEnd()V
    .locals 5

    .line 2907
    invoke-direct {p0}, Landroidx/transition/Transition$SeekController;->ensureAnimation()V

    .line 2908
    iget-object v0, p0, Landroidx/transition/Transition$SeekController;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Landroidx/transition/Transition$SeekController;->getDurationMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    long-to-float v1, v1

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method

.method public animateToStart(Ljava/lang/Runnable;)V
    .locals 1

    .line 2913
    iput-object p1, p0, Landroidx/transition/Transition$SeekController;->mResetToStartState:Ljava/lang/Runnable;

    .line 2914
    invoke-direct {p0}, Landroidx/transition/Transition$SeekController;->ensureAnimation()V

    .line 2915
    iget-object p1, p0, Landroidx/transition/Transition$SeekController;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method

.method public getCurrentFraction()F
    .locals 3

    .line 2755
    invoke-virtual {p0}, Landroidx/transition/Transition$SeekController;->getCurrentPlayTimeMillis()J

    move-result-wide v0

    long-to-float v0, v0

    invoke-virtual {p0}, Landroidx/transition/Transition$SeekController;->getDurationMillis()J

    move-result-wide v1

    long-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getCurrentPlayTimeMillis()J
    .locals 6

    .line 2750
    invoke-virtual {p0}, Landroidx/transition/Transition$SeekController;->getDurationMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    iget-wide v4, p0, Landroidx/transition/Transition$SeekController;->mCurrentPlayTime:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDurationMillis()J
    .locals 2

    .line 2745
    iget-object v0, p0, Landroidx/transition/Transition$SeekController;->this$0:Landroidx/transition/Transition;

    invoke-virtual {v0}, Landroidx/transition/Transition;->getTotalDurationMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method initPlayTime()V
    .locals 6

    .line 2808
    invoke-virtual {p0}, Landroidx/transition/Transition$SeekController;->getDurationMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v2, 0x1

    .line 2809
    :cond_0
    iget-object v0, p0, Landroidx/transition/Transition$SeekController;->this$0:Landroidx/transition/Transition;

    iget-wide v4, p0, Landroidx/transition/Transition$SeekController;->mCurrentPlayTime:J

    invoke-virtual {v0, v2, v3, v4, v5}, Landroidx/transition/Transition;->setCurrentPlayTimeMillis(JJ)V

    .line 2810
    iput-wide v2, p0, Landroidx/transition/Transition$SeekController;->mCurrentPlayTime:J

    return-void
.end method

.method public isReady()Z
    .locals 1

    .line 2760
    iget-boolean v0, p0, Landroidx/transition/Transition$SeekController;->mIsReady:Z

    return v0
.end method

.method synthetic lambda$ensureAnimation$0$androidx-transition-Transition$SeekController(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 4

    .line 0
    if-nez p2, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float p1, p3, p1

    const/4 p2, 0x0

    if-gez p1, :cond_1

    .line 2883
    invoke-virtual {p0}, Landroidx/transition/Transition$SeekController;->getDurationMillis()J

    move-result-wide p3

    .line 2885
    iget-object p1, p0, Landroidx/transition/Transition$SeekController;->this$0:Landroidx/transition/Transition;

    check-cast p1, Landroidx/transition/TransitionSet;

    invoke-virtual {p1, p2}, Landroidx/transition/TransitionSet;->getTransitionAt(I)Landroidx/transition/Transition;

    move-result-object p1

    .line 2886
    invoke-static {p1}, Landroidx/transition/Transition;->access$000(Landroidx/transition/Transition;)Landroidx/transition/Transition;

    move-result-object p2

    const/4 v0, 0x0

    .line 2887
    invoke-static {p1, v0}, Landroidx/transition/Transition;->access$002(Landroidx/transition/Transition;Landroidx/transition/Transition;)Landroidx/transition/Transition;

    .line 2888
    iget-object p1, p0, Landroidx/transition/Transition$SeekController;->this$0:Landroidx/transition/Transition;

    iget-wide v0, p0, Landroidx/transition/Transition$SeekController;->mCurrentPlayTime:J

    const-wide/16 v2, -0x1

    invoke-virtual {p1, v2, v3, v0, v1}, Landroidx/transition/Transition;->setCurrentPlayTimeMillis(JJ)V

    .line 2889
    iget-object p1, p0, Landroidx/transition/Transition$SeekController;->this$0:Landroidx/transition/Transition;

    invoke-virtual {p1, p3, p4, v2, v3}, Landroidx/transition/Transition;->setCurrentPlayTimeMillis(JJ)V

    .line 2890
    iput-wide p3, p0, Landroidx/transition/Transition$SeekController;->mCurrentPlayTime:J

    .line 2891
    iget-object p1, p0, Landroidx/transition/Transition$SeekController;->mResetToStartState:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 2892
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 2894
    :cond_0
    iget-object p1, p0, Landroidx/transition/Transition$SeekController;->this$0:Landroidx/transition/Transition;

    iget-object p1, p1, Landroidx/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    if-eqz p2, :cond_2

    .line 2896
    sget-object p1, Landroidx/transition/Transition$TransitionNotification;->ON_END:Landroidx/transition/Transition$TransitionNotification;

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Landroidx/transition/Transition;->notifyListeners(Landroidx/transition/Transition$TransitionNotification;Z)V

    goto :goto_0

    .line 2899
    :cond_1
    iget-object p1, p0, Landroidx/transition/Transition$SeekController;->this$0:Landroidx/transition/Transition;

    sget-object p3, Landroidx/transition/Transition$TransitionNotification;->ON_END:Landroidx/transition/Transition$TransitionNotification;

    invoke-virtual {p1, p3, p2}, Landroidx/transition/Transition;->notifyListeners(Landroidx/transition/Transition$TransitionNotification;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onAnimationUpdate(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 4

    .line 2855
    invoke-virtual {p0}, Landroidx/transition/Transition$SeekController;->getDurationMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    float-to-double p1, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    const-wide/16 v0, -0x1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 2856
    iget-object p3, p0, Landroidx/transition/Transition$SeekController;->this$0:Landroidx/transition/Transition;

    iget-wide v0, p0, Landroidx/transition/Transition$SeekController;->mCurrentPlayTime:J

    invoke-virtual {p3, p1, p2, v0, v1}, Landroidx/transition/Transition;->setCurrentPlayTimeMillis(JJ)V

    .line 2857
    iput-wide p1, p0, Landroidx/transition/Transition$SeekController;->mCurrentPlayTime:J

    .line 2858
    invoke-direct {p0}, Landroidx/transition/Transition$SeekController;->callProgressListeners()V

    return-void
.end method

.method public onTransitionCancel(Landroidx/transition/Transition;)V
    .locals 0

    const/4 p1, 0x1

    .line 2850
    iput-boolean p1, p0, Landroidx/transition/Transition$SeekController;->mIsCanceled:Z

    return-void
.end method

.method public ready()V
    .locals 3

    const/4 v0, 0x1

    .line 2764
    iput-boolean v0, p0, Landroidx/transition/Transition$SeekController;->mIsReady:Z

    .line 2765
    iget-object v0, p0, Landroidx/transition/Transition$SeekController;->mOnReadyListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2767
    iput-object v1, p0, Landroidx/transition/Transition$SeekController;->mOnReadyListeners:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 2768
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2769
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/util/Consumer;

    invoke-interface {v2, p0}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2772
    :cond_0
    invoke-direct {p0}, Landroidx/transition/Transition$SeekController;->callProgressListeners()V

    return-void
.end method

.method public removeOnProgressChangedListener(Landroidx/core/util/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer<",
            "Landroidx/transition/TransitionSeekController;",
            ">;)V"
        }
    .end annotation

    .line 2930
    iget-object v0, p0, Landroidx/transition/Transition$SeekController;->mOnProgressListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2931
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeOnReadyListener(Landroidx/core/util/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer<",
            "Landroidx/transition/TransitionSeekController;",
            ">;)V"
        }
    .end annotation

    .line 2840
    iget-object v0, p0, Landroidx/transition/Transition$SeekController;->mOnReadyListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2841
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2842
    iget-object p1, p0, Landroidx/transition/Transition$SeekController;->mOnReadyListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2843
    iput-object p1, p0, Landroidx/transition/Transition$SeekController;->mOnReadyListeners:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method

.method public setCurrentFraction(F)V
    .locals 2

    .line 2815
    iget-object v0, p0, Landroidx/transition/Transition$SeekController;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v0, :cond_0

    .line 2819
    invoke-virtual {p0}, Landroidx/transition/Transition$SeekController;->getDurationMillis()J

    move-result-wide v0

    long-to-float v0, v0

    mul-float/2addr p1, v0

    float-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroidx/transition/Transition$SeekController;->setCurrentPlayTimeMillis(J)V

    return-void

    .line 2816
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "setCurrentFraction() called after animation has been started"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCurrentPlayTimeMillis(J)V
    .locals 4

    .line 2777
    iget-object v0, p0, Landroidx/transition/Transition$SeekController;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v0, :cond_5

    .line 2781
    iget-wide v0, p0, Landroidx/transition/Transition$SeekController;->mCurrentPlayTime:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroidx/transition/Transition$SeekController;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2786
    :cond_0
    iget-boolean v0, p0, Landroidx/transition/Transition$SeekController;->mIsCanceled:Z

    if-nez v0, :cond_3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    .line 2787
    iget-wide v2, p0, Landroidx/transition/Transition$SeekController;->mCurrentPlayTime:J

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    const-wide/16 p1, -0x1

    goto :goto_0

    .line 2791
    :cond_1
    invoke-virtual {p0}, Landroidx/transition/Transition$SeekController;->getDurationMillis()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-nez v2, :cond_2

    .line 2793
    iget-wide v2, p0, Landroidx/transition/Transition$SeekController;->mCurrentPlayTime:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_2

    const-wide/16 p1, 0x1

    add-long/2addr v0, p1

    move-wide p1, v0

    .line 2797
    :cond_2
    :goto_0
    iget-wide v0, p0, Landroidx/transition/Transition$SeekController;->mCurrentPlayTime:J

    cmp-long v2, p1, v0

    if-eqz v2, :cond_3

    .line 2798
    iget-object v2, p0, Landroidx/transition/Transition$SeekController;->this$0:Landroidx/transition/Transition;

    invoke-virtual {v2, p1, p2, v0, v1}, Landroidx/transition/Transition;->setCurrentPlayTimeMillis(JJ)V

    .line 2799
    iput-wide p1, p0, Landroidx/transition/Transition$SeekController;->mCurrentPlayTime:J

    .line 2802
    :cond_3
    invoke-direct {p0}, Landroidx/transition/Transition$SeekController;->callProgressListeners()V

    .line 2803
    iget-object v0, p0, Landroidx/transition/Transition$SeekController;->mVelocityTracker:Landroidx/transition/VelocityTracker1D;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    long-to-float p1, p1

    invoke-virtual {v0, v1, v2, p1}, Landroidx/transition/VelocityTracker1D;->addDataPoint(JF)V

    :cond_4
    :goto_1
    return-void

    .line 2778
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "setCurrentPlayTimeMillis() called after animation has been started"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
