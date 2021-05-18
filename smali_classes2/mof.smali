.class public Lmof;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lmof;->a:Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 203
    const-string v0, "Transferencia_Acao"

    const-string v1, "BotaoContinuar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lmof;->a:Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;

    invoke-static {v0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->a(Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lmof;->a:Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;

    invoke-static {v0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->k(Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lmof;->a:Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;

    invoke-static {v0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->l(Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;)V

    .line 208
    iget-object v0, p0, Lmof;->a:Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;

    invoke-static {v0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->m(Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;)Lmpw;

    move-result-object v0

    iget-object v1, p0, Lmof;->a:Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;

    invoke-static {v1}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->f(Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;)Lmlo;

    move-result-object v1

    invoke-interface {v0, v1}, Lmpw;->a(Lmlo;)V

    .line 225
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lmof;->a:Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;

    invoke-static {v0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->n(Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "Por favor, informe o n\u00famero de vezes."

    invoke-static {v0, v1}, Lhav;->d(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 214
    :cond_1
    iget-object v0, p0, Lmof;->a:Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;

    invoke-static {v0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->f(Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;)Lmlo;

    move-result-object v0

    invoke-virtual {v0}, Lmlo;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 215
    iget-object v0, p0, Lmof;->a:Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;

    invoke-static {v0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->o(Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 216
    iget-object v0, p0, Lmof;->a:Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;

    invoke-static {v0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->n(Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "A data de agendamento n\u00e3o pode ser s\u00e1bado ou domingo. Por favor, informe uma data v\u00e1lida."

    invoke-static {v0, v1}, Lhav;->d(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 220
    :cond_2
    iget-object v0, p0, Lmof;->a:Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;

    invoke-static {v0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->f(Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;)Lmlo;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmlo;->b(Z)V

    .line 221
    iget-object v0, p0, Lmof;->a:Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;

    invoke-static {v0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->l(Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;)V

    .line 222
    iget-object v0, p0, Lmof;->a:Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;

    invoke-static {v0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->m(Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;)Lmpw;

    move-result-object v0

    iget-object v1, p0, Lmof;->a:Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;

    invoke-static {v1}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->f(Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;)Lmlo;

    move-result-object v1

    invoke-interface {v0, v1}, Lmpw;->a(Lmlo;)V

    goto :goto_0
.end method
