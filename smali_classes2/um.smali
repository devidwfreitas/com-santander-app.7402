.class Lum;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lue;


# direct methods
.method constructor <init>(Lue;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lum;->a:Lue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 290
    iget-object v0, p0, Lum;->a:Lue;

    .line 291
    invoke-virtual {v0}, Lue;->e()Lack;

    move-result-object v0

    sget v1, Llg;->tag_name_posicao_consolidada_acao:I

    invoke-virtual {v0, v1}, Lack;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lum;->a:Lue;

    .line 292
    invoke-virtual {v1}, Lue;->e()Lack;

    move-result-object v1

    sget v2, Llg;->tag_valor_posicao_consolidada_aplicar:I

    invoke-virtual {v1, v2}, Lack;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 290
    invoke-static {v0, v1}, Lzy;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lum;->a:Lue;

    .line 294
    invoke-virtual {v0}, Lue;->e()Lack;

    move-result-object v0

    sget v1, Llg;->tag_transaction_name_aplicar:I

    invoke-virtual {v0, v1}, Lack;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lum;->a:Lue;

    .line 295
    invoke-virtual {v1}, Lue;->e()Lack;

    move-result-object v1

    sget v2, Llg;->tag_service_name_investimento:I

    invoke-virtual {v1, v2}, Lack;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 293
    invoke-static {v0, v1}, Lzy;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-static {}, Lzs;->a()Lzs;

    move-result-object v0

    iget-object v1, p0, Lum;->a:Lue;

    invoke-virtual {v1}, Lue;->e()Lack;

    move-result-object v1

    iget-object v2, p0, Lum;->a:Lue;

    invoke-static {v2}, Lue;->g(Lue;)Lacg;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lzs;->h(Landroid/content/Context;Lacg;)V

    .line 298
    return-void
.end method
