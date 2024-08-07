.class final Landroidx/appcompat/widget/ActionBarOverlayLayout$NoSystemUiLayoutFlagView;
.super Landroid/view/View;
.source "ActionBarOverlayLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActionBarOverlayLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NoSystemUiLayoutFlagView"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 164
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 165
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout$NoSystemUiLayoutFlagView;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method public getWindowSystemUiVisibility()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
