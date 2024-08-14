.class public Laah/challenges/Challenge02Activity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "Challenge02Activity.java"


# static fields
.field private static final resource:[B

.field private static final xorKey:[B


# instance fields
.field final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xe

    new-array v0, v0, [B

    .line 25
    fill-array-data v0, :array_0

    sput-object v0, Laah/challenges/Challenge02Activity;->resource:[B

    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 26
    fill-array-data v0, :array_1

    sput-object v0, Laah/challenges/Challenge02Activity;->xorKey:[B

    return-void

    :array_0
    .array-data 1
        0x72t
        0x65t
        0x73t
        0x6ft
        0x75t
        0x72t
        0x63t
        0x65t
        0x73t
        0x2et
        0x64t
        0x61t
        0x74t
        0x61t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x60t
        0x6t
        0x1et
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const-string v0, "Challenge02Activity"

    .line 23
    iput-object v0, p0, Laah/challenges/Challenge02Activity;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Laah/challenges/Challenge02Activity;Ljava/lang/String;)Z
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Laah/challenges/Challenge02Activity;->validateChallenge02Flag(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private validateChallenge02Flag(Ljava/lang/String;)Z
    .locals 4

    .line 61
    invoke-virtual {p0}, Laah/challenges/Challenge02Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    .line 64
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/lang/String;

    sget-object v3, Laah/challenges/Challenge02Activity;->resource:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 65
    new-instance p0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LUtils/Crypto;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v0

    sget-object v1, Laah/challenges/Challenge02Activity;->xorKey:[B

    invoke-static {v0, v1}, LUtils/Crypto;->xor([B[B)[B

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v0, "Challenge02Activity"

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "userFlag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  --  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 71
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 31
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b001d

    .line 32
    invoke-virtual {p0, p1}, Laah/challenges/Challenge02Activity;->setContentView(I)V

    const p1, 0x7f080065

    .line 35
    invoke-virtual {p0, p1}, Laah/challenges/Challenge02Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 36
    new-instance v0, Laah/challenges/Challenge02Activity$1;

    invoke-direct {v0, p0}, Laah/challenges/Challenge02Activity$1;-><init>(Laah/challenges/Challenge02Activity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
