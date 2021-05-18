.class Ltw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field final synthetic b:I

.field final synthetic c:Ltu;


# direct methods
.method constructor <init>(Ltu;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Ltw;->c:Ltu;

    iput-object p2, p0, Ltw;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iput p3, p0, Ltw;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 110
    iget-object v0, p0, Ltw;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    check-cast v0, Ltz;

    iget-object v0, v0, Ltz;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Ltw;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    check-cast v0, Ltz;

    iget-object v0, v0, Ltz;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Llg;->app_ver_produtos:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Ltw;->c:Ltu;

    iget-object v1, v0, Ltu;->b:Landroid/content/Context;

    sget v2, Llg;->tag_name_posicao_consolidada_acao_familia:I

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v0, p0, Ltw;->c:Ltu;

    iget-object v0, v0, Ltu;->a:Ljava/util/List;

    iget v4, p0, Ltw;->b:I

    .line 112
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsy;

    invoke-virtual {v0}, Lsy;->b()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ltw;->c:Ltu;

    iget-object v1, v1, Ltu;->b:Landroid/content/Context;

    sget v2, Llg;->tag_valor_posicao_consolidada_acao_familia_exibir:I

    .line 113
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-static {v0, v1}, Lzy;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Ltw;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    check-cast v0, Ltz;

    iget-object v0, v0, Ltz;->i:Landroid/widget/TextView;

    sget v1, Llg;->app_ocultar_produtos:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 115
    iget-object v0, p0, Ltw;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    check-cast v0, Ltz;

    iget-object v0, v0, Ltz;->j:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Ltw;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    check-cast v0, Ltz;

    iget-object v0, v0, Ltz;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Ltw;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    check-cast v0, Ltz;

    iget-object v0, v0, Ltz;->g:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 127
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Ltw;->c:Ltu;

    iget-object v1, v0, Ltu;->b:Landroid/content/Context;

    sget v2, Llg;->tag_name_posicao_consolidada_acao_familia:I

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v0, p0, Ltw;->c:Ltu;

    iget-object v0, v0, Ltu;->a:Ljava/util/List;

    iget v4, p0, Ltw;->b:I

    .line 120
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsy;

    invoke-virtual {v0}, Lsy;->b()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ltw;->c:Ltu;

    iget-object v1, v1, Ltu;->b:Landroid/content/Context;

    sget v2, Llg;->tag_valor_posicao_consolidada_acao_familia_ocultar:I

    .line 121
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 119
    invoke-static {v0, v1}, Lzy;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Ltw;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    check-cast v0, Ltz;

    iget-object v0, v0, Ltz;->i:Landroid/widget/TextView;

    sget v1, Llg;->app_ver_produtos:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 123
    iget-object v0, p0, Ltw;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    check-cast v0, Ltz;

    iget-object v0, v0, Ltz;->j:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Ltw;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    check-cast v0, Ltz;

    iget-object v0, v0, Ltz;->g:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Ltw;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    check-cast v0, Ltz;

    iget-object v0, v0, Ltz;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method
