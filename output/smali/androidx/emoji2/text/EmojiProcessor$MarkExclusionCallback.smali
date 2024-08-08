.class Landroidx/emoji2/text/EmojiProcessor$MarkExclusionCallback;
.super Ljava/lang/Object;
.source "EmojiProcessor.java"

# interfaces
.implements Landroidx/emoji2/text/EmojiProcessor$EmojiProcessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/EmojiProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MarkExclusionCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/emoji2/text/EmojiProcessor$EmojiProcessCallback<",
        "Landroidx/emoji2/text/EmojiProcessor$MarkExclusionCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private final mExclusion:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 980
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 981
    iput-object p1, p0, Landroidx/emoji2/text/EmojiProcessor$MarkExclusionCallback;->mExclusion:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getResult()Landroidx/emoji2/text/EmojiProcessor$MarkExclusionCallback;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic getResult()Ljava/lang/Object;
    .locals 1

    .line 975
    invoke-virtual {p0}, Landroidx/emoji2/text/EmojiProcessor$MarkExclusionCallback;->getResult()Landroidx/emoji2/text/EmojiProcessor$MarkExclusionCallback;

    move-result-object v0

    return-object v0
.end method

.method public handleEmoji(Ljava/lang/CharSequence;IILandroidx/emoji2/text/TypefaceEmojiRasterizer;)Z
    .locals 0

    .line 987
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    iget-object p2, p0, Landroidx/emoji2/text/EmojiProcessor$MarkExclusionCallback;->mExclusion:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 988
    invoke-virtual {p4, p2}, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->setExclusion(Z)V

    const/4 p1, 0x0

    return p1

    :cond_0
    return p2
.end method
