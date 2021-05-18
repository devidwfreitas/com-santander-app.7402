.class public Lils;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lils;->a:Landroid/app/Activity;

    .line 40
    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lils;->b:Landroid/content/Context;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lils;->b:Landroid/content/Context;

    .line 45
    return-void
.end method


# virtual methods
.method public a(Lgkw;Lilo;)V
    .locals 3

    .prologue
    .line 48
    new-instance v0, Lilu;

    new-instance v1, Lilt;

    invoke-direct {v1, p0, p1}, Lilt;-><init>(Lils;Lgkw;)V

    iget-object v2, p0, Lils;->a:Landroid/app/Activity;

    invoke-direct {v0, v1, v2}, Lilu;-><init>(Lgkv;Landroid/app/Activity;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lilo;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 53
    invoke-virtual {v0, v1}, Lilu;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 54
    return-void
.end method

.method public a(Lilo;Lih;)V
    .locals 10

    .prologue
    const/4 v5, 0x1

    .line 58
    iget-object v0, p0, Lils;->b:Landroid/content/Context;

    invoke-static {v0, v5}, Lgnt;->a(Landroid/content/Context;Z)Lgnt;

    move-result-object v0

    .line 60
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 62
    :try_start_0
    const-string v1, "X-Application-Key"

    iget-object v2, p0, Lils;->b:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lmzy;->a(Landroid/content/Context;Z)Lmzy;

    move-result-object v2

    invoke-virtual {v2}, Lmzy;->a()Ljava/util/Properties;

    move-result-object v2

    const-string v4, "labNoAuthKey"

    invoke-virtual {v2, v4}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    const-string v1, "Content-Type"

    const-string v2, "application/json"

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 70
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 71
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 72
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 75
    :try_start_1
    const-string v7, "documentNumber"

    invoke-static {}, Lnad;->a()Lnad;

    move-result-object v8

    invoke-virtual {p1}, Lilo;->j()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lnad;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    const-string v7, "latitude"

    invoke-static {}, Lnad;->a()Lnad;

    move-result-object v8

    invoke-virtual {p1}, Lilo;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lnad;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    const-string v7, "longitude"

    invoke-static {}, Lnad;->a()Lnad;

    move-result-object v8

    invoke-virtual {p1}, Lilo;->d()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lnad;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    const-string v7, "code"

    invoke-static {}, Lnad;->a()Lnad;

    move-result-object v8

    invoke-virtual {p1}, Lilo;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lnad;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    const-string v7, "name"

    invoke-static {}, Lnad;->a()Lnad;

    move-result-object v8

    invoke-virtual {p1}, Lilo;->f()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lnad;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    const-string v7, "model"

    invoke-static {}, Lnad;->a()Lnad;

    move-result-object v8

    invoke-virtual {p1}, Lilo;->e()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lnad;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    const-string v7, "ticket"

    invoke-virtual {p1}, Lilo;->k()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    const-string v7, "customer"

    invoke-virtual {v4, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    const-string v1, "location"

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    const-string v1, "device"

    invoke-virtual {v4, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    const-string v1, "simCode"

    invoke-static {}, Lnad;->a()Lnad;

    move-result-object v2

    invoke-virtual {p1}, Lilo;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lnad;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    const-string v1, "externalIp"

    invoke-static {}, Lnad;->a()Lnad;

    move-result-object v2

    invoke-virtual {p1}, Lilo;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lnad;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    const-string v1, "internalIp"

    invoke-static {}, Lnad;->a()Lnad;

    move-result-object v2

    invoke-virtual {p1}, Lilo;->h()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lnad;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    const-string v1, "carrier"

    invoke-static {}, Lnad;->a()Lnad;

    move-result-object v2

    invoke-virtual {p1}, Lilo;->i()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lnad;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 96
    :goto_1
    sget-object v1, Lilr;->GEO_LOCALTION:Lilr;

    invoke-virtual {v1}, Lilr;->getEndpoint()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lim;->POST:Lim;

    invoke-virtual/range {v0 .. v5}, Lgnt;->a(Ljava/lang/String;Lim;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)Lir;

    move-result-object v1

    .line 98
    invoke-virtual {v0}, Lgnt;->a()Lje;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 101
    :try_start_2
    invoke-virtual {v0}, Lgnt;->a()Lje;

    move-result-object v0

    invoke-virtual {v0, v1, p2}, Lje;->a(Liq;Lih;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 107
    :cond_0
    :goto_2
    return-void

    .line 65
    :catch_0
    move-exception v1

    .line 66
    const-string v2, "Error"

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 91
    :catch_1
    move-exception v1

    .line 92
    const-string v2, "enviarGeolocalizacao"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const-string v2, "Outros_Geolocalizacao_TentouEnviarGeo_Erro"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 102
    :catch_2
    move-exception v0

    .line 103
    const-string v1, "enviarGeolocalizacao"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const-string v1, "Outros_Geolocalizacao_TentouEnviarGeo_Erro"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
