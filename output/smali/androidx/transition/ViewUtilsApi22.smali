.class Landroidx/transition/ViewUtilsApi22;
.super Landroidx/transition/ViewUtilsApi21;
.source "ViewUtilsApi22.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/ViewUtilsApi22$Api29Impl;
    }
.end annotation


# static fields
.field private static sTryHiddenSetLeftTopRightBottom:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroidx/transition/ViewUtilsApi21;-><init>()V

    return-void
.end method


# virtual methods
.method public setLeftTopRightBottom(Landroid/view/View;IIII)V
    .locals 1

    .line 37
    sget-boolean v0, Landroidx/transition/ViewUtilsApi22;->sTryHiddenSetLeftTopRightBottom:Z

    if-eqz v0, :cond_0

    .line 41
    :try_start_0
    invoke-static {p1, p2, p3, p4, p5}, Landroidx/transition/ViewUtilsApi22$Api29Impl;->setLeftTopRightBottom(Landroid/view/View;IIII)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 43
    sput-boolean p1, Landroidx/transition/ViewUtilsApi22;->sTryHiddenSetLeftTopRightBottom:Z

    :cond_0
    :goto_0
    return-void
.end method
