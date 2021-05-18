.class public Lfmp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field final synthetic a:Lcom/santander/app/RendaFixaResgateActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/RendaFixaResgateActivity;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lfmp;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 337
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 331
    return-void
.end method

.method public onPageSelected(I)V
    .locals 7

    .prologue
    const/16 v2, 0x8

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 312
    if-ne p1, v6, :cond_0

    .line 313
    iget-object v0, p0, Lfmp;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaResgateActivity;->d(Lcom/santander/app/RendaFixaResgateActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lfmp;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaResgateActivity;->b(Lcom/santander/app/RendaFixaResgateActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lfmp;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaResgateActivity;->e(Lcom/santander/app/RendaFixaResgateActivity;)Lcom/santander/app/widget/Indicator;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/santander/app/widget/Indicator;->setSelected(I)V

    .line 321
    :goto_0
    iget-object v0, p0, Lfmp;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaResgateActivity;->c(Lcom/santander/app/RendaFixaResgateActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lfmp;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {v1}, Lcom/santander/app/RendaFixaResgateActivity;->f(Lcom/santander/app/RendaFixaResgateActivity;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lfmp;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {v2}, Lcom/santander/app/RendaFixaResgateActivity;->g(Lcom/santander/app/RendaFixaResgateActivity;)Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lfmp;->a:Lcom/santander/app/RendaFixaResgateActivity;

    .line 322
    invoke-static {v4}, Lcom/santander/app/RendaFixaResgateActivity;->h(Lcom/santander/app/RendaFixaResgateActivity;)Lcom/santander/app/RendaFixaResgateActivity;

    move-result-object v5

    move v4, p1

    .line 321
    invoke-static/range {v0 .. v5}, Lgpm;->a(Landroid/support/v4/view/ViewPager;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/santander/app/widget/Indicator;ILandroid/app/Activity;)V

    .line 324
    const-string v1, "Investimentos_RendaFixa_Resgate_Tipo_Acao"

    if-ne p1, v6, :cond_1

    const-string v0, "Valor Total"

    :goto_1
    invoke-static {v1, v0}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    return-void

    .line 317
    :cond_0
    iget-object v0, p0, Lfmp;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaResgateActivity;->d(Lcom/santander/app/RendaFixaResgateActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 318
    iget-object v0, p0, Lfmp;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaResgateActivity;->b(Lcom/santander/app/RendaFixaResgateActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 319
    iget-object v0, p0, Lfmp;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaResgateActivity;->e(Lcom/santander/app/RendaFixaResgateActivity;)Lcom/santander/app/widget/Indicator;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/santander/app/widget/Indicator;->setSelected(I)V

    goto :goto_0

    .line 324
    :cond_1
    const-string v0, "Valor Parcial"

    goto :goto_1
.end method
