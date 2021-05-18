.class public Lgnt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lgnt;

.field private static f:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lje;

.field private d:Z

.field private e:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Z)V
    .locals 3

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lgnt;->b:Landroid/content/Context;

    .line 66
    invoke-direct {p0}, Lgnt;->d()V

    .line 67
    new-instance v0, Lje;

    invoke-direct {v0}, Lje;-><init>()V

    iput-object v0, p0, Lgnt;->c:Lje;

    .line 68
    iget-object v0, p0, Lgnt;->c:Lje;

    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->A()Lil;

    move-result-object v1

    sget-object v2, Lin;->MBB:Lin;

    invoke-virtual {v0, v1, v2}, Lje;->a(Lil;Lin;)Lje;

    move-result-object v0

    const/4 v1, 0x1

    .line 69
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lje;->a(Ljava/lang/Boolean;)Lje;

    move-result-object v0

    sget-object v1, Lip;->HUB:Lip;

    .line 70
    invoke-virtual {v0, v1}, Lje;->a(Lip;)Lje;

    .line 71
    invoke-direct {p0, p1}, Lgnt;->a(Landroid/content/Context;)V

    .line 72
    return-void
.end method

.method static synthetic a(Lgnt;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lgnt;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Z)Lgnt;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lgnt;->a:Lgnt;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lgnt;

    invoke-direct {v0, p0, p1}, Lgnt;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lgnt;->a:Lgnt;

    .line 53
    :cond_0
    sget-object v0, Lgnt;->a:Lgnt;

    return-object v0
.end method

.method private a(Lkks;)Lir;
    .locals 5

    .prologue
    .line 117
    new-instance v1, Lir;

    invoke-direct {v1}, Lir;-><init>()V

    .line 119
    iget-boolean v0, p0, Lgnt;->e:Z

    if-eqz v0, :cond_0

    .line 120
    sget-object v0, Lilr;->PUBLIC_KEY:Lilr;

    invoke-virtual {v0}, Lilr;->getEndpoint()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lir;->a(Ljava/lang/String;)V

    .line 125
    :goto_0
    sget-object v0, Lim;->POST:Lim;

    invoke-virtual {v1, v0}, Lir;->a(Lim;)V

    .line 128
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 130
    :try_start_0
    const-string v0, "X-Application-Key"

    invoke-virtual {p1}, Lkks;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 138
    :try_start_1
    const-string v0, "clientPublicKey"

    invoke-virtual {p1}, Lkks;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    const-string v0, "system"

    invoke-virtual {p1}, Lkks;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 144
    :goto_2
    invoke-virtual {v1, v3}, Lir;->a(Ljava/lang/Object;)V

    .line 145
    invoke-virtual {v1, v2}, Lir;->a(Lorg/json/JSONObject;)V

    .line 146
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lir;->a(Ljava/lang/Boolean;)V

    .line 148
    return-object v1

    .line 122
    :cond_0
    sget-object v0, Lgny;->SECURY_PUBLIC_KEY:Lgny;

    invoke-virtual {v0}, Lgny;->getEndpoint()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lir;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    const-string v3, "Error"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 140
    :catch_1
    move-exception v0

    .line 141
    const-string v4, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
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
    .line 197
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
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

    .line 199
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 200
    const/16 v1, 0x26

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 203
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 204
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v4, 0x3d

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 207
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 58
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v0, Lgnt;->f:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    const-string v1, "Error"

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private c()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 183
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 185
    :try_start_0
    const-string v0, "X-Application-Key"

    iget-object v2, p0, Lgnt;->b:Landroid/content/Context;

    iget-boolean v3, p0, Lgnt;->e:Z

    invoke-static {v2, v3}, Lmzy;->a(Landroid/content/Context;Z)Lmzy;

    move-result-object v2

    invoke-virtual {v2}, Lmzy;->a()Ljava/util/Properties;

    move-result-object v2

    const-string v3, "appKey"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 186
    const-string v0, "Content-Type"

    const-string v2, "application/json"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 187
    const-string v0, "v:"

    sget-object v2, Lgnt;->f:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :goto_0
    return-object v1

    .line 188
    :catch_0
    move-exception v0

    .line 189
    const-string v2, "Error"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 220
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->A()Lil;

    move-result-object v0

    if-nez v0, :cond_0

    .line 224
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    sget-object v1, Lil;->PROD:Lil;

    invoke-virtual {v0, v1}, Lmiq;->a(Lil;)V

    .line 227
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lim;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)Lir;
    .locals 3

    .prologue
    .line 163
    new-instance v1, Lir;

    invoke-direct {v1}, Lir;-><init>()V

    .line 164
    invoke-virtual {v1, p1}, Lir;->a(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v1, p2}, Lir;->a(Lim;)V

    .line 166
    if-eqz p3, :cond_0

    .line 168
    :try_start_0
    const-string v0, "v:"

    sget-object v2, Lgnt;->f:Ljava/lang/String;

    invoke-virtual {p3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_0
    invoke-virtual {v1, p3}, Lir;->a(Lorg/json/JSONObject;)V

    .line 176
    :goto_1
    invoke-virtual {v1, p4}, Lir;->a(Ljava/lang/Object;)V

    .line 177
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lir;->a(Ljava/lang/Boolean;)V

    .line 179
    return-object v1

    .line 169
    :catch_0
    move-exception v0

    .line 170
    const-string v2, "Error"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 174
    :cond_0
    invoke-direct {p0}, Lgnt;->c()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lir;->a(Lorg/json/JSONObject;)V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Lim;Lorg/json/JSONObject;Z)Lir;
    .locals 6

    .prologue
    .line 157
    invoke-direct {p0}, Lgnt;->c()Lorg/json/JSONObject;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    .line 158
    invoke-virtual/range {v0 .. v5}, Lgnt;->a(Ljava/lang/String;Lim;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)Lir;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Lim;Z)Lir;
    .locals 1

    .prologue
    .line 152
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 153
    invoke-virtual {p0, p1, p2, v0, p3}, Lgnt;->a(Ljava/lang/String;Lim;Lorg/json/JSONObject;Z)Lir;

    move-result-object v0

    return-object v0
.end method

.method public a()Lje;
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lgnt;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnt;->c:Lje;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lih;Z)V
    .locals 3

    .prologue
    .line 80
    iput-boolean p2, p0, Lgnt;->e:Z

    .line 82
    iget-object v0, p0, Lgnt;->b:Landroid/content/Context;

    iget-boolean v1, p0, Lgnt;->e:Z

    invoke-static {v0, v1}, Lmzy;->a(Landroid/content/Context;Z)Lmzy;

    move-result-object v0

    invoke-virtual {v0}, Lmzy;->a()Ljava/util/Properties;

    move-result-object v0

    .line 84
    new-instance v1, Lkks;

    invoke-direct {v1}, Lkks;-><init>()V

    .line 86
    if-eqz p2, :cond_0

    .line 87
    const-string v2, "labNoAuthKey"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkks;->c(Ljava/lang/String;)V

    .line 92
    :goto_0
    invoke-static {}, Lnad;->a()Lnad;

    move-result-object v2

    invoke-virtual {v2}, Lnad;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkks;->a(Ljava/lang/String;)V

    .line 93
    const-string v2, "system"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lkks;->b(Ljava/lang/String;)V

    .line 95
    invoke-direct {p0, v1}, Lgnt;->a(Lkks;)Lir;

    move-result-object v0

    .line 97
    :try_start_0
    iget-object v1, p0, Lgnt;->c:Lje;

    new-instance v2, Lgnu;

    invoke-direct {v2, p0, p2, p1}, Lgnu;-><init>(Lgnt;ZLih;)V

    invoke-virtual {v1, v0, v2}, Lje;->a(Liq;Lih;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_1
    return-void

    .line 89
    :cond_0
    const-string v2, "appKey"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkks;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 216
    iput-boolean p1, p0, Lgnt;->d:Z

    .line 217
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 212
    iget-boolean v0, p0, Lgnt;->d:Z

    return v0
.end method
