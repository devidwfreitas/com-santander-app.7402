.class public Lfkp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field final synthetic a:Lcom/santander/app/PoupancaResgateActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/PoupancaResgateActivity;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lfkp;->a:Lcom/santander/app/PoupancaResgateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 210
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 205
    return-void
.end method

.method public onPageSelected(I)V
    .locals 6

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 184
    iget-object v0, p0, Lfkp;->a:Lcom/santander/app/PoupancaResgateActivity;

    invoke-static {v0}, Lcom/santander/app/PoupancaResgateActivity;->f(Lcom/santander/app/PoupancaResgateActivity;)Lcom/santander/app/widget/Indicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/santander/app/widget/Indicator;->setSelected(I)V

    .line 185
    if-nez p1, :cond_1

    .line 186
    iget-object v0, p0, Lfkp;->a:Lcom/santander/app/PoupancaResgateActivity;

    invoke-static {v0}, Lcom/santander/app/PoupancaResgateActivity;->g(Lcom/santander/app/PoupancaResgateActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lfkp;->a:Lcom/santander/app/PoupancaResgateActivity;

    invoke-static {v0}, Lcom/santander/app/PoupancaResgateActivity;->h(Lcom/santander/app/PoupancaResgateActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 192
    :goto_0
    iget-object v0, p0, Lfkp;->a:Lcom/santander/app/PoupancaResgateActivity;

    invoke-static {v0}, Lcom/santander/app/PoupancaResgateActivity;->i(Lcom/santander/app/PoupancaResgateActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lfkp;->a:Lcom/santander/app/PoupancaResgateActivity;

    invoke-static {v1}, Lcom/santander/app/PoupancaResgateActivity;->j(Lcom/santander/app/PoupancaResgateActivity;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lfkp;->a:Lcom/santander/app/PoupancaResgateActivity;

    invoke-static {v2}, Lcom/santander/app/PoupancaResgateActivity;->k(Lcom/santander/app/PoupancaResgateActivity;)Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lfkp;->a:Lcom/santander/app/PoupancaResgateActivity;

    invoke-static {v4}, Lcom/santander/app/PoupancaResgateActivity;->l(Lcom/santander/app/PoupancaResgateActivity;)Landroid/app/Activity;

    move-result-object v5

    move v4, p1

    invoke-static/range {v0 .. v5}, Lgpm;->a(Landroid/support/v4/view/ViewPager;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/santander/app/widget/Indicator;ILandroid/app/Activity;)V

    .line 195
    const-string v1, "Investimentos_Poupanca_Resgatar_Tipo_Acao"

    iget-object v0, p0, Lfkp;->a:Lcom/santander/app/PoupancaResgateActivity;

    invoke-static {v0}, Lcom/santander/app/PoupancaResgateActivity;->h(Lcom/santander/app/PoupancaResgateActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ValorTotal"

    :goto_1
    invoke-static {v1, v0}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lfkp;->a:Lcom/santander/app/PoupancaResgateActivity;

    invoke-static {v0}, Lcom/santander/app/PoupancaResgateActivity;->h(Lcom/santander/app/PoupancaResgateActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 197
    const-string v0, "Investimentos_Poupanca_Resgatar_Tipo_Acao"

    iget-object v1, p0, Lfkp;->a:Lcom/santander/app/PoupancaResgateActivity;

    invoke-static {v1}, Lcom/santander/app/PoupancaResgateActivity;->h(Lcom/santander/app/PoupancaResgateActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :cond_0
    return-void

    .line 189
    :cond_1
    iget-object v0, p0, Lfkp;->a:Lcom/santander/app/PoupancaResgateActivity;

    invoke-static {v0}, Lcom/santander/app/PoupancaResgateActivity;->g(Lcom/santander/app/PoupancaResgateActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lfkp;->a:Lcom/santander/app/PoupancaResgateActivity;

    invoke-static {v0}, Lcom/santander/app/PoupancaResgateActivity;->h(Lcom/santander/app/PoupancaResgateActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 195
    :cond_2
    const-string v0, "ValorParcial"

    goto :goto_1
.end method
