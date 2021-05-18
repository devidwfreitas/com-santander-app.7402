.class public Lcom/santander/app/PagamentoCartoesConfirmacaoAction;
.super Lgrs;
.source "SourceFile"


# instance fields
.field private A:Landroid/app/Activity;

.field private B:Lfiz;

.field public a:Landroid/app/Dialog;

.field private final b:Ljava/lang/String;

.field private c:Lcom/santander/app/contacorrente/domain/Conta;

.field private d:Lghu;

.field private e:I

.field private f:I

.field private g:I

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 38
    const-string v0, "PagamentoCartoesConfirmacaoAction"

    iput-object v0, p0, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->b:Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->a:Landroid/app/Dialog;

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/PagamentoCartoesConfirmacaoAction;)Lfiz;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->B:Lfiz;

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/PagamentoCartoesConfirmacaoAction;Lfiz;)Lfiz;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->B:Lfiz;

    return-object p1
.end method

.method private a()V
    .locals 3

    .prologue
    .line 202
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/santander/app/PagamentoCartoesValidacionAction;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 204
    const-string v1, "conta"

    iget v2, p0, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->e:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 205
    const-string v1, "cartao"

    iget v2, p0, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->f:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 206
    const-string v1, "tipo"

    iget v2, p0, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->g:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 207
    const-string v1, "cantidad"

    iget-object v2, p0, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->w:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    const-string v1, "fecha"

    iget-object v2, p0, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->x:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    const-string v1, "agendado"

    iget-boolean v2, p0, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->z:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 211
    invoke-virtual {p0, v0}, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->startActivity(Landroid/content/Intent;)V

    .line 212
    return-void
.end method

.method public static synthetic b(Lcom/santander/app/PagamentoCartoesConfirmacaoAction;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->A:Landroid/app/Activity;

    return-object v0
.end method

.method public static synthetic c(Lcom/santander/app/PagamentoCartoesConfirmacaoAction;)Lghu;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->d:Lghu;

    return-object v0
.end method

.method public static synthetic d(Lcom/santander/app/PagamentoCartoesConfirmacaoAction;)Lcom/santander/app/contacorrente/domain/Conta;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->c:Lcom/santander/app/contacorrente/domain/Conta;

    return-object v0
.end method

.method public static synthetic e(Lcom/santander/app/PagamentoCartoesConfirmacaoAction;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->w:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic f(Lcom/santander/app/PagamentoCartoesConfirmacaoAction;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->x:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic g(Lcom/santander/app/PagamentoCartoesConfirmacaoAction;)Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->z:Z

    return v0
.end method

.method public static synthetic h(Lcom/santander/app/PagamentoCartoesConfirmacaoAction;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->a()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    .prologue
    const v9, 0x7f101043

    const v8, 0x7f10053e

    const/16 v7, 0x8

    const v6, 0x7f101045

    const/4 v2, 0x0

    .line 57
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v0, 0x7f040337

    invoke-virtual {p0, v0}, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->setContentView(I)V

    .line 60
    invoke-virtual {p0}, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 61
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 62
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 64
    const v1, 0x7f090813

    invoke-virtual {p0, v1}, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 66
    iput-object p0, p0, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->A:Landroid/app/Activity;

    .line 68
    const v0, 0x7f10104a

    invoke-virtual {p0, v0}, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 70
    new-instance v1, Lfiy;

    invoke-direct {v1, p0}, Lfiy;-><init>(Lcom/santander/app/PagamentoCartoesConfirmacaoAction;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    invoke-virtual {p0, v8}, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 83
    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    invoke-virtual {p0, v9}, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 85
    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    invoke-virtual {p0, v6}, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 87
    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    const v1, 0x7f101049

    invoke-virtual {p0, v1}, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 89
    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    invoke-virtual {p0}, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 93
    if-eqz v3, :cond_7

    .line 94
    const-string v0, "conta"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->e:I

    .line 95
    const-string v0, "cartao"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->f:I

    .line 98
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 99
    :goto_0
    iget-object v0, p0, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->q()Lgvx;

    move-result-object v0

    invoke-interface {v0}, Lgvx;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->q()Lgvx;

    move-result-object v0

    invoke-interface {v0}, Lgvx;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/contacorrente/domain/Conta;

    .line 101
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 104
    :goto_1
    iget-object v0, p0, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 106
    iget v0, p0, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->f:I

    if-eq v1, v0, :cond_1

    .line 107
    new-instance v5, Lcom/santander/app/contacorrente/domain/Conta;

    invoke-direct {v5}, Lcom/santander/app/contacorrente/domain/Conta;-><init>()V

    .line 108
    iget-object v0, p0, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghu;

    invoke-virtual {v0}, Lghu;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/santander/app/contacorrente/domain/Conta;->setAgencia(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghu;

    invoke-virtual {v0}, Lghu;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/santander/app/contacorrente/domain/Conta;->setCuenta(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghu;

    invoke-virtual {v0}, Lghu;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/santander/app/contacorrente/domain/Conta;->setValor(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghu;

    invoke-virtual {v0}, Lghu;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/santander/app/contacorrente/domain/Conta;->setDescricao(Ljava/lang/String;)V

    .line 112
    const-string v0, "CARTAOPAG"

    invoke-virtual {v5, v0}, Lcom/santander/app/contacorrente/domain/Conta;->setNomeBanco(Ljava/lang/String;)V

    .line 113
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    .line 117
    :cond_2
    iget v0, p0, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->e:I

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/contacorrente/domain/Conta;

    iput-object v0, p0, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->c:Lcom/santander/app/contacorrente/domain/Conta;

    .line 118
    iget-object v0, p0, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->d()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->f:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghu;

    iput-object v0, p0, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->d:Lghu;

    .line 119
    const-string v0, "tipo"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->g:I

    .line 120
    const-string v0, "cantidad"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->w:Ljava/lang/String;

    .line 121
    const-string v0, "fecha"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnak;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->x:Ljava/lang/String;

    .line 122
    const-string v0, "agendado"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->z:Z

    .line 123
    const-string v0, "vencimiento"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnak;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->y:Ljava/lang/String;

    .line 125
    invoke-virtual {p0, v8}, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 126
    iget-object v1, p0, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->d:Lghu;

    invoke-virtual {v1}, Lghu;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    invoke-virtual {p0, v9}, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 128
    iget-object v1, p0, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    invoke-virtual {p0, v6}, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 130
    iget-object v1, p0, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->d:Lghu;

    invoke-virtual {v1}, Lghu;->o()Lfud;

    move-result-object v1

    invoke-virtual {v1}, Lfud;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    const v0, 0x7f101049

    invoke-virtual {p0, v0}, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 134
    iget v1, p0, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->g:I

    if-nez v1, :cond_3

    .line 135
    iget-object v1, p0, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->d:Lghu;

    invoke-virtual {v1}, Lghu;->o()Lfud;

    move-result-object v1

    invoke-virtual {v1}, Lfud;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v0, p0, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->d:Lghu;

    invoke-virtual {v0}, Lghu;->o()Lfud;

    move-result-object v0

    invoke-virtual {v0}, Lfud;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "//+"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->w:Ljava/lang/String;

    .line 182
    :goto_2
    const v0, 0x7f101041

    invoke-virtual {p0, v0}, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 183
    iget-object v1, p0, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    :goto_3
    return-void

    .line 137
    :cond_3
    iget v1, p0, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->g:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    .line 138
    iget-object v1, p0, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->d:Lghu;

    invoke-virtual {v1}, Lghu;->o()Lfud;

    move-result-object v1

    invoke-virtual {v1}, Lfud;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v0, p0, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->d:Lghu;

    invoke-virtual {v0}, Lghu;->o()Lfud;

    move-result-object v0

    invoke-virtual {v0}, Lfud;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "//+"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->w:Ljava/lang/String;

    .line 142
    const v0, 0x7f101044

    invoke-virtual {p0, v0}, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 143
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    invoke-virtual {p0, v6}, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 146
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    const v0, 0x7f101046

    invoke-virtual {p0, v0}, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 150
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    const v0, 0x7f101047

    invoke-virtual {p0, v0}, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 153
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    iget-object v1, p0, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->d:Lghu;

    invoke-virtual {v1}, Lghu;->o()Lfud;

    move-result-object v1

    invoke-virtual {v1}, Lfud;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    invoke-virtual {p0, v6}, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 157
    iget-object v1, p0, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->d:Lghu;

    invoke-virtual {v1}, Lghu;->o()Lfud;

    move-result-object v1

    invoke-virtual {v1}, Lfud;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 159
    :cond_4
    iget v1, p0, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->g:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 160
    iget-object v1, p0, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->d:Lghu;

    invoke-virtual {v1}, Lghu;->o()Lfud;

    move-result-object v1

    invoke-virtual {v1}, Lfud;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v0, p0, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->d:Lghu;

    invoke-virtual {v0}, Lghu;->o()Lfud;

    move-result-object v0

    invoke-virtual {v0}, Lfud;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "//+"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->w:Ljava/lang/String;

    goto/16 :goto_2

    .line 163
    :cond_5
    iget v1, p0, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->g:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_6

    .line 164
    iget-object v1, p0, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->d:Lghu;

    invoke-virtual {v1}, Lghu;->o()Lfud;

    move-result-object v1

    invoke-virtual {v1}, Lfud;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v0, p0, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->d:Lghu;

    invoke-virtual {v0}, Lghu;->o()Lfud;

    move-result-object v0

    invoke-virtual {v0}, Lfud;->n()Ljava/lang/String;

    move-result-object v0

    const-string v1, "//+"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->w:Ljava/lang/String;

    goto/16 :goto_2

    .line 167
    :cond_6
    iget-object v1, p0, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->w:Ljava/lang/String;

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 186
    :cond_7
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_3
.end method
