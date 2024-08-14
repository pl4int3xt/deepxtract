.class public Laah/challenges/Challenge04Activity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "Challenge04Activity.java"


# instance fields
.field final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "flagvalidation"

    .line 51
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const-string v0, "Challenge04Activity"

    .line 16
    iput-object v0, p0, Laah/challenges/Challenge04Activity;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 21
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b001f

    .line 22
    invoke-virtual {p0, p1}, Laah/challenges/Challenge04Activity;->setContentView(I)V

    const p1, 0x7f080069

    .line 26
    invoke-virtual {p0, p1}, Laah/challenges/Challenge04Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 27
    new-instance v0, Laah/challenges/Challenge04Activity$1;

    invoke-direct {v0, p0}, Laah/challenges/Challenge04Activity$1;-><init>(Laah/challenges/Challenge04Activity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
