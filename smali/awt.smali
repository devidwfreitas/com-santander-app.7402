.class public Lawt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/io/InputStream;Laxg;)Lawj;
    .locals 4

    .prologue
    .line 203
    new-instance v0, Lbab;

    .line 204
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lbab;-><init>(Landroid/content/res/Resources;Laxg;)V

    .line 205
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/io/InputStream;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lbab;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 206
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Laxg;)Lawj;
    .locals 4

    .prologue
    .line 189
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 193
    invoke-static {p0, v0, p2}, Lawt;->a(Landroid/content/Context;Ljava/io/InputStream;Laxg;)Lawj;

    move-result-object v0

    return-object v0

    .line 190
    :catch_0
    move-exception v0

    .line 191
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Landroid/content/res/Resources;Lorg/json/JSONObject;Laxg;)Lawj;
    .locals 4

    .prologue
    .line 226
    new-instance v0, Lbag;

    invoke-direct {v0, p0, p2}, Lbag;-><init>(Landroid/content/res/Resources;Laxg;)V

    .line 227
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/json/JSONObject;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lbag;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 228
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lawr;
    .locals 4

    .prologue
    .line 213
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 217
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Lawt;->a(Landroid/content/res/Resources;Ljava/io/InputStream;)Lawr;

    move-result-object v0

    return-object v0

    .line 214
    :catch_0
    move-exception v0

    .line 215
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Landroid/content/res/Resources;Ljava/io/InputStream;)Lawr;
    .locals 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 235
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 236
    new-array v0, v0, [B

    .line 238
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 239
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 240
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 241
    invoke-static {p0, v0}, Lawt;->a(Landroid/content/res/Resources;Lorg/json/JSONObject;)Lawr;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 249
    invoke-static {p1}, Lbey;->a(Ljava/io/Closeable;)V

    .line 251
    :goto_0
    return-object v0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    :try_start_1
    const-string v1, "LOTTIE"

    const-string v2, "Failed to load composition."

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Unable to find file."

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    invoke-static {p1}, Lbey;->a(Ljava/io/Closeable;)V

    .line 251
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 245
    :catch_1
    move-exception v0

    .line 246
    :try_start_2
    const-string v1, "LOTTIE"

    const-string v2, "Failed to load composition."

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Unable to load JSON."

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 249
    invoke-static {p1}, Lbey;->a(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {p1}, Lbey;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static a(Landroid/content/res/Resources;Lorg/json/JSONObject;)Lawr;
    .locals 12

    .prologue
    const-wide/16 v4, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v2, -0x1

    .line 255
    .line 256
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v7, v0, Landroid/util/DisplayMetrics;->density:F

    .line 257
    const-string v0, "w"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 258
    const-string v1, "h"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 260
    if-eq v0, v2, :cond_0

    if-eq v1, v2, :cond_0

    .line 261
    int-to-float v0, v0

    mul-float/2addr v0, v7

    float-to-int v0, v0

    .line 262
    int-to-float v1, v1

    mul-float/2addr v1, v7

    float-to-int v2, v1

    .line 263
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v10, v10, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 266
    :goto_0
    const-string v0, "ip"

    invoke-virtual {p1, v0, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 267
    const-string v0, "op"

    invoke-virtual {p1, v0, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 268
    const-string v0, "fr"

    const-wide/16 v8, 0x0

    invoke-virtual {p1, v0, v8, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    double-to-float v6, v8

    .line 269
    const-string v0, "v"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 270
    const-string v8, "[.]"

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 271
    aget-object v8, v0, v10

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 272
    const/4 v9, 0x1

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 273
    const/4 v10, 0x2

    aget-object v0, v0, v10

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 274
    new-instance v0, Lawr;

    invoke-direct/range {v0 .. v11}, Lawr;-><init>(Landroid/graphics/Rect;JJFFIIILaws;)V

    .line 276
    const-string v1, "assets"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 277
    invoke-static {v1, v0}, Lawt;->b(Lorg/json/JSONArray;Lawr;)V

    .line 278
    invoke-static {v1, v0}, Lawt;->a(Lorg/json/JSONArray;Lawr;)V

    .line 279
    const-string v1, "fonts"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1, v0}, Lawt;->b(Lorg/json/JSONObject;Lawr;)V

    .line 280
    const-string v1, "chars"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1, v0}, Lawt;->c(Lorg/json/JSONArray;Lawr;)V

    .line 281
    invoke-static {p1, v0}, Lawt;->a(Lorg/json/JSONObject;Lawr;)V

    .line 282
    return-object v0

    :cond_0
    move-object v1, v11

    goto :goto_0
.end method

.method private static a(Ljava/util/List;Landroid/support/v4/util/LongSparseArray;Lbee;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbee;",
            ">;",
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Lbee;",
            ">;",
            "Lbee;",
            ")V"
        }
    .end annotation

    .prologue
    .line 380
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    invoke-virtual {p2}, Lbee;->e()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1, p2}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 382
    return-void
.end method

.method private static a(Lorg/json/JSONArray;Lawr;)V
    .locals 12
    .param p0    # Lorg/json/JSONArray;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 313
    if-nez p0, :cond_1

    .line 333
    :cond_0
    return-void

    .line 316
    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    move v2, v1

    .line 317
    :goto_0
    if-ge v2, v3, :cond_0

    .line 318
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 319
    const-string v0, "layers"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 320
    if-nez v5, :cond_2

    .line 317
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 323
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 324
    new-instance v7, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v7}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    move v0, v1

    .line 325
    :goto_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v0, v8, :cond_3

    .line 326
    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-static {v8, p1}, Lbeg;->a(Lorg/json/JSONObject;Lawr;)Lbee;

    move-result-object v8

    .line 327
    invoke-virtual {v8}, Lbee;->e()J

    move-result-wide v10

    invoke-virtual {v7, v10, v11, v8}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 328
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 330
    :cond_3
    const-string v0, "id"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 331
    invoke-static {p1}, Lawr;->c(Lawr;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private static a(Lorg/json/JSONObject;Lawr;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 286
    const-string v1, "layers"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 291
    if-nez v2, :cond_1

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    move v1, v0

    .line 296
    :goto_1
    if-ge v1, v3, :cond_3

    .line 297
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4, p1}, Lbeg;->a(Lorg/json/JSONObject;Lawr;)Lbee;

    move-result-object v4

    .line 298
    invoke-virtual {v4}, Lbee;->k()Lbeh;

    move-result-object v5

    sget-object v6, Lbeh;->Image:Lbeh;

    if-ne v5, v6, :cond_2

    .line 299
    add-int/lit8 v0, v0, 0x1

    .line 301
    :cond_2
    invoke-static {p1}, Lawr;->a(Lawr;)Ljava/util/List;

    move-result-object v5

    invoke-static {p1}, Lawr;->b(Lawr;)Landroid/support/v4/util/LongSparseArray;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lawt;->a(Ljava/util/List;Landroid/support/v4/util/LongSparseArray;Lbee;)V

    .line 296
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 304
    :cond_3
    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You have "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " images. Lottie should primarily be "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "used with shapes. If you are using Adobe Illustrator, convert the Illustrator layers"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to shape layers."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lawr;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static b(Lorg/json/JSONArray;Lawr;)V
    .locals 5
    .param p0    # Lorg/json/JSONArray;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 337
    if-nez p0, :cond_1

    .line 349
    :cond_0
    return-void

    .line 340
    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 341
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 342
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 343
    const-string v3, "p"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 341
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 346
    :cond_2
    invoke-static {v2}, Laxf;->a(Lorg/json/JSONObject;)Laxd;

    move-result-object v2

    .line 347
    invoke-static {p1}, Lawr;->d(Lawr;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2}, Laxd;->c()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private static b(Lorg/json/JSONObject;Lawr;)V
    .locals 6
    .param p0    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 352
    if-nez p0, :cond_1

    .line 364
    :cond_0
    return-void

    .line 355
    :cond_1
    const-string v0, "list"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 356
    if-eqz v1, :cond_0

    .line 359
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 360
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 361
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lbad;->a(Lorg/json/JSONObject;)Lbac;

    move-result-object v3

    .line 362
    invoke-static {p1}, Lawr;->e(Lawr;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3}, Lbac;->b()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static c(Lorg/json/JSONArray;Lawr;)V
    .locals 5
    .param p0    # Lorg/json/JSONArray;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 367
    if-nez p0, :cond_1

    .line 377
    :cond_0
    return-void

    .line 371
    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 372
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 374
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2, p1}, Lbaf;->a(Lorg/json/JSONObject;Lawr;)Lbae;

    move-result-object v2

    .line 375
    invoke-static {p1}, Lawr;->f(Lawr;)Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v3

    invoke-virtual {v2}, Lbae;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 372
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
