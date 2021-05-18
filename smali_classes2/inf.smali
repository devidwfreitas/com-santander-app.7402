.class public Linf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Linf;->a:Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 124
    iget-object v0, p0, Linf;->a:Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;

    invoke-static {v0}, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->b(Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Linf;->a:Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;

    invoke-static {v0}, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->b(Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Linf;->a:Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;

    invoke-virtual {v1}, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/santander/app/habilitacaointernacional/activity/ExcluirHabilitacaoInternacionalActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 130
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 131
    const-string v2, "indiceCartaoSelecionado"

    iget-object v3, p0, Linf;->a:Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;

    invoke-static {v3}, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->a(Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 132
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 133
    iget-object v1, p0, Linf;->a:Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;

    invoke-virtual {v1, v0}, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->startActivity(Landroid/content/Intent;)V

    .line 142
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Linf;->a:Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;

    iget-object v0, v0, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->i:Landroid/app/Activity;

    const-string v1, "N\u00e3o foram encontradas viagens cadastradas."

    invoke-static {v0, v1}, Lmxn;->b(Landroid/app/Activity;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Linf;->a:Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;

    invoke-static {v0}, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->d(Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;)Lcom/santander/app/components/view/SegmentImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/santander/app/components/view/SegmentImageView;->setVisibility(I)V

    goto :goto_0

    .line 139
    :cond_1
    iget-object v0, p0, Linf;->a:Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;

    iget-object v0, v0, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->i:Landroid/app/Activity;

    const-string v1, "N\u00e3o foram encontradas viagens cadastradas."

    invoke-static {v0, v1}, Lmxn;->b(Landroid/app/Activity;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Linf;->a:Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;

    invoke-static {v0}, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->c(Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;)Lcom/santander/app/components/view/SegmentImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/santander/app/components/view/SegmentImageView;->setVisibility(I)V

    goto :goto_0
.end method
