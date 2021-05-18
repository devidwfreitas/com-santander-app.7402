.class public Lmnm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgpd;


# instance fields
.field final synthetic a:Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lmnm;->a:Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 181
    const-string v0, "Transferencia_Acao"

    const-string v1, "BotaoVerTodosBancos"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lmnm;->a:Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;

    check-cast p1, Lmkq;

    invoke-static {v0, p1}, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->a(Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;Lmkq;)Lmkq;

    .line 185
    const-string v0, "99999"

    iget-object v1, p0, Lmnm;->a:Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;

    invoke-static {v1}, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->c(Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;)Lmkq;

    move-result-object v1

    invoke-virtual {v1}, Lmkq;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lmnm;->a:Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;

    invoke-static {v0}, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->e(Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    .line 187
    iget-object v0, p0, Lmnm;->a:Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;

    invoke-static {v0}, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->f(Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;)Lmpq;

    move-result-object v0

    invoke-interface {v0}, Lmpq;->d()V

    .line 192
    :cond_0
    :goto_0
    iget-object v0, p0, Lmnm;->a:Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;

    invoke-static {v0}, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->g(Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;)V

    .line 193
    iget-object v0, p0, Lmnm;->a:Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;

    invoke-static {v0}, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->h(Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;)V

    .line 194
    iget-object v0, p0, Lmnm;->a:Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;

    invoke-static {v0}, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->a(Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 195
    iget-object v0, p0, Lmnm;->a:Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;

    invoke-static {v0}, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->b(Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 196
    iget-object v0, p0, Lmnm;->a:Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;

    invoke-static {v0}, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->d(Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 197
    return-void

    .line 189
    :cond_1
    iget-object v0, p0, Lmnm;->a:Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;

    invoke-virtual {v0}, Lcom/santander/app/transferencia/presentation/CadastroFavorecidoActivity;->b()V

    goto :goto_0
.end method
