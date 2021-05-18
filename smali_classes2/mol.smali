.class public Lmol;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/transferencia/presentation/ListagemFavorecidosActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/transferencia/presentation/ListagemFavorecidosActivity;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lmol;->a:Lcom/santander/app/transferencia/presentation/ListagemFavorecidosActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 78
    const-string v0, "Transferencia_Acao"

    const-string v1, "AdicionarFavorecido"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lmol;->a:Lcom/santander/app/transferencia/presentation/ListagemFavorecidosActivity;

    const-class v2, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    const-string v1, "contaSelecionada"

    iget-object v2, p0, Lmol;->a:Lcom/santander/app/transferencia/presentation/ListagemFavorecidosActivity;

    invoke-static {v2}, Lcom/santander/app/transferencia/presentation/ListagemFavorecidosActivity;->a(Lcom/santander/app/transferencia/presentation/ListagemFavorecidosActivity;)Lcom/santander/app/contacorrente/domain/Conta;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 82
    iget-object v1, p0, Lmol;->a:Lcom/santander/app/transferencia/presentation/ListagemFavorecidosActivity;

    const/16 v2, 0x26aa

    invoke-virtual {v1, v0, v2}, Lcom/santander/app/transferencia/presentation/ListagemFavorecidosActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 83
    return-void
.end method
