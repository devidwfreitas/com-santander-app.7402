.class public Liej;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/faturas/activity/FaturasActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/faturas/activity/FaturasActivity;)V
    .locals 0

    .prologue
    .line 351
    iput-object p1, p0, Liej;->a:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 355
    const-string v0, "Cartoes_Fatura_ResumoDaFatura_Acao"

    const-string v1, "LancamentoDaFatura"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Liej;->a:Lcom/santander/app/faturas/activity/FaturasActivity;

    const-class v2, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 357
    const-string v1, "isFaturaAberta"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 358
    const-string v1, "EXTRACARTAO"

    iget-object v2, p0, Liej;->a:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v2}, Lcom/santander/app/faturas/activity/FaturasActivity;->a(Lcom/santander/app/faturas/activity/FaturasActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 359
    const-string v1, "EXTRADADOS"

    iget-object v2, p0, Liej;->a:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v2}, Lcom/santander/app/faturas/activity/FaturasActivity;->b(Lcom/santander/app/faturas/activity/FaturasActivity;)Lfue;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 360
    const-string v1, "ISADICIONAL"

    iget-object v2, p0, Liej;->a:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-static {v2}, Lcom/santander/app/faturas/activity/FaturasActivity;->c(Lcom/santander/app/faturas/activity/FaturasActivity;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 361
    iget-object v1, p0, Liej;->a:Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-virtual {v1, v0}, Lcom/santander/app/faturas/activity/FaturasActivity;->startActivity(Landroid/content/Intent;)V

    .line 363
    return-void
.end method
