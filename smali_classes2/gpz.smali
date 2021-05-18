.class final Lgpz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhxy;


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lhya;


# direct methods
.method constructor <init>(Landroid/app/Dialog;Lhya;)V
    .locals 0

    .prologue
    .line 872
    iput-object p1, p0, Lgpz;->a:Landroid/app/Dialog;

    iput-object p2, p0, Lgpz;->b:Lhya;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 887
    const-string v0, "CreditoFinanciamento_AnteciparIR_Elegivel"

    const-string v1, "Nao"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    iget-object v0, p0, Lgpz;->b:Lhya;

    invoke-static {}, Lgpu;->m()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x8

    invoke-interface {v0, v1, v2}, Lhya;->a(Landroid/content/Context;I)V

    .line 890
    iget-object v0, p0, Lgpz;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 891
    return-void
.end method

.method public a(I)V
    .locals 3
    .param p1    # I
        .annotation build Lhyr;
        .end annotation
    .end param

    .prologue
    .line 875
    const-string v0, "AntecipacaoIR"

    const-string v1, "CreditoFinanciamento"

    invoke-static {v0, v1}, Lfrq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    const-string v0, "CreditoFinanciamento_AnteciparIR_Elegivel"

    const-string v1, "Sim"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lgpu;->m()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 880
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 881
    invoke-static {}, Lgpu;->m()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 882
    iget-object v0, p0, Lgpz;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 883
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 895
    const-string v0, "CreditoFinanciamento_AnteciparIR_Indisponivel"

    const-string v1, "SistemaIndisponivel"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    iget-object v0, p0, Lgpz;->b:Lhya;

    invoke-static {}, Lgpu;->m()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x8

    invoke-interface {v0, v1, v2}, Lhya;->b(Landroid/content/Context;I)V

    .line 898
    iget-object v0, p0, Lgpz;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 899
    return-void
.end method
