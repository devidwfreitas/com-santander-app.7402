.class public final Lbze;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "me/photos"

.field private static final b:Ljava/lang/String; = "me/staging_resources"

.field private static final c:Ljava/lang/String; = "file"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 502
    const/4 v0, 0x0

    .line 504
    const/16 v1, 0x3a

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 505
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v3, v1, 0x1

    if-le v2, v3, :cond_0

    .line 506
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 507
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 511
    :cond_0
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method private static a(IILandroid/content/Intent;)Lbmr;
    .locals 1

    .prologue
    .line 219
    invoke-static {p2}, Lbqa;->b(Landroid/content/Intent;)Ljava/util/UUID;

    move-result-object v0

    .line 220
    if-nez v0, :cond_0

    .line 221
    const/4 v0, 0x0

    .line 224
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0, p0}, Lbmr;->a(Ljava/util/UUID;I)Lbmr;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Ljava/util/UUID;Lcom/facebook/share/model/ShareMedia;)Lbpz;
    .locals 1

    .prologue
    .line 79
    invoke-static {p0, p1}, Lbze;->b(Ljava/util/UUID;Lcom/facebook/share/model/ShareMedia;)Lbpz;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lbhl;)Lbyu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbhl",
            "<",
            "Lbwo;",
            ">;)",
            "Lbyu;"
        }
    .end annotation

    .prologue
    .line 186
    new-instance v0, Lbzf;

    invoke-direct {v0, p0, p0}, Lbzf;-><init>(Lbhl;Lbhl;)V

    return-object v0
.end method

.method public static a(Lccn;Lccn;)Lccn;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 707
    if-ne p0, p1, :cond_1

    .line 717
    :cond_0
    :goto_0
    return-object p0

    .line 711
    :cond_1
    sget-object v0, Lccn;->UNKNOWN:Lccn;

    if-ne p0, v0, :cond_2

    move-object p0, p1

    .line 712
    goto :goto_0

    .line 713
    :cond_2
    sget-object v0, Lccn;->UNKNOWN:Lccn;

    if-eq p1, v0, :cond_0

    .line 717
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/facebook/AccessToken;Landroid/graphics/Bitmap;Lbim;)Lcom/facebook/GraphRequest;
    .locals 6

    .prologue
    .line 619
    new-instance v3, Landroid/os/Bundle;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 620
    const-string v0, "file"

    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 622
    new-instance v0, Lcom/facebook/GraphRequest;

    const-string v2, "me/staging_resources"

    sget-object v4, Lbiz;->POST:Lbiz;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lbiz;Lbim;)V

    return-object v0
.end method

.method public static a(Lcom/facebook/AccessToken;Landroid/net/Uri;Lbim;)Lcom/facebook/GraphRequest;
    .locals 6

    .prologue
    .line 681
    invoke-static {p1}, Lbqq;->d(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 682
    new-instance v0, Ljava/io/File;

    .line 684
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 682
    invoke-static {p0, v0, p2}, Lbze;->a(Lcom/facebook/AccessToken;Ljava/io/File;Lbim;)Lcom/facebook/GraphRequest;

    move-result-object v0

    .line 695
    :goto_0
    return-object v0

    .line 686
    :cond_0
    invoke-static {p1}, Lbqq;->c(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 687
    new-instance v0, Lbhp;

    const-string v1, "The image Uri must be either a file:// or content:// Uri"

    invoke-direct {v0, v1}, Lbhp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 690
    :cond_1
    new-instance v0, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;

    const-string v1, "image/png"

    invoke-direct {v0, p1, v1}, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;-><init>(Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 692
    new-instance v3, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v3, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 693
    const-string v1, "file"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 695
    new-instance v0, Lcom/facebook/GraphRequest;

    const-string v2, "me/staging_resources"

    sget-object v4, Lbiz;->POST:Lbiz;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lbiz;Lbim;)V

    goto :goto_0
.end method

.method public static a(Lcom/facebook/AccessToken;Ljava/io/File;Lbim;)Lcom/facebook/GraphRequest;
    .locals 6

    .prologue
    .line 648
    const/high16 v0, 0x10000000

    .line 649
    invoke-static {p1, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 650
    new-instance v1, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;

    const-string v2, "image/png"

    invoke-direct {v1, v0, v2}, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;-><init>(Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 652
    new-instance v3, Landroid/os/Bundle;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 653
    const-string v0, "file"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 655
    new-instance v0, Lcom/facebook/GraphRequest;

    const-string v2, "me/staging_resources"

    sget-object v4, Lbiz;->POST:Lbiz;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lbiz;Lbim;)V

    return-object v0
.end method

.method public static a(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    const-string v0, "completionGesture"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    const-string v0, "completionGesture"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.facebook.platform.extra.COMPLETION_GESTURE"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lcom/facebook/share/model/ShareVideoContent;Ljava/util/UUID;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 299
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareVideoContent;->d()Lcom/facebook/share/model/ShareVideo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 300
    :cond_0
    const/4 v0, 0x0

    .line 312
    :goto_0
    return-object v0

    .line 306
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareVideoContent;->d()Lcom/facebook/share/model/ShareVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/share/model/ShareVideo;->c()Landroid/net/Uri;

    move-result-object v0

    .line 304
    invoke-static {p1, v0}, Lbpx;->a(Ljava/util/UUID;Landroid/net/Uri;)Lbpz;

    move-result-object v0

    .line 308
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 309
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    invoke-static {v1}, Lbpx;->a(Ljava/util/Collection;)V

    .line 312
    invoke-virtual {v0}, Lbpz;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lcom/facebook/share/model/ShareMediaContent;Ljava/util/UUID;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/share/model/ShareMediaContent;",
            "Ljava/util/UUID;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 319
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMediaContent;->a()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 320
    :cond_0
    const/4 v0, 0x0

    .line 345
    :goto_0
    return-object v0

    .line 323
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 324
    new-instance v2, Lbzk;

    invoke-direct {v2, p1, v1}, Lbzk;-><init>(Ljava/util/UUID;Ljava/util/List;)V

    invoke-static {v0, v2}, Lbqq;->a(Ljava/util/List;Lbqu;)Ljava/util/List;

    move-result-object v0

    .line 343
    invoke-static {v1}, Lbpx;->a(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public static a(Lcom/facebook/share/model/SharePhotoContent;Ljava/util/UUID;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/share/model/SharePhotoContent;",
            "Ljava/util/UUID;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 271
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/share/model/SharePhotoContent;->a()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 272
    :cond_0
    const/4 v0, 0x0

    .line 295
    :goto_0
    return-object v0

    .line 275
    :cond_1
    new-instance v1, Lbzi;

    invoke-direct {v1, p1}, Lbzi;-><init>(Ljava/util/UUID;)V

    invoke-static {v0, v1}, Lbqq;->a(Ljava/util/List;Lbqu;)Ljava/util/List;

    move-result-object v1

    .line 284
    new-instance v0, Lbzj;

    invoke-direct {v0}, Lbzj;-><init>()V

    invoke-static {v1, v0}, Lbqq;->a(Ljava/util/List;Lbqu;)Ljava/util/List;

    move-result-object v0

    .line 293
    invoke-static {v1}, Lbpx;->a(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public static a(Lorg/json/JSONArray;Z)Lorg/json/JSONArray;
    .locals 4

    .prologue
    .line 436
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 437
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 438
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 439
    instance-of v3, v0, Lorg/json/JSONArray;

    if-eqz v3, :cond_1

    .line 440
    check-cast v0, Lorg/json/JSONArray;

    invoke-static {v0, p1}, Lbze;->a(Lorg/json/JSONArray;Z)Lorg/json/JSONArray;

    move-result-object v0

    .line 444
    :cond_0
    :goto_1
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 437
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 441
    :cond_1
    instance-of v3, v0, Lorg/json/JSONObject;

    if-eqz v3, :cond_0

    .line 442
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0, p1}, Lbze;->a(Lorg/json/JSONObject;Z)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_1

    .line 447
    :cond_2
    return-object v2
.end method

.method public static a(Lcom/facebook/share/model/ShareOpenGraphContent;)Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareOpenGraphContent;->a()Lcom/facebook/share/model/ShareOpenGraphAction;

    move-result-object v0

    .line 415
    new-instance v1, Lbzm;

    invoke-direct {v1}, Lbzm;-><init>()V

    invoke-static {v0, v1}, Lbyr;->a(Lcom/facebook/share/model/ShareOpenGraphAction;Lbys;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/UUID;Lcom/facebook/share/model/ShareOpenGraphContent;)Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 352
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareOpenGraphContent;->a()Lcom/facebook/share/model/ShareOpenGraphAction;

    move-result-object v0

    .line 353
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 354
    new-instance v2, Lbzl;

    invoke-direct {v2, p0, v1}, Lbzl;-><init>(Ljava/util/UUID;Ljava/util/ArrayList;)V

    invoke-static {v0, v2}, Lbyr;->a(Lcom/facebook/share/model/ShareOpenGraphAction;Lbys;)Lorg/json/JSONObject;

    move-result-object v2

    .line 383
    invoke-static {v1}, Lbpx;->a(Ljava/util/Collection;)V

    .line 385
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareOpenGraphContent;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 386
    const-string v0, "place"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 390
    invoke-static {v0}, Lbqq;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    const-string v0, "place"

    invoke-virtual {p1}, Lcom/facebook/share/model/ShareOpenGraphContent;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 395
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareOpenGraphContent;->i()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 396
    const-string v0, "tags"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 397
    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v1, v0

    .line 401
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareOpenGraphContent;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 402
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 399
    :cond_1
    invoke-static {v0}, Lbqq;->b(Lorg/json/JSONArray;)Ljava/util/Set;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 404
    :cond_2
    const-string v0, "tags"

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 407
    :cond_3
    return-object v2
.end method

.method public static a(Lorg/json/JSONObject;Z)Lorg/json/JSONObject;
    .locals 9

    .prologue
    .line 453
    if-nez p0, :cond_0

    .line 454
    const/4 v0, 0x0

    .line 495
    :goto_0
    return-object v0

    .line 458
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 459
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 460
    invoke-virtual {p0}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v6

    .line 461
    const/4 v0, 0x0

    move v4, v0

    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v4, v0, :cond_7

    .line 462
    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 464
    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 465
    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    .line 466
    check-cast v0, Lorg/json/JSONObject;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lbze;->a(Lorg/json/JSONObject;Z)Lorg/json/JSONObject;

    move-result-object v0

    move-object v3, v0

    .line 471
    :goto_2
    invoke-static {v7}, Lbze;->a(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    .line 473
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 474
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 476
    if-eqz p1, :cond_5

    .line 477
    if-eqz v0, :cond_2

    const-string v8, "fbsdk"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 478
    invoke-virtual {v2, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 461
    :goto_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 467
    :cond_1
    instance-of v1, v0, Lorg/json/JSONArray;

    if-eqz v1, :cond_9

    .line 468
    check-cast v0, Lorg/json/JSONArray;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lbze;->a(Lorg/json/JSONArray;Z)Lorg/json/JSONArray;

    move-result-object v0

    move-object v3, v0

    goto :goto_2

    .line 479
    :cond_2
    if-eqz v0, :cond_3

    const-string v7, "og"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 480
    :cond_3
    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 496
    :catch_0
    move-exception v0

    .line 497
    new-instance v0, Lbhp;

    const-string v1, "Failed to create json object from share content"

    invoke-direct {v0, v1}, Lbhp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 482
    :cond_4
    :try_start_1
    invoke-virtual {v5, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 484
    :cond_5
    if-eqz v0, :cond_6

    const-string v8, "fb"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 485
    invoke-virtual {v2, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 487
    :cond_6
    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 491
    :cond_7
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_8

    .line 492
    const-string v0, "data"

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_8
    move-object v0, v2

    .line 495
    goto/16 :goto_0

    :cond_9
    move-object v3, v0

    goto :goto_2
.end method

.method public static a(I)V
    .locals 1

    .prologue
    .line 229
    new-instance v0, Lbzg;

    invoke-direct {v0, p0}, Lbzg;-><init>(I)V

    invoke-static {p0, v0}, Lbnj;->a(ILbnk;)V

    .line 242
    return-void
.end method

.method public static a(ILbhd;Lbhl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lbhd;",
            "Lbhl",
            "<",
            "Lbwo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 248
    instance-of v0, p1, Lbnj;

    if-nez v0, :cond_0

    .line 249
    new-instance v0, Lbhp;

    const-string v1, "Unexpected CallbackManager, please use the provided Factory."

    invoke-direct {v0, v1}, Lbhp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_0
    check-cast p1, Lbnj;

    new-instance v0, Lbzh;

    invoke-direct {v0, p0, p2}, Lbzh;-><init>(ILbhl;)V

    invoke-virtual {p1, p0, v0}, Lbnj;->b(ILbnk;)V

    .line 265
    return-void
.end method

.method static a(Lbhl;Lbhp;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbhl",
            "<",
            "Lbwo;",
            ">;",
            "Lbhp;",
            ")V"
        }
    .end annotation

    .prologue
    .line 582
    const-string v0, "error"

    invoke-virtual {p1}, Lbhp;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbze;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    if-eqz p0, :cond_0

    .line 584
    invoke-interface {p0, p1}, Lbhl;->a(Lbhp;)V

    .line 586
    :cond_0
    return-void
.end method

.method static a(Lbhl;Lbix;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbhl",
            "<",
            "Lbwo;",
            ">;",
            "Lbix;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 563
    const-string v0, "error"

    invoke-static {v0, p2}, Lbze;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    if-eqz p0, :cond_0

    .line 565
    new-instance v0, Lbhq;

    invoke-direct {v0, p1, p2}, Lbhq;-><init>(Lbix;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lbhl;->a(Lbhp;)V

    .line 567
    :cond_0
    return-void
.end method

.method public static a(Lbhl;Ljava/lang/Exception;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbhl",
            "<",
            "Lbwo;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 89
    instance-of v0, p1, Lbhp;

    if-eqz v0, :cond_0

    .line 90
    check-cast p1, Lbhp;

    invoke-static {p0, p1}, Lbze;->a(Lbhl;Lbhp;)V

    .line 96
    :goto_0
    return-void

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error preparing share content: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 95
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-static {p0, v0}, Lbze;->a(Lbhl;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Lbhl;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbhl",
            "<",
            "Lbwo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 101
    invoke-static {p0, p1}, Lbze;->c(Lbhl;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public static a(Lbhl;Ljava/lang/String;Lbix;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbhl",
            "<",
            "Lbwo;",
            ">;",
            "Ljava/lang/String;",
            "Lbix;",
            ")V"
        }
    .end annotation

    .prologue
    .line 108
    invoke-virtual {p2}, Lbix;->a()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_1

    .line 110
    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->f()Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-static {v0}, Lbqq;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    const-string v0, "Unexpected error sharing."

    .line 114
    :cond_0
    invoke-static {p0, p2, v0}, Lbze;->a(Lbhl;Lbix;Ljava/lang/String;)V

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_1
    invoke-static {p0, p1}, Lbze;->b(Lbhl;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 589
    invoke-static {}, Lbhv;->h()Landroid/content/Context;

    move-result-object v0

    .line 590
    invoke-static {v0}, Lbla;->c(Landroid/content/Context;)Lbla;

    move-result-object v0

    .line 591
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 592
    const-string v2, "fb_share_dialog_outcome"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    if-eqz p1, :cond_0

    .line 598
    const-string v2, "error_message"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    :cond_0
    const-string v2, "fb_share_dialog_result"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lbla;->a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 601
    return-void
.end method

.method public static a(IILandroid/content/Intent;Lbyu;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 156
    invoke-static {p0, p1, p2}, Lbze;->a(IILandroid/content/Intent;)Lbmr;

    move-result-object v1

    .line 157
    if-nez v1, :cond_1

    .line 158
    const/4 v0, 0x0

    .line 180
    :cond_0
    :goto_0
    return v0

    .line 161
    :cond_1
    invoke-virtual {v1}, Lbmr;->c()Ljava/util/UUID;

    move-result-object v2

    invoke-static {v2}, Lbpx;->a(Ljava/util/UUID;)V

    .line 162
    if-eqz p3, :cond_0

    .line 167
    invoke-static {p2}, Lbqa;->g(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v2

    .line 166
    invoke-static {v2}, Lbqa;->a(Landroid/os/Bundle;)Lbhp;

    move-result-object v2

    .line 168
    if-eqz v2, :cond_3

    .line 169
    instance-of v3, v2, Lbhr;

    if-eqz v3, :cond_2

    .line 170
    invoke-virtual {p3, v1}, Lbyu;->a(Lbmr;)V

    goto :goto_0

    .line 172
    :cond_2
    invoke-virtual {p3, v1, v2}, Lbyu;->a(Lbmr;Lbhp;)V

    goto :goto_0

    .line 176
    :cond_3
    invoke-static {p2}, Lbqa;->e(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v2

    .line 177
    invoke-virtual {p3, v1, v2}, Lbyu;->a(Lbmr;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private static b(Ljava/util/UUID;Lcom/facebook/share/model/ShareMedia;)Lbpz;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 517
    .line 520
    instance-of v1, p1, Lcom/facebook/share/model/SharePhoto;

    if-eqz v1, :cond_1

    .line 521
    check-cast p1, Lcom/facebook/share/model/SharePhoto;

    .line 522
    invoke-virtual {p1}, Lcom/facebook/share/model/SharePhoto;->c()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 523
    invoke-virtual {p1}, Lcom/facebook/share/model/SharePhoto;->d()Landroid/net/Uri;

    move-result-object v1

    .line 530
    :goto_0
    if-eqz v2, :cond_2

    .line 531
    invoke-static {p0, v2}, Lbpx;->a(Ljava/util/UUID;Landroid/graphics/Bitmap;)Lbpz;

    move-result-object v0

    .line 540
    :cond_0
    :goto_1
    return-object v0

    .line 524
    :cond_1
    instance-of v1, p1, Lcom/facebook/share/model/ShareVideo;

    if-eqz v1, :cond_3

    .line 525
    check-cast p1, Lcom/facebook/share/model/ShareVideo;

    .line 526
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareVideo;->c()Landroid/net/Uri;

    move-result-object v1

    move-object v2, v0

    goto :goto_0

    .line 534
    :cond_2
    if-eqz v1, :cond_0

    .line 535
    invoke-static {p0, v1}, Lbpx;->a(Ljava/util/UUID;Landroid/net/Uri;)Lbpz;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v1, v0

    move-object v2, v0

    goto :goto_0
.end method

.method public static b(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    const-string v0, "postId"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    const-string v0, "postId"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    :goto_0
    return-object v0

    .line 145
    :cond_0
    const-string v0, "com.facebook.platform.extra.POST_ID"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    const-string v0, "com.facebook.platform.extra.POST_ID"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 148
    :cond_1
    const-string v0, "post_id"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static b(Lbhl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbhl",
            "<",
            "Lbwo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 544
    const-string v0, "cancelled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbze;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    if-eqz p0, :cond_0

    .line 546
    invoke-interface {p0}, Lbhl;->a()V

    .line 548
    :cond_0
    return-void
.end method

.method static b(Lbhl;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbhl",
            "<",
            "Lbwo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 553
    const-string v0, "succeeded"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbze;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    if-eqz p0, :cond_0

    .line 555
    new-instance v0, Lbwo;

    invoke-direct {v0, p1}, Lbwo;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lbhl;->a(Ljava/lang/Object;)V

    .line 557
    :cond_0
    return-void
.end method

.method static c(Lbhl;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbhl",
            "<",
            "Lbwo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 573
    const-string v0, "error"

    invoke-static {v0, p1}, Lbze;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    if-eqz p0, :cond_0

    .line 575
    new-instance v0, Lbhp;

    invoke-direct {v0, p1}, Lbhp;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lbhl;->a(Lbhp;)V

    .line 577
    :cond_0
    return-void
.end method
