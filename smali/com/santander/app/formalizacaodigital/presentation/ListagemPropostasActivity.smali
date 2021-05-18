.class public Lcom/santander/app/formalizacaodigital/presentation/ListagemPropostasActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Lihn;


# instance fields
.field private a:Landroid/support/v7/widget/RecyclerView;

.field private b:Lihy;

.field private c:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-virtual {p0}, Lcom/santander/app/formalizacaodigital/presentation/ListagemPropostasActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 49
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 50
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 51
    invoke-virtual {p0}, Lcom/santander/app/formalizacaodigital/presentation/ListagemPropostasActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0904da

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 57
    const v0, 0x7f100c9a

    invoke-virtual {p0, v0}, Lcom/santander/app/formalizacaodigital/presentation/ListagemPropostasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/santander/app/formalizacaodigital/presentation/ListagemPropostasActivity;->a:Landroid/support/v7/widget/RecyclerView;

    .line 58
    new-instance v0, Lihz;

    invoke-direct {v0, p0}, Lihz;-><init>(Lihn;)V

    iput-object v0, p0, Lcom/santander/app/formalizacaodigital/presentation/ListagemPropostasActivity;->b:Lihy;

    .line 59
    invoke-static {p0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/formalizacaodigital/presentation/ListagemPropostasActivity;->c:Landroid/app/Dialog;

    .line 60
    return-void
.end method

.method private c()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lihm;

    invoke-direct {v0, p0}, Lihm;-><init>(Lcom/santander/app/formalizacaodigital/presentation/ListagemPropostasActivity;)V

    return-object v0
.end method


# virtual methods
.method public a(Ligl;)V
    .locals 2

    .prologue
    .line 94
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    const-string v1, "proposta"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 96
    invoke-virtual {p0, v0}, Lcom/santander/app/formalizacaodigital/presentation/ListagemPropostasActivity;->startActivity(Landroid/content/Intent;)V

    .line 97
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 89
    const-string v4, "Fechar"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, v3

    invoke-static/range {v0 .. v5}, Lmxn;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/app/Dialog;

    .line 90
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ligl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/santander/app/formalizacaodigital/presentation/ListagemPropostasActivity;->a:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 66
    iget-object v0, p0, Lcom/santander/app/formalizacaodigital/presentation/ListagemPropostasActivity;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 67
    iget-object v0, p0, Lcom/santander/app/formalizacaodigital/presentation/ListagemPropostasActivity;->a:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Liho;

    invoke-direct {p0}, Lcom/santander/app/formalizacaodigital/presentation/ListagemPropostasActivity;->c()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Liho;-><init>(Ljava/util/List;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 68
    iget-object v0, p0, Lcom/santander/app/formalizacaodigital/presentation/ListagemPropostasActivity;->c:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/santander/app/formalizacaodigital/presentation/ListagemPropostasActivity;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/formalizacaodigital/presentation/ListagemPropostasActivity;->c:Landroid/app/Dialog;

    .line 72
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 39
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v0, 0x7f040308

    invoke-virtual {p0, v0}, Lcom/santander/app/formalizacaodigital/presentation/ListagemPropostasActivity;->setContentView(I)V

    .line 42
    invoke-direct {p0}, Lcom/santander/app/formalizacaodigital/presentation/ListagemPropostasActivity;->a()V

    .line 44
    invoke-direct {p0}, Lcom/santander/app/formalizacaodigital/presentation/ListagemPropostasActivity;->b()V

    .line 45
    return-void
.end method
