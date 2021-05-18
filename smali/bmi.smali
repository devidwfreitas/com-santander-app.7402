.class public Lbmi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "com.facebook.platform.APPLINK_TAP_TIME_UTC"

.field public static final b:Ljava/lang/String; = "referer_data"

.field public static final c:Ljava/lang/String; = "extras"

.field public static final d:Ljava/lang/String; = "com.facebook.platform.APPLINK_NATIVE_CLASS"

.field public static final e:Ljava/lang/String; = "com.facebook.platform.APPLINK_NATIVE_URL"

.field static final f:Ljava/lang/String; = "com.facebook.platform.APPLINK_ARGS"

.field private static final g:Ljava/lang/String; = "al_applink_data"

.field private static final h:Ljava/lang/String; = "bridge_args"

.field private static final i:Ljava/lang/String; = "method_args"

.field private static final j:Ljava/lang/String; = "version"

.field private static final k:Ljava/lang/String; = "method"

.field private static final l:Ljava/lang/String; = "DEFERRED_APP_LINK"

.field private static final m:Ljava/lang/String; = "%s/activities"

.field private static final n:Ljava/lang/String; = "applink_args"

.field private static final o:Ljava/lang/String; = "applink_class"

.field private static final p:Ljava/lang/String; = "click_time"

.field private static final q:Ljava/lang/String; = "applink_url"

.field private static final r:Ljava/lang/String; = "target_url"

.field private static final s:Ljava/lang/String; = "ref"

.field private static final t:Ljava/lang/String; = "fb_ref"

.field private static final u:Ljava/lang/String; = "deeplink_context"

.field private static final v:Ljava/lang/String; = "promo_code"

.field private static final w:Ljava/lang/String;


# instance fields
.field private A:Landroid/os/Bundle;

.field private B:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Landroid/net/Uri;

.field private z:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    const-class v0, Lbmi;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbmi;->w:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 431
    return-void
.end method

.method private static a(Lorg/json/JSONObject;)Landroid/os/Bundle;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 389
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 391
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 392
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 393
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 395
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 397
    instance-of v2, v1, Lorg/json/JSONObject;

    if-eqz v2, :cond_0

    .line 398
    check-cast v1, Lorg/json/JSONObject;

    invoke-static {v1}, Lbmi;->a(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 399
    :cond_0
    instance-of v2, v1, Lorg/json/JSONArray;

    if-eqz v2, :cond_6

    .line 400
    check-cast v1, Lorg/json/JSONArray;

    .line 401
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 402
    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 404
    :cond_1
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 405
    instance-of v6, v2, Lorg/json/JSONObject;

    if-eqz v6, :cond_3

    .line 406
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v6, v2, [Landroid/os/Bundle;

    move v2, v3

    .line 407
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v2, v7, :cond_2

    .line 408
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-static {v7}, Lbmi;->a(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v7

    aput-object v7, v6, v2

    .line 407
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 410
    :cond_2
    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_0

    .line 411
    :cond_3
    instance-of v2, v2, Lorg/json/JSONArray;

    if-eqz v2, :cond_4

    .line 413
    new-instance v0, Lbhp;

    const-string v1, "Nested arrays are not supported."

    invoke-direct {v0, v1}, Lbhp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 415
    :cond_4
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v6, v2, [Ljava/lang/String;

    move v2, v3

    .line 416
    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v2, v7, :cond_5

    .line 417
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    .line 416
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 419
    :cond_5
    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 423
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 426
    :cond_7
    return-object v4
.end method

.method public static a(Landroid/app/Activity;)Lbmi;
    .locals 2

    .prologue
    .line 251
    const-string v0, "activity"

    invoke-static {p0, v0}, Lbqx;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 253
    if-nez v1, :cond_1

    .line 254
    const/4 v0, 0x0

    .line 267
    :cond_0
    :goto_0
    return-object v0

    .line 257
    :cond_1
    invoke-static {v1}, Lbmi;->a(Landroid/content/Intent;)Lbmi;

    move-result-object v0

    .line 258
    if-nez v0, :cond_2

    .line 259
    const-string v0, "com.facebook.platform.APPLINK_ARGS"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    invoke-static {v0}, Lbmi;->a(Ljava/lang/String;)Lbmi;

    move-result-object v0

    .line 262
    :cond_2
    if-nez v0, :cond_0

    .line 264
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lbmi;->a(Landroid/net/Uri;)Lbmi;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Intent;)Lbmi;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 276
    if-nez p0, :cond_1

    .line 315
    :cond_0
    :goto_0
    return-object v0

    .line 280
    :cond_1
    const-string v1, "al_applink_data"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 281
    if-eqz v2, :cond_0

    .line 285
    new-instance v1, Lbmi;

    invoke-direct {v1}, Lbmi;-><init>()V

    .line 286
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v1, Lbmi;->y:Landroid/net/Uri;

    .line 287
    iget-object v3, v1, Lbmi;->y:Landroid/net/Uri;

    if-nez v3, :cond_2

    .line 288
    const-string v3, "target_url"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 289
    if-eqz v3, :cond_2

    .line 290
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v1, Lbmi;->y:Landroid/net/Uri;

    .line 293
    :cond_2
    iput-object v2, v1, Lbmi;->A:Landroid/os/Bundle;

    .line 294
    iput-object v0, v1, Lbmi;->z:Lorg/json/JSONObject;

    .line 295
    const-string v0, "referer_data"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 296
    if-eqz v0, :cond_3

    .line 297
    const-string v3, "fb_ref"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lbmi;->x:Ljava/lang/String;

    .line 300
    :cond_3
    const-string v0, "extras"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 301
    if-eqz v0, :cond_4

    .line 302
    const-string v2, "deeplink_context"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 303
    if-eqz v0, :cond_4

    .line 305
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 306
    const-string v0, "promo_code"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 307
    const-string v0, "promo_code"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lbmi;->B:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    move-object v0, v1

    .line 315
    goto :goto_0

    .line 309
    :catch_0
    move-exception v0

    .line 310
    sget-object v2, Lbmi;->w:Ljava/lang/String;

    const-string v3, "Unable to parse deeplink_context JSON"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static a(Landroid/net/Uri;)Lbmi;
    .locals 1

    .prologue
    .line 379
    if-nez p0, :cond_0

    .line 380
    const/4 v0, 0x0

    .line 385
    :goto_0
    return-object v0

    .line 383
    :cond_0
    new-instance v0, Lbmi;

    invoke-direct {v0}, Lbmi;-><init>()V

    .line 384
    iput-object p0, v0, Lbmi;->y:Landroid/net/Uri;

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Lbmi;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 319
    if-nez p0, :cond_1

    .line 375
    :cond_0
    :goto_0
    return-object v0

    .line 325
    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 326
    const-string v1, "version"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 328
    const-string v3, "bridge_args"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 329
    const-string v4, "method"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 330
    const-string v4, "applink"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "2"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 332
    new-instance v1, Lbmi;

    invoke-direct {v1}, Lbmi;-><init>()V

    .line 334
    const-string v3, "method_args"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, v1, Lbmi;->z:Lorg/json/JSONObject;

    .line 336
    iget-object v2, v1, Lbmi;->z:Lorg/json/JSONObject;

    const-string v3, "ref"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 337
    iget-object v2, v1, Lbmi;->z:Lorg/json/JSONObject;

    const-string v3, "ref"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lbmi;->x:Ljava/lang/String;

    .line 347
    :cond_2
    :goto_1
    iget-object v2, v1, Lbmi;->z:Lorg/json/JSONObject;

    const-string v3, "target_url"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 348
    iget-object v2, v1, Lbmi;->z:Lorg/json/JSONObject;

    const-string v3, "target_url"

    .line 349
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 348
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v1, Lbmi;->y:Landroid/net/Uri;

    .line 352
    :cond_3
    iget-object v2, v1, Lbmi;->z:Lorg/json/JSONObject;

    const-string v3, "extras"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 353
    iget-object v2, v1, Lbmi;->z:Lorg/json/JSONObject;

    const-string v3, "extras"

    .line 354
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 355
    const-string v3, "deeplink_context"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 356
    const-string v3, "deeplink_context"

    .line 357
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 358
    const-string v3, "promo_code"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 359
    const-string v3, "promo_code"

    .line 360
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lbmi;->B:Ljava/lang/String;

    .line 365
    :cond_4
    iget-object v2, v1, Lbmi;->z:Lorg/json/JSONObject;

    invoke-static {v2}, Lbmi;->a(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v1, Lbmi;->A:Landroid/os/Bundle;

    move-object v0, v1

    .line 367
    goto/16 :goto_0

    .line 338
    :cond_5
    iget-object v2, v1, Lbmi;->z:Lorg/json/JSONObject;

    const-string v3, "referer_data"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 340
    iget-object v2, v1, Lbmi;->z:Lorg/json/JSONObject;

    const-string v3, "referer_data"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 342
    const-string v3, "fb_ref"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 343
    const-string v3, "fb_ref"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lbmi;->x:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lbhp; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 369
    :catch_0
    move-exception v1

    .line 370
    sget-object v2, Lbmi;->w:Ljava/lang/String;

    const-string v3, "Unable to parse AppLink JSON"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 371
    :catch_1
    move-exception v1

    .line 372
    sget-object v2, Lbmi;->w:Ljava/lang/String;

    const-string v3, "Unable to parse AppLink JSON"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;Lbmk;)V
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lbmi;->a(Landroid/content/Context;Ljava/lang/String;Lbmk;)V

    .line 119
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lbmk;)V
    .locals 3

    .prologue
    .line 134
    const-string v0, "context"

    invoke-static {p0, v0}, Lbqx;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    const-string v0, "completionHandler"

    invoke-static {p2, v0}, Lbqx;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    if-nez p1, :cond_0

    .line 138
    invoke-static {p0}, Lbqq;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 141
    :cond_0
    const-string v0, "applicationId"

    invoke-static {p1, v0}, Lbqx;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 145
    invoke-static {}, Lbhv;->f()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lbmj;

    invoke-direct {v2, v0, p1, p2}, Lbmj;-><init>(Landroid/content/Context;Ljava/lang/String;Lbmk;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 152
    return-void
.end method

.method static synthetic b(Landroid/content/Context;Ljava/lang/String;Lbmk;)V
    .locals 0

    .prologue
    .line 50
    invoke-static {p0, p1, p2}, Lbmi;->c(Landroid/content/Context;Ljava/lang/String;Lbmk;)V

    return-void
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;Lbmk;)V
    .locals 10

    .prologue
    const-wide/16 v8, -0x1

    const/4 v0, 0x0

    .line 159
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 161
    :try_start_0
    const-string v2, "event"

    const-string v3, "DEFERRED_APP_LINK"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    invoke-static {p0}, Lbmv;->a(Landroid/content/Context;)Lbmv;

    move-result-object v2

    .line 164
    invoke-static {p0}, Lbla;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 165
    invoke-static {p0}, Lbhv;->b(Landroid/content/Context;)Z

    move-result v4

    .line 162
    invoke-static {v1, v2, v3, v4}, Lbqq;->a(Lorg/json/JSONObject;Lbmv;Ljava/lang/String;Z)V

    .line 168
    invoke-static {}, Lbhv;->h()Landroid/content/Context;

    move-result-object v2

    .line 166
    invoke-static {v1, v2}, Lbqq;->a(Lorg/json/JSONObject;Landroid/content/Context;)V

    .line 169
    const-string v2, "application_package_name"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    const-string v2, "%s/activities"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 178
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_1
    invoke-static {v3, v2, v1, v4}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lbim;)Lcom/facebook/GraphRequest;

    move-result-object v1

    .line 180
    invoke-virtual {v1}, Lcom/facebook/GraphRequest;->m()Lbix;

    move-result-object v1

    .line 181
    invoke-virtual {v1}, Lbix;->b()Lorg/json/JSONObject;

    move-result-object v1

    .line 182
    if-eqz v1, :cond_5

    .line 183
    const-string v2, "applink_args"

    .line 184
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 185
    const-string v3, "click_time"

    const-wide/16 v4, -0x1

    .line 186
    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 187
    const-string v3, "applink_class"

    .line 188
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 189
    const-string v6, "applink_url"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 191
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 192
    invoke-static {v2}, Lbmi;->a(Ljava/lang/String;)Lbmi;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    .line 194
    cmp-long v2, v4, v8

    if-eqz v2, :cond_1

    .line 196
    :try_start_2
    iget-object v2, v0, Lbmi;->z:Lorg/json/JSONObject;

    if-eqz v2, :cond_0

    .line 197
    iget-object v2, v0, Lbmi;->z:Lorg/json/JSONObject;

    const-string v6, "com.facebook.platform.APPLINK_TAP_TIME_UTC"

    invoke-virtual {v2, v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 199
    :cond_0
    iget-object v2, v0, Lbmi;->A:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    .line 200
    iget-object v2, v0, Lbmi;->A:Landroid/os/Bundle;

    const-string v6, "com.facebook.platform.APPLINK_TAP_TIME_UTC"

    .line 201
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    .line 200
    invoke-virtual {v2, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 208
    :cond_1
    :goto_0
    if-eqz v3, :cond_3

    .line 210
    :try_start_3
    iget-object v2, v0, Lbmi;->z:Lorg/json/JSONObject;

    if-eqz v2, :cond_2

    .line 211
    iget-object v2, v0, Lbmi;->z:Lorg/json/JSONObject;

    const-string v4, "com.facebook.platform.APPLINK_NATIVE_CLASS"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 214
    :cond_2
    iget-object v2, v0, Lbmi;->A:Landroid/os/Bundle;

    if-eqz v2, :cond_3

    .line 215
    iget-object v2, v0, Lbmi;->A:Landroid/os/Bundle;

    const-string v4, "com.facebook.platform.APPLINK_NATIVE_CLASS"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 223
    :cond_3
    :goto_1
    if-eqz v1, :cond_5

    .line 225
    :try_start_4
    iget-object v2, v0, Lbmi;->z:Lorg/json/JSONObject;

    if-eqz v2, :cond_4

    .line 226
    iget-object v2, v0, Lbmi;->z:Lorg/json/JSONObject;

    const-string v3, "com.facebook.platform.APPLINK_NATIVE_URL"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 228
    :cond_4
    iget-object v2, v0, Lbmi;->A:Landroid/os/Bundle;

    if-eqz v2, :cond_5

    .line 229
    iget-object v2, v0, Lbmi;->A:Landroid/os/Bundle;

    const-string v3, "com.facebook.platform.APPLINK_NATIVE_URL"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 242
    :cond_5
    :goto_2
    invoke-interface {p2, v0}, Lbmk;->a(Lbmi;)V

    .line 243
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 171
    new-instance v1, Lbhp;

    const-string v2, "An error occurred while preparing deferred app link"

    invoke-direct {v1, v2, v0}, Lbhp;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 203
    :catch_1
    move-exception v2

    .line 204
    :try_start_5
    sget-object v2, Lbmi;->w:Ljava/lang/String;

    const-string v4, "Unable to put tap time in AppLinkData.arguments"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 238
    :catch_2
    move-exception v1

    .line 239
    sget-object v1, Lbmi;->w:Ljava/lang/String;

    const-string v2, "Unable to fetch deferred applink from server"

    invoke-static {v1, v2}, Lbqq;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 218
    :catch_3
    move-exception v2

    .line 219
    :try_start_6
    sget-object v2, Lbmi;->w:Ljava/lang/String;

    const-string v3, "Unable to put tap time in AppLinkData.arguments"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 232
    :catch_4
    move-exception v1

    .line 233
    sget-object v1, Lbmi;->w:Ljava/lang/String;

    const-string v2, "Unable to put tap time in AppLinkData.arguments"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2
.end method


# virtual methods
.method public a()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lbmi;->y:Landroid/net/Uri;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lbmi;->x:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lbmi;->B:Ljava/lang/String;

    return-object v0
.end method

.method public d()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lbmi;->A:Landroid/os/Bundle;

    return-object v0
.end method

.method public e()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 473
    iget-object v0, p0, Lbmi;->A:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lbmi;->A:Landroid/os/Bundle;

    const-string v1, "referer_data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 476
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
