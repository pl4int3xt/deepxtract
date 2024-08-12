.class public Laah/challenges/Challenge05Activity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "Challenge05Activity.java"


# instance fields
.field final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const-string v0, "Challenge05Activity"

    .line 16
    iput-object v0, p0, Laah/challenges/Challenge05Activity;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 21
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0020

    .line 22
    invoke-virtual {p0, p1}, Laah/challenges/Challenge05Activity;->setContentView(I)V

    const p1, 0x7f08006b

    .line 26
    invoke-virtual {p0, p1}, Laah/challenges/Challenge05Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 27
    new-instance v0, Laah/challenges/Challenge05Activity$1;

    invoke-direct {v0, p0}, Laah/challenges/Challenge05Activity$1;-><init>(Laah/challenges/Challenge05Activity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
