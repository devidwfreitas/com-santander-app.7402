.class public Lico;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/faq/presentation/FaqActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/faq/presentation/FaqActivity;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lico;->a:Lcom/santander/app/faq/presentation/FaqActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 210
    iget-object v0, p0, Lico;->a:Lcom/santander/app/faq/presentation/FaqActivity;

    iget-object v0, v0, Lcom/santander/app/faq/presentation/FaqActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Outros_FAQ_Acao"

    :goto_0
    const-string v1, "EntreEmContatoConosco"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lico;->a:Lcom/santander/app/faq/presentation/FaqActivity;

    const-class v2, Lcom/santander/app/faq/presentation/FaqTelefonesActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 212
    iget-object v1, p0, Lico;->a:Lcom/santander/app/faq/presentation/FaqActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/santander/app/faq/presentation/FaqActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 213
    iget-object v0, p0, Lico;->a:Lcom/santander/app/faq/presentation/FaqActivity;

    const v1, 0x7f050013

    const v2, 0x7f050015

    invoke-virtual {v0, v1, v2}, Lcom/santander/app/faq/presentation/FaqActivity;->overridePendingTransition(II)V

    .line 214
    return-void

    .line 210
    :cond_0
    const-string v0, "Outros_HomeNaoLogada_FAQ_Acao"

    goto :goto_0
.end method
