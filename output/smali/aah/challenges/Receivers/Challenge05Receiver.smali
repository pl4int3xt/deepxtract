.class public Laah/challenges/Receivers/Challenge05Receiver;
.super Landroid/content/BroadcastReceiver;
.source "Challenge05Receiver.java"


# instance fields
.field private final EXTRA_CHALLENGE05:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "Challenge05Receiver"

    .line 10
    iput-object v0, p0, Laah/challenges/Receivers/Challenge05Receiver;->TAG:Ljava/lang/String;

    const-string v0, "CHALLENGE05_ALOHAMORA"

    .line 11
    iput-object v0, p0, Laah/challenges/Receivers/Challenge05Receiver;->EXTRA_CHALLENGE05:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p0, "Challenge05Receiver"

    const-string p1, "onReceive"

    .line 15
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "CHALLENGE05_ALOHAMORA"

    .line 17
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 18
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "lib"

    .line 20
    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string p1, "Challenge05 lib loaded"

    .line 21
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
