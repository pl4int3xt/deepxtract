.class public Laah/challenges/Challenge01Activity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "Challenge01Activity.java"


# instance fields
.field final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const-string v0, "Challenge01Activity"

    .line 15
    iput-object v0, p0, Laah/challenges/Challenge01Activity;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Laah/challenges/Challenge01Activity;Ljava/lang/String;)Z
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Laah/challenges/Challenge01Activity;->validateChallenge01Flag(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private validateChallenge01Flag(Ljava/lang/String;)Z
    .locals 1

    .line 50
    new-instance p0, Ljava/lang/String;

    const-string v0, "th3F1rst0neI5E4sy"

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 20
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b001c

    .line 21
    invoke-virtual {p0, p1}, Laah/challenges/Challenge01Activity;->setContentView(I)V

    const p1, 0x7f080063

    .line 24
    invoke-virtual {p0, p1}, Laah/challenges/Challenge01Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 25
    new-instance v0, Laah/challenges/Challenge01Activity$1;

    invoke-direct {v0, p0}, Laah/challenges/Challenge01Activity$1;-><init>(Laah/challenges/Challenge01Activity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
