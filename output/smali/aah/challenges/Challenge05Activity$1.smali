.class Laah/challenges/Challenge05Activity$1;
.super Ljava/lang/Object;
.source "Challenge05Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laah/challenges/Challenge05Activity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laah/challenges/Challenge05Activity;


# direct methods
.method constructor <init>(Laah/challenges/Challenge05Activity;)V
    .locals 0

    .line 27
    iput-object p1, p0, Laah/challenges/Challenge05Activity$1;->this$0:Laah/challenges/Challenge05Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string p1, "Challenge05Activity"

    const-string v0, "buttonFlag clicked!"

    .line 30
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget-object v0, p0, Laah/challenges/Challenge05Activity$1;->this$0:Laah/challenges/Challenge05Activity;

    const v1, 0x7f080086

    invoke-virtual {v0, v1}, Laah/challenges/Challenge05Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 33
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-static {v0}, LUtils/ValidateNativeFlags;->isValidFlagAgain(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "Challenge 05 Flag: VALID :-)"

    .line 35
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object p1, p0, Laah/challenges/Challenge05Activity$1;->this$0:Laah/challenges/Challenge05Activity;

    invoke-virtual {p1}, Laah/challenges/Challenge05Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "Challenge 05 Flag : VALID"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 38
    iget-object p1, p0, Laah/challenges/Challenge05Activity$1;->this$0:Laah/challenges/Challenge05Activity;

    invoke-virtual {p1}, Laah/challenges/Challenge05Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x5

    invoke-static {p1, v0, v1}, LUtils/MySharedPreferences;->setChallengeStatus(Landroid/content/Context;IZ)V

    .line 40
    iget-object p0, p0, Laah/challenges/Challenge05Activity$1;->this$0:Laah/challenges/Challenge05Activity;

    invoke-virtual {p0}, Laah/challenges/Challenge05Activity;->finish()V

    goto :goto_0

    .line 43
    :cond_0
    iget-object p0, p0, Laah/challenges/Challenge05Activity$1;->this$0:Laah/challenges/Challenge05Activity;

    invoke-virtual {p0}, Laah/challenges/Challenge05Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "Challenge 05 Flag : TRY AGAIN :-("

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 44
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
