.class public Lfmy;
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
    .line 125
    iput-object p1, p0, Lfmy;->a:Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lfmy;->a:Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;

    invoke-virtual {v0, p1}, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->goAplicar(Landroid/view/View;)V

    .line 129
    return-void
.end method
