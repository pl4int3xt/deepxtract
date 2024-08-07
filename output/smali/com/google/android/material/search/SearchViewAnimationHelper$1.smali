.class Lcom/google/android/material/search/SearchViewAnimationHelper$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SearchViewAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/search/SearchViewAnimationHelper;->lambda$startShowAnimationExpand$0$com-google-android-material-search-SearchViewAnimationHelper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;


# direct methods
.method constructor <init>(Lcom/google/android/material/search/SearchViewAnimationHelper;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$1;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 167
    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$1;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$000(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/search/SearchView;->isAdjustNothingSoftInputMode()Z

    move-result p1

    if-nez p1, :cond_0

    .line 168
    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$1;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$000(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/search/SearchView;->requestFocusAndShowKeyboardIfNeeded()V

    .line 170
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$1;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$000(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchView;

    move-result-object p1

    sget-object v0, Lcom/google/android/material/search/SearchView$TransitionState;->SHOWN:Lcom/google/android/material/search/SearchView$TransitionState;

    invoke-virtual {p1, v0}, Lcom/google/android/material/search/SearchView;->setTransitionState(Lcom/google/android/material/search/SearchView$TransitionState;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 161
    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$1;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$100(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->setVisibility(I)V

    .line 162
    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$1;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$300(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/search/SearchBar;->stopOnLoadAnimation()V

    return-void
.end method
