.class public Lbr/com/santander/modulo/emprestimoslib/features/gestao/detalhescontrato/view/DetalhesContratoActivity;
.super Laka;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Laka;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Laka;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lagi;->activity_detalhe_contrato:I

    invoke-virtual {p0, v0}, Lbr/com/santander/modulo/emprestimoslib/features/gestao/detalhescontrato/view/DetalhesContratoActivity;->setContentView(I)V

    invoke-virtual {p0}, Lbr/com/santander/modulo/emprestimoslib/features/gestao/detalhescontrato/view/DetalhesContratoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "contrato"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lajn;

    new-instance v1, Lagu;

    invoke-direct {v1, p0, v0}, Lagu;-><init>(Laka;Lajn;)V

    return-void
.end method
