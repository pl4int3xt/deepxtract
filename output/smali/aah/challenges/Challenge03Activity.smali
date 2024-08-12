.class public Laah/challenges/Challenge03Activity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "Challenge03Activity.java"


# instance fields
.field final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const-string v0, "Challenge03Activity"

    .line 15
    iput-object v0, p0, Laah/challenges/Challenge03Activity;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Laah/challenges/Challenge03Activity;Ljava/lang/String;)Z
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Laah/challenges/Challenge03Activity;->validateChallenge03Flag(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private validateChallenge03Flag(Ljava/lang/String;)Z
    .locals 2

    .line 54
    invoke-virtual {p0}, Laah/challenges/Challenge03Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 56
    invoke-virtual {p0}, Laah/challenges/Challenge03Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, LUtils/MySharedPreferences;->getLaunches(Landroid/content/Context;)I

    move-result p0

    rem-int/lit8 p0, p0, 0x3

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 19
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b001e

    .line 20
    invoke-virtual {p0, p1}, Laah/challenges/Challenge03Activity;->setContentView(I)V

    .line 22
    invoke-virtual {p0}, Laah/challenges/Challenge03Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, LUtils/MySharedPreferences;->getLaunches(Landroid/content/Context;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 23
    invoke-virtual {p0}, Laah/challenges/Challenge03Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, LUtils/MySharedPreferences;->getLaunches(Landroid/content/Context;)I

    move-result p1

    rem-int/lit8 p1, p1, 0x3

    if-eqz p1, :cond_1

    .line 24
    :cond_0
    invoke-virtual {p0}, Laah/challenges/Challenge03Activity;->finish()V

    :cond_1
    const p1, 0x7f080067

    .line 28
    invoke-virtual {p0, p1}, Laah/challenges/Challenge03Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 29
    new-instance v0, Laah/challenges/Challenge03Activity$1;

    invoke-direct {v0, p0}, Laah/challenges/Challenge03Activity$1;-><init>(Laah/challenges/Challenge03Activity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
