.class public Lfnb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lfnb;->a:Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 308
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lfnb;->a:Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;

    invoke-virtual {v0}, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/santander/app/Rendafixa_posicaoconsolidada_Detahle;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 309
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfwi;

    .line 310
    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 311
    iget-object v0, p0, Lfnb;->a:Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;

    invoke-virtual {v0, v1}, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->startActivity(Landroid/content/Intent;)V

    .line 312
    return-void
.end method
