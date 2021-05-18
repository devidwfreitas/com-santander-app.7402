.class final Lahq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lahf;


# direct methods
.method constructor <init>(Lahf;)V
    .locals 0

    iput-object p1, p0, Lahq;->a:Lahf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    const/high16 v5, 0x14000000

    const/4 v1, 0x1

    iget-object v0, p0, Lahq;->a:Lahf;

    invoke-static {v0}, Lahf;->b(Lahf;)Lajg;

    move-result-object v0

    invoke-virtual {v0}, Lajg;->c()I

    move-result v0

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lahq;->a:Lahf;

    invoke-static {v0}, Lahf;->a(Lahf;)Landroid/app/Activity;

    move-result-object v0

    sget v1, Lagl;->tag_mes_informativo_por_categoria_acao:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lahq;->a:Lahf;

    invoke-static {v1}, Lahf;->a(Lahf;)Landroid/app/Activity;

    move-result-object v1

    sget v2, Lagl;->tag_valor_renegociacao:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Laiy;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lahq;->a:Lahf;

    invoke-static {v1}, Lahf;->a(Lahf;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lbr/com/santander/modulo/emprestimoslib/features/gestao/contratoslist/view/ContratosListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "list"

    new-instance v2, Lejm;

    invoke-direct {v2}, Lejm;-><init>()V

    iget-object v3, p0, Lahq;->a:Lahf;

    invoke-static {v3}, Lahf;->b(Lahf;)Lajg;

    move-result-object v3

    invoke-virtual {v3}, Lajg;->t()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lahr;

    invoke-direct {v4, p0}, Lahr;-><init>(Lahq;)V

    invoke-virtual {v4}, Lahr;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lejm;->b(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "titulo"

    iget-object v2, p0, Lahq;->a:Lahf;

    invoke-static {v2}, Lahf;->a(Lahf;)Landroid/app/Activity;

    move-result-object v2

    sget v3, Lagl;->meus_financiamentos:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lahq;->a:Lahf;

    invoke-static {v1}, Lahf;->a(Lahf;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lahq;->a:Lahf;

    invoke-static {v0}, Lahf;->b(Lahf;)Lajg;

    move-result-object v0

    invoke-virtual {v0}, Lajg;->c()I

    move-result v0

    if-ne v0, v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lahq;->a:Lahf;

    invoke-static {v0}, Lahf;->a(Lahf;)Landroid/app/Activity;

    move-result-object v0

    const-class v2, Lbr/com/santander/modulo/emprestimoslib/features/gestao/detalhescontrato/view/DetalhesContratoActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "contrato"

    iget-object v0, p0, Lahq;->a:Lahf;

    invoke-static {v0}, Lahf;->b(Lahf;)Lajg;

    move-result-object v0

    invoke-virtual {v0}, Lajg;->t()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lahq;->a:Lahf;

    invoke-static {v0}, Lahf;->a(Lahf;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
