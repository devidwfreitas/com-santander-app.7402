.class public Lhjm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;


# direct methods
.method public constructor <init>(Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lhjm;->a:Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 114
    if-eqz p2, :cond_0

    .line 115
    iget-object v0, p0, Lhjm;->a:Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;

    invoke-static {v0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->a(Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lhjm;->a:Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;

    invoke-static {v0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->b(Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 118
    :cond_0
    return-void
.end method
