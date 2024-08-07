.class public Landroidx/core/view/DifferentialMotionFlingController;
.super Ljava/lang/Object;
.source "DifferentialMotionFlingController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/DifferentialMotionFlingController$FlingVelocityThresholdCalculator;,
        Landroidx/core/view/DifferentialMotionFlingController$DifferentialVelocityProvider;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFlingVelocityThresholds:[I

.field private mLastFlingVelocity:F

.field private mLastProcessedAxis:I

.field private mLastProcessedDeviceId:I

.field private mLastProcessedSource:I

.field private final mTarget:Landroidx/core/view/DifferentialMotionFlingTarget;

.field private final mVelocityProvider:Landroidx/core/view/DifferentialMotionFlingController$DifferentialVelocityProvider;

.field private final mVelocityThresholdCalculator:Landroidx/core/view/DifferentialMotionFlingController$FlingVelocityThresholdCalculator;

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public static synthetic $r8$lambda$lv23FpWloyumz6IvnMabmJR9BpE(Landroid/content/Context;[ILandroid/view/MotionEvent;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/core/view/DifferentialMotionFlingController;->calculateFlingVelocityThresholds(Landroid/content/Context;[ILandroid/view/MotionEvent;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$rCNQ1h5KBIaVcUXhwymI_1638W0(Landroid/view/VelocityTracker;Landroid/view/MotionEvent;I)F
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/core/view/DifferentialMotionFlingController;->getCurrentVelocity(Landroid/view/VelocityTracker;Landroid/view/MotionEvent;I)F

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/core/view/DifferentialMotionFlingTarget;)V
    .locals 2

    .line 104
    new-instance v0, Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;-><init>()V

    new-instance v1, Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/core/view/DifferentialMotionFlingController;-><init>(Landroid/content/Context;Landroidx/core/view/DifferentialMotionFlingTarget;Landroidx/core/view/DifferentialMotionFlingController$FlingVelocityThresholdCalculator;Landroidx/core/view/DifferentialMotionFlingController$DifferentialVelocityProvider;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroidx/core/view/DifferentialMotionFlingTarget;Landroidx/core/view/DifferentialMotionFlingController$FlingVelocityThresholdCalculator;Landroidx/core/view/DifferentialMotionFlingController$DifferentialVelocityProvider;)V
    .locals 2

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 56
    iput v0, p0, Landroidx/core/view/DifferentialMotionFlingController;->mLastProcessedAxis:I

    .line 57
    iput v0, p0, Landroidx/core/view/DifferentialMotionFlingController;->mLastProcessedSource:I

    .line 58
    iput v0, p0, Landroidx/core/view/DifferentialMotionFlingController;->mLastProcessedDeviceId:I

    const v0, 0x7fffffff

    const/4 v1, 0x0

    .line 61
    filled-new-array {v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Landroidx/core/view/DifferentialMotionFlingController;->mFlingVelocityThresholds:[I

    .line 116
    iput-object p1, p0, Landroidx/core/view/DifferentialMotionFlingController;->mContext:Landroid/content/Context;

    .line 117
    iput-object p2, p0, Landroidx/core/view/DifferentialMotionFlingController;->mTarget:Landroidx/core/view/DifferentialMotionFlingTarget;

    .line 118
    iput-object p3, p0, Landroidx/core/view/DifferentialMotionFlingController;->mVelocityThresholdCalculator:Landroidx/core/view/DifferentialMotionFlingController$FlingVelocityThresholdCalculator;

    .line 119
    iput-object p4, p0, Landroidx/core/view/DifferentialMotionFlingController;->mVelocityProvider:Landroidx/core/view/DifferentialMotionFlingController$DifferentialVelocityProvider;

    return-void
.end method

.method private static calculateFlingVelocityThresholds(Landroid/content/Context;[ILandroid/view/MotionEvent;I)V
    .locals 3

    .line 194
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 196
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    .line 195
    invoke-static {p0, v0, v1, p3, v2}, Landroidx/core/view/ViewConfigurationCompat;->getScaledMinimumFlingVelocity(Landroid/content/Context;Landroid/view/ViewConfiguration;III)I

    move-result v1

    const/4 v2, 0x0

    aput v1, p1, v2

    .line 198
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result p2

    .line 197
    invoke-static {p0, v0, v1, p3, p2}, Landroidx/core/view/ViewConfigurationCompat;->getScaledMaximumFlingVelocity(Landroid/content/Context;Landroid/view/ViewConfiguration;III)I

    move-result p0

    const/4 p2, 0x1

    aput p0, p1, p2

    return-void
.end method

.method private calculateFlingVelocityThresholds(Landroid/view/MotionEvent;I)Z
    .locals 5

    .line 175
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    .line 176
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v1

    .line 177
    iget v2, p0, Landroidx/core/view/DifferentialMotionFlingController;->mLastProcessedSource:I

    if-ne v2, v0, :cond_1

    iget v2, p0, Landroidx/core/view/DifferentialMotionFlingController;->mLastProcessedDeviceId:I

    if-ne v2, v1, :cond_1

    iget v2, p0, Landroidx/core/view/DifferentialMotionFlingController;->mLastProcessedAxis:I

    if-eq v2, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 180
    :cond_1
    :goto_0
    iget-object v2, p0, Landroidx/core/view/DifferentialMotionFlingController;->mVelocityThresholdCalculator:Landroidx/core/view/DifferentialMotionFlingController$FlingVelocityThresholdCalculator;

    iget-object v3, p0, Landroidx/core/view/DifferentialMotionFlingController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroidx/core/view/DifferentialMotionFlingController;->mFlingVelocityThresholds:[I

    invoke-interface {v2, v3, v4, p1, p2}, Landroidx/core/view/DifferentialMotionFlingController$FlingVelocityThresholdCalculator;->calculateFlingVelocityThresholds(Landroid/content/Context;[ILandroid/view/MotionEvent;I)V

    .line 184
    iput v0, p0, Landroidx/core/view/DifferentialMotionFlingController;->mLastProcessedSource:I

    .line 185
    iput v1, p0, Landroidx/core/view/DifferentialMotionFlingController;->mLastProcessedDeviceId:I

    .line 186
    iput p2, p0, Landroidx/core/view/DifferentialMotionFlingController;->mLastProcessedAxis:I

    const/4 p1, 0x1

    return p1
.end method

.method private getCurrentVelocity(Landroid/view/MotionEvent;I)F
    .locals 2

    .line 202
    iget-object v0, p0, Landroidx/core/view/DifferentialMotionFlingController;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 203
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/view/DifferentialMotionFlingController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 206
    :cond_0
    iget-object v0, p0, Landroidx/core/view/DifferentialMotionFlingController;->mVelocityProvider:Landroidx/core/view/DifferentialMotionFlingController$DifferentialVelocityProvider;

    iget-object v1, p0, Landroidx/core/view/DifferentialMotionFlingController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-interface {v0, v1, p1, p2}, Landroidx/core/view/DifferentialMotionFlingController$DifferentialVelocityProvider;->getCurrentVelocity(Landroid/view/VelocityTracker;Landroid/view/MotionEvent;I)F

    move-result p1

    return p1
.end method

.method private static getCurrentVelocity(Landroid/view/VelocityTracker;Landroid/view/MotionEvent;I)F
    .locals 0

    .line 210
    invoke-static {p0, p1}, Landroidx/core/view/VelocityTrackerCompat;->addMovement(Landroid/view/VelocityTracker;Landroid/view/MotionEvent;)V

    const/16 p1, 0x3e8

    .line 211
    invoke-static {p0, p1}, Landroidx/core/view/VelocityTrackerCompat;->computeCurrentVelocity(Landroid/view/VelocityTracker;I)V

    .line 212
    invoke-static {p0, p2}, Landroidx/core/view/VelocityTrackerCompat;->getAxisVelocity(Landroid/view/VelocityTracker;I)F

    move-result p0

    return p0
.end method


# virtual methods
.method public onMotionEvent(Landroid/view/MotionEvent;I)V
    .locals 4

    .line 129
    invoke-direct {p0, p1, p2}, Landroidx/core/view/DifferentialMotionFlingController;->calculateFlingVelocityThresholds(Landroid/view/MotionEvent;I)Z

    move-result v0

    .line 130
    iget-object v1, p0, Landroidx/core/view/DifferentialMotionFlingController;->mFlingVelocityThresholds:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    const v3, 0x7fffffff

    if-ne v1, v3, :cond_1

    .line 133
    iget-object p1, p0, Landroidx/core/view/DifferentialMotionFlingController;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_0

    .line 134
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 135
    iput-object p1, p0, Landroidx/core/view/DifferentialMotionFlingController;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void

    .line 141
    :cond_1
    invoke-direct {p0, p1, p2}, Landroidx/core/view/DifferentialMotionFlingController;->getCurrentVelocity(Landroid/view/MotionEvent;I)F

    move-result p1

    iget-object p2, p0, Landroidx/core/view/DifferentialMotionFlingController;->mTarget:Landroidx/core/view/DifferentialMotionFlingTarget;

    invoke-interface {p2}, Landroidx/core/view/DifferentialMotionFlingTarget;->getScaledScrollFactor()F

    move-result p2

    mul-float/2addr p1, p2

    .line 143
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p2

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 146
    iget v0, p0, Landroidx/core/view/DifferentialMotionFlingController;->mLastFlingVelocity:F

    .line 147
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_3

    cmpl-float p2, p2, v1

    if-eqz p2, :cond_3

    .line 149
    :cond_2
    iget-object p2, p0, Landroidx/core/view/DifferentialMotionFlingController;->mTarget:Landroidx/core/view/DifferentialMotionFlingTarget;

    invoke-interface {p2}, Landroidx/core/view/DifferentialMotionFlingTarget;->stopDifferentialMotionFling()V

    .line 152
    :cond_3
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget-object v0, p0, Landroidx/core/view/DifferentialMotionFlingController;->mFlingVelocityThresholds:[I

    aget v2, v0, v2

    int-to-float v2, v2

    cmpg-float p2, p2, v2

    if-gez p2, :cond_4

    return-void

    :cond_4
    const/4 p2, 0x1

    .line 161
    aget p2, v0, p2

    neg-int v0, p2

    int-to-float v0, v0

    int-to-float p2, p2

    .line 164
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 162
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 166
    iget-object p2, p0, Landroidx/core/view/DifferentialMotionFlingController;->mTarget:Landroidx/core/view/DifferentialMotionFlingTarget;

    invoke-interface {p2, p1}, Landroidx/core/view/DifferentialMotionFlingTarget;->startDifferentialMotionFling(F)Z

    move-result p2

    if-eqz p2, :cond_5

    move v1, p1

    .line 167
    :cond_5
    iput v1, p0, Landroidx/core/view/DifferentialMotionFlingController;->mLastFlingVelocity:F

    return-void
.end method
