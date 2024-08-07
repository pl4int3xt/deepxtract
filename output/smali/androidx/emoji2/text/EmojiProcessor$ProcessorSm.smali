.class final Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;
.super Ljava/lang/Object;
.source "EmojiProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/EmojiProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ProcessorSm"
.end annotation


# static fields
.field private static final STATE_DEFAULT:I = 0x1

.field private static final STATE_WALKING:I = 0x2


# instance fields
.field private mCurrentDepth:I

.field private mCurrentNode:Landroidx/emoji2/text/MetadataRepo$Node;

.field private final mEmojiAsDefaultStyleExceptions:[I

.field private mFlushNode:Landroidx/emoji2/text/MetadataRepo$Node;

.field private mLastCodepoint:I

.field private final mRootNode:Landroidx/emoji2/text/MetadataRepo$Node;

.field private mState:I

.field private final mUseEmojiAsDefaultStyle:Z


# direct methods
.method constructor <init>(Landroidx/emoji2/text/MetadataRepo$Node;Z[I)V
    .locals 1

    .line 646
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 607
    iput v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mState:I

    .line 647
    iput-object p1, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mRootNode:Landroidx/emoji2/text/MetadataRepo$Node;

    .line 648
    iput-object p1, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentNode:Landroidx/emoji2/text/MetadataRepo$Node;

    .line 649
    iput-boolean p2, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mUseEmojiAsDefaultStyle:Z

    .line 650
    iput-object p3, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mEmojiAsDefaultStyleExceptions:[I

    return-void
.end method

.method private static isEmojiStyle(I)Z
    .locals 1

    const v0, 0xfe0f

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isTextStyle(I)Z
    .locals 1

    const v0, 0xfe0e

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private reset()I
    .locals 2

    const/4 v0, 0x1

    .line 706
    iput v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mState:I

    .line 707
    iget-object v1, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mRootNode:Landroidx/emoji2/text/MetadataRepo$Node;

    iput-object v1, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentNode:Landroidx/emoji2/text/MetadataRepo$Node;

    const/4 v1, 0x0

    .line 708
    iput v1, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentDepth:I

    return v0
.end method

.method private shouldUseEmojiPresentationStyleForSingleCodepoint()Z
    .locals 4

    .line 739
    iget-object v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentNode:Landroidx/emoji2/text/MetadataRepo$Node;

    invoke-virtual {v0}, Landroidx/emoji2/text/MetadataRepo$Node;->getData()Landroidx/emoji2/text/TypefaceEmojiRasterizer;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->isDefaultEmoji()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 743
    :cond_0
    iget v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mLastCodepoint:I

    invoke-static {v0}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->isEmojiStyle(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 747
    :cond_1
    iget-boolean v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mUseEmojiAsDefaultStyle:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 750
    iget-object v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mEmojiAsDefaultStyleExceptions:[I

    if-nez v0, :cond_2

    return v1

    .line 753
    :cond_2
    iget-object v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentNode:Landroidx/emoji2/text/MetadataRepo$Node;

    invoke-virtual {v0}, Landroidx/emoji2/text/MetadataRepo$Node;->getData()Landroidx/emoji2/text/TypefaceEmojiRasterizer;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->getCodepointAt(I)I

    move-result v0

    .line 754
    iget-object v3, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mEmojiAsDefaultStyleExceptions:[I

    invoke-static {v3, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-gez v0, :cond_3

    return v1

    :cond_3
    return v2
.end method


# virtual methods
.method check(I)I
    .locals 4

    .line 656
    iget-object v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentNode:Landroidx/emoji2/text/MetadataRepo$Node;

    invoke-virtual {v0, p1}, Landroidx/emoji2/text/MetadataRepo$Node;->get(I)Landroidx/emoji2/text/MetadataRepo$Node;

    move-result-object v0

    .line 657
    iget v1, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mState:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    if-nez v0, :cond_0

    .line 690
    invoke-direct {p0}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->reset()I

    move-result v3

    goto :goto_0

    .line 692
    :cond_0
    iput v3, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mState:I

    .line 693
    iput-object v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentNode:Landroidx/emoji2/text/MetadataRepo$Node;

    .line 694
    iput v2, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentDepth:I

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 660
    iput-object v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentNode:Landroidx/emoji2/text/MetadataRepo$Node;

    .line 661
    iget v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentDepth:I

    add-int/2addr v0, v2

    iput v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentDepth:I

    goto :goto_0

    .line 664
    :cond_2
    invoke-static {p1}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->isTextStyle(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 665
    invoke-direct {p0}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->reset()I

    move-result v3

    goto :goto_0

    .line 666
    :cond_3
    invoke-static {p1}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->isEmojiStyle(I)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 668
    :cond_4
    iget-object v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentNode:Landroidx/emoji2/text/MetadataRepo$Node;

    invoke-virtual {v0}, Landroidx/emoji2/text/MetadataRepo$Node;->getData()Landroidx/emoji2/text/TypefaceEmojiRasterizer;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 669
    iget v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentDepth:I

    const/4 v3, 0x3

    if-ne v0, v2, :cond_6

    .line 670
    invoke-direct {p0}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->shouldUseEmojiPresentationStyleForSingleCodepoint()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 671
    iget-object v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentNode:Landroidx/emoji2/text/MetadataRepo$Node;

    iput-object v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mFlushNode:Landroidx/emoji2/text/MetadataRepo$Node;

    .line 673
    invoke-direct {p0}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->reset()I

    goto :goto_0

    .line 675
    :cond_5
    invoke-direct {p0}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->reset()I

    move-result v3

    goto :goto_0

    .line 678
    :cond_6
    iget-object v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentNode:Landroidx/emoji2/text/MetadataRepo$Node;

    iput-object v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mFlushNode:Landroidx/emoji2/text/MetadataRepo$Node;

    .line 680
    invoke-direct {p0}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->reset()I

    goto :goto_0

    .line 683
    :cond_7
    invoke-direct {p0}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->reset()I

    move-result v3

    .line 700
    :goto_0
    iput p1, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mLastCodepoint:I

    return v3
.end method

.method getCurrentMetadata()Landroidx/emoji2/text/TypefaceEmojiRasterizer;
    .locals 1

    .line 723
    iget-object v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentNode:Landroidx/emoji2/text/MetadataRepo$Node;

    invoke-virtual {v0}, Landroidx/emoji2/text/MetadataRepo$Node;->getData()Landroidx/emoji2/text/TypefaceEmojiRasterizer;

    move-result-object v0

    return-object v0
.end method

.method getFlushMetadata()Landroidx/emoji2/text/TypefaceEmojiRasterizer;
    .locals 1

    .line 716
    iget-object v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mFlushNode:Landroidx/emoji2/text/MetadataRepo$Node;

    invoke-virtual {v0}, Landroidx/emoji2/text/MetadataRepo$Node;->getData()Landroidx/emoji2/text/TypefaceEmojiRasterizer;

    move-result-object v0

    return-object v0
.end method

.method isInFlushableState()Z
    .locals 2

    .line 734
    iget v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentNode:Landroidx/emoji2/text/MetadataRepo$Node;

    invoke-virtual {v0}, Landroidx/emoji2/text/MetadataRepo$Node;->getData()Landroidx/emoji2/text/TypefaceEmojiRasterizer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentDepth:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 735
    invoke-direct {p0}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->shouldUseEmojiPresentationStyleForSingleCodepoint()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method
