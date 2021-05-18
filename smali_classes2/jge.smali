.class public Ljge;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/investimentos/fundos/presentation/FiltroFundosActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/investimentos/fundos/presentation/FiltroFundosActivity;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Ljge;->a:Lcom/santander/app/investimentos/fundos/presentation/FiltroFundosActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 74
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 75
    iget-object v1, p0, Ljge;->a:Lcom/santander/app/investimentos/fundos/presentation/FiltroFundosActivity;

    invoke-static {v1}, Lcom/santander/app/investimentos/fundos/presentation/FiltroFundosActivity;->a(Lcom/santander/app/investimentos/fundos/presentation/FiltroFundosActivity;)Ljdw;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 76
    const-string v1, "Investimentos_Fundos_Filtrar"

    iget-object v2, p0, Ljge;->a:Lcom/santander/app/investimentos/fundos/presentation/FiltroFundosActivity;

    invoke-static {v2}, Lcom/santander/app/investimentos/fundos/presentation/FiltroFundosActivity;->a(Lcom/santander/app/investimentos/fundos/presentation/FiltroFundosActivity;)Ljdw;

    move-result-object v2

    invoke-virtual {v2}, Ljdw;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v1, "filtro"

    iget-object v2, p0, Ljge;->a:Lcom/santander/app/investimentos/fundos/presentation/FiltroFundosActivity;

    invoke-static {v2}, Lcom/santander/app/investimentos/fundos/presentation/FiltroFundosActivity;->a(Lcom/santander/app/investimentos/fundos/presentation/FiltroFundosActivity;)Ljdw;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    .line 80
    :cond_0
    iget-object v1, p0, Ljge;->a:Lcom/santander/app/investimentos/fundos/presentation/FiltroFundosActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/santander/app/investimentos/fundos/presentation/FiltroFundosActivity;->setResult(ILandroid/content/Intent;)V

    .line 81
    iget-object v0, p0, Ljge;->a:Lcom/santander/app/investimentos/fundos/presentation/FiltroFundosActivity;

    invoke-virtual {v0}, Lcom/santander/app/investimentos/fundos/presentation/FiltroFundosActivity;->finish()V

    .line 82
    return-void
.end method
