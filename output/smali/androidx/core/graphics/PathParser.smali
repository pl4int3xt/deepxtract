.class public final Landroidx/core/graphics/PathParser;
.super Ljava/lang/Object;
.source "PathParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/graphics/PathParser$PathDataNode;,
        Landroidx/core/graphics/PathParser$ExtractFloatResult;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "PathParser"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 859
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addNode(Ljava/util/ArrayList;C[F)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/core/graphics/PathParser$PathDataNode;",
            ">;C[F)V"
        }
    .end annotation

    .line 197
    new-instance v0, Landroidx/core/graphics/PathParser$PathDataNode;

    invoke-direct {v0, p1, p2}, Landroidx/core/graphics/PathParser$PathDataNode;-><init>(C[F)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static canMorph([Landroidx/core/graphics/PathParser$PathDataNode;[Landroidx/core/graphics/PathParser$PathDataNode;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto :goto_2

    .line 146
    :cond_0
    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    move v1, v0

    .line 150
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_4

    .line 151
    aget-object v2, p0, v1

    invoke-static {v2}, Landroidx/core/graphics/PathParser$PathDataNode;->access$000(Landroidx/core/graphics/PathParser$PathDataNode;)C

    move-result v2

    aget-object v3, p1, v1

    invoke-static {v3}, Landroidx/core/graphics/PathParser$PathDataNode;->access$000(Landroidx/core/graphics/PathParser$PathDataNode;)C

    move-result v3

    if-ne v2, v3, :cond_3

    aget-object v2, p0, v1

    .line 152
    invoke-static {v2}, Landroidx/core/graphics/PathParser$PathDataNode;->access$100(Landroidx/core/graphics/PathParser$PathDataNode;)[F

    move-result-object v2

    array-length v2, v2

    aget-object v3, p1, v1

    invoke-static {v3}, Landroidx/core/graphics/PathParser$PathDataNode;->access$100(Landroidx/core/graphics/PathParser$PathDataNode;)[F

    move-result-object v3

    array-length v3, v3

    if-eq v2, v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0

    :cond_4
    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_2
    return v0
.end method

.method static copyOfRange([FII)[F
    .locals 2

    if-gt p1, p2, :cond_1

    .line 59
    array-length v0, p0

    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    sub-int/2addr p2, p1

    sub-int/2addr v0, p1

    .line 64
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 65
    new-array p2, p2, [F

    const/4 v1, 0x0

    .line 66
    invoke-static {p0, p1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    .line 61
    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0

    .line 57
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static createNodesFromPathData(Ljava/lang/String;)[Landroidx/core/graphics/PathParser$PathDataNode;
    .locals 7

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v4, v1

    move v3, v2

    .line 99
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 100
    invoke-static {p0, v3}, Landroidx/core/graphics/PathParser;->nextStart(Ljava/lang/String;I)I

    move-result v3

    .line 101
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 102
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 103
    invoke-static {v4}, Landroidx/core/graphics/PathParser;->getFloats(Ljava/lang/String;)[F

    move-result-object v5

    .line 104
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v0, v4, v5}, Landroidx/core/graphics/PathParser;->addNode(Ljava/util/ArrayList;C[F)V

    :cond_0
    add-int/lit8 v4, v3, 0x1

    move v6, v4

    move v4, v3

    move v3, v6

    goto :goto_0

    :cond_1
    sub-int/2addr v3, v4

    if-ne v3, v2, :cond_2

    .line 110
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v4, v2, :cond_2

    .line 111
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result p0

    new-array v2, v1, [F

    invoke-static {v0, p0, v2}, Landroidx/core/graphics/PathParser;->addNode(Ljava/util/ArrayList;C[F)V

    .line 113
    :cond_2
    new-array p0, v1, [Landroidx/core/graphics/PathParser$PathDataNode;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroidx/core/graphics/PathParser$PathDataNode;

    return-object p0
.end method

.method public static createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;
    .locals 4

    .line 78
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 79
    invoke-static {p0}, Landroidx/core/graphics/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Landroidx/core/graphics/PathParser$PathDataNode;

    move-result-object v1

    .line 81
    :try_start_0
    invoke-static {v1, v0}, Landroidx/core/graphics/PathParser$PathDataNode;->nodesToPath([Landroidx/core/graphics/PathParser$PathDataNode;Landroid/graphics/Path;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 83
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error in parsing "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static deepCopyNodes([Landroidx/core/graphics/PathParser$PathDataNode;)[Landroidx/core/graphics/PathParser$PathDataNode;
    .locals 4

    .line 125
    array-length v0, p0

    new-array v0, v0, [Landroidx/core/graphics/PathParser$PathDataNode;

    const/4 v1, 0x0

    .line 126
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 127
    new-instance v2, Landroidx/core/graphics/PathParser$PathDataNode;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Landroidx/core/graphics/PathParser$PathDataNode;-><init>(Landroidx/core/graphics/PathParser$PathDataNode;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static extract(Ljava/lang/String;ILandroidx/core/graphics/PathParser$ExtractFloatResult;)V
    .locals 8

    const/4 v0, 0x0

    .line 267
    iput-boolean v0, p2, Landroidx/core/graphics/PathParser$ExtractFloatResult;->mEndWithNegOrDot:Z

    move v1, p1

    move v2, v0

    move v3, v2

    move v4, v3

    .line 270
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_5

    .line 273
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    const/4 v7, 0x1

    if-eq v5, v6, :cond_3

    const/16 v6, 0x45

    if-eq v5, v6, :cond_2

    const/16 v6, 0x65

    if-eq v5, v6, :cond_2

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    if-nez v3, :cond_0

    move v2, v0

    move v3, v7

    goto :goto_3

    .line 292
    :cond_0
    iput-boolean v7, p2, Landroidx/core/graphics/PathParser$ExtractFloatResult;->mEndWithNegOrDot:Z

    goto :goto_2

    :pswitch_1
    if-eq v1, p1, :cond_1

    if-nez v2, :cond_1

    .line 283
    iput-boolean v7, p2, Landroidx/core/graphics/PathParser$ExtractFloatResult;->mEndWithNegOrDot:Z

    goto :goto_2

    :cond_1
    :goto_1
    move v2, v0

    goto :goto_3

    :cond_2
    move v2, v7

    goto :goto_3

    :cond_3
    :goto_2
    :pswitch_2
    move v2, v0

    move v4, v7

    :goto_3
    if-eqz v4, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 306
    :cond_5
    :goto_4
    iput v1, p2, Landroidx/core/graphics/PathParser$ExtractFloatResult;->mEndPosition:I

    return-void

    :pswitch_data_0
    .packed-switch 0x2c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getFloats(Ljava/lang/String;)[F
    .locals 8

    const/4 v0, 0x0

    .line 218
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x7a

    if-eq v1, v2, :cond_4

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5a

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 222
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    new-array v1, v1, [F

    .line 227
    new-instance v2, Landroidx/core/graphics/PathParser$ExtractFloatResult;

    invoke-direct {v2}, Landroidx/core/graphics/PathParser$ExtractFloatResult;-><init>()V

    .line 228
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    move v5, v0

    :goto_0
    if-ge v4, v3, :cond_3

    .line 234
    invoke-static {p0, v4, v2}, Landroidx/core/graphics/PathParser;->extract(Ljava/lang/String;ILandroidx/core/graphics/PathParser$ExtractFloatResult;)V

    .line 235
    iget v6, v2, Landroidx/core/graphics/PathParser$ExtractFloatResult;->mEndPosition:I

    if-ge v4, v6, :cond_1

    add-int/lit8 v7, v5, 0x1

    .line 239
    invoke-virtual {p0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 238
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    aput v4, v1, v5

    move v5, v7

    .line 242
    :cond_1
    iget-boolean v4, v2, Landroidx/core/graphics/PathParser$ExtractFloatResult;->mEndWithNegOrDot:Z

    if-eqz v4, :cond_2

    move v4, v6

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v6, 0x1

    goto :goto_0

    .line 249
    :cond_3
    invoke-static {v1, v0, v5}, Landroidx/core/graphics/PathParser;->copyOfRange([FII)[F

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 251
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error in parsing \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, "\""

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 219
    :cond_4
    :goto_1
    new-array p0, v0, [F

    return-object p0
.end method

.method public static interpolatePathDataNodes([Landroidx/core/graphics/PathParser$PathDataNode;F[Landroidx/core/graphics/PathParser$PathDataNode;[Landroidx/core/graphics/PathParser$PathDataNode;)V
    .locals 0

    .line 326
    invoke-static {p0, p2, p3, p1}, Landroidx/core/graphics/PathParser;->interpolatePathDataNodes([Landroidx/core/graphics/PathParser$PathDataNode;[Landroidx/core/graphics/PathParser$PathDataNode;[Landroidx/core/graphics/PathParser$PathDataNode;F)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 327
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t interpolate between two incompatible pathData"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static interpolatePathDataNodes([Landroidx/core/graphics/PathParser$PathDataNode;[Landroidx/core/graphics/PathParser$PathDataNode;[Landroidx/core/graphics/PathParser$PathDataNode;F)Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 355
    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_2

    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_2

    .line 360
    invoke-static {p1, p2}, Landroidx/core/graphics/PathParser;->canMorph([Landroidx/core/graphics/PathParser$PathDataNode;[Landroidx/core/graphics/PathParser$PathDataNode;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 364
    :cond_0
    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_1

    .line 365
    aget-object v0, p0, v1

    aget-object v2, p1, v1

    aget-object v3, p2, v1

    invoke-virtual {v0, v2, v3, p3}, Landroidx/core/graphics/PathParser$PathDataNode;->interpolatePathDataNode(Landroidx/core/graphics/PathParser$PathDataNode;Landroidx/core/graphics/PathParser$PathDataNode;F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    .line 356
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The nodes to be interpolated and resulting nodes must have the same length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static nextStart(Ljava/lang/String;I)I
    .locals 3

    .line 181
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 182
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v1, v0, -0x41

    add-int/lit8 v2, v0, -0x5a

    mul-int/2addr v1, v2

    if-lez v1, :cond_0

    add-int/lit8 v1, v0, -0x61

    add-int/lit8 v2, v0, -0x7a

    mul-int/2addr v1, v2

    if-gtz v1, :cond_1

    :cond_0
    const/16 v1, 0x65

    if-eq v0, v1, :cond_1

    const/16 v1, 0x45

    if-eq v0, v1, :cond_1

    return p1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return p1
.end method

.method public static nodesToPath([Landroidx/core/graphics/PathParser$PathDataNode;Landroid/graphics/Path;)V
    .locals 7

    const/4 v0, 0x6

    .line 381
    new-array v0, v0, [F

    .line 383
    array-length v1, p0

    const/16 v2, 0x6d

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p0, v3

    .line 384
    invoke-static {v4}, Landroidx/core/graphics/PathParser$PathDataNode;->access$000(Landroidx/core/graphics/PathParser$PathDataNode;)C

    move-result v5

    .line 385
    invoke-static {v4}, Landroidx/core/graphics/PathParser$PathDataNode;->access$100(Landroidx/core/graphics/PathParser$PathDataNode;)[F

    move-result-object v6

    .line 384
    invoke-static {p1, v0, v2, v5, v6}, Landroidx/core/graphics/PathParser$PathDataNode;->access$200(Landroid/graphics/Path;[FCC[F)V

    .line 386
    invoke-static {v4}, Landroidx/core/graphics/PathParser$PathDataNode;->access$000(Landroidx/core/graphics/PathParser$PathDataNode;)C

    move-result v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static updateNodes([Landroidx/core/graphics/PathParser$PathDataNode;[Landroidx/core/graphics/PathParser$PathDataNode;)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 170
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 171
    aget-object v2, p0, v1

    aget-object v3, p1, v1

    invoke-static {v3}, Landroidx/core/graphics/PathParser$PathDataNode;->access$000(Landroidx/core/graphics/PathParser$PathDataNode;)C

    move-result v3

    invoke-static {v2, v3}, Landroidx/core/graphics/PathParser$PathDataNode;->access$002(Landroidx/core/graphics/PathParser$PathDataNode;C)C

    move v2, v0

    .line 172
    :goto_1
    aget-object v3, p1, v1

    invoke-static {v3}, Landroidx/core/graphics/PathParser$PathDataNode;->access$100(Landroidx/core/graphics/PathParser$PathDataNode;)[F

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 173
    aget-object v3, p0, v1

    invoke-static {v3}, Landroidx/core/graphics/PathParser$PathDataNode;->access$100(Landroidx/core/graphics/PathParser$PathDataNode;)[F

    move-result-object v3

    aget-object v4, p1, v1

    invoke-static {v4}, Landroidx/core/graphics/PathParser$PathDataNode;->access$100(Landroidx/core/graphics/PathParser$PathDataNode;)[F

    move-result-object v4

    aget v4, v4, v2

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
