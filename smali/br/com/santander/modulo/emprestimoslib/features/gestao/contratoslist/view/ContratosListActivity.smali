.class public Lbr/com/santander/modulo/emprestimoslib/features/gestao/contratoslist/view/ContratosListActivity;
.super Laka;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lajn;",
            ">;"
        }
    .end annotation
.end field


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

    sget v0, Lagi;->activity_contracts_list:I

    invoke-virtual {p0, v0}, Lbr/com/santander/modulo/emprestimoslib/features/gestao/contratoslist/view/ContratosListActivity;->setContentView(I)V

    invoke-virtual {p0}, Lbr/com/santander/modulo/emprestimoslib/features/gestao/contratoslist/view/ContratosListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "list"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lejm;

    invoke-direct {v1}, Lejm;-><init>()V

    new-instance v2, Lago;

    invoke-direct {v2, p0}, Lago;-><init>(Lbr/com/santander/modulo/emprestimoslib/features/gestao/contratoslist/view/ContratosListActivity;)V

    invoke-virtual {v2}, Lago;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lbr/com/santander/modulo/emprestimoslib/features/gestao/contratoslist/view/ContratosListActivity;->a:Ljava/util/List;

    invoke-virtual {p0}, Lbr/com/santander/modulo/emprestimoslib/features/gestao/contratoslist/view/ContratosListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "titulo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lags;

    iget-object v2, p0, Lbr/com/santander/modulo/emprestimoslib/features/gestao/contratoslist/view/ContratosListActivity;->a:Ljava/util/List;

    invoke-direct {v1, p0, v2, v0}, Lags;-><init>(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
