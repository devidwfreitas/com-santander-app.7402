.class Lui;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltj;


# instance fields
.field final synthetic a:Lue;


# direct methods
.method constructor <init>(Lue;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lui;->a:Lue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Labv;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 147
    check-cast p1, Ltm;

    .line 152
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ltm;->a()Lsw;

    move-result-object v0

    if-nez v0, :cond_0

    .line 153
    const-string v0, "InvestimentoV2"

    const-string v1, "portifolio invalido"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lui;->a:Lue;

    invoke-static {v0}, Lue;->f(Lue;)V

    .line 198
    :goto_0
    return-void

    .line 155
    :cond_0
    if-eqz p1, :cond_2

    .line 156
    invoke-virtual {p1}, Ltm;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 157
    invoke-virtual {p1}, Ltm;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 159
    iget-object v0, p0, Lui;->a:Lue;

    new-instance v1, Lacg;

    invoke-direct {v1}, Lacg;-><init>()V

    invoke-static {v0, v1}, Lue;->a(Lue;Lacg;)Lacg;

    .line 160
    iget-object v0, p0, Lui;->a:Lue;

    invoke-static {v0}, Lue;->g(Lue;)Lacg;

    move-result-object v0

    invoke-virtual {p1}, Ltm;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lacg;->f(Ljava/lang/String;)V

    .line 162
    sget-boolean v0, Lte;->a:Z

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lui;->a:Lue;

    invoke-static {v0, p1}, Lue;->a(Lue;Ltm;)V

    goto :goto_0

    .line 165
    :cond_1
    iget-object v0, p0, Lui;->a:Lue;

    invoke-static {v0}, Lue;->h(Lue;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lui;->a:Lue;

    invoke-static {v0}, Lue;->i(Lue;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lui;->a:Lue;

    invoke-static {v0}, Lue;->j(Lue;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lui;->a:Lue;

    invoke-static {v0, p1}, Lue;->b(Lue;Ltm;)V

    goto :goto_0

    .line 174
    :cond_2
    sget-boolean v0, Lte;->a:Z

    if-eqz v0, :cond_3

    .line 175
    iget-object v0, p0, Lui;->a:Lue;

    invoke-static {v0}, Lue;->k(Lue;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lkz;->group:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 176
    iget-object v0, p0, Lui;->a:Lue;

    invoke-static {v0}, Lue;->l(Lue;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "POUPAN\u00c7A"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v0, p0, Lui;->a:Lue;

    invoke-static {v0}, Lue;->m(Lue;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Llg;->det_sub_poupanca_titulo_empty:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 178
    iget-object v0, p0, Lui;->a:Lue;

    invoke-static {v0}, Lue;->n(Lue;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Llg;->det_sub_poupanca_subTitulo_empty:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 184
    :goto_1
    iget-object v0, p0, Lui;->a:Lue;

    invoke-static {v0}, Lue;->j(Lue;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lui;->a:Lue;

    invoke-static {v0}, Lue;->o(Lue;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lui;->a:Lue;

    invoke-static {v0}, Lue;->p(Lue;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lui;->a:Lue;

    invoke-static {v0}, Lue;->q(Lue;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Luj;

    invoke-direct {v1, p0}, Luj;-><init>(Lui;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 180
    :cond_3
    iget-object v0, p0, Lui;->a:Lue;

    invoke-static {v0}, Lue;->j(Lue;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lui;->a:Lue;

    invoke-static {v0}, Lue;->o(Lue;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lui;->a:Lue;

    invoke-static {v0}, Lue;->p(Lue;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public a(Laby;)V
    .locals 3

    .prologue
    .line 202
    const-string v0, "InvestimentoV2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "portifolio service error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    sget-boolean v0, Lte;->a:Z

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lui;->a:Lue;

    invoke-static {v0}, Lue;->r(Lue;)V

    .line 208
    :goto_0
    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lui;->a:Lue;

    invoke-static {v0}, Lue;->f(Lue;)V

    goto :goto_0
.end method
