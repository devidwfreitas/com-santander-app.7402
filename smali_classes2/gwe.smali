.class public Lgwe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgwa;


# static fields
.field private static final a:Ljava/lang/String; = "SaldoRepository"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method static synthetic a(Lgwe;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lgwe;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lgwe;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lgwe;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 139
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "balance/v1/blocked-values?checkingAccountIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lim;->GET:Lim;

    invoke-virtual {v0, v1, v2, v3}, Lgnp;->a(Ljava/lang/String;Lim;Z)Lir;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Lir;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lgwe;->a(Ljava/lang/String;Z)V

    .line 142
    :try_start_0
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v1

    invoke-virtual {v1}, Lgnp;->b()Lie;

    move-result-object v1

    new-instance v2, Lgwi;

    invoke-direct {v2, p0, p1}, Lgwi;-><init>(Lgwe;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lie;->a(Lir;Lih;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    const-string v1, "SaldoRepository"

    const-string v2, "consultarValoresBloqueados"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 229
    if-eqz p2, :cond_0

    .line 230
    invoke-static {}, Lmyu;->a()Lmyu;

    move-result-object v0

    const-string v1, "SaldoRepository"

    const-string v2, ""

    invoke-virtual {v0, p1, v1, v2}, Lmyu;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    :goto_0
    return-void

    .line 232
    :cond_0
    invoke-static {}, Lmyu;->a()Lmyu;

    move-result-object v0

    const-string v1, "SaldoRepository"

    invoke-virtual {v0, p1, v1}, Lmyu;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 216
    :try_start_0
    new-instance v2, Lejm;

    invoke-direct {v2}, Lejm;-><init>()V

    .line 217
    const-class v0, Ljava/util/Map;

    invoke-virtual {v2, p1, v0}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 218
    const-class v1, Ljava/util/Map;

    invoke-virtual {v2, p2, v1}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 219
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 220
    invoke-interface {v3, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 221
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {v2, v3}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :goto_0
    return-object v0

    .line 222
    :catch_0
    move-exception v0

    .line 223
    const-string v1, "Error"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/santander/app/contacorrente/domain/Conta;Lgwc;)V
    .locals 5

    .prologue
    .line 98
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 100
    :try_start_0
    const-string v1, "checkingAccountIndex"

    invoke-virtual {p1}, Lcom/santander/app/contacorrente/domain/Conta;->getIndiceAgenciaConta()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v1

    const-string v2, "balance/v1/detailed"

    sget-object v3, Lim;->POST:Lim;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v0, v4}, Lgnp;->a(Ljava/lang/String;Lim;Lorg/json/JSONObject;Z)Lir;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Lir;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lgwe;->a(Ljava/lang/String;Z)V

    .line 103
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v1

    invoke-virtual {v1}, Lgnp;->b()Lie;

    move-result-object v1

    new-instance v2, Lgwg;

    invoke-direct {v2, p0, p2}, Lgwg;-><init>(Lgwe;Lgwc;)V

    invoke-virtual {v1, v0, v2}, Lie;->a(Lir;Lih;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 119
    const-string v1, "SaldoRepository"

    const-string v2, "consultarSaldoDetalhado"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lgwc;->b(Lcom/santander/app/contacorrente/domain/SaldoDetalhado;)V

    goto :goto_0
.end method

.method public a(Lcom/santander/app/contacorrente/domain/Conta;Ljava/lang/String;Ljava/lang/String;Lcom/santander/app/contacorrente/domain/ExtratoContract;Lgwb;)V
    .locals 5

    .prologue
    .line 180
    :try_start_0
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v0

    .line 182
    new-instance v1, Lcom/santander/app/contacorrente/domain/ConsultarExtratoHubRequest;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/santander/app/contacorrente/domain/ConsultarExtratoHubRequest;-><init>(Lcom/santander/app/contacorrente/domain/Conta;Ljava/lang/String;Ljava/lang/String;Lcom/santander/app/contacorrente/domain/ExtratoContract;)V

    .line 184
    invoke-virtual {v1}, Lcom/santander/app/contacorrente/domain/ConsultarExtratoHubRequest;->toJson()Lorg/json/JSONObject;

    move-result-object v1

    .line 186
    const-string v2, "statement/v1/statements"

    sget-object v3, Lim;->POST:Lim;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v1, v4}, Lgnp;->a(Ljava/lang/String;Lim;Lorg/json/JSONObject;Z)Lir;

    move-result-object v1

    .line 191
    invoke-virtual {v1}, Lir;->e()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lgwe;->a(Ljava/lang/String;Z)V

    .line 192
    invoke-virtual {v0}, Lgnp;->b()Lie;

    move-result-object v0

    new-instance v2, Lgwk;

    invoke-direct {v2, p0, p5}, Lgwk;-><init>(Lgwe;Lgwb;)V

    invoke-virtual {v0, v1, v2}, Lie;->a(Lir;Lih;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :goto_0
    return-void

    .line 207
    :catch_0
    move-exception v0

    .line 208
    const-string v1, "SaldoRepository"

    const-string v2, "consultarExtratoHub"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 209
    invoke-interface {p5}, Lgwb;->a()V

    goto :goto_0
.end method

.method public a(Lcom/santander/app/contacorrente/domain/Conta;Ljava/lang/String;Ljava/lang/String;Lgwb;)V
    .locals 4

    .prologue
    .line 164
    new-instance v0, Lcom/santander/app/contacorrente/domain/ConsultarExtratoRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/santander/app/contacorrente/domain/ConsultarExtratoRequest;-><init>(Lcom/santander/app/contacorrente/domain/Conta;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    new-instance v1, Lgwl;

    new-instance v2, Lgwj;

    invoke-direct {v2, p0, p4}, Lgwj;-><init>(Lgwe;Lgwb;)V

    invoke-direct {v1, v2}, Lgwl;-><init>(Lgkv;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/santander/app/contacorrente/domain/ConsultarExtratoRequest;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 174
    invoke-virtual {v1, v2}, Lgwl;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 175
    return-void
.end method

.method public a(Lgwd;)V
    .locals 5

    .prologue
    .line 56
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v0

    .line 58
    :try_start_0
    const-string v1, "balance/v1/balances"

    sget-object v2, Lim;->POST:Lim;

    .line 59
    invoke-static {}, Lipj;->a()Lorg/json/JSONObject;

    move-result-object v3

    const/4 v4, 0x1

    .line 58
    invoke-virtual {v0, v1, v2, v3, v4}, Lgnp;->a(Ljava/lang/String;Lim;Lorg/json/JSONObject;Z)Lir;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lir;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lgwe;->a(Ljava/lang/String;Z)V

    .line 62
    invoke-static {}, Lgnz;->a()Lgnz;

    move-result-object v1

    invoke-virtual {v1}, Lgnz;->d()Lje;

    move-result-object v1

    new-instance v2, Lgwf;

    invoke-direct {v2, p0, p1}, Lgwf;-><init>(Lgwe;Lgwd;)V

    invoke-virtual {v1, v0, v2}, Lje;->a(Liq;Lih;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    const-string v1, "SaldoRepository"

    const-string v2, "consultarSaldoHub"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lgwd;->a(Lis;)V

    goto :goto_0
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 91
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->C()Lipi;

    move-result-object v0

    .line 92
    const-string v1, "00000073"

    invoke-interface {v0, v1}, Lipi;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "00000085"

    .line 93
    invoke-interface {v0, v1}, Lipi;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 92
    :goto_0
    return v0

    .line 93
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcom/santander/app/contacorrente/domain/Conta;Lgwc;)V
    .locals 2

    .prologue
    .line 126
    new-instance v0, Lgwm;

    new-instance v1, Lgwh;

    invoke-direct {v1, p0, p2}, Lgwh;-><init>(Lgwe;Lgwc;)V

    invoke-direct {v0, p1, v1}, Lgwm;-><init>(Lcom/santander/app/contacorrente/domain/Conta;Lgkv;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 135
    invoke-virtual {v0, v1}, Lgwm;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 136
    return-void
.end method
