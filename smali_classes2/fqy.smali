.class public Lfqy;
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
    .line 90
    iput-object p1, p0, Lfqy;->a:Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 95
    const-string v0, "Outros_Agendamentos_Comprovante_Acao"

    const-string v1, "Fechar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lfqy;->a:Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;

    const-class v2, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    iget-object v1, p0, Lfqy;->a:Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;

    invoke-virtual {v1, v0}, Lcom/santander/app/agendamentos/activity/GerarComprovanteAgendamentoActivity;->startActivity(Landroid/content/Intent;)V

    .line 99
    return-void
.end method
