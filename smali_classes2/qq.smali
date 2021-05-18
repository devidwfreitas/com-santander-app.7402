.class Lqq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lqn;


# direct methods
.method constructor <init>(Lqn;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lqq;->a:Lqn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 118
    iget-object v0, p0, Lqq;->a:Lqn;

    .line 119
    invoke-virtual {v0}, Lqn;->e()Lack;

    move-result-object v0

    sget v1, Llg;->tag_name_novo_investimento_acao:I

    invoke-virtual {v0, v1}, Lack;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lqq;->a:Lqn;

    .line 120
    invoke-virtual {v1}, Lqn;->e()Lack;

    move-result-object v1

    sget v2, Llg;->tag_valor_novo_investimento_acao:I

    invoke-virtual {v1, v2}, Lack;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-static {v0, v1}, Lzy;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-static {}, Lzs;->a()Lzs;

    move-result-object v0

    iget-object v1, p0, Lqq;->a:Lqn;

    invoke-static {v1}, Lqn;->a(Lqn;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lqq;->a:Lqn;

    invoke-static {v2}, Lqn;->b(Lqn;)Lacg;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lzs;->j(Landroid/content/Context;Lacg;)V

    .line 123
    return-void
.end method
