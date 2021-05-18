.class public Lgfp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lgfp;->a:Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 161
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgev;

    .line 163
    new-instance v1, Lgew;

    invoke-direct {v1}, Lgew;-><init>()V

    .line 164
    iget-object v2, p0, Lgfp;->a:Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;

    .line 165
    invoke-static {v2}, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;->b(Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;)Lcom/santander/app/contacorrente/domain/Conta;

    move-result-object v2

    invoke-virtual {v2}, Lcom/santander/app/contacorrente/domain/Conta;->getAgencia()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lgfp;->a:Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;

    invoke-static {v3}, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;->b(Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;)Lcom/santander/app/contacorrente/domain/Conta;

    move-result-object v3

    invoke-virtual {v3}, Lcom/santander/app/contacorrente/domain/Conta;->getCuenta()Ljava/lang/String;

    move-result-object v3

    .line 164
    invoke-static {v2, v3}, Lnaq;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgew;->b(Ljava/lang/String;)V

    .line 166
    iget-object v2, p0, Lgfp;->a:Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;

    invoke-static {v2}, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;->c(Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgew;->e(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v0}, Lgev;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgew;->d(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v0}, Lgev;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgew;->c(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v0}, Lgev;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgew;->a(Ljava/lang/String;)V

    .line 170
    iget-object v2, p0, Lgfp;->a:Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;

    invoke-static {v2}, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;->d(Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;)Lggh;

    move-result-object v2

    invoke-virtual {v0}, Lgev;->c()Lgfg;

    move-result-object v3

    invoke-interface {v2, v3}, Lggh;->a(Lgfg;)Lger;

    move-result-object v2

    .line 172
    iget-object v3, p0, Lgfp;->a:Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;

    invoke-virtual {v0}, Lgev;->c()Lgfg;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;->a(Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;Lgfg;)V

    .line 174
    sget-object v3, Lgfq;->a:[I

    invoke-virtual {v0}, Lgev;->c()Lgfg;

    move-result-object v4

    invoke-virtual {v4}, Lgfg;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 197
    :goto_0
    :pswitch_0
    return-void

    .line 179
    :pswitch_1
    new-instance v3, Landroid/content/Intent;

    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lgfp;->a:Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;

    const-class v6, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraInvestimentoActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 180
    const-string v4, "tipo_carteira_enum"

    invoke-virtual {v0}, Lgev;->c()Lgfg;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 181
    const-string v0, "carteira_diaria_model"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 182
    const-string v0, "fragment_topo_model"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 183
    iget-object v0, p0, Lgfp;->a:Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;

    invoke-virtual {v0, v3}, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 186
    :pswitch_2
    new-instance v3, Landroid/content/Intent;

    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lgfp;->a:Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;

    const-class v6, Lcom/santander/app/carteiradiaria/presentation/ListagemContasPagarReceberActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 187
    const-string v4, "tipo_carteira_enum"

    invoke-virtual {v0}, Lgev;->c()Lgfg;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 188
    const-string v0, "carteira_diaria_model"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 189
    const-string v0, "fragment_topo_model"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 190
    iget-object v0, p0, Lgfp;->a:Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;

    invoke-virtual {v0, v3}, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 174
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
