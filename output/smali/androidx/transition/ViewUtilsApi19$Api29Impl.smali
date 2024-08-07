.class Landroidx/transition/ViewUtilsApi19$Api29Impl;
.super Ljava/lang/Object;
.source "ViewUtilsApi19.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/ViewUtilsApi19;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api29Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getTransitionAlpha(Landroid/view/View;)F
    .locals 0

    .line 216
    invoke-virtual {p0}, Landroid/view/View;->getTransitionAlpha()F

    move-result p0

    return p0
.end method

.method static setTransitionAlpha(Landroid/view/View;F)V
    .locals 0

    .line 211
    invoke-virtual {p0, p1}, Landroid/view/View;->setTransitionAlpha(F)V

    return-void
.end method
