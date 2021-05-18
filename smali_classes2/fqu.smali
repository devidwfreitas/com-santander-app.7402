.class public Lfqu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lfqu;->a:Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 87
    const-string v0, "Outros_Agendamentos_DetalhesDoAgendamento_Acao"

    const-string v1, "Cancelar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lfqu;->a:Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 90
    iget-object v1, p0, Lfqu;->a:Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;

    invoke-virtual {v1}, Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 91
    const v2, 0x7f04017d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 92
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lfqu;->a:Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;

    invoke-virtual {v2}, Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0901a4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lfqw;

    invoke-direct {v3, p0}, Lfqw;-><init>(Lfqu;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lfqu;->a:Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;

    .line 98
    invoke-virtual {v2}, Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0901aa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lfqv;

    invoke-direct {v3, p0}, Lfqv;-><init>(Lfqu;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 110
    iget-object v1, p0, Lfqu;->a:Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;->a(Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 111
    iget-object v0, p0, Lfqu;->a:Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;

    invoke-static {v0}, Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;->b(Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 113
    return-void
.end method
