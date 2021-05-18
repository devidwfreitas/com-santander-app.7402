.class public Lbr/com/santander/investimentoV2/features/investirPorValor/view/InvestirPorValorActivity;
.super Lack;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lack;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 13
    invoke-super {p0, p1}, Lack;->onCreate(Landroid/os/Bundle;)V

    .line 14
    sget v0, Llc;->activity_investir_por_valor:I

    invoke-virtual {p0, v0}, Lbr/com/santander/investimentoV2/features/investirPorValor/view/InvestirPorValorActivity;->setContentView(I)V

    .line 15
    new-instance v0, Luo;

    invoke-direct {v0, p0}, Luo;-><init>(Lack;)V

    .line 16
    return-void
.end method
