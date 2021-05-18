.class Liof;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfoh;


# instance fields
.field final synthetic a:Lioh;

.field final synthetic b:Lioe;


# direct methods
.method constructor <init>(Lioe;Lioh;)V
    .locals 0

    .prologue
    .line 468
    iput-object p1, p0, Liof;->b:Lioe;

    iput-object p2, p0, Liof;->a:Lioh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 471
    iget-object v0, p0, Liof;->b:Lioe;

    iget-object v0, v0, Lioe;->a:Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;

    invoke-static {v0}, Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;->e(Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;)V

    .line 472
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Liof;->b:Lioe;

    iget-object v1, v1, Lioe;->a:Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;

    invoke-static {v1}, Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;->a(Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/santander/app/habilitacaointernacional/activity/ComprovanteHabilitacaoInternacionalActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 473
    const-string v1, "lista"

    iget-object v2, p0, Liof;->b:Lioe;

    iget-object v2, v2, Lioe;->a:Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;

    invoke-static {v2}, Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;->f(Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 474
    const-string v1, "cartao"

    iget-object v2, p0, Liof;->b:Lioe;

    iget-object v2, v2, Lioe;->a:Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;

    invoke-static {v2}, Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;->c(Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 475
    const-string v1, "passo"

    iget-object v2, p0, Liof;->b:Lioe;

    iget-object v2, v2, Lioe;->a:Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;

    invoke-static {v2}, Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;->g(Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 476
    const-string v1, "operacao"

    iget-object v2, p0, Liof;->b:Lioe;

    iget-object v2, v2, Lioe;->a:Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;

    invoke-static {v2}, Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;->h(Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 477
    const-string v1, "FINALCARTAO"

    iget-object v2, p0, Liof;->b:Lioe;

    iget-object v2, v2, Lioe;->a:Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;

    invoke-static {v2}, Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;->i(Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 478
    const-string v1, "AutenticacaoBancaria"

    iget-object v2, p0, Liof;->a:Lioh;

    invoke-virtual {v2}, Lioh;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 479
    iget-object v1, p0, Liof;->b:Lioe;

    iget-object v1, v1, Lioe;->a:Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;

    invoke-virtual {v1, v0}, Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;->startActivity(Landroid/content/Intent;)V

    .line 480
    return-void
.end method
