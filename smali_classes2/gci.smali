.class public Lgci;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lgci;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 119
    const-string v0, "ServicosInternacionais_Cambio_DadosDaOperacao_Acao"

    const-string v1, "Continuar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lgci;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;

    invoke-static {v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;->a(Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;)Lgav;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgci;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;

    invoke-static {v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;->a(Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;)Lgav;

    move-result-object v0

    invoke-virtual {v0}, Lgav;->a()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgci;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;

    invoke-static {v1}, Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;->a(Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;)Lgav;

    move-result-object v1

    invoke-virtual {v1}, Lgav;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgci;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;

    invoke-static {v1}, Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;->a(Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;)Lgav;

    move-result-object v1

    invoke-virtual {v1}, Lgav;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    :goto_0
    iget-object v1, p0, Lgci;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;

    invoke-static {v1}, Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;->e(Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;)Lgdn;

    move-result-object v1

    iget-object v2, p0, Lgci;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;

    invoke-static {v2}, Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;->f(Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;)Lgbb;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lgdn;->a(Ljava/lang/String;Lgbb;)V

    .line 123
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lgci;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;

    invoke-static {v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;->b(Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;)Lcom/santander/app/components/view/ClickToSelectEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/components/view/ClickToSelectEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
