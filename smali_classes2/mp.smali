.class Lmp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lmn;


# direct methods
.method constructor <init>(Lmn;I)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lmp;->b:Lmn;

    iput p2, p0, Lmp;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 104
    iget-object v0, p0, Lmp;->b:Lmn;

    invoke-static {v0}, Lmn;->g(Lmn;)Lacg;

    move-result-object v0

    invoke-virtual {v0}, Lacg;->A()Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lmp;->b:Lmn;

    .line 106
    invoke-static {v0}, Lmn;->d(Lmn;)Landroid/content/Context;

    move-result-object v1

    sget v2, Llg;->tag_name_revisao_termos:I

    const/4 v0, 0x4

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v4, p0, Lmp;->b:Lmn;

    .line 107
    invoke-static {v4}, Lmn;->g(Lmn;)Lacg;

    move-result-object v4

    invoke-virtual {v4}, Lacg;->p()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x1

    iget-object v4, p0, Lmp;->b:Lmn;

    .line 108
    invoke-static {v4}, Lmn;->g(Lmn;)Lacg;

    move-result-object v4

    invoke-virtual {v4}, Lacg;->n()Lto;

    move-result-object v4

    invoke-virtual {v4}, Lto;->j()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x2

    iget-object v4, p0, Lmp;->b:Lmn;

    .line 109
    invoke-static {v4}, Lmn;->g(Lmn;)Lacg;

    move-result-object v4

    invoke-virtual {v4}, Lacg;->n()Lto;

    move-result-object v4

    invoke-virtual {v4}, Lto;->k()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x3

    iget-object v0, p0, Lmp;->b:Lmn;

    .line 110
    invoke-static {v0}, Lmn;->e(Lmn;)Ljava/util/List;

    move-result-object v0

    iget v5, p0, Lmp;->a:I

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llx;

    invoke-virtual {v0}, Llx;->b()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    .line 106
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmp;->b:Lmn;

    .line 111
    invoke-static {v1}, Lmn;->d(Lmn;)Landroid/content/Context;

    move-result-object v1

    sget v2, Llg;->tag_valor_visualizar:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-static {v0, v1}, Lzy;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_0
    invoke-static {}, Lzs;->a()Lzs;

    move-result-object v1

    iget-object v0, p0, Lmp;->b:Lmn;

    invoke-static {v0}, Lmn;->d(Lmn;)Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lmp;->b:Lmn;

    invoke-static {v0}, Lmn;->e(Lmn;)Ljava/util/List;

    move-result-object v0

    iget v3, p0, Lmp;->a:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxw;

    invoke-virtual {v1, v2, v0}, Lzs;->a(Landroid/content/Context;Lxw;)V

    .line 115
    return-void
.end method
