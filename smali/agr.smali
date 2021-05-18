.class final Lagr;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lajn;

.field private synthetic b:Lagp;


# direct methods
.method constructor <init>(Lagp;Lajn;)V
    .locals 0

    iput-object p1, p0, Lagr;->b:Lagp;

    iput-object p2, p0, Lagr;->a:Lajn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lagr;->a:Lajn;

    invoke-virtual {v0}, Lajn;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lajt;->EMPRESTIMO:Lajt;

    invoke-virtual {v1}, Lajt;->getCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lagr;->b:Lagp;

    invoke-static {v0}, Lagp;->a(Lagp;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lagl;->tag_meus_emprestimos_acao:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lagr;->b:Lagp;

    invoke-static {v1}, Lagp;->a(Lagp;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lagl;->tag_valor_detalhe_emprestimo:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Laiy;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lagr;->b:Lagp;

    invoke-static {v1}, Lagp;->a(Lagp;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lbr/com/santander/modulo/emprestimoslib/features/gestao/detalhescontrato/view/DetalhesContratoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "contrato"

    iget-object v2, p0, Lagr;->a:Lajn;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lagr;->b:Lagp;

    invoke-static {v1}, Lagp;->a(Lagp;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    iget-object v0, p0, Lagr;->a:Lajn;

    invoke-virtual {v0}, Lajn;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "23"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lagr;->a:Lajn;

    invoke-virtual {v0}, Lajn;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lagr;->b:Lagp;

    invoke-static {v0}, Lagp;->a(Lagp;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lagl;->tag_meus_financiamentos_acao:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lagr;->b:Lagp;

    invoke-static {v1}, Lagp;->a(Lagp;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lagl;->tag_valor_detalhe_financiamento:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Laiy;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lagr;->a:Lajn;

    invoke-virtual {v0}, Lajn;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lajt;->RENEGOCIACAO:Lajt;

    invoke-virtual {v1}, Lajt;->getCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_0
.end method
