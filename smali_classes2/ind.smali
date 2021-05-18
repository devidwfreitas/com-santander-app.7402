.class public Lind;
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
    .line 79
    iput-object p1, p0, Lind;->a:Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 85
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lind;->a:Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;

    invoke-virtual {v1}, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/santander/app/habilitacaointernacional/activity/CadastrarHabilitacaoInternacionalActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 87
    const-string v2, "indiceCartaoSelecionado"

    iget-object v3, p0, Lind;->a:Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;

    invoke-static {v3}, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->a(Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 88
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 89
    iget-object v1, p0, Lind;->a:Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;

    invoke-virtual {v1, v0}, Lcom/santander/app/habilitacaointernacional/activity/HabilitacaoInternacionalActivity;->startActivity(Landroid/content/Intent;)V

    .line 90
    return-void
.end method
