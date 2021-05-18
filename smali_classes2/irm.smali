.class public Lirm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lirr;


# static fields
.field private static final d:Ljava/lang/String; = "HomeLogadaRepository"


# instance fields
.field private a:Liru;

.field private b:Lmip;

.field private c:Lgwa;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Liru;

    invoke-direct {v0}, Liru;-><init>()V

    iput-object v0, p0, Lirm;->a:Liru;

    .line 46
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Lirm;->b:Lmip;

    .line 47
    new-instance v0, Lgwe;

    invoke-direct {v0}, Lgwe;-><init>()V

    iput-object v0, p0, Lirm;->c:Lgwa;

    .line 48
    return-void
.end method

.method static synthetic a(Lirm;)Liru;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lirm;->a:Liru;

    return-object v0
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 2
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 101
    iget-object v0, p0, Lirm;->c:Lgwa;

    invoke-interface {v0}, Lgwa;->a()Z

    move-result v0

    .line 102
    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lirm;->a:Liru;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Liru;->e(Z)V

    .line 104
    iget-object v0, p0, Lirm;->c:Lgwa;

    new-instance v1, Liro;

    invoke-direct {v1, p0, p1}, Liro;-><init>(Lirm;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Lgwa;->a(Lgwd;)V

    .line 124
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lirm;->a:Liru;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Liru;->e(Z)V

    .line 122
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private a([Lmzp;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 66
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_6

    aget-object v2, p1, v0

    .line 68
    iget-object v3, p0, Lirm;->a:Liru;

    invoke-virtual {v3, v4}, Liru;->e(Z)V

    .line 70
    sget-object v3, Lmzp;->RELOAD_CONTA:Lmzp;

    invoke-virtual {v2, v3}, Lmzp;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 71
    iget-object v3, p0, Lirm;->a:Liru;

    invoke-virtual {v3, v4}, Liru;->i(Z)V

    .line 72
    iget-object v3, p0, Lirm;->a:Liru;

    invoke-virtual {v3, v4}, Liru;->g(Z)V

    .line 73
    iget-object v3, p0, Lirm;->a:Liru;

    invoke-virtual {v3, v4}, Liru;->h(Z)V

    .line 76
    :cond_0
    sget-object v3, Lmzp;->RELOAD_CARTOES:Lmzp;

    invoke-virtual {v2, v3}, Lmzp;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 77
    iget-object v3, p0, Lirm;->a:Liru;

    invoke-virtual {v3, v4}, Liru;->c(Z)V

    .line 80
    :cond_1
    sget-object v3, Lmzp;->RELOAD_CARTOES_DESBLOQUEIO:Lmzp;

    invoke-virtual {v2, v3}, Lmzp;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 81
    iget-object v3, p0, Lirm;->a:Liru;

    invoke-virtual {v3, v4}, Liru;->d(Z)V

    .line 84
    :cond_2
    sget-object v3, Lmzp;->RELOAD_EMPRESTIMOS:Lmzp;

    invoke-virtual {v2, v3}, Lmzp;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 85
    invoke-static {}, Lhyb;->j()Lhya;

    move-result-object v3

    invoke-interface {v3}, Lhya;->h()V

    .line 88
    :cond_3
    sget-object v3, Lmzp;->RELOAD_INVESTIMENTO:Lmzp;

    invoke-virtual {v2, v3}, Lmzp;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 89
    iget-object v3, p0, Lirm;->a:Liru;

    invoke-virtual {v3, v4}, Liru;->i(Z)V

    .line 90
    iget-object v3, p0, Lirm;->a:Liru;

    invoke-virtual {v3, v4}, Liru;->g(Z)V

    .line 93
    :cond_4
    sget-object v3, Lmzp;->RELOAD_POUPANCA:Lmzp;

    invoke-virtual {v2, v3}, Lmzp;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 94
    iget-object v2, p0, Lirm;->a:Liru;

    invoke-virtual {v2, v4}, Liru;->h(Z)V

    .line 96
    :cond_5
    invoke-static {}, Lhyb;->j()Lhya;

    move-result-object v2

    invoke-interface {v2}, Lhya;->h()V

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_6
    return-void
.end method


# virtual methods
.method public a(ILirt;)V
    .locals 5

    .prologue
    .line 140
    :try_start_0
    const-string v0, "{ \"account\": { \"checkingAccountIndex\":\"%d\" } }"

    .line 141
    new-instance v1, Lorg/json/JSONObject;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v0

    .line 144
    const-string v2, "loan/v1/check-elegibility"

    sget-object v3, Lim;->POST:Lim;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v1, v4}, Lgnp;->a(Ljava/lang/String;Lim;Lorg/json/JSONObject;Z)Lir;

    move-result-object v0

    .line 145
    invoke-static {}, Lgnz;->a()Lgnz;

    move-result-object v1

    invoke-virtual {v1}, Lgnz;->d()Lje;

    move-result-object v1

    new-instance v2, Lirp;

    invoke-direct {v2, p0, p2}, Lirp;-><init>(Lirm;Lirt;)V

    invoke-virtual {v1, v0, v2}, Lje;->a(Liq;Lih;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 163
    const-string v1, "HomeLogadaRepository"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Liph;)V
    .locals 2

    .prologue
    .line 128
    if-eqz p1, :cond_0

    .line 129
    iget-object v0, p0, Lirm;->b:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmir;->a(Liph;)V

    .line 134
    :goto_0
    return-void

    .line 131
    :cond_0
    const-string v0, "HomeLogadaRepository"

    const-string v1, "Model null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const-string v0, "Outros_Reload_Home_Tratamento_Excecao"

    const-string v1, "Model null"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a([Lmzp;Lfoh;)V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lirm;->a([Lmzp;)V

    .line 54
    iget-object v0, p0, Lirm;->a:Liru;

    iget-object v1, p0, Lirm;->b:Lmip;

    invoke-interface {v1}, Lmip;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Liru;->setTokenSessao(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lirm;->a:Liru;

    iget-object v1, p0, Lirm;->b:Lmip;

    invoke-interface {v1}, Lmip;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Liru;->setConnUuid(Ljava/lang/String;)V

    .line 57
    new-instance v0, Lirn;

    invoke-direct {v0, p0, p2}, Lirn;-><init>(Lirm;Lfoh;)V

    invoke-direct {p0, v0}, Lirm;->a(Ljava/lang/Runnable;)V

    .line 63
    return-void
.end method

.method public b(ILirt;)V
    .locals 5

    .prologue
    .line 171
    :try_start_0
    const-string v0, "{ \"account\": { \"checkingAccountIndex\":\"%d\" } }"

    .line 172
    new-instance v1, Lorg/json/JSONObject;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 174
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v0

    .line 175
    const-string v2, "loan/v1/check-elegibility-ir"

    sget-object v3, Lim;->POST:Lim;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v1, v4}, Lgnp;->a(Ljava/lang/String;Lim;Lorg/json/JSONObject;Z)Lir;

    move-result-object v0

    .line 176
    invoke-static {}, Lgnz;->a()Lgnz;

    move-result-object v1

    invoke-virtual {v1}, Lgnz;->d()Lje;

    move-result-object v1

    new-instance v2, Lirq;

    invoke-direct {v2, p0, p2}, Lirq;-><init>(Lirm;Lirt;)V

    invoke-virtual {v1, v0, v2}, Lje;->a(Liq;Lih;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :goto_0
    return-void

    .line 193
    :catch_0
    move-exception v0

    .line 194
    const-string v1, "HomeLogadaRepository"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
