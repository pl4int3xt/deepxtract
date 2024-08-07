.class public final Landroidx/appcompat/widget/SearchView$InspectionCompanion;
.super Ljava/lang/Object;
.source "SearchView$InspectionCompanion.java"

# interfaces
.implements Landroid/view/inspector/InspectionCompanion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/inspector/InspectionCompanion<",
        "Landroidx/appcompat/widget/SearchView;",
        ">;"
    }
.end annotation


# instance fields
.field private mIconifiedByDefaultId:I

.field private mImeOptionsId:I

.field private mMaxWidthId:I

.field private mPropertiesMapped:Z

.field private mQueryHintId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Landroidx/appcompat/widget/SearchView$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method


# virtual methods
.method public mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .locals 2

    .line 32
    const-string v0, "imeOptions"

    const v1, 0x1010264

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/SearchView$InspectionCompanion;->mImeOptionsId:I

    .line 33
    const-string v0, "maxWidth"

    const v1, 0x101011f

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/SearchView$InspectionCompanion;->mMaxWidthId:I

    .line 34
    const-string v0, "iconifiedByDefault"

    sget v1, Landroidx/appcompat/R$attr;->iconifiedByDefault:I

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/SearchView$InspectionCompanion;->mIconifiedByDefaultId:I

    .line 35
    const-string v0, "queryHint"

    sget v1, Landroidx/appcompat/R$attr;->queryHint:I

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/SearchView$InspectionCompanion;->mQueryHintId:I

    const/4 p1, 0x1

    .line 36
    iput-boolean p1, p0, Landroidx/appcompat/widget/SearchView$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method

.method public readProperties(Landroidx/appcompat/widget/SearchView;Landroid/view/inspector/PropertyReader;)V
    .locals 2

    .line 42
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView$InspectionCompanion;->mPropertiesMapped:Z

    if-eqz v0, :cond_0

    .line 45
    iget v0, p0, Landroidx/appcompat/widget/SearchView$InspectionCompanion;->mImeOptionsId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView;->getImeOptions()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 46
    iget v0, p0, Landroidx/appcompat/widget/SearchView$InspectionCompanion;->mMaxWidthId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView;->getMaxWidth()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 47
    iget v0, p0, Landroidx/appcompat/widget/SearchView$InspectionCompanion;->mIconifiedByDefaultId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView;->isIconfiedByDefault()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 48
    iget v0, p0, Landroidx/appcompat/widget/SearchView$InspectionCompanion;->mQueryHintId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView;->getQueryHint()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    return-void

    .line 43
    :cond_0
    new-instance p1, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;

    invoke-direct {p1}, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;-><init>()V

    throw p1
.end method

.method public bridge synthetic readProperties(Ljava/lang/Object;Landroid/view/inspector/PropertyReader;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 17
    check-cast p1, Landroidx/appcompat/widget/SearchView;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/SearchView$InspectionCompanion;->readProperties(Landroidx/appcompat/widget/SearchView;Landroid/view/inspector/PropertyReader;)V

    return-void
.end method
