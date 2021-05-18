.class public Limn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Limn;->a:Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 147
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Limn;->a:Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;

    invoke-virtual {v1}, Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/santander/app/habilitacaointernacional/activity/ValidarCartaoHabilitacaoInternacionalActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 149
    const-string v1, "lista"

    iget-object v2, p0, Limn;->a:Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;

    invoke-static {v2}, Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;->a(Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 150
    const-string v1, "listaAlteracao"

    iget-object v2, p0, Limn;->a:Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;

    invoke-static {v2}, Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;->b(Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 151
    const-string v1, "operacao"

    iget-object v2, p0, Limn;->a:Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;

    invoke-static {v2}, Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;->c(Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 152
    const-string v1, "cartao"

    iget-object v2, p0, Limn;->a:Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;

    invoke-static {v2}, Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;->d(Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    const-string v1, "passo"

    iget-object v2, p0, Limn;->a:Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;

    invoke-static {v2}, Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;->e(Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    const-string v1, "FINALCARTAO"

    iget-object v2, p0, Limn;->a:Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;

    invoke-static {v2}, Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;->f(Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    iget-object v1, p0, Limn;->a:Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;

    invoke-virtual {v1, v0}, Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;->startActivity(Landroid/content/Intent;)V

    .line 156
    return-void
.end method
