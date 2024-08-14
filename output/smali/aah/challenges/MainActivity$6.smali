.class Laah/challenges/MainActivity$6;
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

    .line 88
    iput-object p1, p0, Laah/challenges/MainActivity$6;->this$0:Laah/challenges/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const-string p1, "MainActivity"

    const-string v0, "btn_challenge_06 clicked!"

    .line 91
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Laah/challenges/MainActivity$6;->this$0:Laah/challenges/MainActivity;

    const-class v2, Laah/challenges/Challenge06Activity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    iget-object v1, p0, Laah/challenges/MainActivity$6;->this$0:Laah/challenges/MainActivity;

    const-string v2, "location"

    invoke-virtual {v1, v2}, Laah/challenges/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    const-string v2, "gps"

    .line 95
    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "btn_challenge_06: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_0

    .line 99
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 100
    iget-object p0, p0, Laah/challenges/MainActivity$6;->this$0:Laah/challenges/MainActivity;

    invoke-virtual {p0, p1}, Laah/challenges/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 102
    :cond_0
    iget-object p0, p0, Laah/challenges/MainActivity$6;->this$0:Laah/challenges/MainActivity;

    invoke-virtual {p0, v0}, Laah/challenges/MainActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
