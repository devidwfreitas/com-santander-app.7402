.class Lqe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lpc;


# direct methods
.method constructor <init>(Lpc;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lqe;->a:Lpc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v4, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 283
    iget-object v0, p0, Lqe;->a:Lpc;

    invoke-static {v0}, Lpc;->h(Lpc;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lqe;->a:Lpc;

    invoke-static {v0}, Lpc;->j(Lpc;)Lace;

    move-result-object v0

    iget-object v1, p0, Lqe;->a:Lpc;

    invoke-static {v1}, Lpc;->i(Lpc;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lace;->d(Ljava/lang/String;)V

    .line 286
    :cond_0
    iget-object v0, p0, Lqe;->a:Lpc;

    invoke-static {v0}, Lpc;->k(Lpc;)Lacg;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lacg;->b(Ljava/util/List;)V

    .line 287
    iget-object v0, p0, Lqe;->a:Lpc;

    invoke-static {v0}, Lpc;->k(Lpc;)Lacg;

    move-result-object v0

    iget-object v1, p0, Lqe;->a:Lpc;

    invoke-static {v1}, Lpc;->l(Lpc;)Lace;

    move-result-object v1

    invoke-virtual {v0, v1}, Lacg;->b(Lace;)V

    .line 288
    const-string v1, "CHECK"

    iget-object v0, p0, Lqe;->a:Lpc;

    invoke-static {v0}, Lpc;->k(Lpc;)Lacg;

    move-result-object v0

    invoke-virtual {v0}, Lacg;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lace;

    invoke-virtual {v0}, Lace;->h()Lou;

    move-result-object v0

    invoke-virtual {v0}, Lou;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v0, p0, Lqe;->a:Lpc;

    invoke-static {v0}, Lpc;->m(Lpc;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 291
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 292
    iget-object v1, p0, Lqe;->a:Lpc;

    invoke-static {v1}, Lpc;->n(Lpc;)Lace;

    move-result-object v1

    invoke-virtual {v1}, Lace;->l()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 293
    iget-object v1, p0, Lqe;->a:Lpc;

    .line 294
    invoke-static {v1}, Lpc;->o(Lpc;)Lace;

    move-result-object v1

    invoke-virtual {v1}, Lace;->k()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lqe;->a:Lpc;

    .line 295
    invoke-static {v2}, Lpc;->p(Lpc;)Lace;

    move-result-object v2

    invoke-virtual {v2}, Lace;->k()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Lqe;->a:Lpc;

    .line 296
    invoke-static {v3}, Lpc;->q(Lpc;)Lace;

    move-result-object v3

    invoke-virtual {v3}, Lace;->k()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 293
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 297
    iget-object v1, p0, Lqe;->a:Lpc;

    invoke-static {v1}, Lpc;->r(Lpc;)Lace;

    move-result-object v1

    invoke-virtual {v1}, Lace;->l()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->add(II)V

    .line 306
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lqe;->a:Lpc;

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lpc;->a(Lpc;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lqe;->a:Lpc;

    .line 307
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lpc;->a(Lpc;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 308
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 310
    iget-object v1, p0, Lqe;->a:Lpc;

    .line 311
    invoke-virtual {v1}, Lpc;->e()Lack;

    move-result-object v1

    sget v2, Llg;->tag_name_aplicar_comprovante_prazoVencimento:I

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, p0, Lqe;->a:Lpc;

    .line 313
    invoke-static {v4}, Lpc;->w(Lpc;)Lace;

    move-result-object v4

    invoke-virtual {v4}, Lace;->u()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    iget-object v4, p0, Lqe;->a:Lpc;

    .line 314
    invoke-static {v4}, Lpc;->x(Lpc;)Lace;

    move-result-object v4

    invoke-virtual {v4}, Lace;->f()Lto;

    move-result-object v4

    invoke-virtual {v4}, Lto;->j()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lqe;->a:Lpc;

    .line 315
    invoke-static {v4}, Lpc;->y(Lpc;)Lace;

    move-result-object v4

    invoke-virtual {v4}, Lace;->f()Lto;

    move-result-object v4

    invoke-virtual {v4}, Lto;->k()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 311
    invoke-virtual {v1, v2, v3}, Lack;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 310
    invoke-static {v1, v0}, Lzy;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    :cond_1
    iget-object v0, p0, Lqe;->a:Lpc;

    .line 321
    invoke-virtual {v0}, Lpc;->e()Lack;

    move-result-object v0

    sget v1, Llg;->tag_name_aplicar_acao:I

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p0, Lqe;->a:Lpc;

    .line 322
    invoke-static {v3}, Lpc;->z(Lpc;)Lace;

    move-result-object v3

    invoke-virtual {v3}, Lace;->u()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    iget-object v3, p0, Lqe;->a:Lpc;

    .line 323
    invoke-static {v3}, Lpc;->A(Lpc;)Lace;

    move-result-object v3

    invoke-virtual {v3}, Lace;->f()Lto;

    move-result-object v3

    invoke-virtual {v3}, Lto;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lqe;->a:Lpc;

    .line 324
    invoke-static {v3}, Lpc;->B(Lpc;)Lace;

    move-result-object v3

    invoke-virtual {v3}, Lace;->f()Lto;

    move-result-object v3

    invoke-virtual {v3}, Lto;->k()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 321
    invoke-virtual {v0, v1, v2}, Lack;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lqe;->a:Lpc;

    .line 325
    invoke-virtual {v1}, Lpc;->e()Lack;

    move-result-object v1

    sget v2, Llg;->tag_valor_continuar:I

    invoke-virtual {v1, v2}, Lack;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 320
    invoke-static {v0, v1}, Lzy;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    invoke-static {}, Lzs;->a()Lzs;

    move-result-object v0

    iget-object v1, p0, Lqe;->a:Lpc;

    invoke-virtual {v1}, Lpc;->e()Lack;

    move-result-object v1

    iget-object v2, p0, Lqe;->a:Lpc;

    invoke-static {v2}, Lpc;->k(Lpc;)Lacg;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lzs;->e(Landroid/content/Context;Lacg;)V

    .line 329
    return-void

    .line 299
    :cond_2
    iget-object v1, p0, Lqe;->a:Lpc;

    .line 300
    invoke-static {v1}, Lpc;->s(Lpc;)Lace;

    move-result-object v1

    invoke-virtual {v1}, Lace;->n()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lqe;->a:Lpc;

    .line 301
    invoke-static {v2}, Lpc;->t(Lpc;)Lace;

    move-result-object v2

    invoke-virtual {v2}, Lace;->n()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Lqe;->a:Lpc;

    .line 302
    invoke-static {v3}, Lpc;->u(Lpc;)Lace;

    move-result-object v3

    invoke-virtual {v3}, Lace;->n()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 299
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 303
    iget-object v1, p0, Lqe;->a:Lpc;

    invoke-static {v1}, Lpc;->v(Lpc;)Lace;

    move-result-object v1

    invoke-virtual {v1}, Lace;->o()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_0
.end method
