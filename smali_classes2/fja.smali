.class public Lfja;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/PagamentoCartoesTransErrorActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/PagamentoCartoesTransErrorActivity;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lfja;->a:Lcom/santander/app/PagamentoCartoesTransErrorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lfja;->a:Lcom/santander/app/PagamentoCartoesTransErrorActivity;

    iget-object v0, v0, Lcom/santander/app/PagamentoCartoesTransErrorActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lfja;->a:Lcom/santander/app/PagamentoCartoesTransErrorActivity;

    iget-object v0, v0, Lcom/santander/app/PagamentoCartoesTransErrorActivity;->v:Lmip;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lmip;->c(Z)V

    .line 91
    iget-object v0, p0, Lfja;->a:Lcom/santander/app/PagamentoCartoesTransErrorActivity;

    invoke-virtual {v0}, Lcom/santander/app/PagamentoCartoesTransErrorActivity;->finishAffinity()V

    .line 92
    iget-object v0, p0, Lfja;->a:Lcom/santander/app/PagamentoCartoesTransErrorActivity;

    iget-object v1, p0, Lfja;->a:Lcom/santander/app/PagamentoCartoesTransErrorActivity;

    invoke-virtual {v0, v1}, Lcom/santander/app/PagamentoCartoesTransErrorActivity;->a(Landroid/content/Context;)Z

    .line 99
    :goto_0
    return-void

    .line 95
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lfja;->a:Lcom/santander/app/PagamentoCartoesTransErrorActivity;

    invoke-static {v1}, Lcom/santander/app/PagamentoCartoesTransErrorActivity;->a(Lcom/santander/app/PagamentoCartoesTransErrorActivity;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 97
    iget-object v1, p0, Lfja;->a:Lcom/santander/app/PagamentoCartoesTransErrorActivity;

    invoke-virtual {v1, v0}, Lcom/santander/app/PagamentoCartoesTransErrorActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
