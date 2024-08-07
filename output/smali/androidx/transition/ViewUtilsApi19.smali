.class Landroidx/transition/ViewUtilsApi19;
.super Ljava/lang/Object;
.source "ViewUtilsApi19.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/ViewUtilsApi19$Api29Impl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewUtilsApi19"

.field private static final VISIBILITY_MASK:I = 0xc

.field private static sSetFrameFetched:Z = false

.field private static sSetFrameMethod:Ljava/lang/reflect/Method; = null

.field private static sTryHiddenTransitionAlpha:Z = true

.field private static sViewFlagsField:Ljava/lang/reflect/Field;

.field private static sViewFlagsFieldFetched:Z


# instance fields
.field private mMatrixValues:[F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private fetchSetFrame()V
    .locals 6

    .line 191
    sget-boolean v0, Landroidx/transition/ViewUtilsApi19;->sSetFrameFetched:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 193
    :try_start_0
    const-class v1, Landroid/view/View;

    const-string v2, "setFrame"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x2

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x3

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroidx/transition/ViewUtilsApi19;->sSetFrameMethod:Ljava/lang/reflect/Method;

    .line 195
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 197
    const-string v2, "ViewUtilsApi19"

    const-string v3, "Failed to retrieve setFrame method"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    :goto_0
    sput-boolean v0, Landroidx/transition/ViewUtilsApi19;->sSetFrameFetched:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public clearNonTransitionAlpha(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public getTransitionAlpha(Landroid/view/View;)F
    .locals 1

    .line 67
    sget-boolean v0, Landroidx/transition/ViewUtilsApi19;->sTryHiddenTransitionAlpha:Z

    if-eqz v0, :cond_0

    .line 71
    :try_start_0
    invoke-static {p1}, Landroidx/transition/ViewUtilsApi19$Api29Impl;->getTransitionAlpha(Landroid/view/View;)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 v0, 0x0

    .line 73
    sput-boolean v0, Landroidx/transition/ViewUtilsApi19;->sTryHiddenTransitionAlpha:Z

    .line 76
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    return p1
.end method

.method public saveNonTransitionAlpha(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public setAnimationMatrix(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 9

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    .line 119
    invoke-virtual {p2}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 128
    :cond_0
    iget-object v3, p0, Landroidx/transition/ViewUtilsApi19;->mMatrixValues:[F

    if-nez v3, :cond_1

    const/16 v3, 0x9

    .line 130
    new-array v3, v3, [F

    iput-object v3, p0, Landroidx/transition/ViewUtilsApi19;->mMatrixValues:[F

    .line 132
    :cond_1
    invoke-virtual {p2, v3}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 p2, 0x3

    .line 133
    aget p2, v3, p2

    mul-float v4, p2, p2

    sub-float/2addr v0, v4

    float-to-double v4, v0

    .line 134
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v0, v4

    const/4 v4, 0x0

    .line 135
    aget v5, v3, v4

    cmpg-float v5, v5, v2

    if-gez v5, :cond_2

    const/4 v5, -0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x1

    :goto_0
    int-to-float v5, v5

    mul-float/2addr v0, v5

    float-to-double v5, p2

    float-to-double v7, v0

    .line 136
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v5

    double-to-float p2, v5

    .line 137
    aget v4, v3, v4

    div-float/2addr v4, v0

    const/4 v5, 0x4

    .line 138
    aget v5, v3, v5

    div-float/2addr v5, v0

    .line 139
    aget v0, v3, v1

    const/4 v1, 0x5

    .line 140
    aget v1, v3, v1

    .line 141
    invoke-virtual {p1, v2}, Landroid/view/View;->setPivotX(F)V

    .line 142
    invoke-virtual {p1, v2}, Landroid/view/View;->setPivotY(F)V

    .line 143
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 144
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 145
    invoke-virtual {p1, p2}, Landroid/view/View;->setRotation(F)V

    .line 146
    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleX(F)V

    .line 147
    invoke-virtual {p1, v5}, Landroid/view/View;->setScaleY(F)V

    goto :goto_2

    .line 120
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    div-int/2addr p2, v1

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotX(F)V

    .line 121
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    div-int/2addr p2, v1

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotY(F)V

    .line 122
    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 123
    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 124
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 125
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 126
    invoke-virtual {p1, v2}, Landroid/view/View;->setRotation(F)V

    :goto_2
    return-void
.end method

.method public setLeftTopRightBottom(Landroid/view/View;IIII)V
    .locals 1

    .line 153
    invoke-direct {p0}, Landroidx/transition/ViewUtilsApi19;->fetchSetFrame()V

    .line 154
    sget-object v0, Landroidx/transition/ViewUtilsApi19;->sSetFrameMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 156
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    filled-new-array {p2, p3, p4, p5}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 160
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    :cond_0
    :goto_0
    return-void
.end method

.method public setTransitionAlpha(Landroid/view/View;F)V
    .locals 1

    .line 52
    sget-boolean v0, Landroidx/transition/ViewUtilsApi19;->sTryHiddenTransitionAlpha:Z

    if-eqz v0, :cond_0

    .line 56
    :try_start_0
    invoke-static {p1, p2}, Landroidx/transition/ViewUtilsApi19$Api29Impl;->setTransitionAlpha(Landroid/view/View;F)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 v0, 0x0

    .line 59
    sput-boolean v0, Landroidx/transition/ViewUtilsApi19;->sTryHiddenTransitionAlpha:Z

    .line 62
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public setTransitionVisibility(Landroid/view/View;I)V
    .locals 3

    .line 167
    sget-boolean v0, Landroidx/transition/ViewUtilsApi19;->sViewFlagsFieldFetched:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 169
    :try_start_0
    const-class v1, Landroid/view/View;

    const-string v2, "mViewFlags"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroidx/transition/ViewUtilsApi19;->sViewFlagsField:Ljava/lang/reflect/Field;

    .line 170
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 172
    :catch_0
    const-string v1, "ViewUtilsApi19"

    const-string v2, "fetchViewFlagsField: "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :goto_0
    sput-boolean v0, Landroidx/transition/ViewUtilsApi19;->sViewFlagsFieldFetched:Z

    .line 176
    :cond_0
    sget-object v0, Landroidx/transition/ViewUtilsApi19;->sViewFlagsField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    .line 178
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 179
    sget-object v1, Landroidx/transition/ViewUtilsApi19;->sViewFlagsField:Ljava/lang/reflect/Field;

    and-int/lit8 v0, v0, -0xd

    or-int/2addr p2, v0

    invoke-virtual {v1, p1, p2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    return-void
.end method

.method public transformMatrixToGlobal(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 2

    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 89
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 90
    check-cast v0, Landroid/view/View;

    .line 91
    invoke-virtual {p0, v0, p2}, Landroidx/transition/ViewUtilsApi19;->transformMatrixToGlobal(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 92
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p2, v1, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 94
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    .line 96
    invoke-virtual {p1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-nez v0, :cond_1

    .line 97
    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_1
    return-void
.end method

.method public transformMatrixToLocal(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 2

    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 103
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 104
    check-cast v0, Landroid/view/View;

    .line 105
    invoke-virtual {p0, v0, p2}, Landroidx/transition/ViewUtilsApi19;->transformMatrixToLocal(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 106
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 108
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    .line 110
    invoke-virtual {p1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-nez v0, :cond_1

    .line 111
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 112
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 113
    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    :cond_1
    return-void
.end method
