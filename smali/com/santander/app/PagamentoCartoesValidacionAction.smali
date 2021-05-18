.class public Lcom/santander/app/PagamentoCartoesValidacionAction;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Lnau;


# instance fields
.field private A:Landroid/app/Activity;

.field private B:Lfje;

.field public a:Landroid/app/Dialog;

.field private final b:Ljava/lang/String;

.field private c:Lcom/santander/app/contacorrente/domain/Conta;

.field private d:Lghu;

.field private e:I

.field private f:I

.field private g:I

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Z

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 39
    const-string v0, "PagamentoCartoesValidacionAction"

    iput-object v0, p0, Lcom/santander/app/PagamentoCartoesValidacionAction;->b:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/PagamentoCartoesValidacionAction;->a:Landroid/app/Dialog;

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/PagamentoCartoesValidacionAction;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/santander/app/PagamentoCartoesValidacionAction;->A:Landroid/app/Activity;

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/PagamentoCartoesValidacionAction;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/santander/app/PagamentoCartoesValidacionAction;->z:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 3

    .prologue
    .line 124
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/santander/app/PagamentoCartoesValidacionAction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/santander/app/PagamentoCartoesTransOkAction;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    const-string v1, "conta"

    iget v2, p0, Lcom/santander/app/PagamentoCartoesValidacionAction;->e:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 127
    const-string v1, "cartao"

    iget-object v2, p0, Lcom/santander/app/PagamentoCartoesValidacionAction;->d:Lghu;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 128
    const-string v1, "tipo"

    iget v2, p0, Lcom/santander/app/PagamentoCartoesValidacionAction;->g:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 129
    const-string v1, "cantidad"

    iget-object v2, p0, Lcom/santander/app/PagamentoCartoesValidacionAction;->w:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    const-string v1, "fecha"

    iget-object v2, p0, Lcom/santander/app/PagamentoCartoesValidacionAction;->x:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    const-string v1, "cartao"

    iget-object v2, p0, Lcom/santander/app/PagamentoCartoesValidacionAction;->d:Lghu;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 133
    invoke-virtual {p0, v0}, Lcom/santander/app/PagamentoCartoesValidacionAction;->startActivity(Landroid/content/Intent;)V

    .line 134
    return-void
.end method

.method public static synthetic b(Lcom/santander/app/PagamentoCartoesValidacionAction;)Lghu;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/santander/app/PagamentoCartoesValidacionAction;->d:Lghu;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 138
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/santander/app/PagamentoCartoesValidacionAction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/santander/app/PagamentoCartoesTransErrorActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 140
    const-string v1, "conta"

    iget v2, p0, Lcom/santander/app/PagamentoCartoesValidacionAction;->e:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 141
    const-string v1, "cartao"

    iget v2, p0, Lcom/santander/app/PagamentoCartoesValidacionAction;->f:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 142
    const-string v1, "tipo"

    iget v2, p0, Lcom/santander/app/PagamentoCartoesValidacionAction;->g:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 143
    const-string v1, "cantidad"

    iget-object v2, p0, Lcom/santander/app/PagamentoCartoesValidacionAction;->w:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    const-string v1, "fecha"

    iget-object v2, p0, Lcom/santander/app/PagamentoCartoesValidacionAction;->x:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    const-string v1, "errorMsg"

    iget-object v2, p0, Lcom/santander/app/PagamentoCartoesValidacionAction;->z:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    const-string v1, "cartao"

    iget-object v2, p0, Lcom/santander/app/PagamentoCartoesValidacionAction;->d:Lghu;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 148
    invoke-virtual {p0, v0}, Lcom/santander/app/PagamentoCartoesValidacionAction;->startActivity(Landroid/content/Intent;)V

    .line 149
    return-void
.end method

.method public static synthetic c(Lcom/santander/app/PagamentoCartoesValidacionAction;)Lcom/santander/app/contacorrente/domain/Conta;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/santander/app/PagamentoCartoesValidacionAction;->c:Lcom/santander/app/contacorrente/domain/Conta;

    return-object v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/santander/app/PagamentoCartoesValidacionAction;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/PagamentoCartoesValidacionAction;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/santander/app/PagamentoCartoesValidacionAction;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/PagamentoCartoesValidacionAction;->a:Landroid/app/Dialog;

    .line 216
    :cond_0
    return-void
.end method

.method public static synthetic d(Lcom/santander/app/PagamentoCartoesValidacionAction;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/santander/app/PagamentoCartoesValidacionAction;->w:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic e(Lcom/santander/app/PagamentoCartoesValidacionAction;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/santander/app/PagamentoCartoesValidacionAction;->x:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic f(Lcom/santander/app/PagamentoCartoesValidacionAction;)Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/santander/app/PagamentoCartoesValidacionAction;->y:Z

    return v0
.end method

.method public static synthetic g(Lcom/santander/app/PagamentoCartoesValidacionAction;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/santander/app/PagamentoCartoesValidacionAction;->b()V

    return-void
.end method

.method public static synthetic h(Lcom/santander/app/PagamentoCartoesValidacionAction;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/santander/app/PagamentoCartoesValidacionAction;->c()V

    return-void
.end method

.method public static synthetic i(Lcom/santander/app/PagamentoCartoesValidacionAction;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/santander/app/PagamentoCartoesValidacionAction;->a()V

    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 2

    .prologue
    .line 117
    new-instance v0, Lfje;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfje;-><init>(Lcom/santander/app/PagamentoCartoesValidacionAction;Lfjd;)V

    iput-object v0, p0, Lcom/santander/app/PagamentoCartoesValidacionAction;->B:Lfje;

    .line 118
    iget-object v0, p0, Lcom/santander/app/PagamentoCartoesValidacionAction;->B:Lfje;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lfje;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 120
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const v6, 0x7f100544

    const/4 v2, 0x0

    .line 57
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v0, 0x7f04033b

    invoke-virtual {p0, v0}, Lcom/santander/app/PagamentoCartoesValidacionAction;->setContentView(I)V

    .line 60
    invoke-virtual {p0}, Lcom/santander/app/PagamentoCartoesValidacionAction;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 61
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 62
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 64
    const v1, 0x7f090813

    invoke-virtual {p0, v1}, Lcom/santander/app/PagamentoCartoesValidacionAction;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 66
    iput-object p0, p0, Lcom/santander/app/PagamentoCartoesValidacionAction;->A:Landroid/app/Activity;

    .line 68
    invoke-virtual {p0}, Lcom/santander/app/PagamentoCartoesValidacionAction;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 69
    if-eqz v3, :cond_3

    .line 70
    const-string v0, "conta"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/santander/app/PagamentoCartoesValidacionAction;->e:I

    .line 71
    const-string v0, "cartao"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/santander/app/PagamentoCartoesValidacionAction;->f:I

    .line 74
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 75
    :goto_0
    iget-object v0, p0, Lcom/santander/app/PagamentoCartoesValidacionAction;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->q()Lgvx;

    move-result-object v0

    invoke-interface {v0}, Lgvx;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/santander/app/PagamentoCartoesValidacionAction;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->q()Lgvx;

    move-result-object v0

    invoke-interface {v0}, Lgvx;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/contacorrente/domain/Conta;

    .line 77
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 79
    :goto_1
    iget-object v0, p0, Lcom/santander/app/PagamentoCartoesValidacionAction;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 81
    iget v0, p0, Lcom/santander/app/PagamentoCartoesValidacionAction;->f:I

    if-eq v1, v0, :cond_1

    .line 82
    new-instance v5, Lcom/santander/app/contacorrente/domain/Conta;

    invoke-direct {v5}, Lcom/santander/app/contacorrente/domain/Conta;-><init>()V

    .line 83
    iget-object v0, p0, Lcom/santander/app/PagamentoCartoesValidacionAction;->v:Lmip;

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

    .line 84
    iget-object v0, p0, Lcom/santander/app/PagamentoCartoesValidacionAction;->v:Lmip;

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

    .line 85
    iget-object v0, p0, Lcom/santander/app/PagamentoCartoesValidacionAction;->v:Lmip;

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

    .line 86
    iget-object v0, p0, Lcom/santander/app/PagamentoCartoesValidacionAction;->v:Lmip;

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

    .line 87
    const-string v0, "CARTAOPAG"

    invoke-virtual {v5, v0}, Lcom/santander/app/contacorrente/domain/Conta;->setNomeBanco(Ljava/lang/String;)V

    .line 88
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    .line 92
    :cond_2
    iget v0, p0, Lcom/santander/app/PagamentoCartoesValidacionAction;->e:I

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/contacorrente/domain/Conta;

    iput-object v0, p0, Lcom/santander/app/PagamentoCartoesValidacionAction;->c:Lcom/santander/app/contacorrente/domain/Conta;

    .line 93
    iget-object v0, p0, Lcom/santander/app/PagamentoCartoesValidacionAction;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->d()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/santander/app/PagamentoCartoesValidacionAction;->f:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghu;

    iput-object v0, p0, Lcom/santander/app/PagamentoCartoesValidacionAction;->d:Lghu;

    .line 95
    const-string v0, "tipo"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/santander/app/PagamentoCartoesValidacionAction;->g:I

    .line 96
    const-string v0, "cantidad"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/PagamentoCartoesValidacionAction;->w:Ljava/lang/String;

    .line 97
    const-string v0, "fecha"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnak;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/PagamentoCartoesValidacionAction;->x:Ljava/lang/String;

    .line 98
    const-string v0, "agendado"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/santander/app/PagamentoCartoesValidacionAction;->y:Z

    .line 101
    :cond_3
    invoke-virtual {p0}, Lcom/santander/app/PagamentoCartoesValidacionAction;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 102
    invoke-virtual {v0, v6}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 103
    if-nez v1, :cond_4

    .line 104
    new-instance v1, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;

    invoke-direct {v1}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;-><init>()V

    .line 105
    invoke-virtual {v1, v2}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->b(I)V

    .line 106
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 107
    invoke-virtual {v0, v6, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 108
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 109
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 112
    :cond_4
    return-void
.end method
