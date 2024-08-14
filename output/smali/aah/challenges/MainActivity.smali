.class public Laah/challenges/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"


# instance fields
.field final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const-string v0, "MainActivity"

    .line 19
    iput-object v0, p0, Laah/challenges/MainActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method private updateButtonColor(Landroid/content/Context;)V
    .locals 10

    const v0, 0x7f080062

    .line 141
    invoke-virtual {p0, v0}, Laah/challenges/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f080064

    .line 142
    invoke-virtual {p0, v1}, Laah/challenges/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f080066

    .line 143
    invoke-virtual {p0, v2}, Laah/challenges/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const v3, 0x7f080068

    .line 144
    invoke-virtual {p0, v3}, Laah/challenges/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    const v4, 0x7f08006a

    .line 145
    invoke-virtual {p0, v4}, Laah/challenges/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    const v5, 0x7f08006c

    .line 146
    invoke-virtual {p0, v5}, Laah/challenges/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    const v6, 0x7f08006e

    .line 147
    invoke-virtual {p0, v6}, Laah/challenges/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    const v7, 0x7f080070

    .line 148
    invoke-virtual {p0, v7}, Laah/challenges/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Button;

    const/4 v7, 0x1

    .line 150
    invoke-static {p1, v7}, LUtils/MySharedPreferences;->getChallengeStatus(Landroid/content/Context;I)Z

    move-result v7

    const v8, -0xff0100

    const/high16 v9, -0x10000

    if-eqz v7, :cond_0

    .line 151
    invoke-virtual {v0, v8}, Landroid/widget/Button;->setBackgroundColor(I)V

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {v0, v9}, Landroid/widget/Button;->setBackgroundColor(I)V

    :goto_0
    const/4 v0, 0x2

    .line 155
    invoke-static {p1, v0}, LUtils/MySharedPreferences;->getChallengeStatus(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    invoke-virtual {v1, v8}, Landroid/widget/Button;->setBackgroundColor(I)V

    goto :goto_1

    .line 158
    :cond_1
    invoke-virtual {v1, v9}, Landroid/widget/Button;->setBackgroundColor(I)V

    :goto_1
    const/4 v0, 0x3

    .line 160
    invoke-static {p1, v0}, LUtils/MySharedPreferences;->getChallengeStatus(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 161
    invoke-virtual {v2, v8}, Landroid/widget/Button;->setBackgroundColor(I)V

    goto :goto_2

    .line 163
    :cond_2
    invoke-virtual {v2, v9}, Landroid/widget/Button;->setBackgroundColor(I)V

    :goto_2
    const/4 v0, 0x4

    .line 165
    invoke-static {p1, v0}, LUtils/MySharedPreferences;->getChallengeStatus(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 166
    invoke-virtual {v3, v8}, Landroid/widget/Button;->setBackgroundColor(I)V

    goto :goto_3

    .line 168
    :cond_3
    invoke-virtual {v3, v9}, Landroid/widget/Button;->setBackgroundColor(I)V

    :goto_3
    const/4 v0, 0x5

    .line 170
    invoke-static {p1, v0}, LUtils/MySharedPreferences;->getChallengeStatus(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 171
    invoke-virtual {v4, v8}, Landroid/widget/Button;->setBackgroundColor(I)V

    goto :goto_4

    .line 173
    :cond_4
    invoke-virtual {v4, v9}, Landroid/widget/Button;->setBackgroundColor(I)V

    :goto_4
    const/4 v0, 0x6

    .line 175
    invoke-static {p1, v0}, LUtils/MySharedPreferences;->getChallengeStatus(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 176
    invoke-virtual {v5, v8}, Landroid/widget/Button;->setBackgroundColor(I)V

    goto :goto_5

    .line 178
    :cond_5
    invoke-virtual {v5, v9}, Landroid/widget/Button;->setBackgroundColor(I)V

    :goto_5
    const/4 v0, 0x7

    .line 180
    invoke-static {p1, v0}, LUtils/MySharedPreferences;->getChallengeStatus(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 181
    invoke-virtual {v6, v8}, Landroid/widget/Button;->setBackgroundColor(I)V

    goto :goto_6

    .line 183
    :cond_6
    invoke-virtual {v6, v9}, Landroid/widget/Button;->setBackgroundColor(I)V

    :goto_6
    const/16 v0, 0x8

    .line 185
    invoke-static {p1, v0}, LUtils/MySharedPreferences;->getChallengeStatus(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 186
    invoke-virtual {p0, v8}, Landroid/widget/Button;->setBackgroundColor(I)V

    goto :goto_7

    .line 188
    :cond_7
    invoke-virtual {p0, v9}, Landroid/widget/Button;->setBackgroundColor(I)V

    :goto_7
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 24
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0025

    .line 25
    invoke-virtual {p0, p1}, Laah/challenges/MainActivity;->setContentView(I)V

    const p1, 0x7f080062

    .line 29
    invoke-virtual {p0, p1}, Laah/challenges/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 30
    new-instance v0, Laah/challenges/MainActivity$1;

    invoke-direct {v0, p0}, Laah/challenges/MainActivity$1;-><init>(Laah/challenges/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080064

    .line 41
    invoke-virtual {p0, p1}, Laah/challenges/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 42
    new-instance v0, Laah/challenges/MainActivity$2;

    invoke-direct {v0, p0}, Laah/challenges/MainActivity$2;-><init>(Laah/challenges/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080066

    .line 53
    invoke-virtual {p0, p1}, Laah/challenges/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 54
    new-instance v0, Laah/challenges/MainActivity$3;

    invoke-direct {v0, p0}, Laah/challenges/MainActivity$3;-><init>(Laah/challenges/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080068

    .line 63
    invoke-virtual {p0, p1}, Laah/challenges/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 64
    new-instance v0, Laah/challenges/MainActivity$4;

    invoke-direct {v0, p0}, Laah/challenges/MainActivity$4;-><init>(Laah/challenges/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f08006a

    .line 75
    invoke-virtual {p0, p1}, Laah/challenges/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 76
    new-instance v0, Laah/challenges/MainActivity$5;

    invoke-direct {v0, p0}, Laah/challenges/MainActivity$5;-><init>(Laah/challenges/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f08006c

    .line 87
    invoke-virtual {p0, p1}, Laah/challenges/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 88
    new-instance v0, Laah/challenges/MainActivity$6;

    invoke-direct {v0, p0}, Laah/challenges/MainActivity$6;-><init>(Laah/challenges/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f08006e

    .line 108
    invoke-virtual {p0, p1}, Laah/challenges/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 109
    new-instance v0, Laah/challenges/MainActivity$7;

    invoke-direct {v0, p0}, Laah/challenges/MainActivity$7;-><init>(Laah/challenges/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080070

    .line 120
    invoke-virtual {p0, p1}, Laah/challenges/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 121
    new-instance v0, Laah/challenges/MainActivity$8;

    invoke-direct {v0, p0}, Laah/challenges/MainActivity$8;-><init>(Laah/challenges/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 135
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 136
    invoke-virtual {p0}, Laah/challenges/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Laah/challenges/MainActivity;->updateButtonColor(Landroid/content/Context;)V

    return-void
.end method
