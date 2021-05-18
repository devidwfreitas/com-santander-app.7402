.class public Lilz;
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
    .line 121
    iput-object p1, p0, Lilz;->a:Lcom/santander/app/habilitacaointernacional/activity/CadastrarHabilitacaoInternacionalActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 126
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lilz;->a:Lcom/santander/app/habilitacaointernacional/activity/CadastrarHabilitacaoInternacionalActivity;

    const-class v2, Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 128
    const-string v1, "PARAM_ACTIVITY1"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    iget-object v1, p0, Lilz;->a:Lcom/santander/app/habilitacaointernacional/activity/CadastrarHabilitacaoInternacionalActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/santander/app/habilitacaointernacional/activity/CadastrarHabilitacaoInternacionalActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 130
    return-void
.end method
