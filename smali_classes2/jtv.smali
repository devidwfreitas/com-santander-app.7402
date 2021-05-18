.class public Ljtv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljtt;


# instance fields
.field private a:Lmip;

.field private b:Landroid/app/Dialog;

.field private c:Ljsr;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lghu;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/contacorrente/domain/Conta;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/app/Activity;

.field private g:Ljtu;

.field private h:Ljwi;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljsr;Ljtu;)V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Ljtv;->f:Landroid/app/Activity;

    .line 59
    iput-object p2, p0, Ljtv;->c:Ljsr;

    .line 60
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Ljtv;->a:Lmip;

    .line 61
    iput-object p3, p0, Ljtv;->g:Ljtu;

    .line 62
    new-instance v0, Ljwj;

    iget-object v1, p0, Ljtv;->f:Landroid/app/Activity;

    invoke-direct {v0, v1}, Ljwj;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Ljtv;->h:Ljwi;

    .line 63
    return-void
.end method

.method static synthetic a(Ljtv;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Ljtv;->b:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic a(Ljtv;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljtv;->f()V

    return-void
.end method

.method static synthetic b(Ljtv;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Ljtv;->b:Landroid/app/Dialog;

    return-object v0
.end method

.method private b(Ljsr;)Liq;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 194
    invoke-static {}, Lmwz;->a()Ljava/lang/String;

    move-result-object v0

    .line 196
    new-instance v1, Ljta;

    invoke-direct {v1}, Ljta;-><init>()V

    .line 197
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 198
    invoke-virtual {v1, v0}, Ljta;->b(Ljava/lang/String;)V

    .line 200
    :cond_0
    invoke-virtual {p1}, Ljsr;->d()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 201
    iget-object v0, p0, Ljtv;->a:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->q()Lgvx;

    move-result-object v0

    invoke-virtual {p1}, Ljsr;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljsr;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lgvx;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljta;->a(Ljava/lang/Integer;)V

    .line 202
    invoke-virtual {v1, v4}, Ljta;->b(Ljava/lang/Integer;)V

    .line 208
    :goto_0
    const-string v0, "S"

    invoke-virtual {p1}, Ljsr;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 209
    invoke-virtual {p1}, Ljsr;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnak;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljta;->a(Ljava/lang/String;)V

    .line 214
    :goto_1
    invoke-virtual {p1}, Ljsr;->k()Ljava/lang/String;

    move-result-object v0

    const-string v2, "."

    const-string v3, ""

    .line 215
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ","

    const-string v3, "."

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 214
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljta;->a(Ljava/lang/Double;)V

    .line 216
    new-instance v0, Lmzk;

    iget-object v2, p0, Ljtv;->f:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lmzk;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lmzk;->a()Lmzl;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljta;->a(Lmzl;)V

    .line 217
    const-string v0, ""

    .line 220
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-static {}, Lmys;->b()Lejm;

    move-result-object v3

    invoke-virtual {v3, v1}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 221
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v1

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 227
    :goto_2
    invoke-static {}, Lgnz;->a()Lgnz;

    move-result-object v1

    const-string v2, "payment/v1/pay"

    sget-object v3, Lim;->POST:Lim;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v0, v4}, Lgnz;->a(Ljava/lang/String;Lim;Ljava/lang/String;Z)Liq;

    move-result-object v0

    return-object v0

    .line 204
    :cond_1
    invoke-virtual {v1, v4}, Ljta;->a(Ljava/lang/Integer;)V

    .line 205
    iget-object v0, p0, Ljtv;->a:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-virtual {p1}, Ljsr;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lght;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljta;->b(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 211
    :cond_2
    invoke-virtual {v1, v4}, Ljta;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 223
    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method private b(Ljss;)Ljss;
    .locals 3

    .prologue
    .line 143
    invoke-virtual {p1}, Ljss;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnak;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljss;->e(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p1}, Ljss;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnak;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljss;->c(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p1}, Ljss;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    const-string v2, "."

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljss;->b(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Ljtv;->a:Lmip;

    invoke-interface {v0}, Lmip;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljss;->setTokenSessao(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Ljtv;->a:Lmip;

    invoke-interface {v0}, Lmip;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljss;->setConnUuid(Ljava/lang/String;)V

    .line 149
    return-object p1
.end method

.method static synthetic c(Ljtv;)Ljtu;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Ljtv;->g:Ljtu;

    return-object v0
.end method

.method static synthetic d(Ljtv;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Ljtv;->f:Landroid/app/Activity;

    return-object v0
.end method

.method private d()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 76
    .line 77
    iget-object v0, p0, Ljtv;->a:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljtv;->a:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 78
    iget-object v0, p0, Ljtv;->a:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghu;

    invoke-virtual {v0}, Lghu;->A()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 79
    const/4 v0, 0x1

    .line 83
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 81
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Ljtv;->f:Landroid/app/Activity;

    invoke-static {v0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Ljtv;->b:Landroid/app/Dialog;

    .line 88
    iget-object v0, p0, Ljtv;->a:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->t()Lgke;

    move-result-object v0

    new-instance v1, Ljtw;

    invoke-direct {v1, p0}, Ljtw;-><init>(Ljtv;)V

    invoke-interface {v0, v1}, Lgke;->a(Lfoh;)V

    .line 98
    return-void
.end method

.method private f()V
    .locals 0

    .prologue
    .line 101
    invoke-virtual {p0}, Ljtv;->b()V

    .line 102
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljtv;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-direct {p0}, Ljtv;->e()V

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-direct {p0}, Ljtv;->f()V

    goto :goto_0
.end method

.method public a(Ljsr;)V
    .locals 3

    .prologue
    .line 154
    iget-object v0, p0, Ljtv;->h:Ljwi;

    new-instance v1, Ljty;

    invoke-direct {v1, p0, p1}, Ljty;-><init>(Ljtv;Ljsr;)V

    .line 189
    invoke-direct {p0, p1}, Ljtv;->b(Ljsr;)Liq;

    move-result-object v2

    .line 154
    invoke-interface {v0, v1, v2}, Ljwi;->b(Lgkw;Liq;)V

    .line 190
    return-void
.end method

.method public a(Ljss;)V
    .locals 3

    .prologue
    .line 116
    iget-object v0, p0, Ljtv;->h:Ljwi;

    new-instance v1, Ljtx;

    invoke-direct {v1, p0, p1}, Ljtx;-><init>(Ljtv;Ljss;)V

    .line 139
    invoke-direct {p0, p1}, Ljtv;->b(Ljss;)Ljss;

    move-result-object v2

    .line 116
    invoke-interface {v0, v1, v2}, Ljwi;->a(Lgkw;Ljss;)V

    .line 140
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Ljtv;->a:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->q()Lgvx;

    move-result-object v0

    invoke-interface {v0}, Lgvx;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljtv;->e:Ljava/util/List;

    .line 107
    iget-object v0, p0, Ljtv;->c:Ljsr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljtv;->c:Ljsr;

    invoke-virtual {v0}, Ljsr;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljtv;->c:Ljsr;

    .line 108
    invoke-virtual {v0}, Ljsr;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Ljtv;->a:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->f()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljtv;->d:Ljava/util/List;

    .line 111
    :cond_0
    iget-object v0, p0, Ljtv;->g:Ljtu;

    iget-object v1, p0, Ljtv;->e:Ljava/util/List;

    iget-object v2, p0, Ljtv;->d:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Ljtu;->a(Ljava/util/List;Ljava/util/List;)V

    .line 112
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    .line 233
    iget-object v0, p0, Ljtv;->a:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljtv;->a:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 234
    :cond_0
    new-instance v0, Lmzn;

    invoke-direct {v0}, Lmzn;-><init>()V

    .line 235
    const/4 v1, 0x2

    new-array v1, v1, [Lmzp;

    const/4 v2, 0x0

    sget-object v3, Lmzp;->RELOAD_CARTOES:Lmzp;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lmzp;->RELOAD_CARTOES_DESBLOQUEIO:Lmzp;

    aput-object v3, v1, v2

    new-instance v2, Ljtz;

    invoke-direct {v2, p0}, Ljtz;-><init>(Ljtv;)V

    invoke-virtual {v0, v1, v2}, Lmzn;->a([Lmzp;Lfoh;)V

    .line 244
    :goto_0
    return-void

    .line 242
    :cond_1
    invoke-virtual {p0}, Ljtv;->a()V

    goto :goto_0
.end method
