.class Laah/challenges/MainActivity$1;
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

    .line 30
    iput-object p1, p0, Laah/challenges/MainActivity$1;->this$0:Laah/challenges/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string p1, "MainActivity"

    const-string v0, "btn_challenge_01 clicked!"

    .line 33
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Laah/challenges/MainActivity$1;->this$0:Laah/challenges/MainActivity;

    const-class v1, Laah/challenges/Challenge01Activity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    iget-object p0, p0, Laah/challenges/MainActivity$1;->this$0:Laah/challenges/MainActivity;

    invoke-virtual {p0, p1}, Laah/challenges/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
