.class public Lmpv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmmp;
.implements Lmpu;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lmnw;

.field private c:Lmmo;


# direct methods
.method public constructor <init>(Lmnw;)V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p1

    .line 36
    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lmpv;->a:Landroid/app/Activity;

    .line 37
    iput-object p1, p0, Lmpv;->b:Lmnw;

    .line 39
    new-instance v0, Lmmq;

    iget-object v1, p0, Lmpv;->a:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lmmq;-><init>(Landroid/app/Activity;Lmmp;)V

    iput-object v0, p0, Lmpv;->c:Lmmo;

    .line 40
    return-void
.end method

.method private a(Lmlb;Z)Lgvb;
    .locals 3

    .prologue
    .line 81
    new-instance v0, Lgvb;

    invoke-direct {v0}, Lgvb;-><init>()V

    .line 82
    if-eqz p2, :cond_0

    .line 83
    const-string v1, ""

    invoke-virtual {v0, v1}, Lgvb;->f(Ljava/lang/String;)V

    .line 84
    const-string v1, ""

    invoke-virtual {v0, v1}, Lgvb;->e(Ljava/lang/String;)V

    .line 90
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgvb;->d(Z)V

    .line 91
    invoke-virtual {v0, p2}, Lgvb;->e(Z)V

    .line 93
    const-string v1, "Transfer\u00eancia programada"

    invoke-virtual {v0, v1}, Lgvb;->c(Ljava/lang/String;)V

    .line 94
    if-nez p2, :cond_1

    .line 95
    const-string v1, "Transfer\u00eancia programada exclu\u00edda com sucesso"

    invoke-virtual {v0, v1}, Lgvb;->d(Ljava/lang/String;)V

    .line 101
    :goto_1
    const-string v1, "Transfer\u00eancia programada - Exclus\u00e3o"

    invoke-virtual {v0, v1}, Lgvb;->g(Ljava/lang/String;)V

    .line 105
    invoke-direct {p0, v0, p2}, Lmpv;->a(Lgvb;Z)V

    .line 107
    return-object v0

    .line 86
    :cond_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "dd/MM/yyyy HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgvb;->f(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1}, Lmlb;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgvb;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :cond_1
    const-string v1, "Transfer\u00eancia programada"

    invoke-virtual {v0, v1}, Lgvb;->d(Ljava/lang/String;)V

    .line 98
    const-string v1, "Erro ao excluir transfer\u00eancia programada"

    invoke-virtual {v0, v1}, Lgvb;->b(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private a(Lgvb;Z)V
    .locals 8

    .prologue
    const/4 v6, 0x1

    .line 112
    iget-object v0, p0, Lmpv;->b:Lmnw;

    invoke-interface {v0}, Lmnw;->c()Lmkz;

    move-result-object v0

    .line 114
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 116
    new-instance v2, Lgky;

    const-string v3, "Conta de Origem: "

    invoke-virtual {v0}, Lmkz;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lmkz;->e()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lnaq;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    new-instance v2, Lgky;

    const-string v3, "Nome: "

    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v4

    invoke-virtual {v4}, Lmiq;->f()Lmir;

    move-result-object v4

    invoke-virtual {v4}, Lmir;->j()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v6}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    new-instance v2, Lgky;

    const-string v3, "Conta de Destino: "

    invoke-virtual {v0}, Lmkz;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lmkz;->d()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lnaq;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    new-instance v2, Lgky;

    const-string v3, "Nome: "

    invoke-virtual {v0}, Lmkz;->h()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v6}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance v2, Lgky;

    const-string v3, "Banco: "

    invoke-virtual {v0}, Lmkz;->c()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    new-instance v2, Lgky;

    const-string v3, "Tipo de Conta: "

    invoke-virtual {v0}, Lmkz;->n()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    new-instance v2, Lgky;

    const-string v3, "ISPB: "

    invoke-virtual {v0}, Lmkz;->j()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    new-instance v2, Lgky;

    const-string v3, "Finalidade: "

    invoke-virtual {v0}, Lmkz;->i()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v6}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    new-instance v2, Lgky;

    const-string v3, "Tipo de Transfer\u00eancia: "

    invoke-virtual {v0}, Lmkz;->o()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v6}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    new-instance v2, Lgky;

    const-string v3, "Data de In\u00edcio: "

    invoke-virtual {v0}, Lmkz;->g()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    new-instance v2, Lgky;

    const-string v3, "Periodicidade: "

    invoke-virtual {v0}, Lmkz;->l()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    new-instance v2, Lgky;

    const-string v3, "N\u00ba de Vezes: "

    invoke-virtual {v0}, Lmkz;->m()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    new-instance v2, Lgky;

    const-string v3, "Valor: "

    invoke-static {}, Ljava/text/NumberFormat;->getCurrencyInstance()Ljava/text/NumberFormat;

    move-result-object v4

    invoke-virtual {v0}, Lmkz;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    invoke-virtual {p1, v1}, Lgvb;->b(Ljava/util/ArrayList;)V

    .line 132
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 75
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lmpv;->a(Lmlb;Z)Lgvb;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lmpv;->b:Lmnw;

    invoke-interface {v1, v0}, Lmnw;->a(Lgvb;)V

    .line 77
    return-void
.end method

.method public a(Lcom/santander/app/contacorrente/domain/Conta;Lmlr;)V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lmpv;->c:Lmmo;

    invoke-interface {v0, p1, p2}, Lmmo;->a(Lcom/santander/app/contacorrente/domain/Conta;Lmlr;)V

    .line 50
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public a(Lmkz;)V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lmpv;->b:Lmnw;

    invoke-interface {v0, p1}, Lmnw;->a(Lmkz;)V

    .line 57
    return-void
.end method

.method public a(Lmlb;)V
    .locals 2

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmpv;->a(Lmlb;Z)Lgvb;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lmpv;->b:Lmnw;

    invoke-interface {v1, v0}, Lmnw;->a(Lgvb;)V

    .line 70
    return-void
.end method

.method public a(Lmlr;)V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lmpv;->c:Lmmo;

    invoke-interface {v0, p1}, Lmmo;->a(Lmlr;)V

    .line 45
    return-void
.end method
