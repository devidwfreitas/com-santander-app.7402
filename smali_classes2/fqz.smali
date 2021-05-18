.class public Lfqz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lfqz;->a:Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 107
    const-string v0, "Outros_Agendamentos_Comprovante_Acao"

    const-string v1, "Compartilhar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lfqz;->a:Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;

    invoke-static {v0}, Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;->a(Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;)Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;->b()Ljava/lang/String;

    move-result-object v0

    .line 110
    const-string v1, ""

    .line 111
    iget-object v2, p0, Lfqz;->a:Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;

    invoke-static {v2}, Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;->a(Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;)Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cancelamento de Agendamento "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lfqz;->a:Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;

    invoke-static {v4}, Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;->b(Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;)Lfrb;

    move-result-object v4

    invoke-virtual {v4}, Lfrb;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1, v0}, Lmyj;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method
