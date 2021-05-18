.class public Lhhx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/santander/app/emprestimo/antecipacaoDT/activity/CustoEfetivoTotalAntecipacaoDTActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/emprestimo/antecipacaoDT/activity/CustoEfetivoTotalAntecipacaoDTActivity;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lhhx;->b:Lcom/santander/app/emprestimo/antecipacaoDT/activity/CustoEfetivoTotalAntecipacaoDTActivity;

    iput-object p2, p0, Lhhx;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 160
    iget-object v0, p0, Lhhx;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 161
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lhhx;->b:Lcom/santander/app/emprestimo/antecipacaoDT/activity/CustoEfetivoTotalAntecipacaoDTActivity;

    const-class v2, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 162
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 163
    iget-object v1, p0, Lhhx;->b:Lcom/santander/app/emprestimo/antecipacaoDT/activity/CustoEfetivoTotalAntecipacaoDTActivity;

    invoke-virtual {v1, v0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/CustoEfetivoTotalAntecipacaoDTActivity;->startActivity(Landroid/content/Intent;)V

    .line 164
    return-void
.end method
