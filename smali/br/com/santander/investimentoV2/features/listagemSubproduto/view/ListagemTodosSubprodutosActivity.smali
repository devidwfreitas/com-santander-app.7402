.class public Lbr/com/santander/investimentoV2/features/listagemSubproduto/view/ListagemTodosSubprodutosActivity;
.super Lack;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lack;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 18
    invoke-super {p0, p1}, Lack;->onCreate(Landroid/os/Bundle;)V

    .line 19
    sget v0, Llc;->activity_listagem_subprodutos_familia:I

    invoke-virtual {p0, v0}, Lbr/com/santander/investimentoV2/features/listagemSubproduto/view/ListagemTodosSubprodutosActivity;->setContentView(I)V

    .line 22
    :try_start_0
    new-instance v1, Lvv;

    new-instance v0, Leju;

    invoke-direct {v0}, Leju;-><init>()V

    .line 23
    invoke-virtual {v0}, Leju;->j()Lejm;

    move-result-object v0

    .line 24
    invoke-virtual {p0}, Lbr/com/santander/investimentoV2/features/listagemSubproduto/view/ListagemTodosSubprodutosActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "family"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Luz;

    .line 23
    invoke-virtual {v0, v2, v3}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luz;

    invoke-direct {v1, p0, v0}, Lvv;-><init>(Lack;Luz;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :goto_0
    return-void

    .line 26
    :catch_0
    move-exception v0

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
