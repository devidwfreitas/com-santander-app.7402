.class Luj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lui;


# direct methods
.method constructor <init>(Lui;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Luj;->a:Lui;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 190
    iget-object v0, p0, Luj;->a:Lui;

    iget-object v0, v0, Lui;->a:Lue;

    .line 191
    invoke-virtual {v0}, Lue;->e()Lack;

    move-result-object v0

    sget v1, Llg;->tag_name_posicao_consolidada_acao:I

    invoke-virtual {v0, v1}, Lack;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Luj;->a:Lui;

    iget-object v1, v1, Lui;->a:Lue;

    .line 192
    invoke-virtual {v1}, Lue;->e()Lack;

    move-result-object v1

    sget v2, Llg;->tag_valor_posicao_consolidada_comecar:I

    invoke-virtual {v1, v2}, Lack;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 190
    invoke-static {v0, v1}, Lzy;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-static {}, Lzs;->a()Lzs;

    move-result-object v0

    iget-object v1, p0, Luj;->a:Lui;

    iget-object v1, v1, Lui;->a:Lue;

    invoke-virtual {v1}, Lue;->e()Lack;

    move-result-object v1

    iget-object v2, p0, Luj;->a:Lui;

    iget-object v2, v2, Lui;->a:Lue;

    invoke-static {v2}, Lue;->g(Lue;)Lacg;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lzs;->h(Landroid/content/Context;Lacg;)V

    .line 194
    return-void
.end method
