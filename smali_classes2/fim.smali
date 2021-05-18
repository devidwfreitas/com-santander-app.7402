.class public Lfim;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/InvestimentosConsolidadaActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/InvestimentosConsolidadaActivity;)V
    .locals 0

    .prologue
    .line 413
    iput-object p1, p0, Lfim;->a:Lcom/santander/app/InvestimentosConsolidadaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 418
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lfim;->a:Lcom/santander/app/InvestimentosConsolidadaActivity;

    invoke-virtual {v0}, Lcom/santander/app/InvestimentosConsolidadaActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/santander/app/InvestimentosFundoDetalleActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 419
    const-string v2, "codigo"

    iget-object v0, p0, Lfim;->a:Lcom/santander/app/InvestimentosConsolidadaActivity;

    invoke-static {v0}, Lcom/santander/app/InvestimentosConsolidadaActivity;->c(Lcom/santander/app/InvestimentosConsolidadaActivity;)Lfwa;

    move-result-object v0

    invoke-virtual {v0}, Lfwa;->a()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "av"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfwg;

    invoke-virtual {v0}, Lfwg;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 420
    const-string v2, "nombre"

    iget-object v0, p0, Lfim;->a:Lcom/santander/app/InvestimentosConsolidadaActivity;

    invoke-static {v0}, Lcom/santander/app/InvestimentosConsolidadaActivity;->c(Lcom/santander/app/InvestimentosConsolidadaActivity;)Lfwa;

    move-result-object v0

    invoke-virtual {v0}, Lfwa;->a()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "av"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfwg;

    invoke-virtual {v0}, Lfwg;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 421
    const-string v0, "fecha"

    iget-object v2, p0, Lfim;->a:Lcom/santander/app/InvestimentosConsolidadaActivity;

    invoke-static {v2}, Lcom/santander/app/InvestimentosConsolidadaActivity;->a(Lcom/santander/app/InvestimentosConsolidadaActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 422
    iget-object v0, p0, Lfim;->a:Lcom/santander/app/InvestimentosConsolidadaActivity;

    invoke-virtual {v0, v1}, Lcom/santander/app/InvestimentosConsolidadaActivity;->startActivity(Landroid/content/Intent;)V

    .line 424
    return-void
.end method
