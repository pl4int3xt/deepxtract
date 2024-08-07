.class Landroidx/transition/ViewUtilsApi21$Api29Impl;
.super Ljava/lang/Object;
.source "ViewUtilsApi21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/ViewUtilsApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api29Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static setAnimationMatrix(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 0

    .line 104
    invoke-virtual {p0, p1}, Landroid/view/View;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method static transformMatrixToGlobal(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 0

    .line 94
    invoke-virtual {p0, p1}, Landroid/view/View;->transformMatrixToGlobal(Landroid/graphics/Matrix;)V

    return-void
.end method

.method static transformMatrixToLocal(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 0

    .line 99
    invoke-virtual {p0, p1}, Landroid/view/View;->transformMatrixToLocal(Landroid/graphics/Matrix;)V

    return-void
.end method
