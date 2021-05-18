.class Luh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Luf;


# direct methods
.method constructor <init>(Luf;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Luh;->a:Luf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 119
    iget-object v0, p0, Luh;->a:Luf;

    iget-object v0, v0, Luf;->a:Lue;

    .line 120
    invoke-virtual {v0}, Lue;->e()Lack;

    move-result-object v0

    sget v1, Llg;->tag_name_posicao_consolidada_acao:I

    invoke-virtual {v0, v1}, Lack;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Luh;->a:Luf;

    iget-object v1, v1, Luf;->a:Lue;

    .line 121
    invoke-virtual {v1}, Lue;->e()Lack;

    move-result-object v1

    sget v2, Llg;->tag_valor_carrinho_abandonado:I

    invoke-virtual {v1, v2}, Lack;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 119
    invoke-static {v0, v1}, Lzy;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-static {}, Lzs;->a()Lzs;

    move-result-object v0

    iget-object v1, p0, Luh;->a:Luf;

    iget-object v1, v1, Luf;->a:Lue;

    invoke-virtual {v1}, Lue;->e()Lack;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzs;->b(Landroid/content/Context;)V

    .line 124
    iget-object v0, p0, Luh;->a:Luf;

    iget-object v0, v0, Luf;->a:Lue;

    invoke-static {v0}, Lue;->d(Lue;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 125
    return-void
.end method
