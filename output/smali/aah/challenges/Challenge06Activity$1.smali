.class Laah/challenges/Challenge06Activity$1;
.super Ljava/lang/Object;
.source "Challenge06Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laah/challenges/Challenge06Activity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laah/challenges/Challenge06Activity;


# direct methods
.method constructor <init>(Laah/challenges/Challenge06Activity;)V
    .locals 0

    .line 45
    iput-object p1, p0, Laah/challenges/Challenge06Activity$1;->this$0:Laah/challenges/Challenge06Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    const-string p1, "Challenge06Activity"

    const-string v0, "buttonFlag clicked!"

    .line 48
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v0, p0, Laah/challenges/Challenge06Activity$1;->this$0:Laah/challenges/Challenge06Activity;

    const v1, 0x7f080088

    invoke-virtual {v0, v1}, Laah/challenges/Challenge06Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v1}, Laah/challenges/Challenge06Activity;->access$002(Laah/challenges/Challenge06Activity;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 50
    iget-object v0, p0, Laah/challenges/Challenge06Activity$1;->this$0:Laah/challenges/Challenge06Activity;

    const v1, 0x7f080089

    invoke-virtual {v0, v1}, Laah/challenges/Challenge06Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v1}, Laah/challenges/Challenge06Activity;->access$102(Laah/challenges/Challenge06Activity;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 53
    iget-object v0, p0, Laah/challenges/Challenge06Activity$1;->this$0:Laah/challenges/Challenge06Activity;

    invoke-static {v0}, Laah/challenges/Challenge06Activity;->access$200(Laah/challenges/Challenge06Activity;)Laah/challenges/Services/Challenge06Location;

    move-result-object v0

    invoke-virtual {v0}, Laah/challenges/Services/Challenge06Location;->canGetLocation()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Laah/challenges/Challenge06Activity$1;->this$0:Laah/challenges/Challenge06Activity;

    invoke-static {v0}, Laah/challenges/Challenge06Activity;->access$200(Laah/challenges/Challenge06Activity;)Laah/challenges/Services/Challenge06Location;

    move-result-object v0

    invoke-virtual {v0}, Laah/challenges/Services/Challenge06Location;->getLatitude()D

    move-result-wide v2

    .line 55
    iget-object v0, p0, Laah/challenges/Challenge06Activity$1;->this$0:Laah/challenges/Challenge06Activity;

    invoke-static {v0}, Laah/challenges/Challenge06Activity;->access$200(Laah/challenges/Challenge06Activity;)Laah/challenges/Services/Challenge06Location;

    move-result-object v0

    invoke-virtual {v0}, Laah/challenges/Services/Challenge06Location;->getLongitude()D

    move-result-wide v4

    .line 57
    iget-object v0, p0, Laah/challenges/Challenge06Activity$1;->this$0:Laah/challenges/Challenge06Activity;

    invoke-static {v0}, Laah/challenges/Challenge06Activity;->access$000(Laah/challenges/Challenge06Activity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, p0, Laah/challenges/Challenge06Activity$1;->this$0:Laah/challenges/Challenge06Activity;

    invoke-static {v0}, Laah/challenges/Challenge06Activity;->access$100(Laah/challenges/Challenge06Activity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v0, p0, Laah/challenges/Challenge06Activity$1;->this$0:Laah/challenges/Challenge06Activity;

    invoke-virtual {v0}, Laah/challenges/Challenge06Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Longitude:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nLatitude:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 62
    iget-object v0, p0, Laah/challenges/Challenge06Activity$1;->this$0:Laah/challenges/Challenge06Activity;

    invoke-static {v0}, Laah/challenges/Challenge06Activity;->access$000(Laah/challenges/Challenge06Activity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Laah/challenges/Challenge06Activity$1;->this$0:Laah/challenges/Challenge06Activity;

    invoke-static {v2}, Laah/challenges/Challenge06Activity;->access$100(Laah/challenges/Challenge06Activity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Laah/challenges/Challenge06Activity;->access$300(Laah/challenges/Challenge06Activity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "Challenge 06 Flag: VALID :-)"

    .line 63
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object p1, p0, Laah/challenges/Challenge06Activity$1;->this$0:Laah/challenges/Challenge06Activity;

    invoke-virtual {p1}, Laah/challenges/Challenge06Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "Challenge 06 Flag : VALID"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 66
    iget-object p1, p0, Laah/challenges/Challenge06Activity$1;->this$0:Laah/challenges/Challenge06Activity;

    invoke-virtual {p1}, Laah/challenges/Challenge06Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x6

    invoke-static {p1, v0, v1}, LUtils/MySharedPreferences;->setChallengeStatus(Landroid/content/Context;IZ)V

    .line 68
    iget-object p0, p0, Laah/challenges/Challenge06Activity$1;->this$0:Laah/challenges/Challenge06Activity;

    invoke-virtual {p0}, Laah/challenges/Challenge06Activity;->finish()V

    goto :goto_0

    .line 70
    :cond_0
    iget-object p0, p0, Laah/challenges/Challenge06Activity$1;->this$0:Laah/challenges/Challenge06Activity;

    invoke-virtual {p0}, Laah/challenges/Challenge06Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "Challenge 06 Flag : TRY AGAIN :-("

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 71
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 74
    :cond_1
    iget-object p0, p0, Laah/challenges/Challenge06Activity$1;->this$0:Laah/challenges/Challenge06Activity;

    invoke-virtual {p0}, Laah/challenges/Challenge06Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "Can\'t get location"

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
