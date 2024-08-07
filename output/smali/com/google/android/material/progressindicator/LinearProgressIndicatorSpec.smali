.class public final Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;
.super Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;
.source "LinearProgressIndicatorSpec.java"


# instance fields
.field drawHorizontallyInverse:Z

.field public indeterminateAnimationType:I

.field public indicatorDirection:I

.field public trackStopIndicatorSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 65
    sget v0, Lcom/google/android/material/R$attr;->linearProgressIndicatorStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 70
    sget v0, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->DEF_STYLE_RES:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6

    .line 78
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 80
    sget-object v2, Lcom/google/android/material/R$styleable;->LinearProgressIndicator:[I

    sget v3, Lcom/google/android/material/R$attr;->linearProgressIndicatorStyle:I

    sget v4, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->DEF_STYLE_RES:I

    const/4 p3, 0x0

    new-array v5, p3, [I

    move-object v0, p1

    move-object v1, p2

    .line 81
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 87
    sget p2, Lcom/google/android/material/R$styleable;->LinearProgressIndicator_indeterminateAnimationType:I

    const/4 p4, 0x1

    .line 88
    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->indeterminateAnimationType:I

    .line 91
    sget p2, Lcom/google/android/material/R$styleable;->LinearProgressIndicator_indicatorDirectionLinear:I

    .line 92
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->indicatorDirection:I

    .line 95
    sget p2, Lcom/google/android/material/R$styleable;->LinearProgressIndicator_trackStopIndicatorSize:I

    .line 97
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iget v0, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->trackThickness:I

    .line 96
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->trackStopIndicatorSize:I

    .line 99
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 101
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->validateSpec()V

    .line 103
    iget p1, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->indicatorDirection:I

    if-ne p1, p4, :cond_0

    move p3, p4

    :cond_0
    iput-boolean p3, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->drawHorizontallyInverse:Z

    return-void
.end method


# virtual methods
.method validateSpec()V
    .locals 2

    .line 109
    invoke-super {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->validateSpec()V

    .line 110
    iget v0, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->trackStopIndicatorSize:I

    if-ltz v0, :cond_4

    .line 114
    iget v0, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->indeterminateAnimationType:I

    if-nez v0, :cond_3

    .line 116
    iget v0, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->trackCornerRadius:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->indicatorTrackGapSize:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Rounded corners without gap are not supported in contiguous indeterminate animation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->indicatorColors:[I

    array-length v0, v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    goto :goto_1

    .line 125
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Contiguous indeterminate animation must be used with 3 or more indicator colors."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    return-void

    .line 112
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Stop indicator size must be >= 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
