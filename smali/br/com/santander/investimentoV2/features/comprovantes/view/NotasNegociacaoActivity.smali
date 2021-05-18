.class public Lbr/com/santander/investimentoV2/features/comprovantes/view/NotasNegociacaoActivity;
.super Lack;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lack;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 14
    invoke-super {p0, p1}, Lack;->onCreate(Landroid/os/Bundle;)V

    .line 15
    sget v0, Llc;->activity_notas_negociacao:I

    invoke-virtual {p0, v0}, Lbr/com/santander/investimentoV2/features/comprovantes/view/NotasNegociacaoActivity;->setContentView(I)V

    .line 16
    new-instance v0, Loi;

    invoke-direct {v0, p0}, Loi;-><init>(Lack;)V

    .line 17
    return-void
.end method
