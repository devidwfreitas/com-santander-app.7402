.class Lmu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lmr;


# direct methods
.method constructor <init>(Lmr;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lmu;->a:Lmr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    const/4 v3, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 187
    iget-object v0, p0, Lmu;->a:Lmr;

    invoke-static {v0}, Lmr;->b(Lmr;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lmu;->a:Lmr;

    invoke-static {v0}, Lmr;->c(Lmr;)Lacg;

    move-result-object v0

    invoke-virtual {v0}, Lacg;->w()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lace;

    .line 189
    iget-object v1, p0, Lmu;->a:Lmr;

    .line 190
    invoke-virtual {v1}, Lmr;->e()Lack;

    move-result-object v1

    sget v2, Llg;->tag_name_resgatar_acao:I

    new-array v3, v3, [Ljava/lang/Object;

    .line 191
    invoke-virtual {v0}, Lace;->u()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 192
    invoke-virtual {v0}, Lace;->f()Lto;

    move-result-object v4

    invoke-virtual {v4}, Lto;->j()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 193
    invoke-virtual {v0}, Lace;->f()Lto;

    move-result-object v0

    invoke-virtual {v0}, Lto;->k()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    .line 190
    invoke-virtual {v1, v2, v3}, Lack;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmu;->a:Lmr;

    .line 194
    invoke-virtual {v1}, Lmr;->e()Lack;

    move-result-object v1

    sget v2, Llg;->tag_valor_finalizar:I

    invoke-virtual {v1, v2}, Lack;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 189
    invoke-static {v0, v1}, Lzy;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :goto_0
    iget-object v0, p0, Lmu;->a:Lmr;

    invoke-static {v0}, Lmr;->b(Lmr;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmu;->a:Lmr;

    invoke-static {v0}, Lmr;->d(Lmr;)Lmn;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmu;->a:Lmr;

    invoke-static {v0}, Lmr;->c(Lmr;)Lacg;

    move-result-object v0

    iget-object v1, p0, Lmu;->a:Lmr;

    invoke-static {v1}, Lmr;->d(Lmr;)Lmn;

    move-result-object v1

    invoke-virtual {v1}, Lmn;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lacg;->f(Ljava/util/List;)V

    .line 212
    :cond_0
    invoke-static {}, Lzs;->a()Lzs;

    move-result-object v0

    iget-object v1, p0, Lmu;->a:Lmr;

    invoke-virtual {v1}, Lmr;->e()Lack;

    move-result-object v1

    iget-object v2, p0, Lmu;->a:Lmr;

    invoke-static {v2}, Lmr;->c(Lmr;)Lacg;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lzs;->l(Landroid/content/Context;Lacg;)V

    .line 213
    iget-object v0, p0, Lmu;->a:Lmr;

    invoke-virtual {v0}, Lmr;->e()Lack;

    move-result-object v0

    invoke-virtual {v0}, Lack;->finish()V

    .line 214
    return-void

    .line 196
    :cond_1
    iget-object v0, p0, Lmu;->a:Lmr;

    invoke-static {v0}, Lmr;->c(Lmr;)Lacg;

    move-result-object v0

    invoke-virtual {v0}, Lacg;->A()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 197
    iget-object v0, p0, Lmu;->a:Lmr;

    .line 198
    invoke-virtual {v0}, Lmr;->e()Lack;

    move-result-object v0

    sget v1, Llg;->tag_name_recomendacao_acao:I

    invoke-virtual {v0, v1}, Lack;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmu;->a:Lmr;

    .line 199
    invoke-virtual {v1}, Lmr;->e()Lack;

    move-result-object v1

    sget v2, Llg;->tag_valor_finalizar:I

    invoke-virtual {v1, v2}, Lack;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 197
    invoke-static {v0, v1}, Lzy;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 202
    :cond_2
    iget-object v0, p0, Lmu;->a:Lmr;

    invoke-static {v0}, Lmr;->c(Lmr;)Lacg;

    move-result-object v0

    invoke-virtual {v0}, Lacg;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lace;

    .line 203
    iget-object v1, p0, Lmu;->a:Lmr;

    .line 204
    invoke-virtual {v1}, Lmr;->e()Lack;

    move-result-object v1

    sget v2, Llg;->tag_name_resgatar_acao:I

    new-array v3, v3, [Ljava/lang/Object;

    .line 205
    invoke-virtual {v0}, Lace;->u()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 206
    invoke-virtual {v0}, Lace;->f()Lto;

    move-result-object v4

    invoke-virtual {v4}, Lto;->j()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 207
    invoke-virtual {v0}, Lace;->f()Lto;

    move-result-object v0

    invoke-virtual {v0}, Lto;->k()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    .line 204
    invoke-virtual {v1, v2, v3}, Lack;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmu;->a:Lmr;

    .line 208
    invoke-virtual {v1}, Lmr;->e()Lack;

    move-result-object v1

    sget v2, Llg;->tag_valor_finalizar:I

    invoke-virtual {v1, v2}, Lack;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 203
    invoke-static {v0, v1}, Lzy;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
