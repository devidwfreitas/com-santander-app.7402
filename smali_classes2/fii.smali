.class public Lfii;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljdd;

.field final synthetic b:Lcom/santander/app/InvestimentosConsolidadaActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/InvestimentosConsolidadaActivity;Ljdd;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lfii;->b:Lcom/santander/app/InvestimentosConsolidadaActivity;

    iput-object p2, p0, Lfii;->a:Ljdd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 208
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lfii;->b:Lcom/santander/app/InvestimentosConsolidadaActivity;

    invoke-virtual {v1}, Lcom/santander/app/InvestimentosConsolidadaActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/santander/app/InvestimentosFundoDetalleActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 209
    const-string v1, "agencia"

    iget-object v2, p0, Lfii;->a:Ljdd;

    invoke-virtual {v2}, Ljdd;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    const-string v1, "conta"

    iget-object v2, p0, Lfii;->a:Ljdd;

    invoke-virtual {v2}, Ljdd;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    const-string v1, "codigo"

    iget-object v2, p0, Lfii;->a:Ljdd;

    invoke-virtual {v2}, Ljdd;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    const-string v1, "nombre"

    iget-object v2, p0, Lfii;->a:Ljdd;

    invoke-virtual {v2}, Ljdd;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    const-string v1, "fecha"

    iget-object v2, p0, Lfii;->b:Lcom/santander/app/InvestimentosConsolidadaActivity;

    invoke-static {v2}, Lcom/santander/app/InvestimentosConsolidadaActivity;->a(Lcom/santander/app/InvestimentosConsolidadaActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    iget-object v1, p0, Lfii;->b:Lcom/santander/app/InvestimentosConsolidadaActivity;

    invoke-virtual {v1, v0}, Lcom/santander/app/InvestimentosConsolidadaActivity;->startActivity(Landroid/content/Intent;)V

    .line 215
    return-void
.end method
