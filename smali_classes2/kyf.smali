.class public Lkyf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkye;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lkqg;Lkxl;Lkxl;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkqg;",
            "Lkxl",
            "<",
            "Lkry;",
            ">;",
            "Lkxl",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 55
    const-string v1, "familyId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v1, "gw-app-key"

    invoke-static {}, Lmzx;->a()Lmzx;

    move-result-object v2

    invoke-virtual {v2}, Lmzx;->c()Ljava/util/Properties;

    move-result-object v2

    const-string v3, "appKey"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-static {v0}, Lgnp;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 59
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 62
    :try_start_0
    const-string v0, "Content-Type"

    const-string v1, "application/json"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 68
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    new-instance v1, Lejm;

    invoke-direct {v1}, Lejm;-><init>()V

    new-instance v5, Lkrw;

    invoke-direct {v5, p2}, Lkrw;-><init>(Lkqg;)V

    invoke-virtual {v1, v5}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 74
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lkwr;->GENERATE_IDEAL_QUOTATIONS:Lkwr;

    invoke-virtual {v1}, Lkwr;->getEndpoint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v0

    sget-object v2, Lim;->POST:Lim;

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lgnp;->a(Ljava/lang/String;Lim;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)Lir;

    move-result-object v0

    .line 78
    new-instance v1, Lgnv;

    new-instance v2, Lkyg;

    invoke-direct {v2, p0, p3, p4}, Lkyg;-><init>(Lkyf;Lkxl;Lkxl;)V

    invoke-direct {v1, v2, v0}, Lgnv;-><init>(Lgkw;Lir;)V

    .line 90
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 93
    :try_start_2
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lie;->a(Lir;Lih;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 101
    :cond_0
    :goto_2
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 70
    :catch_1
    move-exception v1

    .line 71
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    move-object v4, v0

    goto :goto_1

    .line 94
    :catch_2
    move-exception v0

    .line 95
    const-string v1, "ERROR_SERV"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 97
    const-string v0, ""

    invoke-interface {p4, v0}, Lkxl;->a(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public a(Ljava/lang/String;Lkxl;Lkxl;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkxl",
            "<",
            "Lkri;",
            ">;",
            "Lkxl",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 107
    const-string v1, "gw-app-key"

    invoke-static {}, Lmzx;->a()Lmzx;

    move-result-object v2

    invoke-virtual {v2}, Lmzx;->c()Ljava/util/Properties;

    move-result-object v2

    const-string v3, "appKey"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v1, "familyId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-static {v0}, Lgnp;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lkwr;->GET_IDEAL_PRODUCT:Lkwr;

    invoke-virtual {v2}, Lkwr;->getEndpoint()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v0

    sget-object v2, Lim;->GET:Lim;

    const/4 v3, 0x0

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lgnp;->a(Ljava/lang/String;Lim;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)Lir;

    move-result-object v0

    .line 114
    new-instance v1, Lgnv;

    new-instance v2, Lkyh;

    invoke-direct {v2, p0, p2, p3}, Lkyh;-><init>(Lkyf;Lkxl;Lkxl;)V

    invoke-direct {v1, v2, v0}, Lgnv;-><init>(Lgkw;Lir;)V

    .line 129
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 132
    :try_start_0
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lie;->a(Lir;Lih;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 134
    const-string v1, "ERROR_SERV"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const-string v0, ""

    invoke-interface {p3, v0}, Lkxl;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 139
    :cond_0
    const-string v0, ""

    invoke-interface {p3, v0}, Lkxl;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Lkrf;Lkxl;Lkxl;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkrf;",
            "Lkxl",
            "<",
            "Lkrg;",
            ">;",
            "Lkxl",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 343
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 344
    const-string v1, "gw-app-key"

    invoke-static {}, Lmzx;->a()Lmzx;

    move-result-object v2

    invoke-virtual {v2}, Lmzx;->c()Ljava/util/Properties;

    move-result-object v2

    const-string v3, "appKey"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    invoke-static {v0}, Lgnp;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 348
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 350
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    new-instance v1, Lejm;

    invoke-direct {v1}, Lejm;-><init>()V

    invoke-virtual {v1, p1}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lkwr;->GET_DETAILS:Lkwr;

    invoke-virtual {v1}, Lkwr;->getEndpoint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 357
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v0

    sget-object v2, Lim;->POST:Lim;

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lgnp;->a(Ljava/lang/String;Lim;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)Lir;

    move-result-object v0

    .line 359
    new-instance v1, Lgnv;

    new-instance v2, Lkyn;

    invoke-direct {v2, p0, p2, p3}, Lkyn;-><init>(Lkyf;Lkxl;Lkxl;)V

    invoke-direct {v1, v2, v0}, Lgnv;-><init>(Lgkw;Lir;)V

    .line 371
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 374
    :try_start_1
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lie;->a(Lir;Lih;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 383
    :cond_0
    :goto_1
    return-void

    .line 351
    :catch_0
    move-exception v1

    .line 352
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    move-object v4, v0

    goto :goto_0

    .line 375
    :catch_1
    move-exception v0

    .line 376
    const-string v1, "ERROR_SERV"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 378
    const-string v0, ""

    invoke-interface {p3, v0}, Lkxl;->a(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public a(Lkru;Lkxl;Lkxl;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkru;",
            "Lkxl",
            "<",
            "Lkrv;",
            ">;",
            "Lkxl",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 219
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 220
    const-string v1, "gw-app-key"

    invoke-static {}, Lmzx;->a()Lmzx;

    move-result-object v2

    invoke-virtual {v2}, Lmzx;->c()Ljava/util/Properties;

    move-result-object v2

    const-string v3, "appKey"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 224
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    new-instance v1, Lejm;

    invoke-direct {v1}, Lejm;-><init>()V

    invoke-virtual {v1, p1}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :goto_0
    sget-object v0, Lkwr;->GENERATE_QUESTIONS:Lkwr;

    invoke-virtual {v0}, Lkwr;->getEndpoint()Ljava/lang/String;

    move-result-object v1

    .line 231
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v0

    sget-object v2, Lim;->POST:Lim;

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lgnp;->a(Ljava/lang/String;Lim;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)Lir;

    move-result-object v0

    .line 233
    new-instance v1, Lgnv;

    new-instance v2, Lkyk;

    invoke-direct {v2, p0, p2, p3}, Lkyk;-><init>(Lkyf;Lkxl;Lkxl;)V

    invoke-direct {v1, v2, v0}, Lgnv;-><init>(Lgkw;Lir;)V

    .line 245
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 248
    :try_start_1
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lie;->a(Lir;Lih;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 255
    :cond_0
    :goto_1
    return-void

    .line 225
    :catch_0
    move-exception v1

    .line 226
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    move-object v4, v0

    goto :goto_0

    .line 249
    :catch_1
    move-exception v0

    .line 250
    const-string v1, "ERROR_SERV"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 252
    const-string v0, ""

    invoke-interface {p3, v0}, Lkxl;->a(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public a(Lkrw;Lkxl;Lkxl;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkrw;",
            "Lkxl",
            "<",
            "Lkrz;",
            ">;",
            "Lkxl",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 147
    const-string v1, "gw-app-key"

    invoke-static {}, Lmzx;->a()Lmzx;

    move-result-object v2

    invoke-virtual {v2}, Lmzx;->c()Ljava/util/Properties;

    move-result-object v2

    const-string v3, "appKey"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    invoke-static {v0}, Lgnp;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 151
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 153
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    new-instance v1, Lejm;

    invoke-direct {v1}, Lejm;-><init>()V

    invoke-virtual {v1, p1}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lkwr;->GENERATE_QUOTATION:Lkwr;

    invoke-virtual {v1}, Lkwr;->getEndpoint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 160
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v0

    sget-object v2, Lim;->POST:Lim;

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lgnp;->a(Ljava/lang/String;Lim;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)Lir;

    move-result-object v0

    .line 162
    new-instance v1, Lgnv;

    new-instance v2, Lkyi;

    invoke-direct {v2, p0, p2, p3}, Lkyi;-><init>(Lkyf;Lkxl;Lkxl;)V

    invoke-direct {v1, v2, v0}, Lgnv;-><init>(Lgkw;Lir;)V

    .line 174
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 177
    :try_start_1
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lie;->a(Lir;Lih;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 184
    :cond_0
    :goto_1
    return-void

    .line 154
    :catch_0
    move-exception v1

    .line 155
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    move-object v4, v0

    goto :goto_0

    .line 178
    :catch_1
    move-exception v0

    .line 179
    const-string v1, "ERROR_SERV"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 181
    const-string v0, ""

    invoke-interface {p3, v0}, Lkxl;->a(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public a(Lktc;Lkxl;Lkxl;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lktc;",
            "Lkxl",
            "<",
            "Lkte;",
            ">;",
            "Lkxl",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 259
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 260
    const-string v1, "gw-app-key"

    invoke-static {}, Lmzx;->a()Lmzx;

    move-result-object v2

    invoke-virtual {v2}, Lmzx;->c()Ljava/util/Properties;

    move-result-object v2

    const-string v3, "appKey"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    invoke-static {v0}, Lgnp;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 263
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 265
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    new-instance v1, Lejm;

    invoke-direct {v1}, Lejm;-><init>()V

    invoke-virtual {v1, p1}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lkwr;->UPDATE_INSURED_DATE:Lkwr;

    invoke-virtual {v1}, Lkwr;->getEndpoint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 272
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v0

    sget-object v2, Lim;->PUT:Lim;

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lgnp;->a(Ljava/lang/String;Lim;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)Lir;

    move-result-object v0

    .line 274
    new-instance v1, Lgnv;

    new-instance v2, Lkyl;

    invoke-direct {v2, p0, p2, p3}, Lkyl;-><init>(Lkyf;Lkxl;Lkxl;)V

    invoke-direct {v1, v2, v0}, Lgnv;-><init>(Lgkw;Lir;)V

    .line 286
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 289
    :try_start_1
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lie;->a(Lir;Lih;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 296
    :cond_0
    :goto_1
    return-void

    .line 266
    :catch_0
    move-exception v1

    .line 267
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    move-object v4, v0

    goto :goto_0

    .line 290
    :catch_1
    move-exception v0

    .line 291
    const-string v1, "ERROR_SERV"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 293
    const-string v0, ""

    invoke-interface {p3, v0}, Lkxl;->a(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public a(Lkti;Lkxl;Lkxl;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkti;",
            "Lkxl",
            "<",
            "Lktj;",
            ">;",
            "Lkxl",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 300
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 301
    const-string v1, "gw-app-key"

    invoke-static {}, Lmzx;->a()Lmzx;

    move-result-object v2

    invoke-virtual {v2}, Lmzx;->c()Ljava/util/Properties;

    move-result-object v2

    const-string v3, "appKey"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    invoke-static {v0}, Lgnp;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 305
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 307
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    new-instance v1, Lejm;

    invoke-direct {v1}, Lejm;-><init>()V

    invoke-virtual {v1, p1}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lkwr;->GET_PRE_PROPORSAL:Lkwr;

    invoke-virtual {v1}, Lkwr;->getEndpoint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 314
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v0

    sget-object v2, Lim;->POST:Lim;

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lgnp;->a(Ljava/lang/String;Lim;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)Lir;

    move-result-object v0

    .line 316
    new-instance v1, Lgnv;

    new-instance v2, Lkym;

    invoke-direct {v2, p0, p2, p3}, Lkym;-><init>(Lkyf;Lkxl;Lkxl;)V

    invoke-direct {v1, v2, v0}, Lgnv;-><init>(Lgkw;Lir;)V

    .line 328
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 331
    :try_start_1
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lie;->a(Lir;Lih;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 338
    :cond_0
    :goto_1
    return-void

    .line 308
    :catch_0
    move-exception v1

    .line 309
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    move-object v4, v0

    goto :goto_0

    .line 332
    :catch_1
    move-exception v0

    .line 333
    const-string v1, "ERROR_SERV"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 335
    const-string v0, ""

    invoke-interface {p3, v0}, Lkxl;->a(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public a(Lkxl;Lkxl;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkxl",
            "<",
            "Lkqj;",
            ">;",
            "Lkxl",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 187
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 188
    const-string v1, "gw-app-key"

    invoke-static {}, Lmzx;->a()Lmzx;

    move-result-object v2

    invoke-virtual {v2}, Lmzx;->c()Ljava/util/Properties;

    move-result-object v2

    const-string v4, "appKey"

    invoke-virtual {v2, v4}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v0, Lkwr;->GENERATE_CONTACT_DATA:Lkwr;

    invoke-virtual {v0}, Lkwr;->getEndpoint()Ljava/lang/String;

    move-result-object v1

    .line 192
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v0

    sget-object v2, Lim;->GET:Lim;

    const/4 v5, 0x1

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lgnp;->a(Ljava/lang/String;Lim;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)Lir;

    move-result-object v0

    .line 194
    new-instance v1, Lgnv;

    new-instance v2, Lkyj;

    invoke-direct {v2, p0, p1, p2}, Lkyj;-><init>(Lkyf;Lkxl;Lkxl;)V

    invoke-direct {v1, v2, v0}, Lgnv;-><init>(Lgkw;Lir;)V

    .line 206
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 209
    :try_start_0
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lie;->a(Lir;Lih;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 210
    :catch_0
    move-exception v0

    .line 211
    const-string v1, "ERROR_SERV"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 213
    const-string v0, ""

    invoke-interface {p2, v0}, Lkxl;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method
