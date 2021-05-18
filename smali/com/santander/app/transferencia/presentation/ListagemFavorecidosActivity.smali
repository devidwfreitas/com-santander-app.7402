.class public Lcom/santander/app/transferencia/presentation/ListagemFavorecidosActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Lmoo;


# static fields
.field private static final a:Ljava/lang/String; = "ListagemFavorecidosActivity"

.field private static final b:I = 0x26aa


# instance fields
.field private c:Lcom/santander/app/contacorrente/domain/Conta;

.field private d:Lmpy;

.field private e:Landroid/support/v7/widget/RecyclerView;

.field private f:Landroid/widget/Button;

.field private g:Lmpf;

.field private w:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/transferencia/presentation/ListagemFavorecidosActivity;)Lcom/santander/app/contacorrente/domain/Conta;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/ListagemFavorecidosActivity;->c:Lcom/santander/app/contacorrente/domain/Conta;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 71
    const v0, 0x7f100c88

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/ListagemFavorecidosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/ListagemFavorecidosActivity;->e:Landroid/support/v7/widget/RecyclerView;

    .line 72
    const v0, 0x7f100c89

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/ListagemFavorecidosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/ListagemFavorecidosActivity;->f:Landroid/widget/Button;

    .line 73
    const v0, 0x7f100c87

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/ListagemFavorecidosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/ListagemFavorecidosActivity;->w:Landroid/widget/EditText;

    .line 75
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/ListagemFavorecidosActivity;->f:Landroid/widget/Button;

    new-instance v1, Lmol;

    invoke-direct {v1, p0}, Lmol;-><init>(Lcom/santander/app/transferencia/presentation/ListagemFavorecidosActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    invoke-virtual {p0}, Lcom/santander/app/transferencia/presentation/ListagemFavorecidosActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "contaSelecionada"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/santander/app/contacorrente/domain/Conta;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/ListagemFavorecidosActivity;->c:Lcom/santander/app/contacorrente/domain/Conta;

    .line 88
    new-instance v0, Lmpz;

    invoke-direct {v0, p0}, Lmpz;-><init>(Lmoo;)V

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/ListagemFavorecidosActivity;->d:Lmpy;

    .line 90
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/ListagemFavorecidosActivity;->d:Lmpy;

    iget-object v1, p0, Lcom/santander/app/transferencia/presentation/ListagemFavorecidosActivity;->c:Lcom/santander/app/contacorrente/domain/Conta;

    invoke-interface {v0, v1}, Lmpy;->a(Lcom/santander/app/contacorrente/domain/Conta;)V

    .line 92
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/ListagemFavorecidosActivity;->w:Landroid/widget/EditText;

    new-instance v1, Lmom;

    invoke-direct {v1, p0}, Lmom;-><init>(Lcom/santander/app/transferencia/presentation/ListagemFavorecidosActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 113
    return-void
.end method

.method public static synthetic a(Lcom/santander/app/transferencia/presentation/ListagemFavorecidosActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/santander/app/transferencia/presentation/ListagemFavorecidosActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 143
    new-instance v0, Lmon;

    invoke-direct {v0, p0}, Lmon;-><init>(Lcom/santander/app/transferencia/presentation/ListagemFavorecidosActivity;)V

    return-object v0
.end method

.method public static synthetic b(Lcom/santander/app/transferencia/presentation/ListagemFavorecidosActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/ListagemFavorecidosActivity;->w:Landroid/widget/EditText;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/ListagemFavorecidosActivity;->g:Lmpf;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/ListagemFavorecidosActivity;->g:Lmpf;

    invoke-virtual {v0, p1}, Lmpf;->a(Ljava/lang/String;)V

    .line 181
    :cond_0
    return-void
.end method

.method public static synthetic c(Lcom/santander/app/transferencia/presentation/ListagemFavorecidosActivity;)Lmpy;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/ListagemFavorecidosActivity;->d:Lmpy;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/ListagemFavorecidosActivity;->i:Landroid/app/Activity;

    invoke-static {v0, p1}, Lmxn;->d(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    .line 176
    return-void
.end method

.method public a(Lmkt;)V
    .locals 3

    .prologue
    .line 118
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/ListagemFavorecidosActivity;->e:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 119
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/ListagemFavorecidosActivity;->e:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 123
    invoke-virtual {p1}, Lmkt;->a()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lmkt;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 124
    invoke-virtual {p1}, Lmkt;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 126
    :cond_0
    invoke-virtual {p1}, Lmkt;->b()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lmkt;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 127
    invoke-virtual {p1}, Lmkt;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 129
    :cond_1
    new-instance v1, Lmpf;

    invoke-direct {p0}, Lcom/santander/app/transferencia/presentation/ListagemFavorecidosActivity;->b()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lmpf;-><init>(Ljava/util/List;Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/santander/app/transferencia/presentation/ListagemFavorecidosActivity;->g:Lmpf;

    .line 131
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/ListagemFavorecidosActivity;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/santander/app/transferencia/presentation/ListagemFavorecidosActivity;->g:Lmpf;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 133
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 159
    invoke-super {p0, p1, p2, p3}, Lgrs;->onActivityResult(IILandroid/content/Intent;)V

    .line 160
    const/16 v0, 0x26aa

    if-ne p1, v0, :cond_0

    .line 161
    if-ne p2, v3, :cond_1

    .line 162
    const-string v0, "result"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lmkw;

    .line 163
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 164
    const-string v2, "result"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 165
    invoke-virtual {p0, v3, v1}, Lcom/santander/app/transferencia/presentation/ListagemFavorecidosActivity;->setResult(ILandroid/content/Intent;)V

    .line 166
    invoke-virtual {p0}, Lcom/santander/app/transferencia/presentation/ListagemFavorecidosActivity;->finish()V

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    if-nez p2, :cond_0

    .line 168
    invoke-static {p0}, Lgpu;->b(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 137
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 138
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/santander/app/transferencia/presentation/ListagemFavorecidosActivity;->setResult(ILandroid/content/Intent;)V

    .line 139
    invoke-virtual {p0}, Lcom/santander/app/transferencia/presentation/ListagemFavorecidosActivity;->finish()V

    .line 140
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v0, 0x7f040307

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/ListagemFavorecidosActivity;->setContentView(I)V

    .line 59
    invoke-virtual {p0}, Lcom/santander/app/transferencia/presentation/ListagemFavorecidosActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 60
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 61
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 62
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 64
    const v1, 0x7f090b0d

    invoke-virtual {p0, v1}, Lcom/santander/app/transferencia/presentation/ListagemFavorecidosActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 66
    invoke-direct {p0}, Lcom/santander/app/transferencia/presentation/ListagemFavorecidosActivity;->a()V

    .line 67
    return-void
.end method
