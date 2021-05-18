.class public Lfkg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# instance fields
.field final synthetic a:Lfou;

.field final synthetic b:Lcom/santander/app/PoupancaAplicacaoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/PoupancaAplicacaoActivity;Lfou;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lfkg;->b:Lcom/santander/app/PoupancaAplicacaoActivity;

    iput-object p2, p0, Lfkg;->a:Lfou;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lfkg;->b:Lcom/santander/app/PoupancaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/PoupancaAplicacaoActivity;->a(Lcom/santander/app/PoupancaAplicacaoActivity;)I

    move-result v0

    iget-object v1, p0, Lfkg;->a:Lfou;

    invoke-virtual {v1}, Lfou;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    .line 186
    iget-object v0, p0, Lfkg;->b:Lcom/santander/app/PoupancaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/PoupancaAplicacaoActivity;->b(Lcom/santander/app/PoupancaAplicacaoActivity;)Lcom/santander/app/widget/Carrossel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/widget/Carrossel;->a()I

    move-result v0

    if-nez v0, :cond_0

    .line 187
    const-string v0, "Investimentos_Poupanca_Aplicar_Data_Opcao_Acao"

    const-string v1, "Hoje"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v0, "Investimentos_Poupanca_Aplicar_Data_Acao"

    iget-object v1, p0, Lfkg;->b:Lcom/santander/app/PoupancaAplicacaoActivity;

    invoke-static {v1}, Lcom/santander/app/PoupancaAplicacaoActivity;->c(Lcom/santander/app/PoupancaAplicacaoActivity;)Lfos;

    move-result-object v1

    invoke-virtual {v1}, Lfos;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :goto_0
    iget-object v0, p0, Lfkg;->b:Lcom/santander/app/PoupancaAplicacaoActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/santander/app/PoupancaAplicacaoActivity;->a(Lcom/santander/app/PoupancaAplicacaoActivity;I)I

    .line 200
    :goto_1
    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lfkg;->b:Lcom/santander/app/PoupancaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/PoupancaAplicacaoActivity;->b(Lcom/santander/app/PoupancaAplicacaoActivity;)Lcom/santander/app/widget/Carrossel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/widget/Carrossel;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 190
    const-string v0, "Investimentos_Poupanca_Aplicar_Data_Opcao_Acao"

    const-string v1, "DataAgendada"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v0, "Investimentos_Poupanca_Aplicar_Data_Acao"

    iget-object v1, p0, Lfkg;->b:Lcom/santander/app/PoupancaAplicacaoActivity;

    invoke-static {v1}, Lcom/santander/app/PoupancaAplicacaoActivity;->d(Lcom/santander/app/PoupancaAplicacaoActivity;)Lfos;

    move-result-object v1

    invoke-virtual {v1}, Lfos;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 193
    :cond_1
    const-string v0, "Investimentos_Poupanca_Aplicar_Data_Opcao_Acao"

    const-string v1, "DepositoProgramado"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 198
    :cond_2
    iget-object v0, p0, Lfkg;->b:Lcom/santander/app/PoupancaAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/PoupancaAplicacaoActivity;->e(Lcom/santander/app/PoupancaAplicacaoActivity;)I

    goto :goto_1
.end method
