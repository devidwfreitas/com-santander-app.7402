.class public Lhnc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhmy;


# static fields
.field private static final a:Ljava/lang/String; = "CancelamentoRepository"


# instance fields
.field private b:Lmwy;

.field private c:Lhya;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    iput-object v0, p0, Lhnc;->b:Lmwy;

    .line 51
    invoke-static {}, Lhyb;->j()Lhya;

    move-result-object v0

    iput-object v0, p0, Lhnc;->c:Lhya;

    .line 52
    return-void
.end method

.method static synthetic a(Lhnc;)Lmwy;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lhnc;->b:Lmwy;

    return-object v0
.end method

.method private a(Lhxl;)Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 204
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 205
    invoke-interface {p1}, Lhxl;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 206
    const-string v1, "proposalCode"

    invoke-interface {p1}, Lhxl;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 210
    :goto_0
    const-string v1, "formalizationStatus"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 211
    invoke-interface {p1}, Lhxl;->A()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 212
    const-string v1, "onLineAverbationCode"

    invoke-interface {p1}, Lhxl;->A()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 214
    :cond_0
    return-object v0

    .line 208
    :cond_1
    const-string v1, "contractCode"

    invoke-interface {p1}, Lhxl;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0
.end method

.method private a(Lhmz;)V
    .locals 3

    .prologue
    .line 218
    const/4 v0, 0x2

    new-array v0, v0, [Lmzp;

    const/4 v1, 0x0

    sget-object v2, Lmzp;->RELOAD_CONTA:Lmzp;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lmzp;->RELOAD_EMPRESTIMOS:Lmzp;

    aput-object v2, v0, v1

    .line 221
    new-instance v1, Lmzn;

    invoke-direct {v1}, Lmzn;-><init>()V

    .line 222
    new-instance v2, Lhni;

    invoke-direct {v2, p0, p1}, Lhni;-><init>(Lhnc;Lhmz;)V

    invoke-virtual {v1, v0, v2}, Lmzn;->a([Lmzp;Lfoh;)V

    .line 228
    return-void
.end method

.method static synthetic a(Lhnc;Lhmz;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lhnc;->a(Lhmz;)V

    return-void
.end method

.method static synthetic b(Lhnc;)Lhya;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lhnc;->c:Lhya;

    return-object v0
.end method


# virtual methods
.method public a(Lhna;)V
    .locals 4

    .prologue
    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    new-instance v1, Lhlc;

    invoke-direct {v1}, Lhlc;-><init>()V

    .line 58
    new-instance v2, Lhmw;

    new-instance v3, Lhnd;

    invoke-direct {v3, p0, v0, p1}, Lhnd;-><init>(Lhnc;Ljava/util/List;Lhna;)V

    invoke-direct {v2, v3}, Lhmw;-><init>(Lgkv;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lhlc;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    .line 71
    invoke-virtual {v2, v0}, Lhmw;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 72
    return-void
.end method

.method public a(Lhxl;Lhmz;)V
    .locals 4

    .prologue
    .line 133
    new-instance v0, Lhkz;

    invoke-direct {v0, p1}, Lhkz;-><init>(Lhxl;)V

    .line 134
    new-instance v1, Lhmv;

    new-instance v2, Lhng;

    invoke-direct {v2, p0, p1, p2}, Lhng;-><init>(Lhnc;Lhxl;Lhmz;)V

    invoke-direct {v1, v2}, Lhmv;-><init>(Lgkv;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lhkz;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 150
    invoke-virtual {v1, v2}, Lhmv;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 151
    return-void
.end method

.method public a(Ljava/lang/String;Lhnb;)V
    .locals 4

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "payroll-loans/v1/contract-terms?contractType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v1

    sget-object v2, Lim;->GET:Lim;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lgnp;->a(Ljava/lang/String;Lim;Z)Lir;

    move-result-object v0

    .line 113
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v1

    invoke-virtual {v1}, Lgnp;->b()Lie;

    move-result-object v1

    new-instance v2, Lhnf;

    invoke-direct {v2, p0, p2}, Lhnf;-><init>(Lhnc;Lhnb;)V

    invoke-virtual {v1, v0, v2}, Lie;->a(Lir;Lih;)V

    .line 129
    return-void
.end method

.method public b(Lhna;)V
    .locals 5

    .prologue
    .line 76
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 77
    const-string v0, "payroll-loans/v1/?agreementCode=0&propostalCode=0&operationIdentifier=0"

    .line 78
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    sget-object v3, Lim;->GET:Lim;

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Lgnp;->a(Ljava/lang/String;Lim;Z)Lir;

    move-result-object v0

    .line 80
    :try_start_0
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    new-instance v3, Lhne;

    invoke-direct {v3, p0, v1, p1}, Lhne;-><init>(Lhnc;Ljava/util/List;Lhna;)V

    invoke-virtual {v2, v0, v3}, Lie;->a(Lir;Lih;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 104
    const-string v2, "CancelamentoRepository"

    const-string v3, "consultarConsig"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    const/4 v0, 0x0

    invoke-interface {p1, v0, v1}, Lhna;->a(ZLjava/util/List;)V

    goto :goto_0
.end method

.method public b(Lhxl;Lhmz;)V
    .locals 6

    .prologue
    .line 155
    const-string v1, "payroll-loans/v1/cancel"

    .line 159
    :try_start_0
    invoke-direct {p0, p1}, Lhnc;->a(Lhxl;)Lorg/json/JSONObject;

    move-result-object v4

    .line 160
    iget-object v0, p0, Lhnc;->b:Lmwy;

    invoke-virtual {v0}, Lmwy;->m()Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 165
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v0

    sget-object v2, Lim;->PUT:Lim;

    const/4 v5, 0x1

    .line 166
    invoke-virtual/range {v0 .. v5}, Lgnp;->a(Ljava/lang/String;Lim;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)Lir;

    move-result-object v0

    .line 168
    :try_start_1
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v1

    invoke-virtual {v1}, Lgnp;->b()Lie;

    move-result-object v1

    new-instance v2, Lhnh;

    invoke-direct {v2, p0, p1, p2}, Lhnh;-><init>(Lhnc;Lhxl;Lhmz;)V

    invoke-virtual {v1, v0, v2}, Lie;->a(Lir;Lih;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 201
    :goto_0
    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 162
    invoke-interface {p2}, Lhmz;->b()V

    goto :goto_0

    .line 196
    :catch_1
    move-exception v0

    .line 197
    iget-object v1, p0, Lhnc;->b:Lmwy;

    invoke-virtual {v1}, Lmwy;->l()V

    .line 198
    const-string v1, "CancelamentoRepository"

    const-string v2, "cancelarConsig"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    invoke-interface {p2}, Lhmz;->b()V

    goto :goto_0
.end method
