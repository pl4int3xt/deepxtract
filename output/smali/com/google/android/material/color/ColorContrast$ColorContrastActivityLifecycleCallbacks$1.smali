.class Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks$1;
.super Ljava/lang/Object;
.source "ColorContrast.java"

# interfaces
.implements Landroid/app/UiModeManager$ContrastChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks;->onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks;


# direct methods
.method constructor <init>(Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks$1;->this$0:Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContrastChanged(F)V
    .locals 1

    .line 187
    iget-object p1, p0, Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks$1;->this$0:Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks;

    invoke-static {p1}, Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks;->access$000(Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 188
    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    goto :goto_0

    :cond_0
    return-void
.end method
