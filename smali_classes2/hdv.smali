.class public Lhdv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lhdv;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 175
    iget-object v0, p0, Lhdv;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0, v3}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->a(Lcom/santander/app/dpp/DPPPreenchimentoActivity;Z)Z

    .line 176
    const-string v0, "Investimentos_Poupanca_DepositoProgramado_Acao"

    const-string v1, "ProprioCliente"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lhdv;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->c(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 179
    iget-object v0, p0, Lhdv;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    iget-object v0, v0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lhdv;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    iget-object v0, v0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->d:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lhdv;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    iget-object v0, v0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->e:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 183
    :cond_0
    iget-object v0, p0, Lhdv;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    iget-object v1, p0, Lhdv;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v1}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->d(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lftc;

    move-result-object v1

    invoke-virtual {v1}, Lftc;->c()Ljava/util/Vector;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->a(Lcom/santander/app/dpp/DPPPreenchimentoActivity;Ljava/util/Vector;Z)V

    .line 184
    iget-object v0, p0, Lhdv;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->d(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lftc;

    move-result-object v0

    invoke-virtual {v0}, Lftc;->c()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lhdv;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0, v2}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->b(Lcom/santander/app/dpp/DPPPreenchimentoActivity;Z)Z

    .line 186
    iget-object v0, p0, Lhdv;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    const v1, 0x7f10083b

    invoke-virtual {v0, v1}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lhdv;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    const v1, 0x7f10083c

    invoke-virtual {v0, v1}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 189
    :cond_1
    return-void
.end method
