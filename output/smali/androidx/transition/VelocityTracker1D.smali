.class Landroidx/transition/VelocityTracker1D;
.super Ljava/lang/Object;
.source "VelocityTracker1D.java"


# static fields
.field private static final ASSUME_POINTER_MOVE_STOPPED_MILLIS:I = 0x28

.field private static final HISTORY_SIZE:I = 0x14

.field private static final HORIZON_MILLIS:I = 0x64


# instance fields
.field private mDataSamples:[F

.field private mIndex:I

.field private mTimeSamples:[J


# direct methods
.method constructor <init>()V
    .locals 4

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    .line 30
    new-array v1, v0, [J

    iput-object v1, p0, Landroidx/transition/VelocityTracker1D;->mTimeSamples:[J

    .line 31
    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/transition/VelocityTracker1D;->mDataSamples:[F

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Landroidx/transition/VelocityTracker1D;->mIndex:I

    const-wide/high16 v2, -0x8000000000000000L

    .line 35
    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    return-void
.end method

.method private kineticEnergyToVelocity(F)F
    .locals 4

    .line 139
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v0

    float-to-double v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    mul-float/2addr p1, v2

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-float p1, v0

    return p1
.end method


# virtual methods
.method public addDataPoint(JF)V
    .locals 2

    .line 47
    iget v0, p0, Landroidx/transition/VelocityTracker1D;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x14

    iput v0, p0, Landroidx/transition/VelocityTracker1D;->mIndex:I

    .line 48
    iget-object v1, p0, Landroidx/transition/VelocityTracker1D;->mTimeSamples:[J

    aput-wide p1, v1, v0

    .line 49
    iget-object p1, p0, Landroidx/transition/VelocityTracker1D;->mDataSamples:[F

    aput p3, p1, v0

    return-void
.end method

.method calculateVelocity()F
    .locals 15

    .line 67
    iget v0, p0, Landroidx/transition/VelocityTracker1D;->mIndex:I

    const-wide/high16 v1, -0x8000000000000000L

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 69
    iget-object v4, p0, Landroidx/transition/VelocityTracker1D;->mTimeSamples:[J

    aget-wide v5, v4, v0

    cmp-long v4, v5, v1

    if-nez v4, :cond_0

    return v3

    .line 74
    :cond_0
    iget-object v4, p0, Landroidx/transition/VelocityTracker1D;->mTimeSamples:[J

    aget-wide v5, v4, v0

    const/4 v4, 0x0

    move-wide v7, v5

    .line 81
    :goto_0
    iget-object v9, p0, Landroidx/transition/VelocityTracker1D;->mTimeSamples:[J

    aget-wide v10, v9, v0

    cmp-long v9, v10, v1

    const/16 v12, 0x14

    if-nez v9, :cond_1

    goto :goto_1

    :cond_1
    sub-long v13, v5, v10

    long-to-float v9, v13

    sub-long v7, v10, v7

    .line 86
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    long-to-float v7, v7

    const/high16 v8, 0x42c80000    # 100.0f

    cmpl-float v8, v9, v8

    if-gtz v8, :cond_5

    const/high16 v8, 0x42200000    # 40.0f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    move v0, v12

    :cond_3
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v4, v4, 0x1

    if-lt v4, v12, :cond_4

    goto :goto_1

    :cond_4
    move-wide v7, v10

    goto :goto_0

    :cond_5
    :goto_1
    const/4 v0, 0x2

    if-ge v4, v0, :cond_6

    return v3

    :cond_6
    const/high16 v1, 0x447a0000    # 1000.0f

    if-ne v4, v0, :cond_9

    .line 103
    iget v0, p0, Landroidx/transition/VelocityTracker1D;->mIndex:I

    if-nez v0, :cond_7

    const/16 v2, 0x13

    goto :goto_2

    :cond_7
    add-int/lit8 v2, v0, -0x1

    .line 104
    :goto_2
    iget-object v4, p0, Landroidx/transition/VelocityTracker1D;->mTimeSamples:[J

    aget-wide v5, v4, v0

    aget-wide v7, v4, v2

    sub-long/2addr v5, v7

    long-to-float v4, v5

    cmpl-float v5, v4, v3

    if-nez v5, :cond_8

    return v3

    .line 108
    :cond_8
    iget-object v3, p0, Landroidx/transition/VelocityTracker1D;->mDataSamples:[F

    aget v0, v3, v0

    aget v2, v3, v2

    sub-float/2addr v0, v2

    div-float/2addr v0, v4

    :goto_3
    mul-float/2addr v0, v1

    return v0

    .line 113
    :cond_9
    iget v0, p0, Landroidx/transition/VelocityTracker1D;->mIndex:I

    sub-int v2, v0, v4

    add-int/lit8 v2, v2, 0x15

    rem-int/2addr v2, v12

    add-int/lit8 v0, v0, 0x15

    .line 114
    rem-int/2addr v0, v12

    .line 115
    iget-object v4, p0, Landroidx/transition/VelocityTracker1D;->mTimeSamples:[J

    aget-wide v5, v4, v2

    .line 116
    iget-object v4, p0, Landroidx/transition/VelocityTracker1D;->mDataSamples:[F

    aget v4, v4, v2

    add-int/lit8 v2, v2, 0x1

    .line 117
    rem-int/lit8 v7, v2, 0x14

    move v8, v3

    :goto_4
    if-eq v7, v0, :cond_c

    .line 118
    iget-object v9, p0, Landroidx/transition/VelocityTracker1D;->mTimeSamples:[J

    aget-wide v10, v9, v7

    sub-long v13, v10, v5

    long-to-float v9, v13

    cmpl-float v13, v9, v3

    if-nez v13, :cond_a

    goto :goto_5

    .line 123
    :cond_a
    iget-object v5, p0, Landroidx/transition/VelocityTracker1D;->mDataSamples:[F

    aget v5, v5, v7

    .line 124
    invoke-direct {p0, v8}, Landroidx/transition/VelocityTracker1D;->kineticEnergyToVelocity(F)F

    move-result v6

    sub-float v4, v5, v4

    div-float/2addr v4, v9

    sub-float v6, v4, v6

    .line 128
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v6, v4

    add-float/2addr v8, v6

    if-ne v7, v2, :cond_b

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v8, v4

    :cond_b
    move v4, v5

    move-wide v5, v10

    :goto_5
    add-int/lit8 v7, v7, 0x1

    .line 117
    rem-int/2addr v7, v12

    goto :goto_4

    .line 135
    :cond_c
    invoke-direct {p0, v8}, Landroidx/transition/VelocityTracker1D;->kineticEnergyToVelocity(F)F

    move-result v0

    goto :goto_3
.end method

.method public resetTracking()V
    .locals 3

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Landroidx/transition/VelocityTracker1D;->mIndex:I

    .line 54
    iget-object v0, p0, Landroidx/transition/VelocityTracker1D;->mTimeSamples:[J

    const-wide/high16 v1, -0x8000000000000000L

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    .line 55
    iget-object v0, p0, Landroidx/transition/VelocityTracker1D;->mDataSamples:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    return-void
.end method
