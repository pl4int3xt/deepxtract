.class Landroidx/transition/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# static fields
.field static final CLIP_BOUNDS:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private static final IMPL:Landroidx/transition/ViewUtilsApi19;

.field private static final TAG:Ljava/lang/String; = "ViewUtils"

.field static final TRANSITION_ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 38
    new-instance v0, Landroidx/transition/ViewUtilsApi29;

    invoke-direct {v0}, Landroidx/transition/ViewUtilsApi29;-><init>()V

    sput-object v0, Landroidx/transition/ViewUtils;->IMPL:Landroidx/transition/ViewUtilsApi19;

    goto :goto_0

    .line 40
    :cond_0
    new-instance v0, Landroidx/transition/ViewUtilsApi23;

    invoke-direct {v0}, Landroidx/transition/ViewUtilsApi23;-><init>()V

    sput-object v0, Landroidx/transition/ViewUtils;->IMPL:Landroidx/transition/ViewUtilsApi19;

    .line 53
    :goto_0
    new-instance v0, Landroidx/transition/ViewUtils$1;

    const-class v1, Ljava/lang/Float;

    const-string v2, "translationAlpha"

    invoke-direct {v0, v1, v2}, Landroidx/transition/ViewUtils$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/transition/ViewUtils;->TRANSITION_ALPHA:Landroid/util/Property;

    .line 68
    new-instance v0, Landroidx/transition/ViewUtils$2;

    const-class v1, Landroid/graphics/Rect;

    const-string v2, "clipBounds"

    invoke-direct {v0, v1, v2}, Landroidx/transition/ViewUtils$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/transition/ViewUtils;->CLIP_BOUNDS:Landroid/util/Property;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static clearNonTransitionAlpha(Landroid/view/View;)V
    .locals 1

    .line 105
    sget-object v0, Landroidx/transition/ViewUtils;->IMPL:Landroidx/transition/ViewUtilsApi19;

    invoke-virtual {v0, p0}, Landroidx/transition/ViewUtilsApi19;->clearNonTransitionAlpha(Landroid/view/View;)V

    return-void
.end method

.method static getTransitionAlpha(Landroid/view/View;)F
    .locals 1

    .line 88
    sget-object v0, Landroidx/transition/ViewUtils;->IMPL:Landroidx/transition/ViewUtilsApi19;

    invoke-virtual {v0, p0}, Landroidx/transition/ViewUtilsApi19;->getTransitionAlpha(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method static saveNonTransitionAlpha(Landroid/view/View;)V
    .locals 1

    .line 96
    sget-object v0, Landroidx/transition/ViewUtils;->IMPL:Landroidx/transition/ViewUtilsApi19;

    invoke-virtual {v0, p0}, Landroidx/transition/ViewUtilsApi19;->saveNonTransitionAlpha(Landroid/view/View;)V

    return-void
.end method

.method static setAnimationMatrix(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 1

    .line 164
    sget-object v0, Landroidx/transition/ViewUtils;->IMPL:Landroidx/transition/ViewUtilsApi19;

    invoke-virtual {v0, p0, p1}, Landroidx/transition/ViewUtilsApi19;->setAnimationMatrix(Landroid/view/View;Landroid/graphics/Matrix;)V

    return-void
.end method

.method static setLeftTopRightBottom(Landroid/view/View;IIII)V
    .locals 6

    .line 176
    sget-object v0, Landroidx/transition/ViewUtils;->IMPL:Landroidx/transition/ViewUtilsApi19;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/transition/ViewUtilsApi19;->setLeftTopRightBottom(Landroid/view/View;IIII)V

    return-void
.end method

.method static setTransitionAlpha(Landroid/view/View;F)V
    .locals 1

    .line 84
    sget-object v0, Landroidx/transition/ViewUtils;->IMPL:Landroidx/transition/ViewUtilsApi19;

    invoke-virtual {v0, p0, p1}, Landroidx/transition/ViewUtilsApi19;->setTransitionAlpha(Landroid/view/View;F)V

    return-void
.end method

.method static setTransitionVisibility(Landroid/view/View;I)V
    .locals 1

    .line 122
    sget-object v0, Landroidx/transition/ViewUtils;->IMPL:Landroidx/transition/ViewUtilsApi19;

    invoke-virtual {v0, p0, p1}, Landroidx/transition/ViewUtilsApi19;->setTransitionVisibility(Landroid/view/View;I)V

    return-void
.end method

.method static transformMatrixToGlobal(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 1

    .line 138
    sget-object v0, Landroidx/transition/ViewUtils;->IMPL:Landroidx/transition/ViewUtilsApi19;

    invoke-virtual {v0, p0, p1}, Landroidx/transition/ViewUtilsApi19;->transformMatrixToGlobal(Landroid/view/View;Landroid/graphics/Matrix;)V

    return-void
.end method

.method static transformMatrixToLocal(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 1

    .line 154
    sget-object v0, Landroidx/transition/ViewUtils;->IMPL:Landroidx/transition/ViewUtilsApi19;

    invoke-virtual {v0, p0, p1}, Landroidx/transition/ViewUtilsApi19;->transformMatrixToLocal(Landroid/view/View;Landroid/graphics/Matrix;)V

    return-void
.end method
