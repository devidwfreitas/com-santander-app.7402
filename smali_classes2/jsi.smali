.class public Ljsi;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/santander/app/novidades/view/NovidadesActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/novidades/view/NovidadesActivity;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Ljsi;->a:Lcom/santander/app/novidades/view/NovidadesActivity;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 2

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;->onPageSelected(I)V

    .line 69
    iget-object v0, p0, Ljsi;->a:Lcom/santander/app/novidades/view/NovidadesActivity;

    invoke-static {v0}, Lcom/santander/app/novidades/view/NovidadesActivity;->a(Lcom/santander/app/novidades/view/NovidadesActivity;)Lcom/santander/app/widget/PagerIndicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/santander/app/widget/PagerIndicator;->setPageSelected(I)V

    .line 70
    iget-object v0, p0, Ljsi;->a:Lcom/santander/app/novidades/view/NovidadesActivity;

    invoke-static {v0}, Lcom/santander/app/novidades/view/NovidadesActivity;->b(Lcom/santander/app/novidades/view/NovidadesActivity;)Ljsc;

    move-result-object v0

    invoke-interface {v0, p1}, Ljsc;->c(I)V

    .line 71
    iget-object v0, p0, Ljsi;->a:Lcom/santander/app/novidades/view/NovidadesActivity;

    invoke-static {v0}, Lcom/santander/app/novidades/view/NovidadesActivity;->b(Lcom/santander/app/novidades/view/NovidadesActivity;)Ljsc;

    move-result-object v0

    invoke-interface {v0, p1}, Ljsc;->a(I)V

    .line 73
    iget-object v0, p0, Ljsi;->a:Lcom/santander/app/novidades/view/NovidadesActivity;

    invoke-static {v0}, Lcom/santander/app/novidades/view/NovidadesActivity;->c(Lcom/santander/app/novidades/view/NovidadesActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    const-string v0, "Marketing_TelaDeNovidades_Acao"

    const-string v1, "Proximo"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_0
    iget-object v0, p0, Ljsi;->a:Lcom/santander/app/novidades/view/NovidadesActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/santander/app/novidades/view/NovidadesActivity;->a(Lcom/santander/app/novidades/view/NovidadesActivity;Z)Z

    .line 78
    return-void
.end method
