.class public Ljgc;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Ljgc;->a:Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Ljgc;->a:Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->b(Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;)Ljik;

    move-result-object v0

    iget-object v1, p0, Ljgc;->a:Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;

    invoke-static {v1}, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->a(Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;)Ljdx;

    move-result-object v1

    invoke-virtual {v1}, Ljdx;->w()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljik;->b(Ljava/lang/String;)V

    .line 315
    return-void
.end method
