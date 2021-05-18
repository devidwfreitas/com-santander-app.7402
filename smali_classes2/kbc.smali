.class public Lkbc;
.super Lgmz;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/widget/SeekBar;

.field final synthetic b:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lkbc;->b:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    iput-object p2, p0, Lkbc;->a:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lgmz;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Land;)V
    .locals 0

    .prologue
    .line 117
    check-cast p1, Lgmx;

    invoke-virtual {p0, p1}, Lkbc;->a(Lgmx;)V

    return-void
.end method

.method public a(Lgmx;)V
    .locals 2

    .prologue
    .line 120
    const-string v0, "Outros_InvestimentosNoATM_BloqueioDeInvestimentosELimitesNoCaixa_Acao"

    const-string v1, "SelecionarConta"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lkbc;->b:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-virtual {p1}, Lgmx;->f()Lcom/santander/app/contacorrente/domain/Conta;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->a(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;Lcom/santander/app/contacorrente/domain/Conta;)Lcom/santander/app/contacorrente/domain/Conta;

    .line 122
    iget-object v0, p0, Lkbc;->b:Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    iget-object v1, p0, Lkbc;->a:Landroid/widget/SeekBar;

    invoke-static {v0, v1}, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;->a(Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;Landroid/widget/SeekBar;)V

    .line 123
    return-void
.end method
