.class public Lgnz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Liv;

.field public static final b:Liv;

.field private static c:Lgnz;

.field private static e:Ljava/lang/String;


# instance fields
.field private d:Z

.field private f:Lje;

.field private g:Lje;

.field private h:Lje;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 325
    new-instance v0, Lgoc;

    invoke-direct {v0}, Lgoc;-><init>()V

    sput-object v0, Lgnz;->a:Liv;

    .line 342
    new-instance v0, Lgod;

    invoke-direct {v0}, Lgod;-><init>()V

    sput-object v0, Lgnz;->b:Liv;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-direct {p0}, Lgnz;->h()V

    .line 68
    new-instance v0, Lje;

    invoke-direct {v0}, Lje;-><init>()V

    iput-object v0, p0, Lgnz;->f:Lje;

    .line 69
    iget-object v0, p0, Lgnz;->f:Lje;

    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->A()Lil;

    move-result-object v1

    sget-object v2, Lin;->MBB:Lin;

    invoke-virtual {v0, v1, v2}, Lje;->a(Lil;Lin;)Lje;

    move-result-object v0

    sget-object v1, Lip;->PAAS:Lip;

    .line 70
    invoke-virtual {v0, v1}, Lje;->a(Lip;)Lje;

    move-result-object v0

    sget-object v1, Lgnz;->b:Liv;

    .line 71
    invoke-virtual {v0, v1}, Lje;->a(Liv;)Lje;

    .line 74
    new-instance v0, Lje;

    invoke-direct {v0}, Lje;-><init>()V

    iput-object v0, p0, Lgnz;->g:Lje;

    .line 75
    iget-object v0, p0, Lgnz;->g:Lje;

    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->A()Lil;

    move-result-object v1

    sget-object v2, Lin;->MBB:Lin;

    invoke-virtual {v0, v1, v2}, Lje;->a(Lil;Lin;)Lje;

    move-result-object v0

    sget-object v1, Lip;->HUB:Lip;

    .line 76
    invoke-virtual {v0, v1}, Lje;->a(Lip;)Lje;

    .line 78
    new-instance v0, Lje;

    invoke-direct {v0}, Lje;-><init>()V

    iput-object v0, p0, Lgnz;->h:Lje;

    .line 79
    iget-object v0, p0, Lgnz;->h:Lje;

    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->A()Lil;

    move-result-object v1

    sget-object v2, Lin;->MBB:Lin;

    invoke-virtual {v0, v1, v2}, Lje;->a(Lil;Lin;)Lje;

    move-result-object v0

    sget-object v1, Lip;->REST:Lip;

    .line 80
    invoke-virtual {v0, v1}, Lje;->a(Lip;)Lje;

    move-result-object v0

    sget-object v1, Lgnz;->a:Liv;

    .line 81
    invoke-virtual {v0, v1}, Lje;->a(Liv;)Lje;

    .line 83
    invoke-direct {p0, p1}, Lgnz;->a(Landroid/content/Context;)V

    .line 84
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lip;)V
    .locals 3

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-direct {p0}, Lgnz;->h()V

    .line 89
    new-instance v0, Lje;

    invoke-direct {v0}, Lje;-><init>()V

    iput-object v0, p0, Lgnz;->f:Lje;

    .line 90
    iget-object v0, p0, Lgnz;->f:Lje;

    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->A()Lil;

    move-result-object v1

    sget-object v2, Lin;->MBB:Lin;

    invoke-virtual {v0, v1, v2}, Lje;->a(Lil;Lin;)Lje;

    move-result-object v0

    .line 91
    invoke-virtual {v0, p2}, Lje;->a(Lip;)Lje;

    move-result-object v0

    sget-object v1, Lgnz;->b:Liv;

    .line 92
    invoke-virtual {v0, v1}, Lje;->a(Liv;)Lje;

    .line 94
    new-instance v0, Lje;

    invoke-direct {v0}, Lje;-><init>()V

    iput-object v0, p0, Lgnz;->g:Lje;

    .line 95
    iget-object v0, p0, Lgnz;->g:Lje;

    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->A()Lil;

    move-result-object v1

    sget-object v2, Lin;->MBB:Lin;

    invoke-virtual {v0, v1, v2}, Lje;->a(Lil;Lin;)Lje;

    move-result-object v0

    sget-object v1, Lip;->HUB:Lip;

    .line 96
    invoke-virtual {v0, v1}, Lje;->a(Lip;)Lje;

    .line 98
    new-instance v0, Lje;

    invoke-direct {v0}, Lje;-><init>()V

    iput-object v0, p0, Lgnz;->h:Lje;

    .line 99
    iget-object v0, p0, Lgnz;->h:Lje;

    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->A()Lil;

    move-result-object v1

    sget-object v2, Lin;->MBB:Lin;

    invoke-virtual {v0, v1, v2}, Lje;->a(Lil;Lin;)Lje;

    move-result-object v0

    sget-object v1, Lip;->REST:Lip;

    .line 100
    invoke-virtual {v0, v1}, Lje;->a(Lip;)Lje;

    move-result-object v0

    sget-object v1, Lgnz;->a:Liv;

    .line 101
    invoke-virtual {v0, v1}, Lje;->a(Liv;)Lje;

    .line 103
    invoke-direct {p0, p1}, Lgnz;->a(Landroid/content/Context;)V

    .line 104
    return-void
.end method

.method public static a()Lgnz;
    .locals 2

    .prologue
    .line 50
    sget-object v0, Lgnz;->c:Lgnz;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lgnz;

    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lgnz;-><init>(Landroid/content/Context;)V

    sput-object v0, Lgnz;->c:Lgnz;

    .line 54
    :cond_0
    sget-object v0, Lgnz;->c:Lgnz;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lip;)Lgnz;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lgnz;->c:Lgnz;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lgnz;

    invoke-direct {v0, p0, p1}, Lgnz;-><init>(Landroid/content/Context;Lip;)V

    sput-object v0, Lgnz;->c:Lgnz;

    .line 62
    :cond_0
    sget-object v0, Lgnz;->c:Lgnz;

    return-object v0
.end method

.method static synthetic a(Lgnz;Lkkt;Ljava/util/Properties;)Liq;
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lgnz;->a(Lkkt;Ljava/util/Properties;)Liq;

    move-result-object v0

    return-object v0
.end method

.method private a(Lkkt;Ljava/util/Properties;)Liq;
    .locals 5

    .prologue
    .line 262
    new-instance v1, Liq;

    invoke-direct {v1}, Liq;-><init>()V

    .line 263
    sget-object v0, Lgny;->TOKEN_VALIDADE:Lgny;

    invoke-virtual {v0}, Lgny;->getEndpoint()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Liq;->a(Ljava/lang/String;)V

    .line 264
    sget-object v0, Lim;->POST:Lim;

    invoke-virtual {v1, v0}, Liq;->a(Lim;)V

    .line 268
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 270
    :try_start_0
    const-string v0, "X-Application-Key"

    const-string v3, "appKey"

    invoke-virtual {p2, v3}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 271
    const-string v0, "versao-mbb"

    sget-object v3, Lgnz;->e:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    :goto_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 279
    :try_start_1
    const-string v0, "ticket"

    invoke-virtual {p1}, Lkkt;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 280
    const-string v0, "siglaSistema"

    const-string v4, "MBB"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 285
    :goto_1
    invoke-virtual {v1, v3}, Liq;->a(Ljava/lang/Object;)V

    .line 286
    invoke-virtual {v1, v2}, Liq;->a(Lorg/json/JSONObject;)V

    .line 287
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Liq;->a(Ljava/lang/Boolean;)V

    .line 289
    return-object v1

    .line 272
    :catch_0
    move-exception v0

    .line 273
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 281
    :catch_1
    move-exception v0

    .line 282
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 304
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 305
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 306
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 307
    const/16 v1, 0x26

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 310
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 311
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v4, 0x3d

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 314
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lgnz;)Lje;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lgnz;->g:Lje;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 118
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v0, Lgnz;->e:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 107
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->A()Lil;

    move-result-object v0

    if-nez v0, :cond_0

    .line 111
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    sget-object v1, Lil;->PROD:Lil;

    invoke-virtual {v0, v1}, Lmiq;->a(Lil;)V

    .line 114
    :cond_0
    return-void
.end method

.method private i()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 191
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 193
    :try_start_0
    const-string v0, "X-Application-Key"

    invoke-static {}, Lmzx;->b()Lmzx;

    move-result-object v2

    invoke-virtual {v2}, Lmzx;->c()Ljava/util/Properties;

    move-result-object v2

    const-string v3, "appKey"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    const-string v0, "Content-Type"

    const-string v2, "application/json"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 195
    const-string v0, "versao-mbb"

    sget-object v2, Lgnz;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :goto_0
    return-object v1

    .line 196
    :catch_0
    move-exception v0

    .line 197
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private j()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 204
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 206
    :try_start_0
    const-string v0, "Content-Type"

    const-string v2, "application/json"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 207
    const-string v0, "accept"

    const-string v2, "application/json"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 208
    const-string v0, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 209
    const-string v0, "Content-Encoding"

    const-string v2, "gzip"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 210
    const-string v0, "x-uid"

    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v2

    invoke-virtual {v2}, Lmiq;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 211
    const-string v0, "x-authorization-token"

    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v2

    invoke-virtual {v2}, Lmiq;->f()Lmir;

    move-result-object v2

    invoke-virtual {v2}, Lmir;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 212
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Lmir;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :goto_0
    return-object v1

    .line 213
    :catch_0
    move-exception v0

    .line 214
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private k()Lkku;
    .locals 2

    .prologue
    .line 294
    new-instance v0, Lkku;

    invoke-direct {v0}, Lkku;-><init>()V

    .line 295
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkku;->setConnUuid(Ljava/lang/String;)V

    .line 296
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkku;->setTokenSessao(Ljava/lang/String;)V

    .line 297
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkku;->a(Ljava/lang/String;)V

    .line 299
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lim;Ljava/lang/String;Z)Liq;
    .locals 6

    .prologue
    .line 151
    invoke-direct {p0}, Lgnz;->j()Lorg/json/JSONObject;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    .line 152
    invoke-virtual/range {v0 .. v5}, Lgnz;->a(Ljava/lang/String;Lim;Lorg/json/JSONObject;Ljava/lang/String;Z)Liq;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Lim;Lorg/json/JSONObject;Ljava/lang/String;Z)Liq;
    .locals 2

    .prologue
    .line 177
    new-instance v0, Liq;

    invoke-direct {v0}, Liq;-><init>()V

    .line 178
    invoke-virtual {v0, p1}, Liq;->a(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v0, p2}, Liq;->a(Lim;)V

    .line 180
    if-eqz p3, :cond_0

    .line 181
    invoke-virtual {v0, p3}, Liq;->a(Lorg/json/JSONObject;)V

    .line 184
    :goto_0
    invoke-virtual {v0, p4}, Liq;->a(Ljava/lang/Object;)V

    .line 185
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Liq;->a(Ljava/lang/Boolean;)V

    .line 187
    return-object v0

    .line 183
    :cond_0
    invoke-direct {p0}, Lgnz;->j()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Liq;->a(Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lim;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)Lir;
    .locals 3

    .prologue
    .line 157
    new-instance v1, Lir;

    invoke-direct {v1}, Lir;-><init>()V

    .line 158
    invoke-virtual {v1, p1}, Lir;->a(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v1, p2}, Lir;->a(Lim;)V

    .line 160
    if-eqz p3, :cond_0

    .line 162
    :try_start_0
    const-string v0, "versao-mbb"

    sget-object v2, Lgnz;->e:Ljava/lang/String;

    invoke-virtual {p3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_0
    invoke-virtual {v1, p3}, Lir;->a(Lorg/json/JSONObject;)V

    .line 169
    :goto_1
    invoke-virtual {v1, p4}, Lir;->a(Ljava/lang/Object;)V

    .line 170
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lir;->a(Ljava/lang/Boolean;)V

    .line 172
    return-object v1

    .line 163
    :catch_0
    move-exception v0

    .line 164
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 168
    :cond_0
    invoke-direct {p0}, Lgnz;->i()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lir;->a(Lorg/json/JSONObject;)V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Lim;Lorg/json/JSONObject;Z)Lir;
    .locals 6

    .prologue
    .line 146
    invoke-direct {p0}, Lgnz;->i()Lorg/json/JSONObject;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    .line 147
    invoke-virtual/range {v0 .. v5}, Lgnz;->a(Ljava/lang/String;Lim;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)Lir;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Lim;Z)Lir;
    .locals 1

    .prologue
    .line 141
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 142
    invoke-virtual {p0, p1, p2, v0, p3}, Lgnz;->a(Ljava/lang/String;Lim;Lorg/json/JSONObject;Z)Lir;

    move-result-object v0

    return-object v0
.end method

.method public a(Lih;)V
    .locals 4

    .prologue
    .line 222
    new-instance v0, Lkkv;

    new-instance v1, Lgoa;

    invoke-direct {v1, p0, p1}, Lgoa;-><init>(Lgnz;Lih;)V

    invoke-direct {v0, v1}, Lkkv;-><init>(Lgkv;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lkku;

    const/4 v2, 0x0

    .line 257
    invoke-direct {p0}, Lgnz;->k()Lkku;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lkkv;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 258
    return-void
.end method

.method public a(Lje;)V
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Lgnz;->h:Lje;

    .line 365
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 322
    iput-boolean p1, p0, Lgnz;->d:Z

    .line 323
    return-void
.end method

.method public b()Lje;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lgnz;->f:Lje;

    return-object v0
.end method

.method public c()Lje;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lgnz;->f:Lje;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgnz;->f:Lje;

    goto :goto_0
.end method

.method public d()Lje;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lgnz;->g:Lje;

    return-object v0
.end method

.method public e()Lje;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lgnz;->f:Lje;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgnz;->f:Lje;

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 318
    iget-boolean v0, p0, Lgnz;->d:Z

    return v0
.end method

.method public g()Lje;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lgnz;->h:Lje;

    return-object v0
.end method
