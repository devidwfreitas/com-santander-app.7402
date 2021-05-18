.class public Lgcf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgpd;


# instance fields
.field final synthetic a:Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lgcf;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;I)V
    .locals 4

    .prologue
    .line 77
    iget-object v0, p0, Lgcf;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;

    check-cast p1, Lgav;

    invoke-static {v0, p1}, Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;->a(Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;Lgav;)Lgav;

    .line 79
    iget-object v0, p0, Lgcf;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;

    invoke-static {v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;->a(Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;)Lgav;

    move-result-object v0

    invoke-virtual {v0}, Lgav;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lgcf;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;

    invoke-static {v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;->b(Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;)Lcom/santander/app/components/view/ClickToSelectEditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/ClickToSelectEditText;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lgcf;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;

    new-instance v1, Lgdc;

    iget-object v2, p0, Lgcf;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;

    new-instance v3, Lgcg;

    invoke-direct {v3, p0}, Lgcg;-><init>(Lgcf;)V

    invoke-direct {v1, v2, v3}, Lgdc;-><init>(Landroid/app/Activity;Lgdf;)V

    invoke-static {v0, v1}, Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;->a(Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;Lgdc;)Lgdc;

    .line 99
    iget-object v0, p0, Lgcf;->a:Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;

    invoke-static {v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;->c(Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;)Lgdc;

    move-result-object v0

    invoke-virtual {v0}, Lgdc;->show()V

    .line 101
    :cond_0
    return-void
.end method
