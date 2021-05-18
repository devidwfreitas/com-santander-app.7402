.class public Lfjk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/santander/app/PagamentoFacturaCartoesActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/PagamentoFacturaCartoesActivity;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lfjk;->a:Lcom/santander/app/PagamentoFacturaCartoesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 331
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 332
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 333
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 334
    iget-object v0, p0, Lfjk;->a:Lcom/santander/app/PagamentoFacturaCartoesActivity;

    invoke-static {v0}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->h(Lcom/santander/app/PagamentoFacturaCartoesActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 336
    iget-object v0, p0, Lfjk;->a:Lcom/santander/app/PagamentoFacturaCartoesActivity;

    invoke-static {v0}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->i(Lcom/santander/app/PagamentoFacturaCartoesActivity;)I

    move-result v0

    iget-object v1, p0, Lfjk;->a:Lcom/santander/app/PagamentoFacturaCartoesActivity;

    invoke-static {v1}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->j(Lcom/santander/app/PagamentoFacturaCartoesActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    iget-object v2, p0, Lfjk;->a:Lcom/santander/app/PagamentoFacturaCartoesActivity;

    invoke-static {v2}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->j(Lcom/santander/app/PagamentoFacturaCartoesActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    mul-int/2addr v1, v2

    if-ne v0, v1, :cond_2

    .line 337
    const-string v0, "Cartoes_PagamentoDaFatura_SelecionarCartaoComFinal_Acao"

    const-string v1, "SelecionarCartoes"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lfjk;->a:Lcom/santander/app/PagamentoFacturaCartoesActivity;

    invoke-static {v0, v3}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->a(Lcom/santander/app/PagamentoFacturaCartoesActivity;I)I

    .line 349
    :cond_1
    :goto_0
    return v3

    .line 340
    :cond_2
    iget-object v0, p0, Lfjk;->a:Lcom/santander/app/PagamentoFacturaCartoesActivity;

    invoke-static {v0}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->k(Lcom/santander/app/PagamentoFacturaCartoesActivity;)I

    goto :goto_0

    .line 345
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 347
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0
.end method
