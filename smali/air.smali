.class final Lair;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lajw;

.field private synthetic b:Laip;


# direct methods
.method constructor <init>(Laip;Lajw;)V
    .locals 0

    iput-object p1, p0, Lair;->b:Laip;

    iput-object p2, p0, Lair;->a:Lajw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lair;->b:Laip;

    invoke-static {v0}, Laip;->a(Laip;)Landroid/content/Context;

    move-result-object v0

    const-class v2, Lbr/com/santander/modulo/emprestimoslib/features/remanejamento/ajustarlimite/view/AjustarLimiteActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "contrato"

    iget-object v2, p0, Lair;->a:Lajw;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v0, p0, Lair;->a:Lajw;

    invoke-virtual {v0}, Lajw;->j()Ljava/lang/String;

    move-result-object v0

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lair;->a:Lajw;

    invoke-virtual {v0}, Lajw;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lajt;->CARTAO:Lajt;

    invoke-virtual {v2}, Lajt;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lair;->b:Laip;

    invoke-static {v0}, Laip;->b(Laip;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajw;

    invoke-virtual {v0}, Lajw;->j()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lair;->a:Lajw;

    invoke-virtual {v4}, Lajw;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "compartilhado"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const/high16 v0, 0x14000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lair;->b:Laip;

    invoke-static {v0}, Laip;->a(Laip;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
