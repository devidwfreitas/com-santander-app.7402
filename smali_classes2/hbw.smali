.class Lhbw;
.super Lhbt;
.source "SourceFile"


# instance fields
.field private final b:Lmir;


# direct methods
.method constructor <init>(Lhbv;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lhbt;-><init>(Lhbv;)V

    .line 29
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    iput-object v0, p0, Lhbw;->b:Lmir;

    .line 30
    return-void
.end method

.method static synthetic a(Lhbw;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lhbw;->c(Landroid/content/Context;)V

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lhbw;->b:Lmir;

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 69
    :goto_0
    return-void

    .line 58
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Lmzp;

    const/4 v1, 0x0

    sget-object v2, Lmzp;->RELOAD_CARTOES:Lmzp;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lmzp;->RELOAD_CARTOES_DESBLOQUEIO:Lmzp;

    aput-object v2, v0, v1

    .line 61
    new-instance v1, Lmzn;

    invoke-direct {v1}, Lmzn;-><init>()V

    .line 62
    new-instance v2, Lhby;

    invoke-direct {v2, p0, p1}, Lhby;-><init>(Lhbw;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v0, v2}, Lmzn;->a([Lmzp;Lfoh;)V

    goto :goto_0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 125
    const-string v0, "DeepLink_CartoesParcelamentoFatura"

    const-string v1, "Elegivel"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method static synthetic b(Lhbw;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lhbw;->d(Landroid/content/Context;)V

    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 130
    const-string v0, "DeepLink_CartoesParcelamentoFatura"

    const-string v1, "NaoElegivel"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lhbw;->b:Lmir;

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-direct {p0}, Lhbw;->d()V

    .line 75
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-direct {v1, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 76
    new-instance v0, Lhbu;

    invoke-direct {v0, v1}, Lhbu;-><init>(Landroid/content/Intent;)V

    .line 81
    :goto_0
    iget-object v1, p0, Lhbw;->a:Lhbv;

    invoke-interface {v1, p1, v0}, Lhbv;->a(Landroid/content/Context;Lhbu;)V

    .line 82
    return-void

    .line 78
    :cond_0
    invoke-direct {p0}, Lhbw;->e()V

    .line 79
    new-instance v0, Lhbu;

    const v1, 0x7f090361

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lhbu;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic c(Lhbw;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lhbw;->e(Landroid/content/Context;)V

    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 135
    const-string v0, "DeepLink_CartoesConsultaFatura"

    const-string v1, "Elegivel"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method private d(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 85
    invoke-virtual {p0}, Lhbw;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p0, p1}, Lhbw;->b(Landroid/content/Context;)V

    .line 100
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lhbw;->b:Lmir;

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    invoke-direct {p0}, Lhbw;->f()V

    .line 93
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/santander/app/PagamentoFacturaCartoesActivity;

    invoke-direct {v1, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    new-instance v0, Lhbu;

    invoke-direct {v0, v1}, Lhbu;-><init>(Landroid/content/Intent;)V

    .line 99
    :goto_1
    iget-object v1, p0, Lhbw;->a:Lhbv;

    invoke-interface {v1, p1, v0}, Lhbv;->a(Landroid/content/Context;Lhbu;)V

    goto :goto_0

    .line 96
    :cond_1
    invoke-direct {p0}, Lhbw;->g()V

    .line 97
    new-instance v0, Lhbu;

    const v1, 0x7f090361

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lhbu;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private e()V
    .locals 2

    .prologue
    .line 140
    const-string v0, "DeepLink_CartoesConsultaFatura"

    const-string v1, "NaoElegivel"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method private e(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 103
    invoke-virtual {p0}, Lhbw;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p0, p1}, Lhbw;->b(Landroid/content/Context;)V

    .line 118
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lhbw;->b:Lmir;

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    invoke-direct {p0}, Lhbw;->b()V

    .line 111
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;

    invoke-direct {v1, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 112
    new-instance v0, Lhbu;

    invoke-direct {v0, v1}, Lhbu;-><init>(Landroid/content/Intent;)V

    .line 117
    :goto_1
    iget-object v1, p0, Lhbw;->a:Lhbv;

    invoke-interface {v1, p1, v0}, Lhbv;->a(Landroid/content/Context;Lhbu;)V

    goto :goto_0

    .line 114
    :cond_1
    invoke-direct {p0}, Lhbw;->c()V

    .line 115
    new-instance v0, Lhbu;

    const v1, 0x7f090361

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lhbu;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private f()V
    .locals 2

    .prologue
    .line 145
    const-string v0, "DeepLink_CartoesPagamentoFatura"

    const-string v1, "Elegivel"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 150
    const-string v0, "DeepLink_CartoesPagamentoFatura"

    const-string v1, "NaoElegivel"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lhbp;)V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lhbx;

    invoke-direct {v0, p0, p2, p1}, Lhbx;-><init>(Lhbw;Lhbp;Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lhbw;->a(Ljava/lang/Runnable;)V

    .line 52
    return-void
.end method
