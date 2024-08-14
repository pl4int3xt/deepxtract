.class Laah/challenges/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laah/challenges/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laah/challenges/MainActivity;


# direct methods
.method constructor <init>(Laah/challenges/MainActivity;)V
    .locals 0

    .line 54
    iput-object p1, p0, Laah/challenges/MainActivity$3;->this$0:Laah/challenges/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string p1, "MainActivity"

    const-string v0, "btn_challenge_03 clicked!"

    .line 57
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object p0, p0, Laah/challenges/MainActivity$3;->this$0:Laah/challenges/MainActivity;

    invoke-virtual {p0}, Laah/challenges/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "Find another way to launch this challenge..."

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
