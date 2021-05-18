.class public Lfkn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# instance fields
.field final synthetic a:Lfou;

.field final synthetic b:Lcom/santander/app/PoupancaResgateActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/PoupancaResgateActivity;Lfou;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lfkn;->b:Lcom/santander/app/PoupancaResgateActivity;

    iput-object p2, p0, Lfkn;->a:Lfou;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lfkn;->b:Lcom/santander/app/PoupancaResgateActivity;

    invoke-static {v0}, Lcom/santander/app/PoupancaResgateActivity;->a(Lcom/santander/app/PoupancaResgateActivity;)I

    move-result v0

    iget-object v1, p0, Lfkn;->a:Lfou;

    invoke-virtual {v1}, Lfou;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_2

    .line 153
    const-string v1, "Investimentos_Poupanca_Resgatar_Data_Opcao_Acao"

    iget-object v0, p0, Lfkn;->b:Lcom/santander/app/PoupancaResgateActivity;

    invoke-static {v0}, Lcom/santander/app/PoupancaResgateActivity;->b(Lcom/santander/app/PoupancaResgateActivity;)Lcom/santander/app/widget/Carrossel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/widget/Carrossel;->a()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Hoje"

    :goto_0
    invoke-static {v1, v0}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v1, "Investimentos_Poupanca_Resgatar_Data_Acao"

    iget-object v0, p0, Lfkn;->b:Lcom/santander/app/PoupancaResgateActivity;

    invoke-static {v0}, Lcom/santander/app/PoupancaResgateActivity;->b(Lcom/santander/app/PoupancaResgateActivity;)Lcom/santander/app/widget/Carrossel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/widget/Carrossel;->a()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lfkn;->b:Lcom/santander/app/PoupancaResgateActivity;

    invoke-static {v0}, Lcom/santander/app/PoupancaResgateActivity;->c(Lcom/santander/app/PoupancaResgateActivity;)Lfos;

    move-result-object v0

    invoke-virtual {v0}, Lfos;->b()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v1, v0}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lfkn;->b:Lcom/santander/app/PoupancaResgateActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/santander/app/PoupancaResgateActivity;->a(Lcom/santander/app/PoupancaResgateActivity;I)I

    .line 160
    :goto_2
    return-void

    .line 153
    :cond_0
    const-string v0, "DataAgendada"

    goto :goto_0

    .line 154
    :cond_1
    iget-object v0, p0, Lfkn;->b:Lcom/santander/app/PoupancaResgateActivity;

    invoke-static {v0}, Lcom/santander/app/PoupancaResgateActivity;->d(Lcom/santander/app/PoupancaResgateActivity;)Lfos;

    move-result-object v0

    invoke-virtual {v0}, Lfos;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 158
    :cond_2
    iget-object v0, p0, Lfkn;->b:Lcom/santander/app/PoupancaResgateActivity;

    invoke-static {v0}, Lcom/santander/app/PoupancaResgateActivity;->e(Lcom/santander/app/PoupancaResgateActivity;)I

    goto :goto_2
.end method
