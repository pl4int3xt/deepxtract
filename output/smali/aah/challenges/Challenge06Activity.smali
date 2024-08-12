.class public Laah/challenges/Challenge06Activity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "Challenge06Activity.java"


# instance fields
.field final TAG:Ljava/lang/String;

.field private flagEditLatitude:Landroid/widget/TextView;

.field private flagEditLongitude:Landroid/widget/TextView;

.field private locationService:Laah/challenges/Services/Challenge06Location;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const-string v0, "Challenge06Activity"

    .line 22
    iput-object v0, p0, Laah/challenges/Challenge06Activity;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Laah/challenges/Challenge06Activity;)Landroid/widget/TextView;
    .locals 0

    .line 21
    iget-object p0, p0, Laah/challenges/Challenge06Activity;->flagEditLatitude:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$002(Laah/challenges/Challenge06Activity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 21
    iput-object p1, p0, Laah/challenges/Challenge06Activity;->flagEditLatitude:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$100(Laah/challenges/Challenge06Activity;)Landroid/widget/TextView;
    .locals 0

    .line 21
    iget-object p0, p0, Laah/challenges/Challenge06Activity;->flagEditLongitude:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$102(Laah/challenges/Challenge06Activity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 21
    iput-object p1, p0, Laah/challenges/Challenge06Activity;->flagEditLongitude:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$200(Laah/challenges/Challenge06Activity;)Laah/challenges/Services/Challenge06Location;
    .locals 0

    .line 21
    iget-object p0, p0, Laah/challenges/Challenge06Activity;->locationService:Laah/challenges/Services/Challenge06Location;

    return-object p0
.end method

.method static synthetic access$300(Laah/challenges/Challenge06Activity;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Laah/challenges/Challenge06Activity;->validateChallenge06Flag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private validateChallenge06Flag(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 p0, 0x0

    .line 87
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 88
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    const-string v2, "%.02f"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    mul-double/2addr v0, p1

    .line 89
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v4, p0

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LUtils/Crypto;->sha256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "a1b19db89897f58f221a48595a2bd098fa1b8e5e69bd9f1bcc6589e35e34706c"

    .line 91
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    return v3

    :cond_0
    return p0

    :catch_0
    move-exception p1

    .line 95
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "validateChallenge06Flag: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Challenge06Activity"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method


# virtual methods
.method hasLocationPermission()Z
    .locals 3

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 108
    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const-string v2, "Challenge06Activity"

    if-eqz v1, :cond_0

    const-string v1, "hasLocationPermission = false"

    .line 109
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return v1

    :cond_0
    const-string p0, "hasLocationPermission = true"

    .line 116
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 31
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0021

    .line 32
    invoke-virtual {p0, p1}, Laah/challenges/Challenge06Activity;->setContentView(I)V

    .line 35
    invoke-virtual {p0}, Laah/challenges/Challenge06Activity;->hasLocationPermission()Z

    move-result p1

    const-string v0, "Challenge06Activity"

    if-nez p1, :cond_0

    const-string p0, "hasLocationPermission = false"

    .line 36
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string p1, "hasLocationPermission = true"

    .line 39
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    new-instance p1, Laah/challenges/Services/Challenge06Location;

    invoke-virtual {p0}, Laah/challenges/Challenge06Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Laah/challenges/Services/Challenge06Location;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Laah/challenges/Challenge06Activity;->locationService:Laah/challenges/Services/Challenge06Location;

    const p1, 0x7f08006d

    .line 44
    invoke-virtual {p0, p1}, Laah/challenges/Challenge06Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 45
    new-instance v0, Laah/challenges/Challenge06Activity$1;

    invoke-direct {v0, p0}, Laah/challenges/Challenge06Activity$1;-><init>(Laah/challenges/Challenge06Activity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 123
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 124
    iget-object p0, p0, Laah/challenges/Challenge06Activity;->locationService:Laah/challenges/Services/Challenge06Location;

    invoke-virtual {p0}, Laah/challenges/Services/Challenge06Location;->stopListener()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 103
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method
