.class Lse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lrz;


# direct methods
.method constructor <init>(Lrz;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lse;->a:Lrz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 192
    iget-object v0, p0, Lse;->a:Lrz;

    .line 193
    invoke-virtual {v0}, Lrz;->e()Lack;

    move-result-object v0

    sget v1, Llg;->tag_name_detalhamento_acao_aplicar_resgatar:I

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lse;->a:Lrz;

    .line 194
    invoke-static {v4}, Lrz;->a(Lrz;)Lacg;

    move-result-object v4

    invoke-virtual {v4}, Lacg;->p()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lse;->a:Lrz;

    .line 195
    invoke-static {v4}, Lrz;->a(Lrz;)Lacg;

    move-result-object v4

    invoke-virtual {v4}, Lacg;->n()Lto;

    move-result-object v4

    invoke-virtual {v4}, Lto;->j()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lse;->a:Lrz;

    .line 196
    invoke-static {v4}, Lrz;->a(Lrz;)Lacg;

    move-result-object v4

    invoke-virtual {v4}, Lacg;->n()Lto;

    move-result-object v4

    invoke-virtual {v4}, Lto;->k()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 193
    invoke-virtual {v0, v1, v2}, Lack;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lse;->a:Lrz;

    .line 197
    invoke-virtual {v1}, Lrz;->e()Lack;

    move-result-object v1

    sget v2, Llg;->tag_valor_detalhamento_aplicar:I

    invoke-virtual {v1, v2}, Lack;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 192
    invoke-static {v0, v1}, Lzy;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lse;->a:Lrz;

    .line 200
    invoke-virtual {v0}, Lrz;->e()Lack;

    move-result-object v0

    sget v1, Llg;->tag_transaction_name_aplicar:I

    invoke-virtual {v0, v1}, Lack;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lse;->a:Lrz;

    .line 201
    invoke-virtual {v1}, Lrz;->e()Lack;

    move-result-object v1

    sget v2, Llg;->tag_service_name_investimento:I

    invoke-virtual {v1, v2}, Lack;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 199
    invoke-static {v0, v1}, Lzy;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lse;->a:Lrz;

    invoke-static {v0}, Lrz;->a(Lrz;)Lacg;

    move-result-object v0

    invoke-virtual {v0}, Lacg;->p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "coe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lse;->a:Lrz;

    invoke-virtual {v0}, Lrz;->e()Lack;

    move-result-object v0

    invoke-static {v0}, Laad;->a(Landroid/content/Context;)V

    .line 208
    :goto_0
    return-void

    .line 206
    :cond_0
    invoke-static {}, Lzs;->a()Lzs;

    move-result-object v0

    iget-object v1, p0, Lse;->a:Lrz;

    invoke-virtual {v1}, Lrz;->e()Lack;

    move-result-object v1

    iget-object v2, p0, Lse;->a:Lrz;

    invoke-static {v2}, Lrz;->a(Lrz;)Lacg;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lzs;->b(Landroid/content/Context;Lacg;)V

    goto :goto_0
.end method
