.class public Lhjk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/santander/app/emprestimo/antecipacaoIR/activity/CustoEfetivoTotalAntecipacaoIRActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/emprestimo/antecipacaoIR/activity/CustoEfetivoTotalAntecipacaoIRActivity;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lhjk;->b:Lcom/santander/app/emprestimo/antecipacaoIR/activity/CustoEfetivoTotalAntecipacaoIRActivity;

    iput-object p2, p0, Lhjk;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 161
    iget-object v0, p0, Lhjk;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 162
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lhjk;->b:Lcom/santander/app/emprestimo/antecipacaoIR/activity/CustoEfetivoTotalAntecipacaoIRActivity;

    const-class v2, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 163
    iget-object v1, p0, Lhjk;->b:Lcom/santander/app/emprestimo/antecipacaoIR/activity/CustoEfetivoTotalAntecipacaoIRActivity;

    invoke-virtual {v1, v0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/CustoEfetivoTotalAntecipacaoIRActivity;->startActivity(Landroid/content/Intent;)V

    .line 164
    return-void
.end method
