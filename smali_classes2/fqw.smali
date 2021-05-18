.class Lfqw;
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
    .line 92
    iput-object p1, p0, Lfqw;->a:Lfqu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 94
    const-string v0, "Outros_Agendamentos_DetalhesDoAgendamento_ConfirmaOCancelamento_Acao"

    const-string v1, "Nao"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lfqw;->a:Lfqu;

    iget-object v0, v0, Lfqu;->a:Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;

    invoke-static {v0}, Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;->b(Lcom/santander/app/agendamentos/activity/DetalheAgendamentoActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 97
    return-void
.end method
