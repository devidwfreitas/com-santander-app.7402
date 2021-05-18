.class public Lfkz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lfkz;->a:Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lfkz;->a:Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;

    invoke-virtual {v0, p1}, Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;->goAplicacaoPoupanca(Landroid/view/View;)V

    .line 144
    return-void
.end method
