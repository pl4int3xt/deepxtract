.class Laah/challenges/Challenge08Activity$JsObject;
.super Ljava/lang/Object;
.source "Challenge08Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laah/challenges/Challenge08Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "JsObject"
.end annotation


# instance fields
.field final synthetic this$0:Laah/challenges/Challenge08Activity;


# direct methods
.method constructor <init>(Laah/challenges/Challenge08Activity;)V
    .locals 0

    .line 29
    iput-object p1, p0, Laah/challenges/Challenge08Activity$JsObject;->this$0:Laah/challenges/Challenge08Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFlag()Ljava/lang/String;
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 32
    iget-object p0, p0, Laah/challenges/Challenge08Activity$JsObject;->this$0:Laah/challenges/Challenge08Activity;

    invoke-static {p0}, Laah/challenges/Challenge08Activity;->access$000(Laah/challenges/Challenge08Activity;)Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
