.class Lgcg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgdf;


# instance fields
.field final synthetic a:Lgcf;


# direct methods
.method constructor <init>(Lgcf;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lgcg;->a:Lgcf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lgcg;->a:Lgcf;

    iget-object v0, v0, Lgcf;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;

    invoke-static {v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;->c(Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;)Lgdc;

    move-result-object v0

    invoke-virtual {v0}, Lgdc;->dismiss()V

    .line 97
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 84
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xf

    if-le v0, v1, :cond_1

    .line 85
    :cond_0
    iget-object v0, p0, Lgcg;->a:Lgcf;

    iget-object v0, v0, Lgcf;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;

    invoke-virtual {v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0901d1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lgcg;->a:Lgcf;

    iget-object v1, v1, Lgcf;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;

    invoke-static {v1}, Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;->c(Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;)Lgdc;

    move-result-object v1

    const v2, 0x7f10069e

    invoke-virtual {v1, v2}, Lgdc;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lmzv;->a(Ljava/lang/String;Landroid/view/View;)V

    .line 92
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-object v0, p0, Lgcg;->a:Lgcf;

    iget-object v0, v0, Lgcf;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;

    invoke-static {v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;->c(Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;)Lgdc;

    move-result-object v0

    invoke-virtual {v0}, Lgdc;->dismiss()V

    .line 88
    iget-object v0, p0, Lgcg;->a:Lgcf;

    iget-object v0, v0, Lgcf;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;

    invoke-static {v0, p1}, Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;->a(Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lgcg;->a:Lgcf;

    iget-object v0, v0, Lgcf;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;

    invoke-static {v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;->b(Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;)Lcom/santander/app/components/view/ClickToSelectEditText;

    move-result-object v0

    iget-object v1, p0, Lgcg;->a:Lgcf;

    iget-object v1, v1, Lgcf;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;

    invoke-static {v1}, Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;->d(Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/ClickToSelectEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
