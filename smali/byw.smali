.class public Lbyw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lbyz;

.field private static b:Lbyz;

.field private static c:Lbyz;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Lbyz;
    .locals 2

    .prologue
    .line 75
    sget-object v0, Lbyw;->b:Lbyz;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lbyz;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbyz;-><init>(Lbyx;)V

    sput-object v0, Lbyw;->b:Lbyz;

    .line 78
    :cond_0
    sget-object v0, Lbyw;->b:Lbyz;

    return-object v0
.end method

.method public static a(Lcom/facebook/share/model/ShareContent;)V
    .locals 1

    .prologue
    .line 59
    invoke-static {}, Lbyw;->a()Lbyz;

    move-result-object v0

    invoke-static {p0, v0}, Lbyw;->a(Lcom/facebook/share/model/ShareContent;Lbyz;)V

    .line 60
    return-void
.end method

.method private static a(Lcom/facebook/share/model/ShareContent;Lbyz;)V
    .locals 2

    .prologue
    .line 97
    if-nez p0, :cond_0

    .line 98
    new-instance v0, Lbhp;

    const-string v1, "Must provide non-null content to share"

    invoke-direct {v0, v1}, Lbhp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    instance-of v0, p0, Lcom/facebook/share/model/ShareLinkContent;

    if-eqz v0, :cond_2

    .line 102
    check-cast p0, Lcom/facebook/share/model/ShareLinkContent;

    invoke-virtual {p1, p0}, Lbyz;->a(Lcom/facebook/share/model/ShareLinkContent;)V

    .line 112
    :cond_1
    :goto_0
    return-void

    .line 103
    :cond_2
    instance-of v0, p0, Lcom/facebook/share/model/SharePhotoContent;

    if-eqz v0, :cond_3

    .line 104
    check-cast p0, Lcom/facebook/share/model/SharePhotoContent;

    invoke-virtual {p1, p0}, Lbyz;->a(Lcom/facebook/share/model/SharePhotoContent;)V

    goto :goto_0

    .line 105
    :cond_3
    instance-of v0, p0, Lcom/facebook/share/model/ShareVideoContent;

    if-eqz v0, :cond_4

    .line 106
    check-cast p0, Lcom/facebook/share/model/ShareVideoContent;

    invoke-virtual {p1, p0}, Lbyz;->a(Lcom/facebook/share/model/ShareVideoContent;)V

    goto :goto_0

    .line 107
    :cond_4
    instance-of v0, p0, Lcom/facebook/share/model/ShareOpenGraphContent;

    if-eqz v0, :cond_5

    .line 108
    check-cast p0, Lcom/facebook/share/model/ShareOpenGraphContent;

    invoke-virtual {p1, p0}, Lbyz;->a(Lcom/facebook/share/model/ShareOpenGraphContent;)V

    goto :goto_0

    .line 109
    :cond_5
    instance-of v0, p0, Lcom/facebook/share/model/ShareMediaContent;

    if-eqz v0, :cond_1

    .line 110
    check-cast p0, Lcom/facebook/share/model/ShareMediaContent;

    invoke-virtual {p1, p0}, Lbyz;->a(Lcom/facebook/share/model/ShareMediaContent;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/share/model/ShareLinkContent;Lbyz;)V
    .locals 0

    .prologue
    .line 52
    invoke-static {p0, p1}, Lbyw;->b(Lcom/facebook/share/model/ShareLinkContent;Lbyz;)V

    return-void
.end method

.method public static a(Lcom/facebook/share/model/ShareMedia;Lbyz;)V
    .locals 6

    .prologue
    .line 222
    instance-of v0, p0, Lcom/facebook/share/model/SharePhoto;

    if-eqz v0, :cond_0

    .line 223
    check-cast p0, Lcom/facebook/share/model/SharePhoto;

    invoke-virtual {p1, p0}, Lbyz;->a(Lcom/facebook/share/model/SharePhoto;)V

    .line 233
    :goto_0
    return-void

    .line 224
    :cond_0
    instance-of v0, p0, Lcom/facebook/share/model/ShareVideo;

    if-eqz v0, :cond_1

    .line 225
    check-cast p0, Lcom/facebook/share/model/ShareVideo;

    invoke-virtual {p1, p0}, Lbyz;->a(Lcom/facebook/share/model/ShareVideo;)V

    goto :goto_0

    .line 227
    :cond_1
    new-instance v0, Lbhp;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v2, "Invalid media type: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 231
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 228
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbhp;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic a(Lcom/facebook/share/model/ShareMediaContent;Lbyz;)V
    .locals 0

    .prologue
    .line 52
    invoke-static {p0, p1}, Lbyw;->b(Lcom/facebook/share/model/ShareMediaContent;Lbyz;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/share/model/ShareOpenGraphAction;Lbyz;)V
    .locals 0

    .prologue
    .line 52
    invoke-static {p0, p1}, Lbyw;->b(Lcom/facebook/share/model/ShareOpenGraphAction;Lbyz;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/share/model/ShareOpenGraphContent;Lbyz;)V
    .locals 0

    .prologue
    .line 52
    invoke-static {p0, p1}, Lbyw;->b(Lcom/facebook/share/model/ShareOpenGraphContent;Lbyz;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/share/model/ShareOpenGraphObject;Lbyz;)V
    .locals 0

    .prologue
    .line 52
    invoke-static {p0, p1}, Lbyw;->b(Lcom/facebook/share/model/ShareOpenGraphObject;Lbyz;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/share/model/ShareOpenGraphValueContainer;Lbyz;Z)V
    .locals 0

    .prologue
    .line 52
    invoke-static {p0, p1, p2}, Lbyw;->b(Lcom/facebook/share/model/ShareOpenGraphValueContainer;Lbyz;Z)V

    return-void
.end method

.method private static a(Lcom/facebook/share/model/SharePhoto;)V
    .locals 2

    .prologue
    .line 142
    if-nez p0, :cond_0

    .line 143
    new-instance v0, Lbhp;

    const-string v1, "Cannot share a null SharePhoto"

    invoke-direct {v0, v1}, Lbhp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/share/model/SharePhoto;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 147
    invoke-virtual {p0}, Lcom/facebook/share/model/SharePhoto;->d()Landroid/net/Uri;

    move-result-object v1

    .line 149
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 150
    new-instance v0, Lbhp;

    const-string v1, "SharePhoto does not have a Bitmap or ImageUrl specified"

    invoke-direct {v0, v1}, Lbhp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/facebook/share/model/SharePhoto;Lbyz;)V
    .locals 0

    .prologue
    .line 52
    invoke-static {p0, p1}, Lbyw;->f(Lcom/facebook/share/model/SharePhoto;Lbyz;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/share/model/SharePhotoContent;Lbyz;)V
    .locals 0

    .prologue
    .line 52
    invoke-static {p0, p1}, Lbyw;->b(Lcom/facebook/share/model/SharePhotoContent;Lbyz;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/share/model/ShareVideo;Lbyz;)V
    .locals 0

    .prologue
    .line 52
    invoke-static {p0, p1}, Lbyw;->b(Lcom/facebook/share/model/ShareVideo;Lbyz;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/share/model/ShareVideoContent;Lbyz;)V
    .locals 0

    .prologue
    .line 52
    invoke-static {p0, p1}, Lbyw;->b(Lcom/facebook/share/model/ShareVideoContent;Lbyz;)V

    return-void
.end method

.method private static a(Ljava/lang/Object;Lbyz;)V
    .locals 1

    .prologue
    .line 318
    instance-of v0, p0, Lcom/facebook/share/model/ShareOpenGraphObject;

    if-eqz v0, :cond_1

    .line 319
    check-cast p0, Lcom/facebook/share/model/ShareOpenGraphObject;

    invoke-virtual {p1, p0}, Lbyz;->a(Lcom/facebook/share/model/ShareOpenGraphObject;)V

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    instance-of v0, p0, Lcom/facebook/share/model/SharePhoto;

    if-eqz v0, :cond_0

    .line 321
    check-cast p0, Lcom/facebook/share/model/SharePhoto;

    invoke-virtual {p1, p0}, Lbyz;->a(Lcom/facebook/share/model/SharePhoto;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Z)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 301
    if-nez p1, :cond_1

    .line 314
    :cond_0
    return-void

    .line 305
    :cond_1
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 306
    array-length v0, v2

    const/4 v3, 0x2

    if-ge v0, v3, :cond_2

    .line 307
    new-instance v0, Lbhp;

    const-string v2, "Open Graph keys must be namespaced: %s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p0, v3, v1

    invoke-direct {v0, v2, v3}, Lbhp;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 309
    :cond_2
    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 310
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 311
    new-instance v0, Lbhp;

    const-string v2, "Invalid key found in Open Graph dictionary: %s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p0, v3, v1

    invoke-direct {v0, v2, v3}, Lbhp;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 309
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static b()Lbyz;
    .locals 2

    .prologue
    .line 82
    sget-object v0, Lbyw;->c:Lbyz;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lbyy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbyy;-><init>(Lbyx;)V

    sput-object v0, Lbyw;->c:Lbyz;

    .line 85
    :cond_0
    sget-object v0, Lbyw;->c:Lbyz;

    return-object v0
.end method

.method public static b(Lcom/facebook/share/model/ShareContent;)V
    .locals 1

    .prologue
    .line 63
    invoke-static {}, Lbyw;->a()Lbyz;

    move-result-object v0

    invoke-static {p0, v0}, Lbyw;->a(Lcom/facebook/share/model/ShareContent;Lbyz;)V

    .line 64
    return-void
.end method

.method private static b(Lcom/facebook/share/model/ShareLinkContent;Lbyz;)V
    .locals 2

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareLinkContent;->c()Landroid/net/Uri;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_0

    invoke-static {v0}, Lbqq;->b(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Lbhp;

    const-string v1, "Image Url must be an http:// or https:// url"

    invoke-direct {v0, v1}, Lbhp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_0
    return-void
.end method

.method private static b(Lcom/facebook/share/model/ShareMediaContent;Lbyz;)V
    .locals 6

    .prologue
    const/4 v5, 0x6

    .line 205
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMediaContent;->a()Ljava/util/List;

    move-result-object v0

    .line 206
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 207
    :cond_0
    new-instance v0, Lbhp;

    const-string v1, "Must specify at least one medium in ShareMediaContent."

    invoke-direct {v0, v1}, Lbhp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v5, :cond_2

    .line 210
    new-instance v0, Lbhp;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v2, "Cannot add more than %d media."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 214
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 211
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbhp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/ShareMedia;

    .line 217
    invoke-virtual {p1, v0}, Lbyz;->a(Lcom/facebook/share/model/ShareMedia;)V

    goto :goto_0

    .line 219
    :cond_3
    return-void
.end method

.method private static b(Lcom/facebook/share/model/ShareOpenGraphAction;Lbyz;)V
    .locals 2

    .prologue
    .line 255
    if-nez p0, :cond_0

    .line 256
    new-instance v0, Lbhp;

    const-string v1, "Must specify a non-null ShareOpenGraphAction"

    invoke-direct {v0, v1}, Lbhp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareOpenGraphAction;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbqq;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    new-instance v0, Lbhp;

    const-string v1, "ShareOpenGraphAction must have a non-empty actionType"

    invoke-direct {v0, v1}, Lbhp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lbyz;->a(Lcom/facebook/share/model/ShareOpenGraphValueContainer;Z)V

    .line 264
    return-void
.end method

.method private static b(Lcom/facebook/share/model/ShareOpenGraphContent;Lbyz;)V
    .locals 4

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareOpenGraphContent;->a()Lcom/facebook/share/model/ShareOpenGraphAction;

    move-result-object v0

    invoke-virtual {p1, v0}, Lbyz;->a(Lcom/facebook/share/model/ShareOpenGraphAction;)V

    .line 239
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareOpenGraphContent;->b()Ljava/lang/String;

    move-result-object v0

    .line 240
    invoke-static {v0}, Lbqq;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 241
    new-instance v0, Lbhp;

    const-string v1, "Must specify a previewPropertyName."

    invoke-direct {v0, v1}, Lbhp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareOpenGraphContent;->a()Lcom/facebook/share/model/ShareOpenGraphAction;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/share/model/ShareOpenGraphAction;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 245
    new-instance v1, Lbhp;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Property \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" was not found on the action. The name of the preview property must match the name of an action property."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lbhp;-><init>(Ljava/lang/String;)V

    throw v1

    .line 250
    :cond_1
    return-void
.end method

.method private static b(Lcom/facebook/share/model/ShareOpenGraphObject;Lbyz;)V
    .locals 2

    .prologue
    .line 269
    if-nez p0, :cond_0

    .line 270
    new-instance v0, Lbhp;

    const-string v1, "Cannot share a null ShareOpenGraphObject"

    invoke-direct {v0, v1}, Lbhp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lbyz;->a(Lcom/facebook/share/model/ShareOpenGraphValueContainer;Z)V

    .line 274
    return-void
.end method

.method private static b(Lcom/facebook/share/model/ShareOpenGraphValueContainer;Lbyz;Z)V
    .locals 3

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareOpenGraphValueContainer;->c()Ljava/util/Set;

    move-result-object v0

    .line 281
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 282
    invoke-static {v0, p2}, Lbyw;->a(Ljava/lang/String;Z)V

    .line 283
    invoke-virtual {p0, v0}, Lcom/facebook/share/model/ShareOpenGraphValueContainer;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 284
    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_2

    .line 285
    check-cast v0, Ljava/util/List;

    .line 286
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 287
    if-nez v2, :cond_1

    .line 288
    new-instance v0, Lbhp;

    const-string v1, "Cannot put null objects in Lists in ShareOpenGraphObjects and ShareOpenGraphActions"

    invoke-direct {v0, v1}, Lbhp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_1
    invoke-static {v2, p1}, Lbyw;->a(Ljava/lang/Object;Lbyz;)V

    goto :goto_1

    .line 295
    :cond_2
    invoke-static {v0, p1}, Lbyw;->a(Ljava/lang/Object;Lbyz;)V

    goto :goto_0

    .line 298
    :cond_3
    return-void
.end method

.method static synthetic b(Lcom/facebook/share/model/SharePhoto;Lbyz;)V
    .locals 0

    .prologue
    .line 52
    invoke-static {p0, p1}, Lbyw;->d(Lcom/facebook/share/model/SharePhoto;Lbyz;)V

    return-void
.end method

.method private static b(Lcom/facebook/share/model/SharePhotoContent;Lbyz;)V
    .locals 6

    .prologue
    const/4 v5, 0x6

    .line 124
    invoke-virtual {p0}, Lcom/facebook/share/model/SharePhotoContent;->a()Ljava/util/List;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 126
    :cond_0
    new-instance v0, Lbhp;

    const-string v1, "Must specify at least one Photo in SharePhotoContent."

    invoke-direct {v0, v1}, Lbhp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v5, :cond_2

    .line 129
    new-instance v0, Lbhp;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v2, "Cannot add more than %d photos."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 133
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 130
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbhp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/SharePhoto;

    .line 137
    invoke-virtual {p1, v0}, Lbyz;->a(Lcom/facebook/share/model/SharePhoto;)V

    goto :goto_0

    .line 139
    :cond_3
    return-void
.end method

.method private static b(Lcom/facebook/share/model/ShareVideo;Lbyz;)V
    .locals 2

    .prologue
    .line 190
    if-nez p0, :cond_0

    .line 191
    new-instance v0, Lbhp;

    const-string v1, "Cannot share a null ShareVideo"

    invoke-direct {v0, v1}, Lbhp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareVideo;->c()Landroid/net/Uri;

    move-result-object v0

    .line 195
    if-nez v0, :cond_1

    .line 196
    new-instance v0, Lbhp;

    const-string v1, "ShareVideo does not have a LocalUrl specified"

    invoke-direct {v0, v1}, Lbhp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_1
    invoke-static {v0}, Lbqq;->c(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lbqq;->d(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 200
    new-instance v0, Lbhp;

    const-string v1, "ShareVideo must reference a video that is on the device"

    invoke-direct {v0, v1}, Lbhp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_2
    return-void
.end method

.method private static b(Lcom/facebook/share/model/ShareVideoContent;Lbyz;)V
    .locals 1

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareVideoContent;->d()Lcom/facebook/share/model/ShareVideo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lbyz;->a(Lcom/facebook/share/model/ShareVideo;)V

    .line 183
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareVideoContent;->c()Lcom/facebook/share/model/SharePhoto;

    move-result-object v0

    .line 184
    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {p1, v0}, Lbyz;->a(Lcom/facebook/share/model/SharePhoto;)V

    .line 187
    :cond_0
    return-void
.end method

.method private static c()Lbyz;
    .locals 2

    .prologue
    .line 89
    sget-object v0, Lbyw;->a:Lbyz;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lbza;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbza;-><init>(Lbyx;)V

    sput-object v0, Lbyw;->a:Lbyz;

    .line 92
    :cond_0
    sget-object v0, Lbyw;->a:Lbyz;

    return-object v0
.end method

.method public static c(Lcom/facebook/share/model/ShareContent;)V
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Lbyw;->c()Lbyz;

    move-result-object v0

    invoke-static {p0, v0}, Lbyw;->a(Lcom/facebook/share/model/ShareContent;Lbyz;)V

    .line 68
    return-void
.end method

.method static synthetic c(Lcom/facebook/share/model/SharePhoto;Lbyz;)V
    .locals 0

    .prologue
    .line 52
    invoke-static {p0, p1}, Lbyw;->e(Lcom/facebook/share/model/SharePhoto;Lbyz;)V

    return-void
.end method

.method public static d(Lcom/facebook/share/model/ShareContent;)V
    .locals 1

    .prologue
    .line 71
    invoke-static {}, Lbyw;->b()Lbyz;

    move-result-object v0

    invoke-static {p0, v0}, Lbyw;->a(Lcom/facebook/share/model/ShareContent;Lbyz;)V

    .line 72
    return-void
.end method

.method private static d(Lcom/facebook/share/model/SharePhoto;Lbyz;)V
    .locals 2

    .prologue
    .line 155
    invoke-static {p0}, Lbyw;->a(Lcom/facebook/share/model/SharePhoto;)V

    .line 157
    invoke-virtual {p0}, Lcom/facebook/share/model/SharePhoto;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 158
    invoke-virtual {p0}, Lcom/facebook/share/model/SharePhoto;->d()Landroid/net/Uri;

    move-result-object v1

    .line 160
    if-nez v0, :cond_0

    invoke-static {v1}, Lbqq;->b(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lbyz;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Lbhp;

    const-string v1, "Cannot set the ImageUrl of a SharePhoto to the Uri of an image on the web when sharing SharePhotoContent"

    invoke-direct {v0, v1}, Lbhp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_0
    return-void
.end method

.method private static e(Lcom/facebook/share/model/SharePhoto;Lbyz;)V
    .locals 1

    .prologue
    .line 168
    invoke-static {p0, p1}, Lbyw;->d(Lcom/facebook/share/model/SharePhoto;Lbyz;)V

    .line 170
    invoke-virtual {p0}, Lcom/facebook/share/model/SharePhoto;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/share/model/SharePhoto;->d()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lbqq;->b(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 171
    :cond_0
    invoke-static {}, Lbhv;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbqx;->i(Landroid/content/Context;)V

    .line 173
    :cond_1
    return-void
.end method

.method private static f(Lcom/facebook/share/model/SharePhoto;Lbyz;)V
    .locals 0

    .prologue
    .line 176
    invoke-static {p0}, Lbyw;->a(Lcom/facebook/share/model/SharePhoto;)V

    .line 177
    return-void
.end method
