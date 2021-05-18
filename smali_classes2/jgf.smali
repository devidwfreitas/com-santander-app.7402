.class public Ljgf;
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
    .line 116
    iput-object p1, p0, Ljgf;->a:Lcom/santander/app/investimentos/fundos/presentation/FiltroFundosActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 119
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljdw;

    .line 122
    iget-object v1, p0, Ljgf;->a:Lcom/santander/app/investimentos/fundos/presentation/FiltroFundosActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/santander/app/investimentos/fundos/presentation/FiltroFundosActivity;->a(Lcom/santander/app/investimentos/fundos/presentation/FiltroFundosActivity;Ljdw;)Ljdw;

    .line 124
    const-string v1, "Investimentos_Fundos_Filtrar_Acao"

    const-string v2, "Filtrar"

    invoke-static {v1, v2}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0}, Ljdw;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 127
    invoke-virtual {v0, v3}, Ljdw;->a(Z)V

    :goto_0
    move v2, v3

    .line 134
    :goto_1
    iget-object v1, p0, Ljgf;->a:Lcom/santander/app/investimentos/fundos/presentation/FiltroFundosActivity;

    invoke-static {v1}, Lcom/santander/app/investimentos/fundos/presentation/FiltroFundosActivity;->c(Lcom/santander/app/investimentos/fundos/presentation/FiltroFundosActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_2

    .line 135
    invoke-virtual {v0}, Ljdw;->b()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Ljgf;->a:Lcom/santander/app/investimentos/fundos/presentation/FiltroFundosActivity;

    invoke-static {v1}, Lcom/santander/app/investimentos/fundos/presentation/FiltroFundosActivity;->c(Lcom/santander/app/investimentos/fundos/presentation/FiltroFundosActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljdw;

    invoke-virtual {v1}, Ljdw;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 136
    iget-object v1, p0, Ljgf;->a:Lcom/santander/app/investimentos/fundos/presentation/FiltroFundosActivity;

    invoke-static {v1}, Lcom/santander/app/investimentos/fundos/presentation/FiltroFundosActivity;->c(Lcom/santander/app/investimentos/fundos/presentation/FiltroFundosActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljdw;

    invoke-virtual {v0}, Ljdw;->a()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljdw;->a(Z)V

    .line 134
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 129
    :cond_0
    invoke-virtual {v0, v4}, Ljdw;->a(Z)V

    .line 130
    iget-object v1, p0, Ljgf;->a:Lcom/santander/app/investimentos/fundos/presentation/FiltroFundosActivity;

    invoke-static {v1, v0}, Lcom/santander/app/investimentos/fundos/presentation/FiltroFundosActivity;->a(Lcom/santander/app/investimentos/fundos/presentation/FiltroFundosActivity;Ljdw;)Ljdw;

    .line 131
    iget-object v1, p0, Ljgf;->a:Lcom/santander/app/investimentos/fundos/presentation/FiltroFundosActivity;

    invoke-static {v1}, Lcom/santander/app/investimentos/fundos/presentation/FiltroFundosActivity;->b(Lcom/santander/app/investimentos/fundos/presentation/FiltroFundosActivity;)Lcom/santander/app/components/view/SantanderButtonView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/santander/app/components/view/SantanderButtonView;->setEnabled(Z)V

    goto :goto_0

    .line 138
    :cond_1
    iget-object v1, p0, Ljgf;->a:Lcom/santander/app/investimentos/fundos/presentation/FiltroFundosActivity;

    invoke-static {v1}, Lcom/santander/app/investimentos/fundos/presentation/FiltroFundosActivity;->c(Lcom/santander/app/investimentos/fundos/presentation/FiltroFundosActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljdw;

    invoke-virtual {v1, v3}, Ljdw;->a(Z)V

    goto :goto_2

    .line 141
    :cond_2
    return-void
.end method
