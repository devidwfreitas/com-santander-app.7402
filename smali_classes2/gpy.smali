.class final Lgpy;
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
    .line 833
    iput-object p1, p0, Lgpy;->a:Landroid/app/Dialog;

    iput-object p2, p0, Lgpy;->b:Lhya;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 848
    const-string v0, "CreditoFinanciamento_Antecipar13_Elegivel"

    const-string v1, "Nao"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    iget-object v0, p0, Lgpy;->b:Lhya;

    invoke-static {}, Lgpu;->m()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x7

    invoke-interface {v0, v1, v2}, Lhya;->a(Landroid/content/Context;I)V

    .line 851
    iget-object v0, p0, Lgpy;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 852
    return-void
.end method

.method public a(I)V
    .locals 3
    .param p1    # I
        .annotation build Lhyr;
        .end annotation
    .end param

    .prologue
    .line 836
    const-string v0, "Antecipacao13"

    const-string v1, "CreditoFinanciamento"

    invoke-static {v0, v1}, Lfrq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    const-string v0, "CreditoFinanciamento_Antecipar13_Elegivel"

    const-string v1, "Sim"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lgpu;->m()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 841
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 842
    invoke-static {}, Lgpu;->m()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 843
    iget-object v0, p0, Lgpy;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 844
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 856
    const-string v0, "CreditoFinanciamento_Antecipar13_Indisponivel"

    const-string v1, "SistemaIndisponivel"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    iget-object v0, p0, Lgpy;->b:Lhya;

    invoke-static {}, Lgpu;->m()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x7

    invoke-interface {v0, v1, v2}, Lhya;->b(Landroid/content/Context;I)V

    .line 859
    iget-object v0, p0, Lgpy;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 860
    return-void
.end method
