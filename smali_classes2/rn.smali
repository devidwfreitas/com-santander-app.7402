.class Lrn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field final synthetic b:Lacg;

.field final synthetic c:Lre;


# direct methods
.method constructor <init>(Lre;Landroid/support/v7/widget/RecyclerView$ViewHolder;Lacg;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lrn;->c:Lre;

    iput-object p2, p0, Lrn;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iput-object p3, p0, Lrn;->b:Lacg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 297
    sget v0, Lla;->card_det_sub_ver_detalhe:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 299
    iget-object v1, p0, Lrn;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    check-cast v1, Lrp;

    invoke-static {v1}, Lrp;->q(Lrp;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Ocultar detalhes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 300
    sget v1, Llg;->card_det_sub_ver_detalhe:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 301
    iget-object v0, p0, Lrn;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    check-cast v0, Lrp;

    invoke-static {v0}, Lrp;->r(Lrp;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lrn;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    check-cast v0, Lrp;

    invoke-static {v0}, Lrp;->s(Lrp;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lrn;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    check-cast v0, Lrp;

    invoke-static {v0}, Lrp;->t(Lrp;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lrn;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    check-cast v0, Lrp;

    invoke-static {v0}, Lrp;->u(Lrp;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lrn;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    check-cast v0, Lrp;

    invoke-static {v0}, Lrp;->v(Lrp;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 306
    iget-object v0, p0, Lrn;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    check-cast v0, Lrp;

    invoke-static {v0}, Lrp;->w(Lrp;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 326
    :goto_0
    return-void

    .line 309
    :cond_0
    sget v1, Llg;->card_det_sub_ocultar_detalhe:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 310
    iget-object v0, p0, Lrn;->c:Lre;

    invoke-static {v0}, Lre;->f(Lre;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p0, Lrn;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    check-cast v0, Lrp;

    invoke-static {v0}, Lrp;->r(Lrp;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 312
    :cond_1
    iget-object v0, p0, Lrn;->c:Lre;

    invoke-static {v0}, Lre;->g(Lre;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 313
    iget-object v0, p0, Lrn;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    check-cast v0, Lrp;

    invoke-static {v0}, Lrp;->s(Lrp;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 314
    :cond_2
    iget-object v0, p0, Lrn;->c:Lre;

    invoke-static {v0}, Lre;->h(Lre;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 315
    iget-object v0, p0, Lrn;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    check-cast v0, Lrp;

    invoke-static {v0}, Lrp;->t(Lrp;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 317
    :cond_3
    iget-object v0, p0, Lrn;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    check-cast v0, Lrp;

    invoke-static {v0}, Lrp;->v(Lrp;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 318
    iget-object v0, p0, Lrn;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    check-cast v0, Lrp;

    invoke-static {v0}, Lrp;->u(Lrp;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 320
    iget-object v0, p0, Lrn;->b:Lacg;

    invoke-virtual {v0}, Lacg;->p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "coe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lrn;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    check-cast v0, Lrp;

    invoke-static {v0}, Lrp;->x(Lrp;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 321
    iget-object v0, p0, Lrn;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    check-cast v0, Lrp;

    invoke-static {v0}, Lrp;->w(Lrp;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 323
    :cond_4
    iget-object v0, p0, Lrn;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    check-cast v0, Lrp;

    invoke-static {v0}, Lrp;->w(Lrp;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method
