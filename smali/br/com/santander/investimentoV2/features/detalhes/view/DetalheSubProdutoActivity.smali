.class public Lbr/com/santander/investimentoV2/features/detalhes/view/DetalheSubProdutoActivity;
.super Lack;
.source "SourceFile"


# instance fields
.field private a:Lrz;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lack;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0}, Lack;->onBackPressed()V

    .line 30
    invoke-virtual {p0}, Lbr/com/santander/investimentoV2/features/detalhes/view/DetalheSubProdutoActivity;->finish()V

    .line 31
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 22
    invoke-super {p0, p1}, Lack;->onCreate(Landroid/os/Bundle;)V

    .line 23
    sget v0, Llc;->activity_det_subproduto:I

    invoke-virtual {p0, v0}, Lbr/com/santander/investimentoV2/features/detalhes/view/DetalheSubProdutoActivity;->setContentView(I)V

    .line 24
    new-instance v0, Lrz;

    invoke-direct {v0, p0}, Lrz;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lbr/com/santander/investimentoV2/features/detalhes/view/DetalheSubProdutoActivity;->a:Lrz;

    .line 25
    return-void
.end method
