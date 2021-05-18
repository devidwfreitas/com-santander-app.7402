.class public Lgnp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lgnp;

.field private static d:Ljava/lang/String;


# instance fields
.field private b:Lie;

.field private c:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-direct {p0}, Lgnp;->e()V

    .line 68
    new-instance v0, Lie;

    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->A()Lil;

    move-result-object v1

    sget-object v2, Lin;->MBB:Lin;

    invoke-direct {v0, v1, v2}, Lie;-><init>(Lil;Lin;)V

    iput-object v0, p0, Lgnp;->b:Lie;

    .line 69
    invoke-direct {p0, p1}, Lgnp;->b(Landroid/content/Context;)V

    .line 70
    return-void
.end method

.method public static a()Lgnp;
    .locals 2

    .prologue
    .line 51
    sget-object v0, Lgnp;->a:Lgnp;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lgnp;

    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lgnp;-><init>(Landroid/content/Context;)V

    sput-object v0, Lgnp;->a:Lgnp;

    .line 55
    :cond_0
    sget-object v0, Lgnp;->a:Lgnp;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lgnp;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lgnp;->a:Lgnp;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lgnp;

    invoke-direct {v0, p0}, Lgnp;-><init>(Landroid/content/Context;)V

    sput-object v0, Lgnp;->a:Lgnp;

    .line 63
    :cond_0
    sget-object v0, Lgnp;->a:Lgnp;

    return-object v0
.end method

.method static synthetic a(Lgnp;)Lie;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lgnp;->b:Lie;

    return-object v0
.end method

.method static synthetic a(Lgnp;Lkkt;Ljava/util/Properties;)Lir;
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lgnp;->a(Lkkt;Ljava/util/Properties;)Lir;

    move-result-object v0

    return-object v0
.end method

.method private a(Lkkt;Ljava/util/Properties;)Lir;
    .locals 5

    .prologue
    .line 134
    new-instance v1, Lir;

    invoke-direct {v1}, Lir;-><init>()V

    .line 135
    sget-object v0, Lgny;->TOKEN_VALIDADE:Lgny;

    invoke-virtual {v0}, Lgny;->getEndpoint()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lir;->a(Ljava/lang/String;)V

    .line 136
    sget-object v0, Lim;->POST:Lim;

    invoke-virtual {v1, v0}, Lir;->a(Lim;)V

    .line 139
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 141
    :try_start_0
    const-string v0, "X-Application-Key"

    const-string v3, "appKey"

    invoke-virtual {p2, v3}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    const-string v0, "versao-mbb"

    sget-object v3, Lgnp;->d:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 150
    :try_start_1
    const-string v0, "ticket"

    invoke-virtual {p1}, Lkkt;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    const-string v0, "siglaSistema"

    const-string v4, "MBB"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 156
    :goto_1
    invoke-virtual {v1, v3}, Lir;->a(Ljava/lang/Object;)V

    .line 157
    invoke-virtual {v1, v2}, Lir;->a(Lorg/json/JSONObject;)V

    .line 158
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lir;->a(Ljava/lang/Boolean;)V

    .line 160
    return-object v1

    .line 143
    :catch_0
    move-exception v0

    .line 144
    const-string v3, "Error"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 152
    :catch_1
    move-exception v0

    .line 153
    const-string v4, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

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
    .line 218
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
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

    .line 220
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 221
    const/16 v1, 0x26

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 224
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 225
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v4, 0x3d

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 228
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 85
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v0, Lgnp;->d:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    const-string v1, "Error"

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 73
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->A()Lil;

    move-result-object v0

    if-nez v0, :cond_0

    .line 77
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    sget-object v1, Lil;->PROD:Lil;

    invoke-virtual {v0, v1}, Lmiq;->a(Lil;)V

    .line 80
    :cond_0
    return-void
.end method

.method private f()Lkku;
    .locals 2

    .prologue
    .line 165
    new-instance v0, Lkku;

    invoke-direct {v0}, Lkku;-><init>()V

    .line 166
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkku;->setConnUuid(Ljava/lang/String;)V

    .line 167
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkku;->setTokenSessao(Ljava/lang/String;)V

    .line 168
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkku;->a(Ljava/lang/String;)V

    .line 170
    return-object v0
.end method

.method private g()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 204
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 206
    :try_start_0
    const-string v0, "X-Application-Key"

    invoke-static {}, Lmzx;->a()Lmzx;

    move-result-object v2

    invoke-virtual {v2}, Lmzx;->c()Ljava/util/Properties;

    move-result-object v2

    const-string v3, "appKey"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 207
    const-string v0, "Content-Type"

    const-string v2, "application/json"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 208
    const-string v0, "versao-mbb"

    sget-object v2, Lgnp;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :goto_0
    return-object v1

    .line 209
    :catch_0
    move-exception v0

    .line 210
    const-string v2, "Error"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lim;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)Lir;
    .locals 3

    .prologue
    .line 185
    new-instance v1, Lir;

    invoke-direct {v1}, Lir;-><init>()V

    .line 186
    invoke-virtual {v1, p1}, Lir;->a(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v1, p2}, Lir;->a(Lim;)V

    .line 188
    if-eqz p3, :cond_0

    .line 190
    :try_start_0
    const-string v0, "versao-mbb"

    sget-object v2, Lgnp;->d:Ljava/lang/String;

    invoke-virtual {p3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    invoke-virtual {v1, p3}, Lir;->a(Lorg/json/JSONObject;)V

    .line 197
    :goto_1
    invoke-virtual {v1, p4}, Lir;->a(Ljava/lang/Object;)V

    .line 198
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lir;->a(Ljava/lang/Boolean;)V

    .line 200
    return-object v1

    .line 191
    :catch_0
    move-exception v0

    .line 192
    const-string v2, "Error"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 196
    :cond_0
    invoke-direct {p0}, Lgnp;->g()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lir;->a(Lorg/json/JSONObject;)V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Lim;Lorg/json/JSONObject;Z)Lir;
    .locals 6

    .prologue
    .line 179
    invoke-direct {p0}, Lgnp;->g()Lorg/json/JSONObject;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    .line 180
    invoke-virtual/range {v0 .. v5}, Lgnp;->a(Ljava/lang/String;Lim;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)Lir;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Lim;Z)Lir;
    .locals 1

    .prologue
    .line 174
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 175
    invoke-virtual {p0, p1, p2, v0, p3}, Lgnp;->a(Ljava/lang/String;Lim;Lorg/json/JSONObject;Z)Lir;

    move-result-object v0

    return-object v0
.end method

.method public a(Lih;)V
    .locals 4

    .prologue
    .line 100
    new-instance v0, Lkkv;

    new-instance v1, Lgnq;

    invoke-direct {v1, p0, p1}, Lgnq;-><init>(Lgnp;Lih;)V

    invoke-direct {v0, v1}, Lkkv;-><init>(Lgkv;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lkku;

    const/4 v2, 0x0

    .line 129
    invoke-direct {p0}, Lgnp;->f()Lkku;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lkkv;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 130
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 248
    iput-boolean p1, p0, Lgnp;->c:Z

    .line 249
    return-void
.end method

.method public b()Lie;
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0}, Lgnp;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnp;->b:Lie;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lih;)V
    .locals 2

    .prologue
    .line 233
    new-instance v0, Lnea;

    new-instance v1, Lgns;

    invoke-direct {v1, p0, p1}, Lgns;-><init>(Lgnp;Lih;)V

    invoke-direct {v0, v1}, Lnea;-><init>(Lgkw;)V

    .line 240
    invoke-virtual {v0}, Lnea;->a()V

    .line 241
    return-void
.end method

.method public c()Lie;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lgnp;->b:Lie;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgnp;->b:Lie;

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 244
    iget-boolean v0, p0, Lgnp;->c:Z

    return v0
.end method
