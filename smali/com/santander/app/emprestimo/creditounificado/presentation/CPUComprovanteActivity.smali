.class public Lcom/santander/app/emprestimo/creditounificado/presentation/CPUComprovanteActivity;
.super Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;
.source "SourceFile"


# static fields
.field private static final g:Ljava/lang/String; = "EXTRA_CONTRATACAO"

.field private static final w:Ljava/lang/String; = "EXTRA_SUCCESS"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;-><init>()V

    return-void
.end method

.method private a(Lhxn;)Lgvb;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 67
    new-instance v1, Lgvb;

    invoke-direct {v1}, Lgvb;-><init>()V

    .line 69
    invoke-direct {p0, p1}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUComprovanteActivity;->c(Lhxn;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgvb;->b(Ljava/util/ArrayList;)V

    .line 71
    const-string v0, "Comprovante"

    invoke-virtual {v1, v0}, Lgvb;->c(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v1, v4}, Lgvb;->d(Z)V

    .line 73
    invoke-interface {p1}, Lhxn;->getDataHoraTransacao()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgvb;->f(Ljava/lang/String;)V

    .line 74
    invoke-interface {p1}, Lhxn;->getAutenticacao()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgvb;->e(Ljava/lang/String;)V

    .line 75
    const-string v0, "Renegocia\u00e7\u00e3o de D\u00edvidas contratada com sucesso"

    invoke-virtual {v1, v0}, Lgvb;->d(Ljava/lang/String;)V

    .line 76
    const-string v2, "Renegocia\u00e7\u00e3o de D\u00edvidas \u2013 %s %s"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    .line 77
    invoke-interface {p1}, Lhxn;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f090ab6

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUComprovanteActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v3, v4

    const/4 v0, 0x1

    .line 78
    invoke-interface {p1}, Lhxn;->getDataHoraTransacao()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 76
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgvb;->g(Ljava/lang/String;)V

    .line 80
    return-object v1

    .line 77
    :cond_0
    const v0, 0x7f090aa1

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUComprovanteActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lhxn;Z)V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUComprovanteActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 32
    const-string v1, "EXTRA_CONTRATACAO"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 33
    const-string v1, "EXTRA_SUCCESS"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 34
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 35
    return-void
.end method

.method private b(Lhxn;)Lgvb;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 84
    new-instance v1, Lgvb;

    invoke-direct {v1}, Lgvb;-><init>()V

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    new-instance v2, Lgky;

    const-string v3, "Erro: "

    invoke-interface {p1}, Lhxn;->t()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    invoke-virtual {v1, v0}, Lgvb;->b(Ljava/util/ArrayList;)V

    .line 90
    const-string v0, "Comprovante"

    invoke-virtual {v1, v0}, Lgvb;->c(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v1, v5}, Lgvb;->d(Z)V

    .line 92
    invoke-virtual {v1, v6}, Lgvb;->e(Z)V

    .line 93
    invoke-interface {p1}, Lhxn;->getDataHoraTransacao()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgvb;->f(Ljava/lang/String;)V

    .line 94
    invoke-interface {p1}, Lhxn;->getAutenticacao()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgvb;->e(Ljava/lang/String;)V

    .line 95
    const-string v0, "Renegocia\u00e7\u00e3o de D\u00edvidas n\u00e3o realizada"

    invoke-virtual {v1, v0}, Lgvb;->d(Ljava/lang/String;)V

    .line 96
    const-string v0, "Renegocia\u00e7\u00e3o de d\u00edvida n\u00e3o realizada"

    invoke-virtual {v1, v0}, Lgvb;->b(Ljava/lang/String;)V

    .line 97
    const-string v2, "Renegocia\u00e7\u00e3o de D\u00edvidas \u2013 %s %s"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    .line 98
    invoke-interface {p1}, Lhxn;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f090ab6

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUComprovanteActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v3, v5

    .line 99
    invoke-interface {p1}, Lhxn;->getDataHoraTransacao()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    .line 97
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgvb;->g(Ljava/lang/String;)V

    .line 101
    return-object v1

    .line 98
    :cond_0
    const v0, 0x7f090aa1

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUComprovanteActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private c(Lhxn;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhxn;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lgky;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 108
    new-instance v1, Lgky;

    const-string v2, "Valor solicitado: "

    invoke-interface {p1}, Lhxn;->w()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    new-instance v1, Lgky;

    const-string v2, "Quantidade de parcelas: "

    invoke-interface {p1}, Lhxn;->u()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    new-instance v1, Lgky;

    const-string v2, "Valor da parcela: "

    invoke-interface {p1}, Lhxn;->G()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    new-instance v1, Lgky;

    const-string v2, "N\u00famero do contrato: "

    invoke-interface {p1}, Lhxn;->L()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    new-instance v1, Lgky;

    const-string v2, "Dia de d\u00e9bito: "

    invoke-interface {p1}, Lhxn;->K()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    new-instance v1, Lgky;

    const-string v2, "Primeira parcela: "

    invoke-interface {p1}, Lhxn;->I()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance v1, Lgky;

    const-string v2, "Taxa de juros: "

    invoke-interface {p1, v4}, Lhxn;->a(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    new-instance v1, Lgky;

    const-string v2, "Custo Efetivo Total (CET): "

    invoke-interface {p1, v4}, Lhxn;->b(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    new-instance v1, Lgky;

    const-string v2, "Valor do IOF: "

    invoke-interface {p1}, Lhxn;->C()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-interface {p1}, Lhxn;->s()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1}, Lhxn;->p()I

    move-result v1

    if-lez v1, :cond_0

    .line 127
    new-instance v1, Lgky;

    const-string v2, "Valor do Seguro: "

    invoke-interface {p1}, Lhxn;->E()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUComprovanteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 64
    :goto_0
    return-void

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUComprovanteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_CONTRATACAO"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lhxn;

    .line 42
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUComprovanteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "EXTRA_SUCCESS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 43
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUComprovanteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "comprovanteBase"

    invoke-direct {p0, v0}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUComprovanteActivity;->a(Lhxn;)Lgvb;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 47
    :goto_1
    invoke-super {p0, p1}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    iget-object v1, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUComprovanteActivity;->a:Landroid/widget/LinearLayout;

    new-instance v2, Lhvs;

    invoke-direct {v2, p0, v0}, Lhvs;-><init>(Lcom/santander/app/emprestimo/creditounificado/presentation/CPUComprovanteActivity;Lhxn;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object v1, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUComprovanteActivity;->b:Landroid/widget/LinearLayout;

    new-instance v2, Lhvt;

    invoke-direct {v2, p0, v0}, Lhvt;-><init>(Lcom/santander/app/emprestimo/creditounificado/presentation/CPUComprovanteActivity;Lhxn;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUComprovanteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "comprovanteBase"

    invoke-direct {p0, v0}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUComprovanteActivity;->b(Lhxn;)Lgvb;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_1
.end method
