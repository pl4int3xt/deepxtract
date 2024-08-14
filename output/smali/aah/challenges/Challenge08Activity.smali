.class public Laah/challenges/Challenge08Activity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "Challenge08Activity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laah/challenges/Challenge08Activity$JsObject;
    }
.end annotation


# instance fields
.field final TAG:Ljava/lang/String;

.field private final challengeFlag:Ljava/lang/String;

.field private flagText:Landroid/widget/EditText;

.field private loadUrlButton:Landroid/widget/Button;

.field private urlText:Landroid/widget/EditText;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 20
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const-string v0, "Challenge08Activity"

    .line 21
    iput-object v0, p0, Laah/challenges/Challenge08Activity;->TAG:Ljava/lang/String;

    .line 27
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laah/challenges/Challenge08Activity;->challengeFlag:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Laah/challenges/Challenge08Activity;)Landroid/widget/EditText;
    .locals 0

    .line 20
    iget-object p0, p0, Laah/challenges/Challenge08Activity;->flagText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Laah/challenges/Challenge08Activity;)Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Laah/challenges/Challenge08Activity;->challengeFlag:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method synthetic lambda$onCreate$0$aah-challenges-Challenge08Activity(Landroid/view/View;)V
    .locals 0

    .line 55
    iget-object p1, p0, Laah/challenges/Challenge08Activity;->webView:Landroid/webkit/WebView;

    iget-object p0, p0, Laah/challenges/Challenge08Activity;->urlText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 38
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0023

    .line 39
    invoke-virtual {p0, p1}, Laah/challenges/Challenge08Activity;->setContentView(I)V

    const p1, 0x7f080091

    .line 41
    invoke-virtual {p0, p1}, Laah/challenges/Challenge08Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Laah/challenges/Challenge08Activity;->webView:Landroid/webkit/WebView;

    .line 42
    new-instance v0, Landroid/webkit/WebViewClient;

    invoke-direct {v0}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 43
    iget-object p1, p0, Laah/challenges/Challenge08Activity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 44
    iget-object p1, p0, Laah/challenges/Challenge08Activity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 45
    iget-object p1, p0, Laah/challenges/Challenge08Activity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    const p1, 0x7f080090

    .line 47
    invoke-virtual {p0, p1}, Laah/challenges/Challenge08Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Laah/challenges/Challenge08Activity;->urlText:Landroid/widget/EditText;

    const p1, 0x7f08008e

    .line 48
    invoke-virtual {p0, p1}, Laah/challenges/Challenge08Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Laah/challenges/Challenge08Activity;->flagText:Landroid/widget/EditText;

    .line 49
    iget-object v0, p0, Laah/challenges/Challenge08Activity;->challengeFlag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f080072

    .line 50
    invoke-virtual {p0, p1}, Laah/challenges/Challenge08Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Laah/challenges/Challenge08Activity;->loadUrlButton:Landroid/widget/Button;

    .line 52
    iget-object p1, p0, Laah/challenges/Challenge08Activity;->webView:Landroid/webkit/WebView;

    new-instance v0, Laah/challenges/Challenge08Activity$JsObject;

    invoke-direct {v0, p0}, Laah/challenges/Challenge08Activity$JsObject;-><init>(Laah/challenges/Challenge08Activity;)V

    const-string v1, "JS_OBJECT"

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object p1, p0, Laah/challenges/Challenge08Activity;->loadUrlButton:Landroid/widget/Button;

    new-instance v0, Laah/challenges/Challenge08Activity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Laah/challenges/Challenge08Activity$$ExternalSyntheticLambda0;-><init>(Laah/challenges/Challenge08Activity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080071

    .line 58
    invoke-virtual {p0, p1}, Laah/challenges/Challenge08Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 59
    new-instance v0, Laah/challenges/Challenge08Activity$1;

    invoke-direct {v0, p0}, Laah/challenges/Challenge08Activity$1;-><init>(Laah/challenges/Challenge08Activity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
