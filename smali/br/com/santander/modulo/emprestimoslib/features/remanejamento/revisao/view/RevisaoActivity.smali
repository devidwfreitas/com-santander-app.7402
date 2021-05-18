.class public Lbr/com/santander/modulo/emprestimoslib/features/remanejamento/revisao/view/RevisaoActivity;
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

    sget v0, Lagi;->activity_remanejamento_revisao:I

    invoke-virtual {p0, v0}, Lbr/com/santander/modulo/emprestimoslib/features/remanejamento/revisao/view/RevisaoActivity;->setContentView(I)V

    invoke-virtual {p0}, Lbr/com/santander/modulo/emprestimoslib/features/remanejamento/revisao/view/RevisaoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "contrato"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lbr/com/santander/modulo/emprestimoslib/features/remanejamento/revisao/view/RevisaoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "contrato"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lajw;

    new-instance v1, Laix;

    invoke-direct {v1, p0, v0}, Laix;-><init>(Landroid/app/Activity;Lajw;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lbr/com/santander/modulo/emprestimoslib/features/remanejamento/revisao/view/RevisaoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "contratosList"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbr/com/santander/modulo/emprestimoslib/features/remanejamento/revisao/view/RevisaoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "contratosList"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v1, Laix;

    invoke-direct {v1, p0, v0}, Laix;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    goto :goto_0
.end method
