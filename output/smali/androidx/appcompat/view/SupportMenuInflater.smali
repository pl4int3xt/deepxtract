.class public Landroidx/appcompat/view/SupportMenuInflater;
.super Landroid/view/MenuInflater;
.source "SupportMenuInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/SupportMenuInflater$MenuState;,
        Landroidx/appcompat/view/SupportMenuInflater$InflatedOnMenuItemClickListener;
    }
.end annotation


# static fields
.field static final ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field static final ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field static final LOG_TAG:Ljava/lang/String; = "SupportMenuInflater"

.field static final NO_ID:I = 0x0

.field private static final XML_GROUP:Ljava/lang/String; = "group"

.field private static final XML_ITEM:Ljava/lang/String; = "item"

.field private static final XML_MENU:Ljava/lang/String; = "menu"


# instance fields
.field final mActionProviderConstructorArguments:[Ljava/lang/Object;

.field final mActionViewConstructorArguments:[Ljava/lang/Object;

.field mContext:Landroid/content/Context;

.field private mRealOwner:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 83
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    sput-object v0, Landroidx/appcompat/view/SupportMenuInflater;->ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 85
    sput-object v0, Landroidx/appcompat/view/SupportMenuInflater;->ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 101
    invoke-direct {p0, p1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 102
    iput-object p1, p0, Landroidx/appcompat/view/SupportMenuInflater;->mContext:Landroid/content/Context;

    .line 103
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/SupportMenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    .line 104
    iput-object p1, p0, Landroidx/appcompat/view/SupportMenuInflater;->mActionProviderConstructorArguments:[Ljava/lang/Object;

    return-void
.end method

.method private findRealOwner(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 247
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    return-object p1

    .line 250
    :cond_0
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 251
    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/appcompat/view/SupportMenuInflater;->findRealOwner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private parseMenu(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    new-instance v0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;

    invoke-direct {v0, p0, p3}, Landroidx/appcompat/view/SupportMenuInflater$MenuState;-><init>(Landroidx/appcompat/view/SupportMenuInflater;Landroid/view/Menu;)V

    .line 163
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p3

    :cond_0
    const/4 v1, 0x2

    .line 170
    const-string v2, "menu"

    const/4 v3, 0x1

    if-ne p3, v1, :cond_2

    .line 171
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p3

    .line 172
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 174
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p3

    goto :goto_0

    .line 178
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Expecting menu, got "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 180
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p3

    if-ne p3, v3, :cond_0

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v4

    move v7, v6

    move-object v8, v5

    :goto_1
    if-nez v6, :cond_f

    if-eq p3, v3, :cond_e

    .line 185
    const-string v9, "item"

    const-string v10, "group"

    if-eq p3, v1, :cond_8

    const/4 v11, 0x3

    if-eq p3, v11, :cond_3

    goto/16 :goto_2

    .line 209
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p3

    if-eqz v7, :cond_4

    .line 210
    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    move v7, v4

    move-object v8, v5

    goto/16 :goto_2

    .line 213
    :cond_4
    invoke-virtual {p3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 214
    invoke-virtual {v0}, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->resetGroup()V

    goto :goto_2

    .line 215
    :cond_5
    invoke-virtual {p3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 218
    invoke-virtual {v0}, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->hasAddedItem()Z

    move-result p3

    if-nez p3, :cond_d

    .line 219
    iget-object p3, v0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemActionProvider:Landroidx/core/view/ActionProvider;

    if-eqz p3, :cond_6

    iget-object p3, v0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemActionProvider:Landroidx/core/view/ActionProvider;

    .line 220
    invoke-virtual {p3}, Landroidx/core/view/ActionProvider;->hasSubMenu()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 221
    invoke-virtual {v0}, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->addSubMenuItem()Landroid/view/SubMenu;

    goto :goto_2

    .line 223
    :cond_6
    invoke-virtual {v0}, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->addItem()V

    goto :goto_2

    .line 226
    :cond_7
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_d

    move v6, v3

    goto :goto_2

    :cond_8
    if-eqz v7, :cond_9

    goto :goto_2

    .line 191
    :cond_9
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p3

    .line 192
    invoke-virtual {p3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 193
    invoke-virtual {v0, p2}, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->readGroup(Landroid/util/AttributeSet;)V

    goto :goto_2

    .line 194
    :cond_a
    invoke-virtual {p3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 195
    invoke-virtual {v0, p2}, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->readItem(Landroid/util/AttributeSet;)V

    goto :goto_2

    .line 196
    :cond_b
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 198
    invoke-virtual {v0}, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->addSubMenuItem()Landroid/view/SubMenu;

    move-result-object p3

    .line 201
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/view/SupportMenuInflater;->parseMenu(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V

    goto :goto_2

    :cond_c
    move-object v8, p3

    move v7, v3

    .line 235
    :cond_d
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p3

    goto/16 :goto_1

    .line 232
    :cond_e
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected end of document"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    return-void
.end method


# virtual methods
.method getRealOwner()Ljava/lang/Object;
    .locals 1

    .line 240
    iget-object v0, p0, Landroidx/appcompat/view/SupportMenuInflater;->mRealOwner:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 241
    iget-object v0, p0, Landroidx/appcompat/view/SupportMenuInflater;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroidx/appcompat/view/SupportMenuInflater;->findRealOwner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/SupportMenuInflater;->mRealOwner:Ljava/lang/Object;

    .line 243
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/SupportMenuInflater;->mRealOwner:Ljava/lang/Object;

    return-object v0
.end method

.method public inflate(ILandroid/view/Menu;)V
    .locals 5

    .line 119
    const-string v0, "Error inflating menu XML"

    instance-of v1, p2, Landroidx/core/internal/view/SupportMenu;

    if-nez v1, :cond_0

    .line 120
    invoke-super {p0, p1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 128
    :try_start_0
    iget-object v3, p0, Landroidx/appcompat/view/SupportMenuInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 129
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p1

    .line 137
    instance-of v3, p2, Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz v3, :cond_1

    move-object v3, p2

    check-cast v3, Landroidx/appcompat/view/menu/MenuBuilder;

    .line 138
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuBuilder;->isDispatchingItemsChanged()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 139
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    const/4 v2, 0x1

    .line 142
    :cond_1
    invoke-direct {p0, v1, p1, p2}, Landroidx/appcompat/view/SupportMenuInflater;->parseMenu(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 149
    check-cast p2, Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    :cond_2
    if-eqz v1, :cond_3

    .line 151
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 146
    :try_start_1
    new-instance v3, Landroid/view/InflateException;

    invoke-direct {v3, v0, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_1
    move-exception p1

    .line 144
    new-instance v3, Landroid/view/InflateException;

    invoke-direct {v3, v0, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v2, :cond_4

    .line 149
    check-cast p2, Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    :cond_4
    if-eqz v1, :cond_5

    .line 151
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 152
    :cond_5
    throw p1
.end method
