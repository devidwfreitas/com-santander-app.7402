.class public Lfqs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/agendamentos/activity/AgendamentosDetalheActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/agendamentos/activity/AgendamentosDetalheActivity;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lfqs;->a:Lcom/santander/app/agendamentos/activity/AgendamentosDetalheActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 89
    if-eqz p3, :cond_0

    .line 90
    iget-object v0, p0, Lfqs;->a:Lcom/santander/app/agendamentos/activity/AgendamentosDetalheActivity;

    invoke-static {v0}, Lcom/santander/app/agendamentos/activity/AgendamentosDetalheActivity;->a(Lcom/santander/app/agendamentos/activity/AgendamentosDetalheActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfrb;

    .line 92
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lfqs;->a:Lcom/santander/app/agendamentos/activity/AgendamentosDetalheActivity;

    const-class v3, Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 93
    const-string v2, "EXTRAITEMDETALHEAGENDAMENTO"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 94
    iget-object v0, p0, Lfqs;->a:Lcom/santander/app/agendamentos/activity/AgendamentosDetalheActivity;

    invoke-virtual {v0, v1}, Lcom/santander/app/agendamentos/activity/AgendamentosDetalheActivity;->startActivity(Landroid/content/Intent;)V

    .line 97
    :cond_0
    return-void
.end method
