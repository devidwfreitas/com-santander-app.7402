.class Lfqv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lfqu;


# direct methods
.method constructor <init>(Lfqu;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lfqv;->a:Lfqu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 100
    const-string v0, "Outros_Agendamentos_DetalhesDoAgendamento_ConfirmaOCancelamento_Acao"

    const-string v1, "Sim"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lfqv;->a:Lfqu;

    iget-object v1, v1, Lfqu;->a:Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;

    iget-object v1, v1, Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;->i:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/agendamentos/activity/CancelarAgendamentoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 104
    iget-object v1, p0, Lfqv;->a:Lfqu;

    iget-object v1, v1, Lfqu;->a:Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;

    invoke-static {v1}, Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;->a(Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;)Lfrb;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Lfrb;->O(Ljava/lang/String;)V

    .line 106
    const-string v1, "EXTRADADOS"

    iget-object v2, p0, Lfqv;->a:Lfqu;

    iget-object v2, v2, Lfqu;->a:Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;

    invoke-static {v2}, Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;->a(Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;)Lfrb;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 107
    iget-object v1, p0, Lfqv;->a:Lfqu;

    iget-object v1, v1, Lfqu;->a:Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;

    invoke-virtual {v1, v0}, Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;->startActivity(Landroid/content/Intent;)V

    .line 108
    return-void
.end method
