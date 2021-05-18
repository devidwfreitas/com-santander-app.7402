.class public Lbr/com/santander/modulo/emprestimoslib/features/remanejamento/ajustarlimite/view/AjustarLimiteActivity;
.super Laka;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Laka;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Laka;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lagi;->activity_remanejamento_ajustar_limite:I

    invoke-virtual {p0, v0}, Lbr/com/santander/modulo/emprestimoslib/features/remanejamento/ajustarlimite/view/AjustarLimiteActivity;->setContentView(I)V

    invoke-virtual {p0}, Lbr/com/santander/modulo/emprestimoslib/features/remanejamento/ajustarlimite/view/AjustarLimiteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "contrato"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lajw;

    invoke-virtual {p0}, Lbr/com/santander/modulo/emprestimoslib/features/remanejamento/ajustarlimite/view/AjustarLimiteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "compartilhado"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lajw;

    if-eqz v1, :cond_0

    new-instance v2, Laig;

    invoke-direct {v2, p0, v0, v1}, Laig;-><init>(Landroid/app/Activity;Lajw;Lajw;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Laig;

    invoke-direct {v1, p0, v0}, Laig;-><init>(Landroid/app/Activity;Lajw;)V

    goto :goto_0
.end method
