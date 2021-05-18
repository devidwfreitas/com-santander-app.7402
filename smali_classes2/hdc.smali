.class public Lhdc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/dpp/DPPComprovanteActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/dpp/DPPComprovanteActivity;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lhdc;->a:Lcom/santander/app/dpp/DPPComprovanteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 93
    const-string v0, "Investimentos_Poupanca_DepositoProgramado_ProprioCliente_Comprovante_Acao"

    const-string v1, "Compartilhar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lhdc;->a:Lcom/santander/app/dpp/DPPComprovanteActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPComprovanteActivity;->a(Lcom/santander/app/dpp/DPPComprovanteActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lhdc;->a:Lcom/santander/app/dpp/DPPComprovanteActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPComprovanteActivity;->b(Lcom/santander/app/dpp/DPPComprovanteActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lhdc;->a:Lcom/santander/app/dpp/DPPComprovanteActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPComprovanteActivity;->c(Lcom/santander/app/dpp/DPPComprovanteActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lhdc;->a:Lcom/santander/app/dpp/DPPComprovanteActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPComprovanteActivity;->d(Lcom/santander/app/dpp/DPPComprovanteActivity;)Lcom/santander/app/dpp/DPPComprovanteActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/dpp/DPPComprovanteActivity;->a()Ljava/lang/String;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lhdc;->a:Lcom/santander/app/dpp/DPPComprovanteActivity;

    invoke-static {v1}, Lcom/santander/app/dpp/DPPComprovanteActivity;->a(Lcom/santander/app/dpp/DPPComprovanteActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 100
    iget-object v1, p0, Lhdc;->a:Lcom/santander/app/dpp/DPPComprovanteActivity;

    invoke-static {v1}, Lcom/santander/app/dpp/DPPComprovanteActivity;->b(Lcom/santander/app/dpp/DPPComprovanteActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 101
    iget-object v1, p0, Lhdc;->a:Lcom/santander/app/dpp/DPPComprovanteActivity;

    invoke-static {v1}, Lcom/santander/app/dpp/DPPComprovanteActivity;->c(Lcom/santander/app/dpp/DPPComprovanteActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 102
    const-string v1, "Dep\u00f3sito Programado de Poupan\u00e7a"

    .line 103
    const-string v2, ""

    .line 104
    iget-object v3, p0, Lhdc;->a:Lcom/santander/app/dpp/DPPComprovanteActivity;

    invoke-static {v3}, Lcom/santander/app/dpp/DPPComprovanteActivity;->d(Lcom/santander/app/dpp/DPPComprovanteActivity;)Lcom/santander/app/dpp/DPPComprovanteActivity;

    move-result-object v3

    invoke-static {v3, v1, v2, v0}, Lmyj;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method
