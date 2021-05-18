.class public Ljga;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Ljga;->a:Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 295
    const-string v0, "http://www.santander.com.br/document/wps/R_{cod}.pdf"

    const-string v1, "{cod}"

    iget-object v2, p0, Ljga;->a:Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;

    invoke-static {v2}, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->a(Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;)Ljdx;

    move-result-object v2

    invoke-virtual {v2}, Ljdx;->w()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 296
    iget-object v1, p0, Ljga;->a:Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;

    invoke-virtual {v1, v0}, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->b(Ljava/lang/String;)V

    .line 297
    return-void
.end method
