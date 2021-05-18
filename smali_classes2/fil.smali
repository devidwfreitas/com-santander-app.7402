.class public Lfil;
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
    .line 342
    iput-object p1, p0, Lfil;->a:Lcom/santander/app/InvestimentosConsolidadaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 347
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lfil;->a:Lcom/santander/app/InvestimentosConsolidadaActivity;

    invoke-virtual {v0}, Lcom/santander/app/InvestimentosConsolidadaActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/santander/app/Rendafixa_posicaoconsolidada_Detahle;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 348
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfwk;

    .line 349
    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 350
    iget-object v0, p0, Lfil;->a:Lcom/santander/app/InvestimentosConsolidadaActivity;

    invoke-virtual {v0, v1}, Lcom/santander/app/InvestimentosConsolidadaActivity;->startActivity(Landroid/content/Intent;)V

    .line 351
    return-void
.end method
