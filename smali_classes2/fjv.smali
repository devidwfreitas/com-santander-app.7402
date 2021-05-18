.class public Lfjv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field final synthetic a:Lcom/santander/app/ParcelamentoFacturaActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/ParcelamentoFacturaActivity;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lfjv;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 281
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 276
    return-void
.end method

.method public onPageSelected(I)V
    .locals 6

    .prologue
    .line 270
    iget-object v0, p0, Lfjv;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    invoke-static {v0}, Lcom/santander/app/ParcelamentoFacturaActivity;->c(Lcom/santander/app/ParcelamentoFacturaActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lfjv;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    invoke-static {v1}, Lcom/santander/app/ParcelamentoFacturaActivity;->d(Lcom/santander/app/ParcelamentoFacturaActivity;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lfjv;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    invoke-static {v2}, Lcom/santander/app/ParcelamentoFacturaActivity;->e(Lcom/santander/app/ParcelamentoFacturaActivity;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lfjv;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    invoke-static {v3}, Lcom/santander/app/ParcelamentoFacturaActivity;->f(Lcom/santander/app/ParcelamentoFacturaActivity;)Lcom/santander/app/widget/Indicator;

    move-result-object v3

    iget-object v4, p0, Lfjv;->a:Lcom/santander/app/ParcelamentoFacturaActivity;

    invoke-static {v4}, Lcom/santander/app/ParcelamentoFacturaActivity;->b(Lcom/santander/app/ParcelamentoFacturaActivity;)Landroid/app/Activity;

    move-result-object v5

    move v4, p1

    invoke-static/range {v0 .. v5}, Lgpm;->a(Landroid/support/v4/view/ViewPager;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/santander/app/widget/Indicator;ILandroid/app/Activity;)V

    .line 272
    return-void
.end method
