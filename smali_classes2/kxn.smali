.class public Lkxn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkxm;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0xb

    const/16 v4, 0xc

    .line 331
    const-string v0, "\\d\\d\\d\\d-\\d\\d-\\d\\d \\d\\d:\\d\\d"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 332
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 333
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 334
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    .line 335
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 336
    const-string v3, "yyyy-MM-dd HH:mm"

    invoke-static {v2, v3}, Lmhj;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 338
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-lt v3, v4, :cond_0

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v3, v4, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 339
    :cond_0
    const-string v0, "\\d\\d:\\d\\d"

    const-string v3, "Per\u00edodo da manh\u00e3"

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 343
    :goto_1
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 341
    :cond_1
    const-string v0, "\\d\\d:\\d\\d"

    const-string v3, "Per\u00edodo da tarde"

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 346
    :cond_2
    return-object p1
.end method

.method static synthetic a(Lkxn;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lkxn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lkxl;Lkxl;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkxl",
            "<",
            "Ljava/util/List",
            "<",
            "Lkps;",
            ">;>;",
            "Lkxl",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 55
    :try_start_0
    const-string v0, "X-Application-Key"

    invoke-static {}, Lmzx;->a()Lmzx;

    move-result-object v1

    invoke-virtual {v1}, Lmzx;->c()Ljava/util/Properties;

    move-result-object v1

    const-string v2, "appKey"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    const-string v0, "Content-Type"

    const-string v1, "application/json"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 64
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 65
    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    const-string v1, "certificate"

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 69
    const-string v1, "code"

    const-string v2, "1060"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    const-string v1, "plan"

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 73
    const-string v1, "code"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    const-string v1, "product"

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 79
    :goto_1
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v0

    sget-object v1, Lkwr;->INSURANCE_GET_SUBSERVICES:Lkwr;

    invoke-virtual {v1}, Lkwr;->getEndpoint()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lim;->POST:Lim;

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lgnp;->a(Ljava/lang/String;Lim;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)Lir;

    move-result-object v0

    .line 80
    new-instance v1, Lgnv;

    new-instance v2, Lkxo;

    invoke-direct {v2, p0, p4, p3}, Lkxo;-><init>(Lkxn;Lkxl;Lkxl;)V

    invoke-direct {v1, v2, v0}, Lgnv;-><init>(Lgkw;Lir;)V

    .line 118
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 120
    :try_start_2
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lie;->a(Lir;Lih;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 128
    :goto_2
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 75
    :catch_1
    move-exception v0

    .line 76
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 121
    :catch_2
    move-exception v0

    .line 122
    const-string v1, "ERROR_SERV"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const-string v0, ""

    invoke-interface {p4, v0}, Lkxl;->a(Ljava/lang/Object;)V

    goto :goto_2

    .line 126
    :cond_0
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
            "Ljava/util/List",
            "<",
            "Lkpo;",
            ">;>;",
            "Lkxl",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 258
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 260
    :try_start_0
    const-string v0, "X-Application-Key"

    invoke-static {}, Lmzx;->a()Lmzx;

    move-result-object v1

    invoke-virtual {v1}, Lmzx;->c()Ljava/util/Properties;

    move-result-object v1

    const-string v2, "appKey"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 261
    const-string v0, "Content-Type"

    const-string v1, "application/json"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :goto_0
    sget-object v0, Lkwr;->INSURANCE_GET_SCHEDULING_SITUATION:Lkwr;

    invoke-virtual {v0}, Lkwr;->getEndpoint()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 269
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v0

    sget-object v2, Lim;->GET:Lim;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual/range {v0 .. v5}, Lgnp;->a(Ljava/lang/String;Lim;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)Lir;

    move-result-object v0

    .line 270
    new-instance v1, Lgnv;

    new-instance v2, Lkxr;

    invoke-direct {v2, p0, p3, p2}, Lkxr;-><init>(Lkxn;Lkxl;Lkxl;)V

    invoke-direct {v1, v2, v0}, Lgnv;-><init>(Lgkw;Lir;)V

    .line 318
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 320
    :try_start_1
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lie;->a(Lir;Lih;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 328
    :goto_1
    return-void

    .line 263
    :catch_0
    move-exception v0

    .line 264
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 321
    :catch_1
    move-exception v0

    .line 322
    const-string v1, "ERROR_SERV"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const-string v0, ""

    invoke-interface {p3, v0}, Lkxl;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 326
    :cond_0
    const-string v0, ""

    invoke-interface {p3, v0}, Lkxl;->a(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public a(Lkoj;Lkxl;Lkxl;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkoj;",
            "Lkxl",
            "<",
            "Ljava/util/List",
            "<",
            "Lkon;",
            ">;>;",
            "Lkxl",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 132
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 134
    :try_start_0
    const-string v0, "X-Application-Key"

    invoke-static {}, Lmzx;->a()Lmzx;

    move-result-object v1

    invoke-virtual {v1}, Lmzx;->c()Ljava/util/Properties;

    move-result-object v1

    const-string v2, "appKey"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    const-string v0, "Content-Type"

    const-string v1, "application/json"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_0
    sget-object v0, Lkwr;->INSURANCE_GET_SUBSERVICES_EVENTS:Lkwr;

    invoke-virtual {v0}, Lkwr;->getEndpoint()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 142
    invoke-virtual {p1}, Lkoj;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {p1}, Lkoj;->b()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x2

    .line 143
    invoke-virtual {p1}, Lkoj;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 141
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 145
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v0

    sget-object v2, Lim;->GET:Lim;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual/range {v0 .. v5}, Lgnp;->a(Ljava/lang/String;Lim;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)Lir;

    move-result-object v0

    .line 146
    new-instance v1, Lgnv;

    new-instance v2, Lkxp;

    invoke-direct {v2, p0, p3, p2}, Lkxp;-><init>(Lkxn;Lkxl;Lkxl;)V

    invoke-direct {v1, v2, v0}, Lgnv;-><init>(Lgkw;Lir;)V

    .line 182
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 184
    :try_start_1
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lie;->a(Lir;Lih;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 192
    :goto_1
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 138
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 185
    :catch_1
    move-exception v0

    .line 186
    const-string v1, "ERROR_SERV"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const-string v0, ""

    invoke-interface {p3, v0}, Lkxl;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 190
    :cond_0
    const-string v0, ""

    invoke-interface {p3, v0}, Lkxl;->a(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public a(Lkoo;Lkxl;Lkxl;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkoo;",
            "Lkxl",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lkxl",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 351
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 353
    :try_start_0
    const-string v0, "X-Application-Key"

    invoke-static {}, Lmzx;->a()Lmzx;

    move-result-object v1

    invoke-virtual {v1}, Lmzx;->c()Ljava/util/Properties;

    move-result-object v1

    const-string v2, "appKey"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 354
    const-string v0, "Content-Type"

    const-string v1, "application/json"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    :goto_0
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v0

    .line 362
    invoke-virtual {p1}, Lkoo;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lkoo;->c(Ljava/lang/String;)V

    .line 363
    invoke-virtual {p1}, Lkoo;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lkoo;->l(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p1}, Lkoo;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lkoo;->n(Ljava/lang/String;)V

    .line 365
    invoke-virtual {p1}, Lkoo;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lkoo;->m(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p1}, Lkoo;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 367
    invoke-virtual {p1}, Lkoo;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 368
    invoke-virtual {p1, v1, v0}, Lkoo;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    sget-object v0, Lkwr;->INSURANCE_SCHEDULE_ASSISTANCE:Lkwr;

    invoke-virtual {v0}, Lkwr;->getEndpoint()Ljava/lang/String;

    move-result-object v1

    .line 371
    invoke-virtual {p1}, Lkoo;->toString()Ljava/lang/String;

    move-result-object v0

    .line 374
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 379
    :goto_1
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v0

    sget-object v2, Lim;->POST:Lim;

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lgnp;->a(Ljava/lang/String;Lim;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)Lir;

    move-result-object v0

    .line 380
    new-instance v1, Lgnv;

    new-instance v2, Lkxs;

    invoke-direct {v2, p0, p3, p2}, Lkxs;-><init>(Lkxn;Lkxl;Lkxl;)V

    invoke-direct {v1, v2, v0}, Lgnv;-><init>(Lgkw;Lir;)V

    .line 403
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 405
    :try_start_2
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lie;->a(Lir;Lih;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 413
    :goto_2
    return-void

    .line 356
    :catch_0
    move-exception v0

    .line 357
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 375
    :catch_1
    move-exception v0

    .line 376
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    goto :goto_1

    .line 406
    :catch_2
    move-exception v0

    .line 407
    const-string v1, "ERROR_SERV"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    const-string v0, ""

    invoke-interface {p3, v0}, Lkxl;->a(Ljava/lang/Object;)V

    goto :goto_2

    .line 411
    :cond_0
    const-string v0, ""

    invoke-interface {p3, v0}, Lkxl;->a(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public a(Lkxl;Lkxl;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkxl",
            "<",
            "Ljava/util/List",
            "<",
            "Lkph;",
            ">;>;",
            "Lkxl",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 196
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 198
    :try_start_0
    const-string v0, "X-Application-Key"

    invoke-static {}, Lmzx;->a()Lmzx;

    move-result-object v1

    invoke-virtual {v1}, Lmzx;->c()Ljava/util/Properties;

    move-result-object v1

    const-string v2, "appKey"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 199
    const-string v0, "Content-Type"

    const-string v1, "application/json"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :goto_0
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v0

    sget-object v1, Lkwr;->INSURANCE_GET_SCHEDULING_LIST:Lkwr;

    invoke-virtual {v1}, Lkwr;->getEndpoint()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lim;->POST:Lim;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lgnp;->a(Ljava/lang/String;Lim;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)Lir;

    move-result-object v0

    .line 206
    new-instance v1, Lgnv;

    new-instance v2, Lkxq;

    invoke-direct {v2, p0, p2, p1}, Lkxq;-><init>(Lkxn;Lkxl;Lkxl;)V

    invoke-direct {v1, v2, v0}, Lgnv;-><init>(Lgkw;Lir;)V

    .line 244
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 246
    :try_start_1
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lie;->a(Lir;Lih;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 254
    :goto_1
    return-void

    .line 201
    :catch_0
    move-exception v0

    .line 202
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 247
    :catch_1
    move-exception v0

    .line 248
    const-string v1, "ERROR_SERV"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const-string v0, ""

    invoke-interface {p2, v0}, Lkxl;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 252
    :cond_0
    const-string v0, ""

    invoke-interface {p2, v0}, Lkxl;->a(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Lkxl;Lkxl;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkxl",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lkxl",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 417
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 419
    :try_start_0
    const-string v0, "X-Application-Key"

    invoke-static {}, Lmzx;->a()Lmzx;

    move-result-object v1

    invoke-virtual {v1}, Lmzx;->c()Ljava/util/Properties;

    move-result-object v1

    const-string v2, "appKey"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 420
    const-string v0, "Content-Type"

    const-string v1, "application/json"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    :goto_0
    sget-object v0, Lkwr;->INSURANCE_RESCHEDULE_ASSISTANCE:Lkwr;

    invoke-virtual {v0}, Lkwr;->getEndpoint()Ljava/lang/String;

    move-result-object v1

    .line 428
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 429
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 431
    :try_start_1
    const-string v2, "number"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 432
    const-string v2, "rescheduleDate"

    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 433
    const-string v2, "scheduling"

    invoke-virtual {v4, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 438
    :goto_1
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v0

    sget-object v2, Lim;->PUT:Lim;

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lgnp;->a(Ljava/lang/String;Lim;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)Lir;

    move-result-object v0

    .line 439
    new-instance v1, Lgnv;

    new-instance v2, Lkxt;

    invoke-direct {v2, p0, p4, p3}, Lkxt;-><init>(Lkxn;Lkxl;Lkxl;)V

    invoke-direct {v1, v2, v0}, Lgnv;-><init>(Lgkw;Lir;)V

    .line 463
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 465
    :try_start_2
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lie;->a(Lir;Lih;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 473
    :goto_2
    return-void

    .line 422
    :catch_0
    move-exception v0

    .line 423
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 434
    :catch_1
    move-exception v0

    .line 435
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 466
    :catch_2
    move-exception v0

    .line 467
    const-string v1, "ERROR_SERV"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const-string v0, ""

    invoke-interface {p4, v0}, Lkxl;->a(Ljava/lang/Object;)V

    goto :goto_2

    .line 471
    :cond_0
    const-string v0, ""

    invoke-interface {p4, v0}, Lkxl;->a(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public b(Ljava/lang/String;Lkxl;Lkxl;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkxl",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lkxl",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 477
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 479
    :try_start_0
    const-string v0, "X-Application-Key"

    invoke-static {}, Lmzx;->a()Lmzx;

    move-result-object v1

    invoke-virtual {v1}, Lmzx;->c()Ljava/util/Properties;

    move-result-object v1

    const-string v2, "appKey"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 480
    const-string v0, "Content-Type"

    const-string v1, "application/json"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    :goto_0
    sget-object v0, Lkwr;->INSURANCE_CANCEL_ASSISTANCE:Lkwr;

    invoke-virtual {v0}, Lkwr;->getEndpoint()Ljava/lang/String;

    move-result-object v1

    .line 488
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 489
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 491
    :try_start_1
    const-string v2, "number"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 492
    const-string v2, "scheduling"

    invoke-virtual {v4, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 497
    :goto_1
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v0

    sget-object v2, Lim;->PUT:Lim;

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lgnp;->a(Ljava/lang/String;Lim;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)Lir;

    move-result-object v0

    .line 498
    new-instance v1, Lgnv;

    new-instance v2, Lkxu;

    invoke-direct {v2, p0, p3, p2}, Lkxu;-><init>(Lkxn;Lkxl;Lkxl;)V

    invoke-direct {v1, v2, v0}, Lgnv;-><init>(Lgkw;Lir;)V

    .line 522
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 524
    :try_start_2
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lie;->a(Lir;Lih;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 532
    :goto_2
    return-void

    .line 482
    :catch_0
    move-exception v0

    .line 483
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 493
    :catch_1
    move-exception v0

    .line 494
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 525
    :catch_2
    move-exception v0

    .line 526
    const-string v1, "ERROR_SERV"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    const-string v0, ""

    invoke-interface {p3, v0}, Lkxl;->a(Ljava/lang/Object;)V

    goto :goto_2

    .line 530
    :cond_0
    const-string v0, ""

    invoke-interface {p3, v0}, Lkxl;->a(Ljava/lang/Object;)V

    goto :goto_2
.end method
