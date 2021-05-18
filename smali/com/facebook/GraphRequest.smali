.class public Lcom/facebook/GraphRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final A:Ljava/lang/String; = "file"

.field private static final B:Ljava/lang/String; = "attached_files"

.field private static final C:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ssZ"

.field private static final D:Ljava/lang/String; = "debug"

.field private static final E:Ljava/lang/String; = "info"

.field private static final F:Ljava/lang/String; = "warning"

.field private static final G:Ljava/lang/String; = "__debug__"

.field private static final H:Ljava/lang/String; = "messages"

.field private static final I:Ljava/lang/String; = "message"

.field private static final J:Ljava/lang/String; = "type"

.field private static final K:Ljava/lang/String; = "link"

.field private static final L:Ljava/lang/String; = "picture"

.field private static final M:Ljava/lang/String; = "caption"

.field private static final N:Ljava/lang/String; = "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"

.field private static final O:Ljava/lang/String; = "%s/%s"

.field private static P:Ljava/lang/String; = null

.field private static Q:Ljava/util/regex/Pattern; = null

.field public static final a:I = 0x32

.field private static volatile ae:Ljava/lang/String; = null

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String; = "access_token"

.field public static final d:Ljava/lang/String; = "fields"

.field private static final e:Ljava/lang/String; = "/videos"

.field private static final f:Ljava/lang/String; = "me"

.field private static final g:Ljava/lang/String; = "me/friends"

.field private static final h:Ljava/lang/String; = "me/photos"

.field private static final i:Ljava/lang/String; = "search"

.field private static final j:Ljava/lang/String; = "FBAndroidSDK"

.field private static final k:Ljava/lang/String; = "User-Agent"

.field private static final l:Ljava/lang/String; = "Content-Type"

.field private static final m:Ljava/lang/String; = "Accept-Language"

.field private static final n:Ljava/lang/String; = "Content-Encoding"

.field private static final o:Ljava/lang/String; = "format"

.field private static final p:Ljava/lang/String; = "json"

.field private static final q:Ljava/lang/String; = "sdk"

.field private static final r:Ljava/lang/String; = "android"

.field private static final s:Ljava/lang/String; = "name"

.field private static final t:Ljava/lang/String; = "omit_response_on_success"

.field private static final u:Ljava/lang/String; = "depends_on"

.field private static final v:Ljava/lang/String; = "batch_app_id"

.field private static final w:Ljava/lang/String; = "relative_url"

.field private static final x:Ljava/lang/String; = "body"

.field private static final y:Ljava/lang/String; = "method"

.field private static final z:Ljava/lang/String; = "batch"


# instance fields
.field private R:Lcom/facebook/AccessToken;

.field private S:Lbiz;

.field private T:Ljava/lang/String;

.field private U:Lorg/json/JSONObject;

.field private V:Ljava/lang/String;

.field private W:Ljava/lang/String;

.field private X:Z

.field private Y:Landroid/os/Bundle;

.field private Z:Lbim;

.field private aa:Ljava/lang/String;

.field private ab:Ljava/lang/Object;

.field private ac:Ljava/lang/String;

.field private ad:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const-class v0, Lcom/facebook/GraphRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/GraphRequest;->b:Ljava/lang/String;

    .line 133
    const-string v0, "^/?v\\d+\\.\\d+/(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/GraphRequest;->Q:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 153
    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lbiz;Lbim;)V

    .line 154
    return-void
.end method

.method public constructor <init>(Lcom/facebook/AccessToken;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 166
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lbiz;Lbim;)V

    .line 167
    return-void
.end method

.method public constructor <init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lbiz;)V
    .locals 6

    .prologue
    .line 190
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lbiz;Lbim;)V

    .line 191
    return-void
.end method

.method public constructor <init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lbiz;Lbim;)V
    .locals 7

    .prologue
    .line 217
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lbiz;Lbim;Ljava/lang/String;)V

    .line 218
    return-void
.end method

.method public constructor <init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lbiz;Lbim;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/GraphRequest;->X:Z

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/GraphRequest;->ad:Z

    .line 246
    iput-object p1, p0, Lcom/facebook/GraphRequest;->R:Lcom/facebook/AccessToken;

    .line 247
    iput-object p2, p0, Lcom/facebook/GraphRequest;->T:Ljava/lang/String;

    .line 248
    iput-object p6, p0, Lcom/facebook/GraphRequest;->ac:Ljava/lang/String;

    .line 250
    invoke-virtual {p0, p5}, Lcom/facebook/GraphRequest;->a(Lbim;)V

    .line 251
    invoke-virtual {p0, p4}, Lcom/facebook/GraphRequest;->a(Lbiz;)V

    .line 253
    if-eqz p3, :cond_1

    .line 254
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/facebook/GraphRequest;->Y:Landroid/os/Bundle;

    .line 259
    :goto_0
    iget-object v0, p0, Lcom/facebook/GraphRequest;->ac:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 260
    invoke-static {}, Lbhv;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/GraphRequest;->ac:Ljava/lang/String;

    .line 262
    :cond_0
    return-void

    .line 256
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/facebook/GraphRequest;->Y:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/facebook/AccessToken;Ljava/net/URL;)V
    .locals 1

    .prologue
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/GraphRequest;->X:Z

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/GraphRequest;->ad:Z

    .line 265
    iput-object p1, p0, Lcom/facebook/GraphRequest;->R:Lcom/facebook/AccessToken;

    .line 266
    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/GraphRequest;->aa:Ljava/lang/String;

    .line 268
    sget-object v0, Lbiz;->GET:Lbiz;

    invoke-virtual {p0, v0}, Lcom/facebook/GraphRequest;->a(Lbiz;)V

    .line 270
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/facebook/GraphRequest;->Y:Landroid/os/Bundle;

    .line 271
    return-void
.end method

.method public static a(Landroid/os/Handler;Ljava/net/HttpURLConnection;Lbiu;)Lbit;
    .locals 3

    .prologue
    .line 1334
    const-string v0, "connection"

    invoke-static {p1, v0}, Lbqx;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1336
    new-instance v0, Lbit;

    invoke-direct {v0, p1, p2}, Lbit;-><init>(Ljava/net/HttpURLConnection;Lbiu;)V

    .line 1337
    invoke-virtual {p2, p0}, Lbiu;->a(Landroid/os/Handler;)V

    .line 1338
    invoke-static {}, Lbhv;->f()Ljava/util/concurrent/Executor;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lbit;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1339
    return-object v0
.end method

.method public static a(Lcom/facebook/GraphRequest;)Lbix;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1093
    new-array v0, v3, [Lcom/facebook/GraphRequest;

    aput-object p0, v0, v2

    invoke-static {v0}, Lcom/facebook/GraphRequest;->b([Lcom/facebook/GraphRequest;)Ljava/util/List;

    move-result-object v0

    .line 1095
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 1096
    :cond_0
    new-instance v0, Lbhp;

    const-string v1, "invalid state: expected a single response"

    invoke-direct {v0, v1}, Lbhp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1099
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbix;

    return-object v0
.end method

.method public static a(Lcom/facebook/AccessToken;Landroid/content/Context;Lbim;)Lcom/facebook/GraphRequest;
    .locals 1

    .prologue
    .line 673
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/AccessToken;Landroid/content/Context;Ljava/lang/String;Lbim;)Lcom/facebook/GraphRequest;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/facebook/AccessToken;Landroid/content/Context;Ljava/lang/String;Lbim;)Lcom/facebook/GraphRequest;
    .locals 6

    .prologue
    .line 593
    if-nez p2, :cond_7

    if-eqz p0, :cond_7

    .line 594
    invoke-virtual {p0}, Lcom/facebook/AccessToken;->i()Ljava/lang/String;

    move-result-object p2

    move-object v0, p2

    .line 597
    :goto_0
    if-nez v0, :cond_0

    .line 598
    invoke-static {p1}, Lbqq;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 601
    :cond_0
    if-nez v0, :cond_1

    .line 602
    new-instance v0, Lbhp;

    const-string v1, "Facebook App ID cannot be determined"

    invoke-direct {v0, v1}, Lbhp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 605
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/custom_audience_third_party_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 607
    invoke-static {p1}, Lbmv;->a(Landroid/content/Context;)Lbmv;

    move-result-object v1

    .line 608
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 610
    if-nez p0, :cond_3

    .line 611
    if-nez v1, :cond_2

    .line 612
    new-instance v0, Lbhp;

    const-string v1, "There is no access token and attribution identifiers could not be retrieved"

    invoke-direct {v0, v1}, Lbhp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 619
    :cond_2
    invoke-virtual {v1}, Lbmv;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 620
    invoke-virtual {v1}, Lbmv;->a()Ljava/lang/String;

    move-result-object v0

    .line 622
    :goto_1
    invoke-virtual {v1}, Lbmv;->a()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 623
    const-string v4, "udid"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    :cond_3
    invoke-static {p1}, Lbhv;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz v1, :cond_5

    .line 630
    invoke-virtual {v1}, Lbmv;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 631
    :cond_4
    const-string v0, "limit_event_usage"

    const-string v1, "1"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    :cond_5
    new-instance v0, Lcom/facebook/GraphRequest;

    sget-object v4, Lbiz;->GET:Lbiz;

    move-object v1, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lbiz;Lbim;)V

    return-object v0

    .line 621
    :cond_6
    invoke-virtual {v1}, Lbmv;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_7
    move-object v0, p2

    goto :goto_0
.end method

.method public static a(Lcom/facebook/AccessToken;Landroid/location/Location;IILjava/lang/String;Lbin;)Lcom/facebook/GraphRequest;
    .locals 8

    .prologue
    .line 400
    if-nez p1, :cond_0

    invoke-static {p4}, Lbqq;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    new-instance v0, Lbhp;

    const-string v1, "Either location or searchText must be specified."

    invoke-direct {v0, v1}, Lbhp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 404
    :cond_0
    new-instance v3, Landroid/os/Bundle;

    const/4 v0, 0x5

    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 405
    const-string v0, "type"

    const-string v1, "place"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const-string v0, "limit"

    invoke-virtual {v3, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 407
    if-eqz p1, :cond_1

    .line 408
    const-string v0, "center"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%f,%f"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 412
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 413
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    .line 409
    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 408
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    const-string v0, "distance"

    invoke-virtual {v3, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 416
    :cond_1
    invoke-static {p4}, Lbqq;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 417
    const-string v0, "q"

    invoke-virtual {v3, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    :cond_2
    new-instance v5, Lbig;

    invoke-direct {v5, p5}, Lbig;-><init>(Lbin;)V

    .line 431
    new-instance v0, Lcom/facebook/GraphRequest;

    const-string v2, "search"

    sget-object v4, Lbiz;->GET:Lbiz;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lbiz;Lbim;)V

    return-object v0
.end method

.method public static a(Lcom/facebook/AccessToken;Lbin;)Lcom/facebook/GraphRequest;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 348
    new-instance v5, Lbif;

    invoke-direct {v5, p1}, Lbif;-><init>(Lbin;)V

    .line 358
    new-instance v0, Lcom/facebook/GraphRequest;

    const-string v2, "me/friends"

    move-object v1, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lbiz;Lbim;)V

    return-object v0
.end method

.method public static a(Lcom/facebook/AccessToken;Lbio;)Lcom/facebook/GraphRequest;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 300
    new-instance v5, Lbie;

    invoke-direct {v5, p1}, Lbie;-><init>(Lbio;)V

    .line 308
    new-instance v0, Lcom/facebook/GraphRequest;

    const-string v2, "me"

    move-object v1, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lbiz;Lbim;)V

    return-object v0
.end method

.method public static a(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/os/Bundle;Lbim;)Lcom/facebook/GraphRequest;
    .locals 6

    .prologue
    .line 454
    invoke-static {p1}, Lcom/facebook/GraphRequest;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 455
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 456
    if-eqz p4, :cond_0

    .line 457
    invoke-virtual {v3, p4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 459
    :cond_0
    const-string v0, "picture"

    invoke-virtual {v3, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 460
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 461
    const-string v0, "caption"

    invoke-virtual {v3, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    :cond_1
    new-instance v0, Lcom/facebook/GraphRequest;

    sget-object v4, Lbiz;->POST:Lbiz;

    move-object v1, p0

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lbiz;Lbim;)V

    return-object v0
.end method

.method public static a(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Lbim;)Lcom/facebook/GraphRequest;
    .locals 8

    .prologue
    .line 526
    invoke-static {p1}, Lcom/facebook/GraphRequest;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 527
    invoke-static {p2}, Lbqq;->d(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 528
    new-instance v2, Ljava/io/File;

    .line 531
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 528
    invoke-static/range {v0 .. v5}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/AccessToken;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Landroid/os/Bundle;Lbim;)Lcom/facebook/GraphRequest;

    move-result-object v2

    .line 549
    :goto_0
    return-object v2

    .line 535
    :cond_0
    invoke-static {p2}, Lbqq;->c(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 536
    new-instance v0, Lbhp;

    const-string v1, "The photo Uri must be either a file:// or content:// Uri"

    invoke-direct {v0, v1}, Lbhp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 539
    :cond_1
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 540
    if-eqz p4, :cond_2

    .line 541
    invoke-virtual {v5, p4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 543
    :cond_2
    const-string v0, "picture"

    invoke-virtual {v5, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 545
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 546
    const-string v0, "caption"

    invoke-virtual {v5, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    :cond_3
    new-instance v2, Lcom/facebook/GraphRequest;

    sget-object v6, Lbiz;->POST:Lbiz;

    move-object v3, p0

    move-object v4, v1

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lbiz;Lbim;)V

    goto :goto_0
.end method

.method public static a(Lcom/facebook/AccessToken;Ljava/lang/String;Lbim;)Lcom/facebook/GraphRequest;
    .locals 6

    .prologue
    .line 286
    new-instance v0, Lcom/facebook/GraphRequest;

    const/4 v3, 0x0

    sget-object v4, Lbiz;->DELETE:Lbiz;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lbiz;Lbim;)V

    return-object v0
.end method

.method public static a(Lcom/facebook/AccessToken;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Landroid/os/Bundle;Lbim;)Lcom/facebook/GraphRequest;
    .locals 6

    .prologue
    .line 489
    invoke-static {p1}, Lcom/facebook/GraphRequest;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 490
    const/high16 v0, 0x10000000

    .line 491
    invoke-static {p2, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 492
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 493
    if-eqz p4, :cond_0

    .line 494
    invoke-virtual {v3, p4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 496
    :cond_0
    const-string v1, "picture"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 497
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 498
    const-string v0, "caption"

    invoke-virtual {v3, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    :cond_1
    new-instance v0, Lcom/facebook/GraphRequest;

    sget-object v4, Lbiz;->POST:Lbiz;

    move-object v1, p0

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lbiz;Lbim;)V

    return-object v0
.end method

.method public static a(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lbim;)Lcom/facebook/GraphRequest;
    .locals 6

    .prologue
    .line 327
    new-instance v0, Lcom/facebook/GraphRequest;

    const/4 v3, 0x0

    sget-object v4, Lbiz;->POST:Lbiz;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lbiz;Lbim;)V

    .line 333
    invoke-virtual {v0, p2}, Lcom/facebook/GraphRequest;->a(Lorg/json/JSONObject;)V

    .line 334
    return-object v0
.end method

.method public static a(Lcom/facebook/share/model/ShareOpenGraphObject;)Lcom/facebook/GraphRequest;
    .locals 8

    .prologue
    .line 1848
    const-string v0, "type"

    invoke-virtual {p0, v0}, Lcom/facebook/share/model/ShareOpenGraphObject;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1849
    if-nez v0, :cond_1

    .line 1850
    const-string v0, "og:type"

    invoke-virtual {p0, v0}, Lcom/facebook/share/model/ShareOpenGraphObject;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 1853
    :goto_0
    if-nez v1, :cond_0

    .line 1854
    new-instance v0, Lbhp;

    const-string v1, "Open graph object type cannot be null"

    invoke-direct {v0, v1}, Lbhp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1857
    :cond_0
    :try_start_0
    new-instance v0, Lbik;

    invoke-direct {v0}, Lbik;-><init>()V

    invoke-static {p0, v0}, Lbyr;->a(Ljava/lang/Object;Lbys;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 1874
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1875
    const-string v3, "object"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1877
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v3, "%s/%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "me"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "objects/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v0, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1881
    new-instance v1, Lcom/facebook/GraphRequest;

    .line 1882
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v3

    sget-object v4, Lbiz;->POST:Lbiz;

    invoke-direct {v1, v3, v0, v2, v4}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lbiz;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1881
    return-object v1

    .line 1887
    :catch_0
    move-exception v0

    .line 1888
    new-instance v1, Lbhp;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lbhp;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method public static a(Lbiu;)Ljava/net/HttpURLConnection;
    .locals 3

    .prologue
    .line 1049
    invoke-static {p0}, Lcom/facebook/GraphRequest;->d(Lbiu;)V

    .line 1053
    :try_start_0
    invoke-virtual {p0}, Lbiu;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1055
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbiu;->b(I)Lcom/facebook/GraphRequest;

    move-result-object v1

    .line 1058
    new-instance v0, Ljava/net/URL;

    invoke-virtual {v1}, Lcom/facebook/GraphRequest;->p()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1068
    :goto_0
    const/4 v1, 0x0

    .line 1070
    :try_start_1
    invoke-static {v0}, Lcom/facebook/GraphRequest;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 1072
    invoke-static {p0, v1}, Lcom/facebook/GraphRequest;->a(Lbiu;Ljava/net/HttpURLConnection;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1079
    return-object v1

    .line 1062
    :cond_0
    :try_start_2
    new-instance v0, Ljava/net/URL;

    invoke-static {}, Lbqn;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1064
    :catch_0
    move-exception v0

    .line 1065
    new-instance v1, Lbhp;

    const-string v2, "could not construct URL for request"

    invoke-direct {v1, v2, v0}, Lbhp;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1073
    :catch_1
    move-exception v0

    .line 1074
    :goto_1
    invoke-static {v1}, Lbqq;->a(Ljava/net/URLConnection;)V

    .line 1076
    new-instance v1, Lbhp;

    const-string v2, "could not construct request body"

    invoke-direct {v1, v2, v0}, Lbhp;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1073
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method private static a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 3

    .prologue
    .line 1410
    invoke-static {p0}, Lcom/ca/android/app/CaMDOHTTPClient;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 1412
    const-string v1, "User-Agent"

    invoke-static {}, Lcom/facebook/GraphRequest;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    const-string v1, "Accept-Language"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1415
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 1416
    return-object v0
.end method

.method public static a(Ljava/util/Collection;)Ljava/net/HttpURLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/GraphRequest;",
            ">;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .prologue
    .line 1032
    const-string v0, "requests"

    invoke-static {p0, v0}, Lbqx;->d(Ljava/util/Collection;Ljava/lang/String;)V

    .line 1034
    new-instance v0, Lbiu;

    invoke-direct {v0, p0}, Lbiu;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/facebook/GraphRequest;->a(Lbiu;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method public static varargs a([Lcom/facebook/GraphRequest;)Ljava/net/HttpURLConnection;
    .locals 1

    .prologue
    .line 1017
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/GraphRequest;->a(Ljava/util/Collection;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/net/HttpURLConnection;Lbiu;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lbiu;",
            ")",
            "Ljava/util/List",
            "<",
            "Lbix;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1270
    invoke-static {p0, p1}, Lbix;->a(Ljava/net/HttpURLConnection;Lbiu;)Ljava/util/List;

    move-result-object v0

    .line 1272
    invoke-static {p0}, Lbqq;->a(Ljava/net/URLConnection;)V

    .line 1274
    invoke-virtual {p1}, Lbiu;->size()I

    move-result v1

    .line 1275
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 1276
    new-instance v2, Lbhp;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "Received %d responses while expecting %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 1279
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    .line 1280
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    .line 1277
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lbhp;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1283
    :cond_0
    invoke-static {p1, v0}, Lcom/facebook/GraphRequest;->a(Lbiu;Ljava/util/List;)V

    .line 1286
    invoke-static {}, Lbgs;->a()Lbgs;

    move-result-object v1

    invoke-virtual {v1}, Lbgs;->d()V

    .line 1288
    return-object v0
.end method

.method public static a(Ljava/net/HttpURLConnection;Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/GraphRequest;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lbix;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1250
    new-instance v0, Lbiu;

    invoke-direct {v0, p1}, Lbiu;-><init>(Ljava/util/Collection;)V

    invoke-static {p0, v0}, Lcom/facebook/GraphRequest;->a(Ljava/net/HttpURLConnection;Lbiu;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/os/Bundle;Lbis;Lcom/facebook/GraphRequest;)V
    .locals 4

    .prologue
    .line 1965
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1967
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1968
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1969
    invoke-static {v2}, Lcom/facebook/GraphRequest;->e(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1970
    invoke-virtual {p1, v0, v2, p2}, Lbis;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest;)V

    goto :goto_0

    .line 1973
    :cond_1
    return-void
.end method

.method private static a(Lbis;Ljava/util/Collection;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbis;",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/GraphRequest;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lbil;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1994
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1995
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/GraphRequest;

    .line 1996
    invoke-direct {v0, v1, p2}, Lcom/facebook/GraphRequest;->a(Lorg/json/JSONArray;Ljava/util/Map;)V

    goto :goto_0

    .line 1999
    :cond_0
    const-string v0, "batch"

    invoke-virtual {p0, v0, v1, p1}, Lbis;->a(Ljava/lang/String;Lorg/json/JSONArray;Ljava/util/Collection;)V

    .line 2000
    return-void
.end method

.method private static a(Lbiu;Lbpu;ILjava/net/URL;Ljava/io/OutputStream;Z)V
    .locals 7

    .prologue
    .line 1746
    new-instance v1, Lbis;

    invoke-direct {v1, p4, p1, p5}, Lbis;-><init>(Ljava/io/OutputStream;Lbpu;Z)V

    .line 1748
    const/4 v0, 0x1

    if-ne p2, v0, :cond_5

    .line 1749
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbiu;->b(I)Lcom/facebook/GraphRequest;

    move-result-object v2

    .line 1751
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1752
    iget-object v0, v2, Lcom/facebook/GraphRequest;->Y:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1753
    iget-object v5, v2, Lcom/facebook/GraphRequest;->Y:Landroid/os/Bundle;

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 1754
    invoke-static {v5}, Lcom/facebook/GraphRequest;->d(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1755
    new-instance v6, Lbil;

    invoke-direct {v6, v2, v5}, Lbil;-><init>(Lcom/facebook/GraphRequest;Ljava/lang/Object;)V

    invoke-interface {v3, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1759
    :cond_1
    if-eqz p1, :cond_2

    .line 1760
    const-string v0, "  Parameters:\n"

    invoke-virtual {p1, v0}, Lbpu;->c(Ljava/lang/String;)V

    .line 1762
    :cond_2
    iget-object v0, v2, Lcom/facebook/GraphRequest;->Y:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Lcom/facebook/GraphRequest;->a(Landroid/os/Bundle;Lbis;Lcom/facebook/GraphRequest;)V

    .line 1764
    if-eqz p1, :cond_3

    .line 1765
    const-string v0, "  Attachments:\n"

    invoke-virtual {p1, v0}, Lbpu;->c(Ljava/lang/String;)V

    .line 1767
    :cond_3
    invoke-static {v3, v1}, Lcom/facebook/GraphRequest;->a(Ljava/util/Map;Lbis;)V

    .line 1769
    iget-object v0, v2, Lcom/facebook/GraphRequest;->U:Lorg/json/JSONObject;

    if-eqz v0, :cond_4

    .line 1770
    iget-object v0, v2, Lcom/facebook/GraphRequest;->U:Lorg/json/JSONObject;

    invoke-virtual {p3}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/facebook/GraphRequest;->a(Lorg/json/JSONObject;Ljava/lang/String;Lbip;)V

    .line 1791
    :cond_4
    :goto_1
    return-void

    .line 1773
    :cond_5
    invoke-static {p0}, Lcom/facebook/GraphRequest;->g(Lbiu;)Ljava/lang/String;

    move-result-object v0

    .line 1774
    invoke-static {v0}, Lbqq;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1775
    new-instance v0, Lbhp;

    const-string v1, "App ID was not specified at the request or Settings."

    invoke-direct {v0, v1}, Lbhp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1779
    :cond_6
    const-string v2, "batch_app_id"

    invoke-virtual {v1, v2, v0}, Lbis;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1783
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1784
    invoke-static {v1, p0, v0}, Lcom/facebook/GraphRequest;->a(Lbis;Ljava/util/Collection;Ljava/util/Map;)V

    .line 1786
    if-eqz p1, :cond_7

    .line 1787
    const-string v2, "  Attachments:\n"

    invoke-virtual {p1, v2}, Lbpu;->c(Ljava/lang/String;)V

    .line 1789
    :cond_7
    invoke-static {v0, v1}, Lcom/facebook/GraphRequest;->a(Ljava/util/Map;Lbis;)V

    goto :goto_1
.end method

.method static final a(Lbiu;Ljava/net/HttpURLConnection;)V
    .locals 13

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x1

    .line 1684
    new-instance v12, Lbpu;

    sget-object v0, Lbjb;->REQUESTS:Lbjb;

    const-string v2, "Request"

    invoke-direct {v12, v0, v2}, Lbpu;-><init>(Lbjb;Ljava/lang/String;)V

    .line 1686
    invoke-virtual {p0}, Lbiu;->size()I

    move-result v2

    .line 1687
    invoke-static {p0}, Lcom/facebook/GraphRequest;->f(Lbiu;)Z

    move-result v5

    .line 1689
    if-ne v2, v1, :cond_0

    .line 1690
    invoke-virtual {p0, v6}, Lbiu;->b(I)Lcom/facebook/GraphRequest;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/GraphRequest;->S:Lbiz;

    .line 1691
    :goto_0
    invoke-virtual {v0}, Lbiz;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1692
    invoke-static {p1, v5}, Lcom/facebook/GraphRequest;->a(Ljava/net/HttpURLConnection;Z)V

    .line 1694
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v3

    .line 1695
    const-string v7, "Request:\n"

    invoke-virtual {v12, v7}, Lbpu;->c(Ljava/lang/String;)V

    .line 1696
    const-string v7, "Id"

    invoke-virtual {p0}, Lbiu;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v7, v8}, Lbpu;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1697
    const-string v7, "URL"

    invoke-virtual {v12, v7, v3}, Lbpu;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1698
    const-string v7, "Method"

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v7, v8}, Lbpu;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1699
    const-string v7, "User-Agent"

    const-string v8, "User-Agent"

    invoke-virtual {p1, v8}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v7, v8}, Lbpu;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1700
    const-string v7, "Content-Type"

    const-string v8, "Content-Type"

    invoke-virtual {p1, v8}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v7, v8}, Lbpu;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1702
    invoke-virtual {p0}, Lbiu;->a()I

    move-result v7

    invoke-virtual {p1, v7}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1703
    invoke-virtual {p0}, Lbiu;->a()I

    move-result v7

    invoke-virtual {p1, v7}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1707
    sget-object v7, Lbiz;->POST:Lbiz;

    if-ne v0, v7, :cond_1

    move v0, v1

    .line 1708
    :goto_1
    if-nez v0, :cond_2

    .line 1709
    invoke-virtual {v12}, Lbpu;->c()V

    .line 1741
    :goto_2
    return-void

    .line 1690
    :cond_0
    sget-object v0, Lbiz;->POST:Lbiz;

    goto :goto_0

    :cond_1
    move v0, v6

    .line 1707
    goto :goto_1

    .line 1713
    :cond_2
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 1717
    :try_start_0
    new-instance v7, Ljava/io/BufferedOutputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1718
    if-eqz v5, :cond_3

    .line 1719
    :try_start_1
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, v7}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v7, v0

    .line 1722
    :cond_3
    invoke-static {p0}, Lcom/facebook/GraphRequest;->e(Lbiu;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1724
    new-instance v4, Lbjk;

    invoke-virtual {p0}, Lbiu;->c()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {v4, v0}, Lbjk;-><init>(Landroid/os/Handler;)V

    .line 1725
    const/4 v1, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/facebook/GraphRequest;->a(Lbiu;Lbpu;ILjava/net/URL;Ljava/io/OutputStream;Z)V

    .line 1727
    invoke-virtual {v4}, Lbjk;->a()I

    move-result v0

    .line 1728
    invoke-virtual {v4}, Lbjk;->b()Ljava/util/Map;

    move-result-object v9

    .line 1730
    new-instance v6, Lbjl;

    int-to-long v10, v0

    move-object v8, p0

    invoke-direct/range {v6 .. v11}, Lbjl;-><init>(Ljava/io/OutputStream;Lbiu;Ljava/util/Map;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v4, v6

    :goto_3
    move-object v0, p0

    move-object v1, v12

    .line 1733
    :try_start_2
    invoke-static/range {v0 .. v5}, Lcom/facebook/GraphRequest;->a(Lbiu;Lbpu;ILjava/net/URL;Ljava/io/OutputStream;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1735
    if-eqz v4, :cond_4

    .line 1736
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 1740
    :cond_4
    invoke-virtual {v12}, Lbpu;->c()V

    goto :goto_2

    .line 1735
    :catchall_0
    move-exception v0

    move-object v7, v4

    :goto_4
    if-eqz v7, :cond_5

    .line 1736
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    :cond_5
    throw v0

    .line 1735
    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v7, v4

    goto :goto_4

    :cond_6
    move-object v4, v7

    goto :goto_3
.end method

.method static a(Lbiu;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbiu;",
            "Ljava/util/List",
            "<",
            "Lbix;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1366
    invoke-virtual {p0}, Lbiu;->size()I

    move-result v1

    .line 1370
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1371
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 1372
    invoke-virtual {p0, v0}, Lbiu;->b(I)Lcom/facebook/GraphRequest;

    move-result-object v3

    .line 1373
    iget-object v4, v3, Lcom/facebook/GraphRequest;->Z:Lbim;

    if-eqz v4, :cond_0

    .line 1374
    new-instance v4, Landroid/util/Pair;

    iget-object v3, v3, Lcom/facebook/GraphRequest;->Z:Lbim;

    .line 1375
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1374
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1371
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1379
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1380
    new-instance v0, Lbii;

    invoke-direct {v0, v2, p0}, Lbii;-><init>(Ljava/util/ArrayList;Lbiu;)V

    .line 1393
    invoke-virtual {p0}, Lbiu;->c()Landroid/os/Handler;

    move-result-object v1

    .line 1394
    if-nez v1, :cond_3

    .line 1396
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1402
    :cond_2
    :goto_1
    return-void

    .line 1399
    :cond_3
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Object;Lbip;Z)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 1898
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1900
    const-class v2, Lorg/json/JSONObject;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1901
    check-cast p1, Lorg/json/JSONObject;

    .line 1902
    if-eqz p3, :cond_0

    .line 1905
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 1906
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1907
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1908
    const-string v3, "%s[%s]"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object p0, v4, v1

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1911
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1909
    invoke-static {v3, v0, p2, p3}, Lcom/facebook/GraphRequest;->a(Ljava/lang/String;Ljava/lang/Object;Lbip;Z)V

    goto :goto_0

    .line 1918
    :cond_0
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1919
    const-string v0, "id"

    .line 1921
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1919
    invoke-static {p0, v0, p2, p3}, Lcom/facebook/GraphRequest;->a(Ljava/lang/String;Ljava/lang/Object;Lbip;Z)V

    .line 1958
    :cond_1
    :goto_1
    return-void

    .line 1924
    :cond_2
    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1925
    const-string v0, "url"

    .line 1927
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1925
    invoke-static {p0, v0, p2, p3}, Lcom/facebook/GraphRequest;->a(Ljava/lang/String;Ljava/lang/Object;Lbip;Z)V

    goto :goto_1

    .line 1930
    :cond_3
    const-string v0, "fbsdk:create_object"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1931
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lcom/facebook/GraphRequest;->a(Ljava/lang/String;Ljava/lang/Object;Lbip;Z)V

    goto :goto_1

    .line 1934
    :cond_4
    const-class v2, Lorg/json/JSONArray;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1935
    check-cast p1, Lorg/json/JSONArray;

    .line 1936
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    move v0, v1

    .line 1937
    :goto_2
    if-ge v0, v2, :cond_1

    .line 1938
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v4, "%s[%d]"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object p0, v5, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1939
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4, p2, p3}, Lcom/facebook/GraphRequest;->a(Ljava/lang/String;Ljava/lang/Object;Lbip;Z)V

    .line 1937
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1941
    :cond_5
    const-class v1, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_6

    const-class v1, Ljava/lang/Number;

    .line 1942
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_6

    const-class v1, Ljava/lang/Boolean;

    .line 1943
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1944
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lbip;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1945
    :cond_7
    const-class v1, Ljava/util/Date;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1946
    check-cast p1, Ljava/util/Date;

    .line 1953
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1956
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lbip;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private static a(Ljava/net/HttpURLConnection;Z)V
    .locals 2

    .prologue
    .line 1622
    if-eqz p1, :cond_0

    .line 1623
    const-string v0, "Content-Type"

    const-string v1, "application/x-www-form-urlencoded"

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1624
    const-string v0, "Content-Encoding"

    const-string v1, "gzip"

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1628
    :goto_0
    return-void

    .line 1626
    :cond_0
    const-string v0, "Content-Type"

    invoke-static {}, Lcom/facebook/GraphRequest;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Ljava/util/Map;Lbis;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lbil;",
            ">;",
            "Lbis;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1979
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1981
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1982
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbil;

    .line 1983
    invoke-virtual {v1}, Lbil;->b()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/GraphRequest;->d(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1984
    invoke-virtual {v1}, Lbil;->b()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1}, Lbil;->a()Lcom/facebook/GraphRequest;

    move-result-object v1

    invoke-virtual {p1, v0, v3, v1}, Lbis;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest;)V

    goto :goto_0

    .line 1987
    :cond_1
    return-void
.end method

.method private a(Lorg/json/JSONArray;Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lbil;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1541
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1543
    iget-object v0, p0, Lcom/facebook/GraphRequest;->V:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1544
    const-string v0, "name"

    iget-object v2, p0, Lcom/facebook/GraphRequest;->V:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1545
    const-string v0, "omit_response_on_success"

    iget-boolean v2, p0, Lcom/facebook/GraphRequest;->X:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1549
    :cond_0
    iget-object v0, p0, Lcom/facebook/GraphRequest;->W:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1550
    const-string v0, "depends_on"

    iget-object v2, p0, Lcom/facebook/GraphRequest;->W:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1553
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/GraphRequest;->o()Ljava/lang/String;

    move-result-object v2

    .line 1554
    const-string v0, "relative_url"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1555
    const-string v0, "method"

    iget-object v3, p0, Lcom/facebook/GraphRequest;->S:Lbiz;

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1556
    iget-object v0, p0, Lcom/facebook/GraphRequest;->R:Lcom/facebook/AccessToken;

    if-eqz v0, :cond_2

    .line 1557
    iget-object v0, p0, Lcom/facebook/GraphRequest;->R:Lcom/facebook/AccessToken;

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->c()Ljava/lang/String;

    move-result-object v0

    .line 1558
    invoke-static {v0}, Lbpu;->a(Ljava/lang/String;)V

    .line 1562
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1563
    iget-object v0, p0, Lcom/facebook/GraphRequest;->Y:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1564
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1565
    iget-object v5, p0, Lcom/facebook/GraphRequest;->Y:Landroid/os/Bundle;

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1566
    invoke-static {v0}, Lcom/facebook/GraphRequest;->d(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1568
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v6, "%s%d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "file"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    .line 1572
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    .line 1568
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1573
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1574
    new-instance v6, Lbil;

    invoke-direct {v6, p0, v0}, Lbil;-><init>(Lcom/facebook/GraphRequest;Ljava/lang/Object;)V

    invoke-interface {p2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1578
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1579
    const-string v0, ","

    invoke-static {v0, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 1580
    const-string v3, "attached_files"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1583
    :cond_5
    iget-object v0, p0, Lcom/facebook/GraphRequest;->U:Lorg/json/JSONObject;

    if-eqz v0, :cond_6

    .line 1585
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1586
    iget-object v3, p0, Lcom/facebook/GraphRequest;->U:Lorg/json/JSONObject;

    new-instance v4, Lbij;

    invoke-direct {v4, p0, v0}, Lbij;-><init>(Lcom/facebook/GraphRequest;Ljava/util/ArrayList;)V

    invoke-static {v3, v2, v4}, Lcom/facebook/GraphRequest;->a(Lorg/json/JSONObject;Ljava/lang/String;Lbip;)V

    .line 1596
    const-string v2, "&"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 1597
    const-string v2, "body"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1600
    :cond_6
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1601
    return-void
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;Lbip;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1816
    .line 1817
    invoke-static {p1}, Lcom/facebook/GraphRequest;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1818
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1819
    const-string v3, "?"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 1820
    const/4 v4, 0x3

    if-le v0, v4, :cond_1

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    if-ge v0, v3, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    move v3, v0

    .line 1824
    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 1825
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1826
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1827
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 1828
    if-eqz v3, :cond_2

    const-string v4, "image"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v1

    .line 1829
    :goto_3
    invoke-static {v0, v6, p2, v4}, Lcom/facebook/GraphRequest;->a(Ljava/lang/String;Ljava/lang/Object;Lbip;Z)V

    goto :goto_2

    :cond_1
    move v0, v2

    .line 1820
    goto :goto_0

    :cond_2
    move v4, v2

    .line 1828
    goto :goto_3

    .line 1831
    :cond_3
    return-void

    :cond_4
    move v3, v2

    goto :goto_1
.end method

.method public static b(Ljava/net/HttpURLConnection;Lbiu;)Lbit;
    .locals 1

    .prologue
    .line 1309
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/facebook/GraphRequest;->a(Landroid/os/Handler;Ljava/net/HttpURLConnection;Lbiu;)Lbit;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lcom/facebook/AccessToken;Ljava/lang/String;Lbim;)Lcom/facebook/GraphRequest;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 374
    new-instance v0, Lcom/facebook/GraphRequest;

    move-object v1, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lbiz;Lbim;)V

    return-object v0
.end method

.method public static b(Lbiu;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbiu;",
            ")",
            "Ljava/util/List",
            "<",
            "Lbix;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1153
    const-string v0, "requests"

    invoke-static {p0, v0}, Lbqx;->d(Ljava/util/Collection;Ljava/lang/String;)V

    .line 1158
    :try_start_0
    invoke-static {p0}, Lcom/facebook/GraphRequest;->a(Lbiu;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1168
    :try_start_1
    invoke-static {v1, p0}, Lcom/facebook/GraphRequest;->a(Ljava/net/HttpURLConnection;Lbiu;)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 1172
    invoke-static {v1}, Lbqq;->a(Ljava/net/URLConnection;)V

    .line 1170
    :goto_0
    return-object v0

    .line 1159
    :catch_0
    move-exception v0

    .line 1161
    :try_start_2
    invoke-virtual {p0}, Lbiu;->d()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lbhp;

    invoke-direct {v4, v0}, Lbhp;-><init>(Ljava/lang/Throwable;)V

    .line 1160
    invoke-static {v2, v3, v4}, Lbix;->a(Ljava/util/List;Ljava/net/HttpURLConnection;Lbhp;)Ljava/util/List;

    move-result-object v0

    .line 1164
    invoke-static {p0, v0}, Lcom/facebook/GraphRequest;->a(Lbiu;Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1172
    invoke-static {v1}, Lbqq;->a(Ljava/net/URLConnection;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lbqq;->a(Ljava/net/URLConnection;)V

    throw v0
.end method

.method public static b(Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/GraphRequest;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lbix;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1134
    new-instance v0, Lbiu;

    invoke-direct {v0, p0}, Lbiu;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/facebook/GraphRequest;->b(Lbiu;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static varargs b([Lcom/facebook/GraphRequest;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/facebook/GraphRequest;",
            ")",
            "Ljava/util/List",
            "<",
            "Lbix;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1116
    const-string v0, "requests"

    invoke-static {p0, v0}, Lbqx;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1118
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/GraphRequest;->b(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static final b(Lcom/facebook/GraphRequest;)Z
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1643
    invoke-virtual {p0}, Lcom/facebook/GraphRequest;->d()Ljava/lang/String;

    move-result-object v0

    .line 1644
    invoke-static {v0}, Lbqq;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1653
    :goto_0
    return v2

    .line 1648
    :cond_0
    const-string v3, "v"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1649
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1651
    :cond_1
    const-string v3, "\\."

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1653
    array-length v3, v0

    if-lt v3, v4, :cond_2

    aget-object v3, v0, v1

    .line 1654
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-gt v3, v4, :cond_3

    :cond_2
    aget-object v3, v0, v1

    .line 1655
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-lt v3, v4, :cond_4

    aget-object v0, v0, v2

    .line 1656
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x4

    if-lt v0, v3, :cond_4

    :cond_3
    move v0, v2

    :goto_1
    move v2, v0

    .line 1653
    goto :goto_0

    :cond_4
    move v0, v1

    .line 1656
    goto :goto_1
.end method

.method public static synthetic b(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 76
    invoke-static {p0}, Lcom/facebook/GraphRequest;->e(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static c(Lbiu;)Lbit;
    .locals 3

    .prologue
    .line 1226
    const-string v0, "requests"

    invoke-static {p0, v0}, Lbqx;->d(Ljava/util/Collection;Ljava/lang/String;)V

    .line 1228
    new-instance v0, Lbit;

    invoke-direct {v0, p0}, Lbit;-><init>(Lbiu;)V

    .line 1229
    invoke-static {}, Lbhv;->f()Ljava/util/concurrent/Executor;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lbit;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1230
    return-object v0
.end method

.method public static c(Ljava/util/Collection;)Lbit;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/GraphRequest;",
            ">;)",
            "Lbit;"
        }
    .end annotation

    .prologue
    .line 1208
    new-instance v0, Lbiu;

    invoke-direct {v0, p0}, Lbiu;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/facebook/GraphRequest;->c(Lbiu;)Lbit;

    move-result-object v0

    return-object v0
.end method

.method public static varargs c([Lcom/facebook/GraphRequest;)Lbit;
    .locals 1

    .prologue
    .line 1189
    const-string v0, "requests"

    invoke-static {p0, v0}, Lbqx;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1191
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/GraphRequest;->c(Ljava/util/Collection;)Lbit;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    invoke-static {p0}, Lcom/facebook/GraphRequest;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static final d(Lbiu;)V
    .locals 8

    .prologue
    .line 1661
    invoke-virtual {p0}, Lbiu;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/GraphRequest;

    .line 1662
    sget-object v2, Lbiz;->GET:Lbiz;

    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->c()Lbiz;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbiz;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1663
    invoke-static {v0}, Lcom/facebook/GraphRequest;->b(Lcom/facebook/GraphRequest;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1664
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->e()Landroid/os/Bundle;

    move-result-object v2

    .line 1665
    const-string v3, "fields"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "fields"

    .line 1666
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lbqq;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1667
    :cond_1
    sget-object v2, Lbjb;->DEVELOPER_ERRORS:Lbjb;

    const/4 v3, 0x5

    const-string v4, "Request"

    const-string v5, "starting with Graph API v2.4, GET requests for /%s should contain an explicit \"fields\" parameter."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 1673
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->b()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    .line 1667
    invoke-static {v2, v3, v4, v5, v6}, Lbpu;->a(Lbjb;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1678
    :cond_2
    return-void
.end method

.method private static d(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 2047
    instance-of v0, p0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    instance-of v0, p0, [B

    if-nez v0, :cond_0

    instance-of v0, p0, Landroid/net/Uri;

    if-nez v0, :cond_0

    instance-of v0, p0, Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 889
    sput-object p0, Lcom/facebook/GraphRequest;->P:Ljava/lang/String;

    .line 890
    return-void
.end method

.method private static e(Lbiu;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1604
    invoke-virtual {p0}, Lbiu;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbiv;

    .line 1605
    instance-of v0, v0, Lbiw;

    if-eqz v0, :cond_0

    move v0, v1

    .line 1616
    :goto_0
    return v0

    .line 1610
    :cond_1
    invoke-virtual {p0}, Lbiu;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/GraphRequest;

    .line 1611
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->k()Lbim;

    move-result-object v0

    instance-of v0, v0, Lbiq;

    if-eqz v0, :cond_2

    move v0, v1

    .line 1612
    goto :goto_0

    .line 1616
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static e(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 2055
    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Number;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static f(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 2060
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2061
    check-cast p0, Ljava/lang/String;

    .line 2067
    :goto_0
    return-object p0

    .line 2062
    :cond_0
    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_2

    .line 2063
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 2064
    :cond_2
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_3

    .line 2065
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2067
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 2069
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported parameter type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 1405
    if-nez p0, :cond_0

    const-string p0, "me/photos"

    :cond_0
    return-object p0
.end method

.method private static f(Lbiu;)Z
    .locals 5

    .prologue
    .line 1631
    invoke-virtual {p0}, Lbiu;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/GraphRequest;

    .line 1632
    iget-object v1, v0, Lcom/facebook/GraphRequest;->Y:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1633
    iget-object v4, v0, Lcom/facebook/GraphRequest;->Y:Landroid/os/Bundle;

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1634
    invoke-static {v1}, Lcom/facebook/GraphRequest;->d(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1635
    const/4 v0, 0x0

    .line 1639
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static g(Lbiu;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 2027
    invoke-virtual {p0}, Lbiu;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbqq;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2028
    invoke-virtual {p0}, Lbiu;->f()Ljava/lang/String;

    move-result-object v0

    .line 2043
    :goto_0
    return-object v0

    .line 2031
    :cond_0
    invoke-virtual {p0}, Lbiu;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/GraphRequest;

    .line 2032
    iget-object v0, v0, Lcom/facebook/GraphRequest;->R:Lcom/facebook/AccessToken;

    .line 2033
    if-eqz v0, :cond_1

    .line 2034
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->i()Ljava/lang/String;

    move-result-object v0

    .line 2035
    if-eqz v0, :cond_1

    goto :goto_0

    .line 2040
    :cond_2
    sget-object v0, Lcom/facebook/GraphRequest;->P:Ljava/lang/String;

    invoke-static {v0}, Lbqq;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2041
    sget-object v0, Lcom/facebook/GraphRequest;->P:Ljava/lang/String;

    goto :goto_0

    .line 2043
    :cond_3
    invoke-static {}, Lbhv;->l()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private g(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 1449
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 1451
    iget-object v0, p0, Lcom/facebook/GraphRequest;->Y:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1452
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1453
    iget-object v1, p0, Lcom/facebook/GraphRequest;->Y:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1455
    if-nez v1, :cond_1

    .line 1456
    const-string v1, ""

    .line 1459
    :cond_1
    invoke-static {v1}, Lcom/facebook/GraphRequest;->e(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1460
    invoke-static {v1}, Lcom/facebook/GraphRequest;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1472
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 1462
    :cond_2
    iget-object v0, p0, Lcom/facebook/GraphRequest;->S:Lbiz;

    sget-object v4, Lbiz;->GET:Lbiz;

    if-ne v0, v4, :cond_0

    .line 1463
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "Unsupported parameter type for GET request: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 1467
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    .line 1464
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1475
    :cond_3
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static h(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1794
    sget-object v1, Lcom/facebook/GraphRequest;->Q:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1795
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1797
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 1799
    :cond_0
    const-string v1, "me/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "/me/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1802
    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 876
    sget-object v0, Lcom/facebook/GraphRequest;->P:Ljava/lang/String;

    return-object v0
.end method

.method private q()V
    .locals 3

    .prologue
    .line 1421
    iget-object v0, p0, Lcom/facebook/GraphRequest;->R:Lcom/facebook/AccessToken;

    if-eqz v0, :cond_2

    .line 1422
    iget-object v0, p0, Lcom/facebook/GraphRequest;->Y:Landroid/os/Bundle;

    const-string v1, "access_token"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1423
    iget-object v0, p0, Lcom/facebook/GraphRequest;->R:Lcom/facebook/AccessToken;

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->c()Ljava/lang/String;

    move-result-object v0

    .line 1424
    invoke-static {v0}, Lbpu;->a(Ljava/lang/String;)V

    .line 1425
    iget-object v1, p0, Lcom/facebook/GraphRequest;->Y:Landroid/os/Bundle;

    const-string v2, "access_token"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1438
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/GraphRequest;->Y:Landroid/os/Bundle;

    const-string v1, "sdk"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1439
    iget-object v0, p0, Lcom/facebook/GraphRequest;->Y:Landroid/os/Bundle;

    const-string v1, "format"

    const-string v2, "json"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1441
    sget-object v0, Lbjb;->GRAPH_API_DEBUG_INFO:Lbjb;

    invoke-static {v0}, Lbhv;->c(Lbjb;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1442
    iget-object v0, p0, Lcom/facebook/GraphRequest;->Y:Landroid/os/Bundle;

    const-string v1, "debug"

    const-string v2, "info"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1446
    :cond_1
    :goto_1
    return-void

    .line 1427
    :cond_2
    iget-boolean v0, p0, Lcom/facebook/GraphRequest;->ad:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/GraphRequest;->Y:Landroid/os/Bundle;

    const-string v1, "access_token"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1428
    invoke-static {}, Lbhv;->l()Ljava/lang/String;

    move-result-object v0

    .line 1429
    invoke-static {}, Lbhv;->n()Ljava/lang/String;

    move-result-object v1

    .line 1430
    invoke-static {v0}, Lbqq;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v1}, Lbqq;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1431
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1432
    iget-object v1, p0, Lcom/facebook/GraphRequest;->Y:Landroid/os/Bundle;

    const-string v2, "access_token"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1434
    :cond_3
    sget-object v0, Lcom/facebook/GraphRequest;->b:Ljava/lang/String;

    const-string v1, "Warning: Request without access token missing application ID or client token."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1443
    :cond_4
    sget-object v0, Lbjb;->GRAPH_API_DEBUG_WARNING:Lbjb;

    invoke-static {v0}, Lbhv;->c(Lbjb;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1444
    iget-object v0, p0, Lcom/facebook/GraphRequest;->Y:Landroid/os/Bundle;

    const-string v1, "debug"

    const-string v2, "warning"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private r()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1512
    sget-object v0, Lcom/facebook/GraphRequest;->Q:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/facebook/GraphRequest;->T:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1513
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1514
    iget-object v0, p0, Lcom/facebook/GraphRequest;->T:Ljava/lang/String;

    .line 1516
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "%s/%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/GraphRequest;->ac:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/facebook/GraphRequest;->T:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static s()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2003
    const-string v0, "multipart/form-data; boundary=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static t()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2009
    sget-object v0, Lcom/facebook/GraphRequest;->ae:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2010
    const-string v0, "%s.%s"

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "FBAndroidSDK"

    aput-object v2, v1, v5

    const-string v2, "4.22.1"

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/GraphRequest;->ae:Ljava/lang/String;

    .line 2013
    invoke-static {}, Lbpp;->a()Ljava/lang/String;

    move-result-object v0

    .line 2014
    invoke-static {v0}, Lbqq;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2015
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v2, "%s/%s"

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lcom/facebook/GraphRequest;->ae:Ljava/lang/String;

    aput-object v4, v3, v5

    aput-object v0, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/GraphRequest;->ae:Ljava/lang/String;

    .line 2023
    :cond_0
    sget-object v0, Lcom/facebook/GraphRequest;->ae:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lcom/facebook/GraphRequest;->U:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 776
    iput-object p1, p0, Lcom/facebook/GraphRequest;->Y:Landroid/os/Bundle;

    .line 777
    return-void
.end method

.method public final a(Lbim;)V
    .locals 1

    .prologue
    .line 908
    sget-object v0, Lbjb;->GRAPH_API_DEBUG_INFO:Lbjb;

    invoke-static {v0}, Lbhv;->c(Lbjb;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lbjb;->GRAPH_API_DEBUG_WARNING:Lbjb;

    .line 909
    invoke-static {v0}, Lbhv;->c(Lbjb;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 910
    :cond_0
    new-instance v0, Lbih;

    invoke-direct {v0, p0, p1}, Lbih;-><init>(Lcom/facebook/GraphRequest;Lbim;)V

    .line 947
    iput-object v0, p0, Lcom/facebook/GraphRequest;->Z:Lbim;

    .line 952
    :goto_0
    return-void

    .line 949
    :cond_1
    iput-object p1, p0, Lcom/facebook/GraphRequest;->Z:Lbim;

    goto :goto_0
.end method

.method public final a(Lbiz;)V
    .locals 2

    .prologue
    .line 728
    iget-object v0, p0, Lcom/facebook/GraphRequest;->aa:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lbiz;->GET:Lbiz;

    if-eq p1, v0, :cond_0

    .line 729
    new-instance v0, Lbhp;

    const-string v1, "Can\'t change HTTP method on request with overridden URL."

    invoke-direct {v0, v1}, Lbhp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 731
    :cond_0
    if-eqz p1, :cond_1

    :goto_0
    iput-object p1, p0, Lcom/facebook/GraphRequest;->S:Lbiz;

    .line 732
    return-void

    .line 731
    :cond_1
    sget-object p1, Lbiz;->GET:Lbiz;

    goto :goto_0
.end method

.method public final a(Lcom/facebook/AccessToken;)V
    .locals 0

    .prologue
    .line 794
    iput-object p1, p0, Lcom/facebook/GraphRequest;->R:Lcom/facebook/AccessToken;

    .line 795
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 962
    iput-object p1, p0, Lcom/facebook/GraphRequest;->ab:Ljava/lang/Object;

    .line 963
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 710
    iput-object p1, p0, Lcom/facebook/GraphRequest;->T:Ljava/lang/String;

    .line 711
    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 692
    iput-object p1, p0, Lcom/facebook/GraphRequest;->U:Lorg/json/JSONObject;

    .line 693
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 758
    iput-boolean p1, p0, Lcom/facebook/GraphRequest;->ad:Z

    .line 759
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Lcom/facebook/GraphRequest;->T:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 751
    iput-object p1, p0, Lcom/facebook/GraphRequest;->ac:Ljava/lang/String;

    .line 752
    return-void
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 865
    iput-boolean p1, p0, Lcom/facebook/GraphRequest;->X:Z

    .line 866
    return-void
.end method

.method public final c()Lbiz;
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Lcom/facebook/GraphRequest;->S:Lbiz;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 817
    iput-object p1, p0, Lcom/facebook/GraphRequest;->V:Ljava/lang/String;

    .line 818
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 741
    iget-object v0, p0, Lcom/facebook/GraphRequest;->ac:Ljava/lang/String;

    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 841
    iput-object p1, p0, Lcom/facebook/GraphRequest;->W:Ljava/lang/String;

    .line 842
    return-void
.end method

.method public final e()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 767
    iget-object v0, p0, Lcom/facebook/GraphRequest;->Y:Landroid/os/Bundle;

    return-object v0
.end method

.method public final f()Lcom/facebook/AccessToken;
    .locals 1

    .prologue
    .line 785
    iget-object v0, p0, Lcom/facebook/GraphRequest;->R:Lcom/facebook/AccessToken;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 803
    iget-object v0, p0, Lcom/facebook/GraphRequest;->V:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 827
    iget-object v0, p0, Lcom/facebook/GraphRequest;->W:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 852
    iget-boolean v0, p0, Lcom/facebook/GraphRequest;->X:Z

    return v0
.end method

.method public final k()Lbim;
    .locals 1

    .prologue
    .line 898
    iget-object v0, p0, Lcom/facebook/GraphRequest;->Z:Lbim;

    return-object v0
.end method

.method public final l()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 973
    iget-object v0, p0, Lcom/facebook/GraphRequest;->ab:Ljava/lang/Object;

    return-object v0
.end method

.method public final m()Lbix;
    .locals 1

    .prologue
    .line 987
    invoke-static {p0}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/GraphRequest;)Lbix;

    move-result-object v0

    return-object v0
.end method

.method public final n()Lbit;
    .locals 2

    .prologue
    .line 1002
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/facebook/GraphRequest;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/facebook/GraphRequest;->c([Lcom/facebook/GraphRequest;)Lbit;

    move-result-object v0

    return-object v0
.end method

.method final o()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1479
    iget-object v0, p0, Lcom/facebook/GraphRequest;->aa:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1480
    new-instance v0, Lbhp;

    const-string v1, "Can\'t override URL for a batch request"

    invoke-direct {v0, v1}, Lbhp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1483
    :cond_0
    const-string v0, "%s/%s"

    new-array v1, v3, [Ljava/lang/Object;

    .line 1484
    invoke-static {}, Lbqn;->b()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-direct {p0}, Lcom/facebook/GraphRequest;->r()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1485
    invoke-direct {p0}, Lcom/facebook/GraphRequest;->q()V

    .line 1486
    invoke-direct {p0, v0}, Lcom/facebook/GraphRequest;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1487
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1488
    const-string v1, "%s?%s"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1489
    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1493
    iget-object v0, p0, Lcom/facebook/GraphRequest;->aa:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1494
    iget-object v0, p0, Lcom/facebook/GraphRequest;->aa:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1508
    :goto_0
    return-object v0

    .line 1498
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/GraphRequest;->c()Lbiz;

    move-result-object v0

    sget-object v1, Lbiz;->POST:Lbiz;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/facebook/GraphRequest;->T:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/GraphRequest;->T:Ljava/lang/String;

    const-string v1, "/videos"

    .line 1500
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1501
    invoke-static {}, Lbqn;->c()Ljava/lang/String;

    move-result-object v0

    .line 1505
    :goto_1
    const-string v1, "%s/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/facebook/GraphRequest;->r()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1507
    invoke-direct {p0}, Lcom/facebook/GraphRequest;->q()V

    .line 1508
    invoke-direct {p0, v0}, Lcom/facebook/GraphRequest;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1503
    :cond_1
    invoke-static {}, Lbqn;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{Request: "

    .line 1350
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " accessToken: "

    .line 1351
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/GraphRequest;->R:Lcom/facebook/AccessToken;

    if-nez v0, :cond_0

    const-string v0, "null"

    .line 1352
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", graphPath: "

    .line 1353
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/GraphRequest;->T:Ljava/lang/String;

    .line 1354
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", graphObject: "

    .line 1355
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/GraphRequest;->U:Lorg/json/JSONObject;

    .line 1356
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", httpMethod: "

    .line 1357
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/GraphRequest;->S:Lbiz;

    .line 1358
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", parameters: "

    .line 1359
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/GraphRequest;->Y:Landroid/os/Bundle;

    .line 1360
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    .line 1361
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1362
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1349
    return-object v0

    .line 1351
    :cond_0
    iget-object v0, p0, Lcom/facebook/GraphRequest;->R:Lcom/facebook/AccessToken;

    goto :goto_0
.end method
