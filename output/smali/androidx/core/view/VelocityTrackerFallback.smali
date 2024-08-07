.class Landroidx/core/view/VelocityTrackerFallback;
.super Ljava/lang/Object;
.source "VelocityTrackerFallback.java"


# static fields
.field private static final ASSUME_POINTER_STOPPED_MS:J = 0x28L

.field private static final HISTORY_SIZE:I = 0x14

.field private static final RANGE_MS:J = 0x64L


# instance fields
.field private mDataPointsBufferLastUsedIndex:I

.field private mDataPointsBufferSize:I

.field private final mEventTimes:[J

.field private mLastComputedVelocity:F

.field private final mMovements:[F


# direct methods
.method constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    .line 44
    new-array v1, v0, [F

    iput-object v1, p0, Landroidx/core/view/VelocityTrackerFallback;->mMovements:[F

    .line 45
    new-array v0, v0, [J

    iput-object v0, p0, Landroidx/core/view/VelocityTrackerFallback;->mEventTimes:[J

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Landroidx/core/view/VelocityTrackerFallback;->mLastComputedVelocity:F

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Landroidx/core/view/VelocityTrackerFallback;->mDataPointsBufferSize:I

    .line 56
    iput v0, p0, Landroidx/core/view/VelocityTrackerFallback;->mDataPointsBufferLastUsedIndex:I

    return-void
.end method

.method private clear()V
    .locals 1

    const/4 v0, 0x0

    .line 108
    iput v0, p0, Landroidx/core/view/VelocityTrackerFallback;->mDataPointsBufferSize:I

    const/4 v0, 0x0

    .line 109
    iput v0, p0, Landroidx/core/view/VelocityTrackerFallback;->mLastComputedVelocity:F

    return-void
.end method

.method private getCurrentVelocity()F
    .locals 14

    .line 114
    iget v0, p0, Landroidx/core/view/VelocityTrackerFallback;->mDataPointsBufferSize:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    return v1

    .line 120
    :cond_0
    iget v3, p0, Landroidx/core/view/VelocityTrackerFallback;->mDataPointsBufferLastUsedIndex:I

    add-int/lit8 v4, v3, 0x14

    const/4 v5, 0x1

    sub-int/2addr v0, v5

    sub-int/2addr v4, v0

    rem-int/lit8 v4, v4, 0x14

    .line 123
    iget-object v0, p0, Landroidx/core/view/VelocityTrackerFallback;->mEventTimes:[J

    aget-wide v6, v0, v3

    .line 124
    :goto_0
    iget-object v0, p0, Landroidx/core/view/VelocityTrackerFallback;->mEventTimes:[J

    aget-wide v8, v0, v4

    sub-long v10, v6, v8

    const-wide/16 v12, 0x64

    cmp-long v3, v10, v12

    if-lez v3, :cond_1

    .line 126
    iget v0, p0, Landroidx/core/view/VelocityTrackerFallback;->mDataPointsBufferSize:I

    sub-int/2addr v0, v5

    iput v0, p0, Landroidx/core/view/VelocityTrackerFallback;->mDataPointsBufferSize:I

    add-int/lit8 v4, v4, 0x1

    .line 129
    rem-int/lit8 v4, v4, 0x14

    goto :goto_0

    .line 133
    :cond_1
    iget v3, p0, Landroidx/core/view/VelocityTrackerFallback;->mDataPointsBufferSize:I

    if-ge v3, v2, :cond_2

    return v1

    :cond_2
    if-ne v3, v2, :cond_4

    add-int/2addr v4, v5

    .line 138
    rem-int/lit8 v4, v4, 0x14

    .line 139
    aget-wide v2, v0, v4

    cmp-long v0, v8, v2

    if-nez v0, :cond_3

    return v1

    .line 142
    :cond_3
    iget-object v0, p0, Landroidx/core/view/VelocityTrackerFallback;->mMovements:[F

    aget v0, v0, v4

    sub-long/2addr v2, v8

    long-to-float v1, v2

    div-float/2addr v0, v1

    return v0

    :cond_4
    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    .line 150
    :goto_1
    iget v3, p0, Landroidx/core/view/VelocityTrackerFallback;->mDataPointsBufferSize:I

    sub-int/2addr v3, v5

    if-ge v0, v3, :cond_7

    add-int v3, v0, v4

    .line 152
    iget-object v6, p0, Landroidx/core/view/VelocityTrackerFallback;->mEventTimes:[J

    rem-int/lit8 v7, v3, 0x14

    aget-wide v7, v6, v7

    add-int/2addr v3, v5

    .line 153
    rem-int/lit8 v3, v3, 0x14

    .line 156
    aget-wide v9, v6, v3

    cmp-long v6, v9, v7

    if-nez v6, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 161
    invoke-static {v2}, Landroidx/core/view/VelocityTrackerFallback;->kineticEnergyToVelocity(F)F

    move-result v6

    .line 162
    iget-object v9, p0, Landroidx/core/view/VelocityTrackerFallback;->mMovements:[F

    aget v9, v9, v3

    .line 163
    iget-object v10, p0, Landroidx/core/view/VelocityTrackerFallback;->mEventTimes:[J

    aget-wide v11, v10, v3

    sub-long/2addr v11, v7

    long-to-float v3, v11

    div-float/2addr v9, v3

    sub-float v3, v9, v6

    .line 165
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v6

    mul-float/2addr v3, v6

    add-float/2addr v2, v3

    if-ne v1, v5, :cond_6

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    :cond_6
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 175
    :cond_7
    invoke-static {v2}, Landroidx/core/view/VelocityTrackerFallback;->kineticEnergyToVelocity(F)F

    move-result v0

    return v0
.end method

.method private static kineticEnergyToVelocity(F)F
    .locals 3

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    const/high16 v1, 0x40000000    # 2.0f

    .line 180
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    mul-float/2addr p0, v1

    float-to-double v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float p0, v1

    mul-float/2addr v0, p0

    return v0
.end method


# virtual methods
.method addMovement(Landroid/view/MotionEvent;)V
    .locals 6

    .line 60
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    .line 61
    iget v2, p0, Landroidx/core/view/VelocityTrackerFallback;->mDataPointsBufferSize:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroidx/core/view/VelocityTrackerFallback;->mEventTimes:[J

    iget v3, p0, Landroidx/core/view/VelocityTrackerFallback;->mDataPointsBufferLastUsedIndex:I

    aget-wide v3, v2, v3

    sub-long v2, v0, v3

    const-wide/16 v4, 0x28

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 67
    invoke-direct {p0}, Landroidx/core/view/VelocityTrackerFallback;->clear()V

    .line 70
    :cond_0
    iget v2, p0, Landroidx/core/view/VelocityTrackerFallback;->mDataPointsBufferLastUsedIndex:I

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x14

    rem-int/2addr v2, v3

    iput v2, p0, Landroidx/core/view/VelocityTrackerFallback;->mDataPointsBufferLastUsedIndex:I

    .line 73
    iget v4, p0, Landroidx/core/view/VelocityTrackerFallback;->mDataPointsBufferSize:I

    if-eq v4, v3, :cond_1

    add-int/lit8 v4, v4, 0x1

    .line 74
    iput v4, p0, Landroidx/core/view/VelocityTrackerFallback;->mDataPointsBufferSize:I

    .line 77
    :cond_1
    iget-object v3, p0, Landroidx/core/view/VelocityTrackerFallback;->mMovements:[F

    const/16 v4, 0x1a

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p1

    aput p1, v3, v2

    .line 78
    iget-object p1, p0, Landroidx/core/view/VelocityTrackerFallback;->mEventTimes:[J

    iget v2, p0, Landroidx/core/view/VelocityTrackerFallback;->mDataPointsBufferLastUsedIndex:I

    aput-wide v0, p1, v2

    return-void
.end method

.method computeCurrentVelocity(I)V
    .locals 1

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 83
    invoke-virtual {p0, p1, v0}, Landroidx/core/view/VelocityTrackerFallback;->computeCurrentVelocity(IF)V

    return-void
.end method

.method computeCurrentVelocity(IF)V
    .locals 1

    .line 88
    invoke-direct {p0}, Landroidx/core/view/VelocityTrackerFallback;->getCurrentVelocity()F

    move-result v0

    int-to-float p1, p1

    mul-float/2addr v0, p1

    iput v0, p0, Landroidx/core/view/VelocityTrackerFallback;->mLastComputedVelocity:F

    .line 92
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    neg-float p1, p1

    cmpg-float p1, v0, p1

    if-gez p1, :cond_0

    .line 93
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    neg-float p1, p1

    iput p1, p0, Landroidx/core/view/VelocityTrackerFallback;->mLastComputedVelocity:F

    goto :goto_0

    .line 94
    :cond_0
    iget p1, p0, Landroidx/core/view/VelocityTrackerFallback;->mLastComputedVelocity:F

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    .line 95
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Landroidx/core/view/VelocityTrackerFallback;->mLastComputedVelocity:F

    :cond_1
    :goto_0
    return-void
.end method

.method getAxisVelocity(I)F
    .locals 1

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 104
    :cond_0
    iget p1, p0, Landroidx/core/view/VelocityTrackerFallback;->mLastComputedVelocity:F

    return p1
.end method
