.class public Lbua;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final A:Ljava/lang/String; = "signal_strength"

.field private static final B:Ljava/lang/String; = "speed"

.field private static final C:Ljava/lang/String; = "ssid"

.field private static final D:Ljava/lang/String; = "summary"

.field private static final E:Ljava/lang/String; = "tracking"

.field private static final F:Ljava/lang/String; = "type"

.field private static final G:Ljava/lang/String; = "was_here"

.field private static final H:Ljava/lang/String; = "wifi"

.field private static final a:Ljava/lang/String; = "search"

.field private static final b:Ljava/lang/String; = "current_place/results"

.field private static final c:Ljava/lang/String; = "current_place/feedback"

.field private static final d:Ljava/lang/String; = "access_points"

.field private static final e:Ljava/lang/String; = "accuracy"

.field private static final f:Ljava/lang/String; = "altitude"

.field private static final g:Ljava/lang/String; = "bluetooth"

.field private static final h:Ljava/lang/String; = "categories"

.field private static final i:Ljava/lang/String; = "center"

.field private static final j:Ljava/lang/String; = "coordinates"

.field private static final k:Ljava/lang/String; = "current_connection"

.field private static final l:Ljava/lang/String; = "distance"

.field private static final m:Ljava/lang/String; = "enabled"

.field private static final n:Ljava/lang/String; = "fields"

.field private static final o:Ljava/lang/String; = "frequency"

.field private static final p:Ljava/lang/String; = "heading"

.field private static final q:Ljava/lang/String; = "latitude"

.field private static final r:Ljava/lang/String; = "limit"

.field private static final s:Ljava/lang/String; = "longitude"

.field private static final t:Ljava/lang/String; = "mac_address"

.field private static final u:Ljava/lang/String; = "min_confidence_level"

.field private static final v:Ljava/lang/String; = "payload"

.field private static final w:Ljava/lang/String; = "place_id"

.field private static final x:Ljava/lang/String; = "q"

.field private static final y:Ljava/lang/String; = "rssi"

.field private static final z:Ljava/lang/String; = "scans"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    return-void
.end method

.method static synthetic a(Lbvj;Lbum;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 58
    invoke-static {p0, p1}, Lbua;->b(Lbvj;Lbum;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lbuz;)Lbud;
    .locals 1

    .prologue
    .line 58
    invoke-static {p0}, Lbua;->b(Lbuz;)Lbud;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lbvg;)Lcom/facebook/GraphRequest;
    .locals 5

    .prologue
    .line 371
    invoke-virtual {p0}, Lbvg;->b()Ljava/lang/String;

    move-result-object v0

    .line 372
    invoke-virtual {p0}, Lbvg;->a()Ljava/lang/String;

    move-result-object v1

    .line 373
    invoke-virtual {p0}, Lbvg;->c()Ljava/lang/Boolean;

    move-result-object v2

    .line 375
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    if-nez v2, :cond_1

    .line 376
    :cond_0
    new-instance v0, Lbhp;

    const-string v1, "tracking, placeId and wasHere must be specified."

    invoke-direct {v0, v1}, Lbhp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 379
    :cond_1
    new-instance v3, Landroid/os/Bundle;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Landroid/os/Bundle;-><init>(I)V

    .line 380
    const-string v4, "tracking"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const-string v1, "place_id"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const-string v0, "was_here"

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 384
    new-instance v0, Lcom/facebook/GraphRequest;

    .line 385
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v1

    const-string v2, "current_place/feedback"

    sget-object v4, Lbiz;->POST:Lbiz;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lbiz;)V

    .line 384
    return-object v0
.end method

.method public static a(Lbvp;)Lcom/facebook/GraphRequest;
    .locals 5

    .prologue
    .line 278
    invoke-virtual {p0}, Lbvp;->a()Ljava/lang/String;

    move-result-object v0

    .line 279
    if-nez v0, :cond_0

    .line 280
    new-instance v0, Lbhp;

    const-string v1, "placeId must be specified."

    invoke-direct {v0, v1}, Lbhp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 285
    invoke-virtual {p0}, Lbvp;->b()Ljava/util/Set;

    move-result-object v2

    .line 286
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 287
    const-string v3, "fields"

    const-string v4, ","

    invoke-static {v4, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    :cond_1
    new-instance v2, Lcom/facebook/GraphRequest;

    .line 291
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v3

    sget-object v4, Lbiz;->GET:Lbiz;

    invoke-direct {v2, v3, v0, v1, v4}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lbiz;)V

    .line 290
    return-object v2
.end method

.method public static a(Lbvs;Landroid/location/Location;)Lcom/facebook/GraphRequest;
    .locals 12

    .prologue
    .line 209
    invoke-virtual {p0}, Lbvs;->c()Ljava/lang/String;

    move-result-object v0

    .line 210
    if-nez p1, :cond_0

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Lbhp;

    const-string v1, "Either location or searchText must be specified."

    invoke-direct {v0, v1}, Lbhp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_0
    invoke-virtual {p0}, Lbvs;->b()I

    move-result v1

    .line 214
    invoke-virtual {p0}, Lbvs;->e()Ljava/util/Set;

    move-result-object v2

    .line 215
    invoke-virtual {p0}, Lbvs;->d()Ljava/util/Set;

    move-result-object v3

    .line 217
    new-instance v4, Landroid/os/Bundle;

    const/4 v5, 0x7

    invoke-direct {v4, v5}, Landroid/os/Bundle;-><init>(I)V

    .line 218
    const-string v5, "type"

    const-string v6, "place"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    if-eqz p1, :cond_1

    .line 221
    const-string v5, "center"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%f,%f"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 226
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    .line 227
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v8, v9

    .line 223
    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 221
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0}, Lbvs;->a()I

    move-result v5

    .line 230
    if-lez v5, :cond_1

    .line 231
    const-string v6, "distance"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 234
    :cond_1
    if-lez v1, :cond_2

    .line 235
    const-string v5, "limit"

    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 237
    :cond_2
    invoke-static {v0}, Lbqq;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 238
    const-string v1, "q"

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :cond_3
    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 241
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 242
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 243
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 245
    :cond_4
    const-string v0, "categories"

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_5
    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 248
    const-string v0, "fields"

    const-string v1, ","

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :cond_6
    new-instance v0, Lcom/facebook/GraphRequest;

    .line 252
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v1

    const-string v2, "search"

    sget-object v3, Lbiz;->GET:Lbiz;

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lbiz;)V

    .line 251
    return-object v0
.end method

.method private static a(Lbvb;)Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 492
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 493
    const-string v1, "mac_address"

    iget-object v2, p0, Lbvb;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 494
    const-string v1, "ssid"

    iget-object v2, p0, Lbvb;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 495
    const-string v1, "signal_strength"

    iget v2, p0, Lbvb;->c:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 496
    const-string v1, "frequency"

    iget v2, p0, Lbvb;->d:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 497
    return-object v0
.end method

.method public static a(Lbvj;Lbue;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 314
    invoke-virtual {p0}, Lbvj;->a()Landroid/location/Location;

    move-result-object v0

    .line 315
    invoke-virtual {p0}, Lbvj;->b()Lbvn;

    move-result-object v2

    .line 317
    new-instance v3, Lbuv;

    invoke-direct {v3}, Lbuv;-><init>()V

    .line 321
    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v0}, Lbuv;->a(Z)Lbuv;

    .line 323
    if-eqz v2, :cond_0

    sget-object v0, Lbvn;->LOW_LATENCY:Lbvn;

    if-ne v2, v0, :cond_0

    .line 326
    invoke-virtual {v3, v1}, Lbuv;->c(Z)Lbuv;

    .line 330
    :cond_0
    invoke-virtual {v3}, Lbuv;->a()Lbut;

    move-result-object v0

    new-instance v1, Lbuc;

    invoke-direct {v1, p1, p0}, Lbuc;-><init>(Lbue;Lbvj;)V

    .line 329
    invoke-static {v0, v1}, Lbun;->a(Lbut;Lbus;)V

    .line 351
    return-void

    :cond_1
    move v0, v1

    .line 321
    goto :goto_0
.end method

.method public static a(Lbvs;Lbue;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 168
    new-instance v0, Lbuv;

    invoke-direct {v0}, Lbuv;-><init>()V

    .line 169
    invoke-virtual {v0, v1}, Lbuv;->b(Z)Lbuv;

    .line 170
    invoke-virtual {v0, v1}, Lbuv;->e(Z)Lbuv;

    .line 173
    invoke-virtual {v0}, Lbuv;->a()Lbut;

    move-result-object v0

    new-instance v1, Lbub;

    invoke-direct {v1, p0, p1}, Lbub;-><init>(Lbvs;Lbue;)V

    .line 172
    invoke-static {v0, v1}, Lbun;->a(Lbut;Lbus;)V

    .line 187
    return-void
.end method

.method private static b(Lbvj;Lbum;)Landroid/os/Bundle;
    .locals 8

    .prologue
    .line 395
    if-nez p0, :cond_0

    .line 396
    new-instance v0, Lbhp;

    const-string v1, "Request and location must be specified."

    invoke-direct {v0, v1}, Lbhp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 398
    :cond_0
    if-nez p1, :cond_1

    .line 399
    new-instance p1, Lbum;

    invoke-direct {p1}, Lbum;-><init>()V

    .line 401
    :cond_1
    iget-object v0, p1, Lbum;->a:Landroid/location/Location;

    if-nez v0, :cond_2

    .line 402
    invoke-virtual {p0}, Lbvj;->a()Landroid/location/Location;

    move-result-object v0

    iput-object v0, p1, Lbum;->a:Landroid/location/Location;

    .line 404
    :cond_2
    iget-object v0, p1, Lbum;->a:Landroid/location/Location;

    if-nez v0, :cond_3

    .line 405
    new-instance v0, Lbhp;

    const-string v1, "A location must be specified"

    invoke-direct {v0, v1}, Lbhp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 409
    :cond_3
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    const/4 v0, 0x6

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 410
    const-string v0, "summary"

    const-string v2, "tracking"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    invoke-virtual {p0}, Lbvj;->d()I

    move-result v0

    .line 412
    if-lez v0, :cond_4

    .line 413
    const-string v2, "limit"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 415
    :cond_4
    invoke-virtual {p0}, Lbvj;->e()Ljava/util/Set;

    move-result-object v0

    .line 416
    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 417
    const-string v2, "fields"

    const-string v3, ","

    invoke-static {v3, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    :cond_5
    iget-object v0, p1, Lbum;->a:Landroid/location/Location;

    .line 422
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 423
    const-string v3, "latitude"

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 424
    const-string v3, "longitude"

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 425
    invoke-virtual {v0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 426
    const-string v3, "accuracy"

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 428
    :cond_6
    invoke-virtual {v0}, Landroid/location/Location;->hasAltitude()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 429
    const-string v3, "altitude"

    invoke-virtual {v0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 431
    :cond_7
    invoke-virtual {v0}, Landroid/location/Location;->hasBearing()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 432
    const-string v3, "heading"

    invoke-virtual {v0}, Landroid/location/Location;->getBearing()F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 434
    :cond_8
    invoke-virtual {v0}, Landroid/location/Location;->hasSpeed()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 435
    const-string v3, "speed"

    invoke-virtual {v0}, Landroid/location/Location;->getSpeed()F

    move-result v0

    float-to-double v4, v0

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 437
    :cond_9
    const-string v0, "coordinates"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    invoke-virtual {p0}, Lbvj;->c()Lbvm;

    move-result-object v0

    .line 441
    sget-object v2, Lbvm;->LOW:Lbvm;

    if-eq v0, v2, :cond_a

    sget-object v2, Lbvm;->MEDIUM:Lbvm;

    if-eq v0, v2, :cond_a

    sget-object v2, Lbvm;->HIGH:Lbvm;

    if-ne v0, v2, :cond_b

    .line 445
    :cond_a
    invoke-virtual {v0}, Lbvm;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 446
    const-string v2, "min_confidence_level"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    :cond_b
    if-eqz p1, :cond_11

    .line 451
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 452
    const-string v0, "enabled"

    iget-boolean v3, p1, Lbum;->c:Z

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 453
    iget-object v0, p1, Lbum;->d:Lbvb;

    .line 454
    if-eqz v0, :cond_c

    .line 455
    const-string v3, "current_connection"

    invoke-static {v0}, Lbua;->a(Lbvb;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 457
    :cond_c
    iget-object v0, p1, Lbum;->e:Ljava/util/List;

    .line 458
    if-eqz v0, :cond_e

    .line 459
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 460
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbvb;

    .line 461
    invoke-static {v0}, Lbua;->a(Lbvb;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 486
    :catch_0
    move-exception v0

    .line 487
    new-instance v1, Lbhp;

    invoke-direct {v1, v0}, Lbhp;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 463
    :cond_d
    :try_start_1
    const-string v0, "access_points"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 465
    :cond_e
    const-string v0, "wifi"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 469
    const-string v0, "enabled"

    iget-boolean v3, p1, Lbum;->f:Z

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 470
    iget-object v0, p1, Lbum;->g:Ljava/util/List;

    .line 472
    if-eqz v0, :cond_10

    .line 473
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 474
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbul;

    .line 475
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 476
    const-string v6, "payload"

    iget-object v7, v0, Lbul;->a:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 477
    const-string v6, "rssi"

    iget v0, v0, Lbul;->b:I

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 478
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 480
    :cond_f
    const-string v0, "scans"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 482
    :cond_10
    const-string v0, "bluetooth"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 485
    :cond_11
    return-object v1
.end method

.method private static b(Lbuz;)Lbud;
    .locals 1

    .prologue
    .line 501
    sget-object v0, Lbuz;->PERMISSION_DENIED:Lbuz;

    if-ne p0, v0, :cond_0

    .line 502
    sget-object v0, Lbud;->LOCATION_PERMISSION_DENIED:Lbud;

    .line 508
    :goto_0
    return-object v0

    .line 503
    :cond_0
    sget-object v0, Lbuz;->DISABLED:Lbuz;

    if-ne p0, v0, :cond_1

    .line 504
    sget-object v0, Lbud;->LOCATION_SERVICES_DISABLED:Lbud;

    goto :goto_0

    .line 505
    :cond_1
    sget-object v0, Lbuz;->TIMEOUT:Lbuz;

    if-ne p0, v0, :cond_2

    .line 506
    sget-object v0, Lbud;->LOCATION_TIMEOUT:Lbud;

    goto :goto_0

    .line 508
    :cond_2
    sget-object v0, Lbud;->UNKNOWN_ERROR:Lbud;

    goto :goto_0
.end method
