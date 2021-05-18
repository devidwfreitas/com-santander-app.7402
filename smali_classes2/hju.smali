.class public Lhju;
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
    .line 93
    iput-object p1, p0, Lhju;->a:Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 96
    const-string v0, "CreditoFinanciamento_AnteciparIR_Termo_Acao"

    const-string v1, "Concordo"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lhju;->a:Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;

    invoke-static {v0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;->a(Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lhju;->a:Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;

    invoke-static {v0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;->b(Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lhju;->a:Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;

    invoke-static {v0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;->c(Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lhju;->a:Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;

    invoke-static {v0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;->d(Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lhju;->a:Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;

    invoke-static {v0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;->e(Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "file:///android_asset/clausulas_condicoes_antecipacaoIR.html"

    invoke-static {v0, v1}, Lcom/ca/android/app/CaMDOWebView;->loadUrl(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 104
    return-void
.end method
