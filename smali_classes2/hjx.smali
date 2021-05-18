.class public Lhjx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lhjx;->a:Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 135
    const-string v0, "CreditoFinanciamento_AnteciparIR_Termo_Acao"

    const-string v1, "Continuar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    new-instance v0, Lhka;

    iget-object v1, p0, Lhjx;->a:Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lhka;-><init>(Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;Lhju;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lhka;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 137
    return-void
.end method
