.class Loe;
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
    .line 133
    iput-object p1, p0, Loe;->a:Lod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 137
    iget-object v0, p0, Loe;->a:Lod;

    invoke-static {v0}, Lod;->a(Lod;)Lacg;

    move-result-object v0

    invoke-virtual {v0}, Lacg;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Loe;->a:Lod;

    .line 139
    invoke-virtual {v0}, Lod;->e()Lack;

    move-result-object v0

    sget v1, Llg;->tag_name_comprovante_recomendacao_acao:I

    invoke-virtual {v0, v1}, Lack;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Loe;->a:Lod;

    .line 140
    invoke-virtual {v1}, Lod;->e()Lack;

    move-result-object v1

    sget v2, Llg;->tag_valor_comprovante_fechar:I

    invoke-virtual {v1, v2}, Lack;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 138
    invoke-static {v0, v1}, Lzy;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :goto_0
    iget-object v0, p0, Loe;->a:Lod;

    invoke-virtual {v0}, Lod;->e()Lack;

    move-result-object v0

    invoke-virtual {v0}, Lack;->onBackPressed()V

    .line 159
    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Loe;->a:Lod;

    invoke-static {v0}, Lod;->b(Lod;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    sget v0, Llg;->tag_name_comprovante_resgate_acao:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v1, v0

    .line 148
    :goto_1
    iget-object v0, p0, Loe;->a:Lod;

    invoke-static {v0}, Lod;->a(Lod;)Lacg;

    move-result-object v0

    invoke-virtual {v0}, Lacg;->u()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lace;

    .line 150
    iget-object v2, p0, Loe;->a:Lod;

    .line 151
    invoke-virtual {v2}, Lod;->e()Lack;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 152
    invoke-virtual {v0}, Lace;->u()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    .line 153
    invoke-virtual {v0}, Lace;->f()Lto;

    move-result-object v5

    invoke-virtual {v5}, Lto;->j()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 154
    invoke-virtual {v0}, Lace;->f()Lto;

    move-result-object v0

    invoke-virtual {v0}, Lto;->k()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    .line 151
    invoke-virtual {v2, v1, v3}, Lack;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Loe;->a:Lod;

    .line 155
    invoke-virtual {v1}, Lod;->e()Lack;

    move-result-object v1

    sget v2, Llg;->tag_valor_comprovante_fechar:I

    invoke-virtual {v1, v2}, Lack;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 150
    invoke-static {v0, v1}, Lzy;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 146
    :cond_1
    sget v0, Llg;->tag_name_aplicar_comprovante_acao:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v1, v0

    goto :goto_1
.end method
