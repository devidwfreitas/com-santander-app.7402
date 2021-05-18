.class public Lhdw;
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
    .line 192
    iput-object p1, p0, Lhdw;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 195
    iget-object v0, p0, Lhdw;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0, v2}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->a(Lcom/santander/app/dpp/DPPPreenchimentoActivity;Z)Z

    .line 196
    const-string v0, "Investimentos_Poupanca_DepositoProgramado_Acao"

    const-string v1, "Terceiros"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lhdw;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->c(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)I

    move-result v0

    if-eq v0, v4, :cond_0

    .line 199
    iget-object v0, p0, Lhdw;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    iget-object v0, v0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lhdw;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    iget-object v0, v0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lhdw;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    iget-object v0, v0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 204
    :cond_0
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 206
    iget-object v0, p0, Lhdw;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->e(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    move v1, v2

    .line 208
    :goto_0
    iget-object v0, p0, Lhdw;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->e(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 210
    iget-object v0, p0, Lhdw;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->e(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lheq;

    invoke-virtual {v0}, Lheq;->o()Ljava/lang/String;

    move-result-object v0

    const-string v3, "T"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    new-instance v6, Lftl;

    invoke-direct {v6}, Lftl;-><init>()V

    .line 213
    invoke-virtual {v6}, Lftl;->c()Lftj;

    move-result-object v3

    iget-object v0, p0, Lhdw;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->e(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lheq;

    invoke-virtual {v0}, Lheq;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lftj;->a(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v6}, Lftl;->c()Lftj;

    move-result-object v3

    iget-object v0, p0, Lhdw;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->e(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lheq;

    invoke-virtual {v0}, Lheq;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lftj;->d(Ljava/lang/String;)V

    move v3, v2

    .line 218
    :goto_1
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v3, v0, :cond_5

    .line 220
    invoke-virtual {v5, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftl;

    invoke-virtual {v0}, Lftl;->c()Lftj;

    move-result-object v0

    invoke-virtual {v0}, Lftj;->a()Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-virtual {v6}, Lftl;->c()Lftj;

    move-result-object v7

    invoke-virtual {v7}, Lftj;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 222
    invoke-virtual {v5, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftl;

    invoke-virtual {v0}, Lftl;->c()Lftj;

    move-result-object v0

    invoke-virtual {v0}, Lftj;->d()Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-virtual {v6}, Lftl;->c()Lftj;

    move-result-object v7

    invoke-virtual {v7}, Lftj;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v4

    .line 230
    :goto_2
    if-nez v0, :cond_1

    .line 232
    invoke-virtual {v5, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 208
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 218
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 240
    :cond_3
    invoke-virtual {v5}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 242
    iget-object v0, p0, Lhdw;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    const v1, 0x7f10083b

    invoke-virtual {v0, v1}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lhdw;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    const v1, 0x7f10083c

    invoke-virtual {v0, v1}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Lhdw;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0, v4}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->b(Lcom/santander/app/dpp/DPPPreenchimentoActivity;Z)Z

    .line 251
    :goto_3
    iget-object v0, p0, Lhdw;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0, v5, v2}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->a(Lcom/santander/app/dpp/DPPPreenchimentoActivity;Ljava/util/Vector;Z)V

    .line 253
    return-void

    .line 248
    :cond_4
    iget-object v0, p0, Lhdw;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0, v2}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->b(Lcom/santander/app/dpp/DPPPreenchimentoActivity;Z)Z

    goto :goto_3

    :cond_5
    move v0, v2

    goto :goto_2
.end method
