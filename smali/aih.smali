.class final Laih;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Laig;


# direct methods
.method constructor <init>(Laig;)V
    .locals 0

    iput-object p1, p0, Laih;->a:Laig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    const/high16 v3, 0x1060000

    iget-object v0, p0, Laih;->a:Laig;

    iget-object v1, p0, Laih;->a:Laig;

    iget-object v2, p0, Laih;->a:Laig;

    invoke-static {v2}, Laig;->a(Laig;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Laig;->a(Laig;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Laig;->a(Laig;I)I

    iget-object v0, p0, Laih;->a:Laig;

    iget-object v1, p0, Laih;->a:Laig;

    iget-object v2, p0, Laih;->a:Laig;

    invoke-static {v2}, Laig;->b(Laig;)Lajw;

    move-result-object v2

    invoke-virtual {v2}, Lajw;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Laig;->a(Laig;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Laig;->b(Laig;I)I

    iget-object v0, p0, Laih;->a:Laig;

    iget-object v1, p0, Laih;->a:Laig;

    iget-object v2, p0, Laih;->a:Laig;

    invoke-static {v2}, Laig;->b(Laig;)Lajw;

    move-result-object v2

    invoke-virtual {v2}, Lajw;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Laig;->a(Laig;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Laig;->c(Laig;I)I

    iget-object v0, p0, Laih;->a:Laig;

    invoke-static {v0}, Laig;->c(Laig;)I

    move-result v0

    iget-object v1, p0, Laih;->a:Laig;

    invoke-static {v1}, Laig;->d(Laig;)I

    move-result v1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Laih;->a:Laig;

    iget-object v1, p0, Laih;->a:Laig;

    invoke-static {v1}, Laig;->e(Laig;)Landroid/app/Activity;

    move-result-object v1

    sget v2, Lagl;->valor_maior_que_maximo:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laig;->a(Ljava/lang/String;)V

    iget-object v0, p0, Laih;->a:Laig;

    invoke-static {v0}, Laig;->f(Laig;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Laih;->a:Laig;

    invoke-static {v1}, Laig;->e(Laig;)Landroid/app/Activity;

    move-result-object v1

    sget v2, Lagd;->santander_red:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Laih;->a:Laig;

    invoke-static {v0}, Laig;->g(Laig;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lagd;->santander_red:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Laih;->a:Laig;

    invoke-static {v0}, Laig;->c(Laig;)I

    move-result v0

    iget-object v1, p0, Laih;->a:Laig;

    invoke-static {v1}, Laig;->h(Laig;)I

    move-result v1

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Laih;->a:Laig;

    invoke-static {v0}, Laig;->c(Laig;)I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Laih;->a:Laig;

    iget-object v1, p0, Laih;->a:Laig;

    invoke-static {v1}, Laig;->e(Laig;)Landroid/app/Activity;

    move-result-object v1

    sget v2, Lagl;->valor_menor_que_minimo:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laig;->a(Ljava/lang/String;)V

    iget-object v0, p0, Laih;->a:Laig;

    invoke-static {v0}, Laig;->f(Laig;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Laih;->a:Laig;

    invoke-static {v1}, Laig;->e(Laig;)Landroid/app/Activity;

    move-result-object v1

    sget v2, Lagd;->santander_red:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Laih;->a:Laig;

    invoke-static {v0}, Laig;->g(Laig;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lagd;->santander_red:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Laih;->a:Laig;

    invoke-static {v0}, Laig;->f(Laig;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Laih;->a:Laig;

    invoke-static {v1}, Laig;->e(Laig;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Laih;->a:Laig;

    invoke-static {v0}, Laig;->g(Laig;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Laih;->a:Laig;

    iget-object v1, p0, Laih;->a:Laig;

    invoke-static {v1}, Laig;->b(Laig;)Lajw;

    move-result-object v1

    invoke-virtual {v1}, Lajw;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Laig;->a(Laig;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Laih;->a:Laig;

    invoke-static {v1}, Laig;->c(Laig;)I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Laih;->a:Laig;

    invoke-static {v1}, Laig;->c(Laig;)I

    move-result v1

    if-lt v1, v0, :cond_0

    iget-object v0, p0, Laih;->a:Laig;

    invoke-static {v0}, Laig;->c(Laig;)I

    goto/16 :goto_0
.end method
