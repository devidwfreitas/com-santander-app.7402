.class public Lime;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/habilitacaointernacional/activity/CadastrarHabilitacaoInternacionalActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/habilitacaointernacional/activity/CadastrarHabilitacaoInternacionalActivity;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lime;->a:Lcom/santander/app/habilitacaointernacional/activity/CadastrarHabilitacaoInternacionalActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 218
    iget-object v0, p0, Lime;->a:Lcom/santander/app/habilitacaointernacional/activity/CadastrarHabilitacaoInternacionalActivity;

    invoke-static {v0}, Lcom/santander/app/habilitacaointernacional/activity/CadastrarHabilitacaoInternacionalActivity;->a(Lcom/santander/app/habilitacaointernacional/activity/CadastrarHabilitacaoInternacionalActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lime;->a:Lcom/santander/app/habilitacaointernacional/activity/CadastrarHabilitacaoInternacionalActivity;

    invoke-virtual {v0}, Lcom/santander/app/habilitacaointernacional/activity/CadastrarHabilitacaoInternacionalActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 221
    const-string v0, "lista"

    iget-object v2, p0, Lime;->a:Lcom/santander/app/habilitacaointernacional/activity/CadastrarHabilitacaoInternacionalActivity;

    invoke-static {v2}, Lcom/santander/app/habilitacaointernacional/activity/CadastrarHabilitacaoInternacionalActivity;->b(Lcom/santander/app/habilitacaointernacional/activity/CadastrarHabilitacaoInternacionalActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 222
    const-string v0, "passo"

    const-string v2, "1"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    const-string v0, "operacao"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 224
    iget-object v0, p0, Lime;->a:Lcom/santander/app/habilitacaointernacional/activity/CadastrarHabilitacaoInternacionalActivity;

    iget-object v0, v0, Lcom/santander/app/habilitacaointernacional/activity/CadastrarHabilitacaoInternacionalActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->e()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lime;->a:Lcom/santander/app/habilitacaointernacional/activity/CadastrarHabilitacaoInternacionalActivity;

    invoke-static {v2}, Lcom/santander/app/habilitacaointernacional/activity/CadastrarHabilitacaoInternacionalActivity;->c(Lcom/santander/app/habilitacaointernacional/activity/CadastrarHabilitacaoInternacionalActivity;)Limk;

    move-result-object v2

    invoke-virtual {v2}, Limk;->a()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghu;

    invoke-virtual {v0}, Lghu;->H()Ljava/lang/String;

    move-result-object v2

    .line 225
    iget-object v0, p0, Lime;->a:Lcom/santander/app/habilitacaointernacional/activity/CadastrarHabilitacaoInternacionalActivity;

    iget-object v0, v0, Lcom/santander/app/habilitacaointernacional/activity/CadastrarHabilitacaoInternacionalActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->e()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lime;->a:Lcom/santander/app/habilitacaointernacional/activity/CadastrarHabilitacaoInternacionalActivity;

    invoke-static {v3}, Lcom/santander/app/habilitacaointernacional/activity/CadastrarHabilitacaoInternacionalActivity;->c(Lcom/santander/app/habilitacaointernacional/activity/CadastrarHabilitacaoInternacionalActivity;)Limk;

    move-result-object v3

    invoke-virtual {v3}, Limk;->a()I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghu;

    invoke-virtual {v0}, Lghu;->b()Ljava/lang/String;

    move-result-object v0

    .line 226
    const-string v3, "FINALCARTAO"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    const-string v0, "cartao"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    iget-object v0, p0, Lime;->a:Lcom/santander/app/habilitacaointernacional/activity/CadastrarHabilitacaoInternacionalActivity;

    invoke-virtual {v0, v1}, Lcom/santander/app/habilitacaointernacional/activity/CadastrarHabilitacaoInternacionalActivity;->startActivity(Landroid/content/Intent;)V

    .line 233
    :goto_0
    return-void

    .line 231
    :cond_0
    iget-object v0, p0, Lime;->a:Lcom/santander/app/habilitacaointernacional/activity/CadastrarHabilitacaoInternacionalActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/santander/app/habilitacaointernacional/activity/CadastrarHabilitacaoInternacionalActivity;->a(Lcom/santander/app/habilitacaointernacional/activity/CadastrarHabilitacaoInternacionalActivity;I)V

    goto :goto_0
.end method
