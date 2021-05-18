.class public Lbr/com/santander/modulo/emprestimoslib/features/gestao/main/view/CreditoMainActivity;
.super Landroid/support/v4/app/FragmentActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lagi;->activity_credito_main:I

    invoke-virtual {p0, v0}, Lbr/com/santander/modulo/emprestimoslib/features/gestao/main/view/CreditoMainActivity;->setContentView(I)V

    invoke-virtual {p0}, Lbr/com/santander/modulo/emprestimoslib/features/gestao/main/view/CreditoMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbr/com/santander/modulo/emprestimoslib/features/gestao/main/view/CreditoMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "openCP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lafw;->a()Lafw;

    move-result-object v0

    invoke-virtual {v0}, Lafw;->c()V

    invoke-virtual {p0}, Lbr/com/santander/modulo/emprestimoslib/features/gestao/main/view/CreditoMainActivity;->finish()V

    :cond_0
    new-instance v0, Lahe;

    invoke-direct {v0, p0}, Lahe;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    return-void
.end method
