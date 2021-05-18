.class Lof;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lod;


# direct methods
.method constructor <init>(Lod;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lof;->a:Lod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 166
    iget-object v0, p0, Lof;->a:Lod;

    invoke-static {v0}, Lod;->a(Lod;)Lacg;

    move-result-object v0

    invoke-virtual {v0}, Lacg;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lof;->a:Lod;

    .line 168
    invoke-virtual {v0}, Lod;->e()Lack;

    move-result-object v0

    sget v1, Llg;->tag_name_comprovante_recomendacao_acao:I

    invoke-virtual {v0, v1}, Lack;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lof;->a:Lod;

    .line 169
    invoke-virtual {v1}, Lod;->e()Lack;

    move-result-object v1

    sget v2, Llg;->tag_valor_comprovante_compartilhar:I

    invoke-virtual {v1, v2}, Lack;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 167
    invoke-static {v0, v1}, Lzy;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :goto_0
    iget-object v0, p0, Lof;->a:Lod;

    invoke-static {v0}, Lod;->c(Lod;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lof;->a:Lod;

    invoke-static {v0}, Lod;->d(Lod;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 190
    :try_start_0
    iget-object v0, p0, Lof;->a:Lod;

    invoke-virtual {v0}, Lod;->e()Lack;

    move-result-object v0

    iget-object v1, p0, Lof;->a:Lod;

    invoke-static {v1}, Lod;->e(Lod;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Laau;->a(Landroid/content/Context;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_1
    iget-object v0, p0, Lof;->a:Lod;

    invoke-static {v0}, Lod;->c(Lod;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lof;->a:Lod;

    invoke-static {v0}, Lod;->d(Lod;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 196
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lof;->a:Lod;

    invoke-static {v0}, Lod;->b(Lod;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    sget v0, Llg;->tag_name_comprovante_resgate_acao:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v1, v0

    .line 178
    :goto_2
    iget-object v0, p0, Lof;->a:Lod;

    invoke-static {v0}, Lod;->a(Lod;)Lacg;

    move-result-object v0

    invoke-virtual {v0}, Lacg;->u()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lace;

    .line 179
    iget-object v2, p0, Lof;->a:Lod;

    .line 180
    invoke-virtual {v2}, Lod;->e()Lack;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 181
    invoke-virtual {v0}, Lace;->u()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    .line 182
    invoke-virtual {v0}, Lace;->f()Lto;

    move-result-object v5

    invoke-virtual {v5}, Lto;->j()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 183
    invoke-virtual {v0}, Lace;->f()Lto;

    move-result-object v0

    invoke-virtual {v0}, Lto;->k()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    .line 180
    invoke-virtual {v2, v1, v3}, Lack;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lof;->a:Lod;

    .line 184
    invoke-virtual {v1}, Lod;->e()Lack;

    move-result-object v1

    sget v2, Llg;->tag_valor_comprovante_compartilhar:I

    invoke-virtual {v1, v2}, Lack;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 179
    invoke-static {v0, v1}, Lzy;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 175
    :cond_1
    sget v0, Llg;->tag_name_aplicar_comprovante_acao:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v1, v0

    goto :goto_2

    .line 191
    :catch_0
    move-exception v0

    .line 192
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
