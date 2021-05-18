.class public Lbr/com/santander/investimentoV2/features/listagemSubproduto/view/ListagemSubprodutoActivity;
.super Lack;
.source "SourceFile"


# instance fields
.field private a:Lvp;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lack;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 26
    invoke-super {p0}, Lack;->onBackPressed()V

    .line 27
    invoke-virtual {p0}, Lbr/com/santander/investimentoV2/features/listagemSubproduto/view/ListagemSubprodutoActivity;->finish()V

    .line 28
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 17
    invoke-super {p0, p1}, Lack;->onCreate(Landroid/os/Bundle;)V

    .line 18
    sget v0, Llc;->activity_listagem_subproduto:I

    invoke-virtual {p0, v0}, Lbr/com/santander/investimentoV2/features/listagemSubproduto/view/ListagemSubprodutoActivity;->setContentView(I)V

    .line 20
    new-instance v0, Lvp;

    invoke-direct {v0, p0}, Lvp;-><init>(Lack;)V

    iput-object v0, p0, Lbr/com/santander/investimentoV2/features/listagemSubproduto/view/ListagemSubprodutoActivity;->a:Lvp;

    .line 22
    return-void
.end method
