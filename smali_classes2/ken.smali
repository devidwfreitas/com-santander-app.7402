.class public Lken;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/previdencia/presentation/DetalhePosicaoConsolidadaPrevidenciaActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/previdencia/presentation/DetalhePosicaoConsolidadaPrevidenciaActivity;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lken;->a:Lcom/santander/app/previdencia/presentation/DetalhePosicaoConsolidadaPrevidenciaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 109
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lken;->a:Lcom/santander/app/previdencia/presentation/DetalhePosicaoConsolidadaPrevidenciaActivity;

    invoke-static {v1}, Lcom/santander/app/previdencia/presentation/DetalhePosicaoConsolidadaPrevidenciaActivity;->a(Lcom/santander/app/previdencia/presentation/DetalhePosicaoConsolidadaPrevidenciaActivity;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/santander/app/previdencia/presentation/AporteActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 110
    const-string v1, "aporte"

    iget-object v2, p0, Lken;->a:Lcom/santander/app/previdencia/presentation/DetalhePosicaoConsolidadaPrevidenciaActivity;

    invoke-static {v2}, Lcom/santander/app/previdencia/presentation/DetalhePosicaoConsolidadaPrevidenciaActivity;->b(Lcom/santander/app/previdencia/presentation/DetalhePosicaoConsolidadaPrevidenciaActivity;)Lkdg;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 111
    iget-object v1, p0, Lken;->a:Lcom/santander/app/previdencia/presentation/DetalhePosicaoConsolidadaPrevidenciaActivity;

    invoke-virtual {v1, v0}, Lcom/santander/app/previdencia/presentation/DetalhePosicaoConsolidadaPrevidenciaActivity;->startActivity(Landroid/content/Intent;)V

    .line 112
    return-void
.end method
