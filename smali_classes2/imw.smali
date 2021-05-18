.class public Limw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Limw;->a:Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 107
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Limw;->a:Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;

    invoke-virtual {v0}, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 110
    iget-object v0, p0, Limw;->a:Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;

    invoke-virtual {v0}, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 112
    const-string v2, "lista"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 113
    const-string v0, "passo"

    const-string v2, "3"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    const-string v0, "operacao"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 115
    iget-object v0, p0, Limw;->a:Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;

    iget-object v0, v0, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->e()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Limw;->a:Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;

    invoke-static {v2}, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->a(Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;)Limk;

    move-result-object v2

    invoke-virtual {v2}, Limk;->a()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghu;

    invoke-virtual {v0}, Lghu;->H()Ljava/lang/String;

    move-result-object v2

    .line 116
    iget-object v0, p0, Limw;->a:Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;

    iget-object v0, v0, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->e()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Limw;->a:Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;

    invoke-static {v3}, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->a(Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;)Limk;

    move-result-object v3

    invoke-virtual {v3}, Limk;->a()I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghu;

    invoke-virtual {v0}, Lghu;->b()Ljava/lang/String;

    move-result-object v0

    .line 117
    const-string v3, "FINALCARTAO"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const-string v0, "cartao"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    iget-object v0, p0, Limw;->a:Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;

    invoke-virtual {v0, v1}, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->startActivity(Landroid/content/Intent;)V

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Limw;->a:Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;

    invoke-static {v0, v3}, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;->a(Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;I)V

    goto :goto_0
.end method
