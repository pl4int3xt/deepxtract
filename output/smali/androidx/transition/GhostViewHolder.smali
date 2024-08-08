.class Landroidx/transition/GhostViewHolder;
.super Landroid/widget/FrameLayout;
.source "GhostViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/GhostViewHolder$Api21Impl;
    }
.end annotation


# instance fields
.field private mAttached:Z

.field private mParent:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    .line 40
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 41
    invoke-virtual {p0, v0}, Landroidx/transition/GhostViewHolder;->setClipChildren(Z)V

    .line 42
    iput-object p1, p0, Landroidx/transition/GhostViewHolder;->mParent:Landroid/view/ViewGroup;

    .line 43
    sget v0, Landroidx/transition/R$id;->ghost_view_holder:I

    invoke-virtual {p1, v0, p0}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 44
    iget-object p1, p0, Landroidx/transition/GhostViewHolder;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    const/4 p1, 0x1

    .line 45
    iput-boolean p1, p0, Landroidx/transition/GhostViewHolder;->mAttached:Z

    return-void
.end method

.method static getHolder(Landroid/view/ViewGroup;)Landroidx/transition/GhostViewHolder;
    .locals 1

    .line 71
    sget v0, Landroidx/transition/R$id;->ghost_view_holder:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/transition/GhostViewHolder;

    return-object p0
.end method

.method private getInsertIndex(Ljava/util/ArrayList;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)I"
        }
    .end annotation

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    invoke-virtual {p0}, Landroidx/transition/GhostViewHolder;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    :goto_0
    if-gt v2, v1, :cond_1

    add-int v3, v2, v1

    .line 112
    div-int/lit8 v3, v3, 0x2

    .line 113
    invoke-virtual {p0, v3}, Landroidx/transition/GhostViewHolder;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/transition/GhostViewPort;

    .line 114
    iget-object v4, v4, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    invoke-static {v4, v0}, Landroidx/transition/GhostViewHolder;->getParents(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 115
    invoke-static {p1, v0}, Landroidx/transition/GhostViewHolder;->isOnTop(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    move v2, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, -0x1

    move v1, v3

    .line 120
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_1
    return v2
.end method

.method private static getParents(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 158
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 159
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 160
    check-cast v0, Landroid/view/View;

    invoke-static {v0, p1}, Landroidx/transition/GhostViewHolder;->getParents(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 162
    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static isOnTop(Landroid/view/View;Landroid/view/View;)Z
    .locals 6

    .line 171
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 173
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 178
    invoke-static {p0}, Landroidx/transition/GhostViewHolder$Api21Impl;->getZ(Landroid/view/View;)F

    move-result v2

    invoke-static {p1}, Landroidx/transition/GhostViewHolder$Api21Impl;->getZ(Landroid/view/View;)F

    move-result v3

    cmpl-float v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 179
    invoke-static {p0}, Landroidx/transition/GhostViewHolder$Api21Impl;->getZ(Landroid/view/View;)F

    move-result p0

    invoke-static {p1}, Landroidx/transition/GhostViewHolder$Api21Impl;->getZ(Landroid/view/View;)F

    move-result p1

    cmpl-float p0, p0, p1

    if-lez p0, :cond_0

    move v3, v4

    :cond_0
    return v3

    :cond_1
    move v2, v3

    :goto_0
    if-ge v2, v1, :cond_4

    .line 188
    invoke-static {v0, v2}, Landroidx/transition/ViewGroupUtils;->getChildDrawingOrder(Landroid/view/ViewGroup;I)I

    move-result v5

    .line 189
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-ne v5, p0, :cond_2

    goto :goto_2

    :cond_2
    if-ne v5, p1, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    move v3, v4

    :goto_2
    return v3
.end method

.method private static isOnTop(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    .line 134
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    .line 135
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 139
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    .line 141
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 142
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    if-eq v4, v5, :cond_1

    .line 146
    invoke-static {v4, v5}, Landroidx/transition/GhostViewHolder;->isOnTop(Landroid/view/View;Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 151
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ne p0, v2, :cond_3

    goto :goto_1

    :cond_3
    move v1, v0

    :cond_4
    :goto_1
    return v1
.end method


# virtual methods
.method addGhostView(Landroidx/transition/GhostViewPort;)V
    .locals 2

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 91
    iget-object v1, p1, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    invoke-static {v1, v0}, Landroidx/transition/GhostViewHolder;->getParents(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 93
    invoke-direct {p0, v0}, Landroidx/transition/GhostViewHolder;->getInsertIndex(Ljava/util/ArrayList;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 94
    invoke-virtual {p0}, Landroidx/transition/GhostViewHolder;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {p0, p1, v0}, Landroidx/transition/GhostViewHolder;->addView(Landroid/view/View;I)V

    goto :goto_1

    .line 95
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/transition/GhostViewHolder;->addView(Landroid/view/View;)V

    :goto_1
    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 1

    .line 50
    iget-boolean v0, p0, Landroidx/transition/GhostViewHolder;->mAttached:Z

    if-eqz v0, :cond_0

    .line 53
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onViewAdded(Landroid/view/View;)V

    return-void

    .line 51
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This GhostViewHolder is detached!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 3

    .line 58
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onViewRemoved(Landroid/view/View;)V

    .line 62
    invoke-virtual {p0}, Landroidx/transition/GhostViewHolder;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v2}, Landroidx/transition/GhostViewHolder;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 63
    :cond_0
    invoke-virtual {p0}, Landroidx/transition/GhostViewHolder;->getChildCount()I

    move-result p1

    if-nez p1, :cond_2

    .line 64
    :cond_1
    iget-object p1, p0, Landroidx/transition/GhostViewHolder;->mParent:Landroid/view/ViewGroup;

    sget v0, Landroidx/transition/R$id;->ghost_view_holder:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 65
    iget-object p1, p0, Landroidx/transition/GhostViewHolder;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 66
    iput-boolean v2, p0, Landroidx/transition/GhostViewHolder;->mAttached:Z

    :cond_2
    return-void
.end method

.method popToOverlayTop()V
    .locals 2

    .line 75
    iget-boolean v0, p0, Landroidx/transition/GhostViewHolder;->mAttached:Z

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Landroidx/transition/GhostViewHolder;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 81
    iget-object v0, p0, Landroidx/transition/GhostViewHolder;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    return-void

    .line 76
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This GhostViewHolder is detached!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
