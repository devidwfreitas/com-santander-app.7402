.class public Lmon;
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
    .line 143
    iput-object p1, p0, Lmon;->a:Lcom/santander/app/transferencia/presentation/ListagemFavorecidosActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 146
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmld;

    .line 147
    iget-object v1, p0, Lmon;->a:Lcom/santander/app/transferencia/presentation/ListagemFavorecidosActivity;

    invoke-static {v1}, Lcom/santander/app/transferencia/presentation/ListagemFavorecidosActivity;->c(Lcom/santander/app/transferencia/presentation/ListagemFavorecidosActivity;)Lmpy;

    move-result-object v1

    invoke-interface {v1, v0}, Lmpy;->a(Lmld;)V

    .line 149
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 150
    const-string v2, "result"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 151
    iget-object v0, p0, Lmon;->a:Lcom/santander/app/transferencia/presentation/ListagemFavorecidosActivity;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/santander/app/transferencia/presentation/ListagemFavorecidosActivity;->setResult(ILandroid/content/Intent;)V

    .line 152
    iget-object v0, p0, Lmon;->a:Lcom/santander/app/transferencia/presentation/ListagemFavorecidosActivity;

    invoke-virtual {v0}, Lcom/santander/app/transferencia/presentation/ListagemFavorecidosActivity;->finish()V

    .line 153
    return-void
.end method
