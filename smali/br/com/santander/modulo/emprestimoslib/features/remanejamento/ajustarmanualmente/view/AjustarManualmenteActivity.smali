.class public Lbr/com/santander/modulo/emprestimoslib/features/remanejamento/ajustarmanualmente/view/AjustarManualmenteActivity;
.super Laka;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Laka;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Laka;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lagi;->activity_remanejamento_ajuste_manual:I

    invoke-virtual {p0, v0}, Lbr/com/santander/modulo/emprestimoslib/features/remanejamento/ajustarmanualmente/view/AjustarManualmenteActivity;->setContentView(I)V

    new-instance v0, Lail;

    invoke-direct {v0, p0}, Lail;-><init>(Landroid/app/Activity;)V

    return-void
.end method
