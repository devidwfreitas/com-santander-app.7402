.class public Lfgi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lfgi;->a:Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 111
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lfgi;->a:Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;

    iget-object v1, v1, Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;->i:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/BeneficiarioPagamentoListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 112
    iget-object v1, p0, Lfgi;->a:Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;

    invoke-virtual {v1, v0}, Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;->startActivity(Landroid/content/Intent;)V

    .line 113
    return-void
.end method
