.class Lrg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field final synthetic b:Lre;


# direct methods
.method constructor <init>(Lre;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lrg;->b:Lre;

    iput-object p2, p0, Lrg;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 358
    iget-object v0, p0, Lrg;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    check-cast v0, Lrp;

    invoke-static {v0}, Lrp;->q(Lrp;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ocultar detalhes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lrg;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    check-cast v0, Lrp;

    invoke-static {v0}, Lrp;->q(Lrp;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Llg;->card_det_sub_ocultar_detalhe:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 360
    iget-object v0, p0, Lrg;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    check-cast v0, Lrp;

    invoke-static {v0}, Lrp;->r(Lrp;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 361
    iget-object v0, p0, Lrg;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    check-cast v0, Lrp;

    invoke-static {v0}, Lrp;->s(Lrp;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 362
    iget-object v0, p0, Lrg;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    check-cast v0, Lrp;

    invoke-static {v0}, Lrp;->t(Lrp;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 363
    iget-object v0, p0, Lrg;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    check-cast v0, Lrp;

    invoke-static {v0}, Lrp;->u(Lrp;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 364
    iget-object v0, p0, Lrg;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    check-cast v0, Lrp;

    invoke-static {v0}, Lrp;->v(Lrp;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 376
    :goto_0
    return-void

    .line 366
    :cond_0
    iget-object v0, p0, Lrg;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    check-cast v0, Lrp;

    invoke-static {v0}, Lrp;->q(Lrp;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Llg;->card_det_sub_ocultar_detalhe:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 367
    iget-object v0, p0, Lrg;->b:Lre;

    invoke-static {v0}, Lre;->f(Lre;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 368
    iget-object v0, p0, Lrg;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    check-cast v0, Lrp;

    invoke-static {v0}, Lrp;->r(Lrp;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 369
    :cond_1
    iget-object v0, p0, Lrg;->b:Lre;

    invoke-static {v0}, Lre;->g(Lre;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 370
    iget-object v0, p0, Lrg;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    check-cast v0, Lrp;

    invoke-static {v0}, Lrp;->s(Lrp;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 371
    :cond_2
    iget-object v0, p0, Lrg;->b:Lre;

    invoke-static {v0}, Lre;->h(Lre;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 372
    iget-object v0, p0, Lrg;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    check-cast v0, Lrp;

    invoke-static {v0}, Lrp;->t(Lrp;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 373
    :cond_3
    iget-object v0, p0, Lrg;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    check-cast v0, Lrp;

    invoke-static {v0}, Lrp;->v(Lrp;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 374
    iget-object v0, p0, Lrg;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    check-cast v0, Lrp;

    invoke-static {v0}, Lrp;->u(Lrp;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method
