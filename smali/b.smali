.class public Lb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldv",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    .prologue
    .line 368
    const/4 v1, 0x0

    .line 370
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 374
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 376
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    .line 377
    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    .line 378
    invoke-virtual {v2, p1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 380
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 381
    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 382
    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 384
    if-eqz v0, :cond_0

    .line 385
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 393
    :goto_0
    return-object v0

    .line 388
    :catch_0
    move-exception v0

    .line 390
    new-instance v0, Le;

    invoke-direct {v0, p1}, Le;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method static a(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 14

    .prologue
    .line 113
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 115
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 157
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 159
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 162
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 163
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x16

    if-lt v2, v6, :cond_a

    .line 168
    const-string v2, "telephony_subscription_service"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionManager;

    .line 169
    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 170
    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCountMax()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 172
    invoke-static {p0, v0, v3, v4, v5}, Lb;->a(Landroid/content/Context;Landroid/telephony/TelephonyManager;Lorg/json/JSONObject;Ljava/util/List;Ljava/util/List;)V

    .line 174
    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    .line 175
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_1

    .line 176
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 177
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4

    .line 250
    const-string v0, "a"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 252
    if-eqz v6, :cond_0

    .line 253
    const-string v0, "b"

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 255
    :cond_0
    if-eqz v7, :cond_1

    .line 256
    const-string v0, "c"

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 264
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 265
    new-instance v0, Lc;

    invoke-direct {v0}, Lc;-><init>()V

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 272
    :cond_2
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v5}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 273
    const-string v1, "d"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 275
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 276
    new-instance v0, Ld;

    invoke-direct {v0}, Ld;-><init>()V

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 291
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v4}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 292
    const-string v1, "a"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 302
    :cond_3
    :goto_2
    return-object v3

    .line 177
    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 179
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v9

    .line 180
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v10

    .line 181
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object v11

    .line 183
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 184
    const-string v13, "a"

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v13, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 185
    const-string v9, "b"

    invoke-virtual {v12, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 186
    const-string v9, "c"

    invoke-virtual {v12, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 188
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v9

    .line 189
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x17

    if-lt v2, v10, :cond_6

    .line 191
    invoke-virtual {v1, v9}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v2

    .line 193
    invoke-interface {v5, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 194
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    :cond_5
    :goto_3
    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 294
    :catch_0
    move-exception v0

    .line 295
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 197
    :cond_6
    const/4 v2, 0x0

    .line 199
    if-nez v9, :cond_7

    .line 200
    :try_start_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 203
    :cond_7
    if-nez v2, :cond_8

    .line 205
    :try_start_2
    const-string v10, "getDeviceIdGemini"

    invoke-static {p0, v10, v9}, Lb;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_2
    .catch Le; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    .line 216
    :cond_8
    :goto_4
    if-nez v2, :cond_9

    .line 217
    :try_start_3
    const-string v2, ""

    .line 220
    :cond_9
    invoke-interface {v5, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 221
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 296
    :catch_1
    move-exception v0

    .line 297
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 206
    :catch_2
    move-exception v10

    .line 209
    :try_start_4
    const-string v10, "getDeviceId"

    invoke-static {p0, v10, v9}, Lb;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_4
    .catch Le; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v2

    goto :goto_4

    .line 261
    :cond_a
    :try_start_5
    invoke-static {p0, v0, v3, v4, v5}, Lb;->a(Landroid/content/Context;Landroid/telephony/TelephonyManager;Lorg/json/JSONObject;Ljava/util/List;Ljava/util/List;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    .line 210
    :catch_3
    move-exception v9

    goto :goto_4
.end method

.method private static a(Landroid/content/Context;Landroid/telephony/TelephonyManager;Lorg/json/JSONObject;Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/telephony/TelephonyManager;",
            "Lorg/json/JSONObject;",
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 308
    const/4 v1, 0x1

    .line 310
    const/4 v0, 0x0

    move v4, v0

    :goto_0
    const/4 v0, 0x2

    if-lt v4, v0, :cond_2

    .line 355
    if-eqz v1, :cond_7

    const/4 v0, 0x2

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 356
    if-eqz v1, :cond_8

    const/4 v0, 0x2

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 358
    if-eqz v2, :cond_0

    .line 359
    const-string v1, "b"

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 361
    :cond_0
    if-eqz v0, :cond_1

    .line 362
    const-string v1, "c"

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 364
    :cond_1
    return-void

    .line 312
    :cond_2
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 314
    const/4 v3, 0x0

    .line 315
    const/4 v2, 0x0

    .line 316
    const/4 v0, 0x0

    .line 318
    if-nez v4, :cond_3

    .line 319
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v2

    .line 320
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v3

    .line 321
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 324
    :cond_3
    if-nez v0, :cond_4

    .line 326
    :try_start_0
    const-string v6, "getDeviceIdGemini"

    invoke-static {p0, v6, v4}, Lb;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Le; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 337
    :cond_4
    :goto_3
    if-nez v0, :cond_5

    .line 338
    const-string v0, ""

    .line 339
    const/4 v6, 0x1

    if-ne v4, v6, :cond_5

    .line 340
    const/4 v1, 0x0

    .line 344
    :cond_5
    if-eqz v1, :cond_6

    .line 345
    const-string v6, "a"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 346
    const-string v6, "b"

    invoke-virtual {v5, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 347
    const-string v3, "c"

    invoke-virtual {v5, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 349
    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    :cond_6
    invoke-interface {p3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 327
    :catch_0
    move-exception v6

    .line 330
    :try_start_1
    const-string v6, "getDeviceId"

    invoke-static {p0, v6, v4}, Lb;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_1
    .catch Le; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_3

    .line 355
    :cond_7
    const/4 v0, 0x1

    goto :goto_1

    .line 356
    :cond_8
    const/4 v0, 0x1

    goto :goto_2

    .line 331
    :catch_1
    move-exception v6

    goto :goto_3
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 440
    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lb;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lb;->a(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
