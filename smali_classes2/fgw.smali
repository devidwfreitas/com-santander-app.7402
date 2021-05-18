.class public Lfgw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field final synthetic a:Lcom/santander/app/CadastramentoFacturaActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/CadastramentoFacturaActivity;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lfgw;->a:Lcom/santander/app/CadastramentoFacturaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 257
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 252
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .prologue
    .line 245
    const-string v0, "Cartoes_CadastrarFaturaPorEmail_Acao"

    const-string v1, "SelecionarEmail"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lfgw;->a:Lcom/santander/app/CadastramentoFacturaActivity;

    invoke-static {v0}, Lcom/santander/app/CadastramentoFacturaActivity;->f(Lcom/santander/app/CadastramentoFacturaActivity;)V

    .line 247
    return-void
.end method
