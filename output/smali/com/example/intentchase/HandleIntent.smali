.class public Lcom/example/intentchase/HandleIntent;
.super Ljava/lang/Object;
.source "HandleIntent.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private sanitizeInput(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 20
    const-string v0, "[;&|`\'\"\\s]*(?:shutdown|reboot|rm|mkdir|chmod|chown|exec|cmd|ls|cat|touch|cp|mv|kill|ping)[&|;`\'\"\\s]*"

    const-string v1, ""

    .line 21
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public handleIntent(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 11
    :try_start_0
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 12
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 14
    const-string v0, "MainActivity"

    const-string v1, "Failed to decode base64 string"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, ""

    .line 16
    :goto_0
    invoke-direct {p0, v0}, Lcom/example/intentchase/HandleIntent;->sanitizeInput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
