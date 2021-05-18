.class Lmc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lmj;

.field final synthetic b:Lma;


# direct methods
.method constructor <init>(Lma;Lmj;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lmc;->b:Lma;

    iput-object p2, p0, Lmc;->a:Lmj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 107
    iget-object v0, p0, Lmc;->b:Lma;

    invoke-static {v0}, Lma;->b(Lma;)Lacg;

    move-result-object v0

    invoke-virtual {v0}, Lacg;->p()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmc;->b:Lma;

    invoke-static {v0}, Lma;->b(Lma;)Lacg;

    move-result-object v0

    invoke-virtual {v0}, Lacg;->n()Lto;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmc;->b:Lma;

    invoke-static {v0}, Lma;->b(Lma;)Lacg;

    move-result-object v0

    invoke-virtual {v0}, Lacg;->n()Lto;

    move-result-object v0

    invoke-virtual {v0}, Lto;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmc;->b:Lma;

    invoke-static {v0}, Lma;->b(Lma;)Lacg;

    move-result-object v0

    invoke-virtual {v0}, Lacg;->n()Lto;

    move-result-object v0

    invoke-virtual {v0}, Lto;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lmc;->b:Lma;

    invoke-static {v0}, Lma;->c(Lma;)Landroid/content/Context;

    move-result-object v0

    sget v1, Llg;->tag_name_visualizar_termos:I

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lmc;->b:Lma;

    .line 109
    invoke-static {v4}, Lma;->b(Lma;)Lacg;

    move-result-object v4

    invoke-virtual {v4}, Lacg;->p()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lmc;->b:Lma;

    .line 110
    invoke-static {v4}, Lma;->b(Lma;)Lacg;

    move-result-object v4

    invoke-virtual {v4}, Lacg;->n()Lto;

    move-result-object v4

    invoke-virtual {v4}, Lto;->j()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lmc;->b:Lma;

    .line 111
    invoke-static {v4}, Lma;->b(Lma;)Lacg;

    move-result-object v4

    invoke-virtual {v4}, Lacg;->n()Lto;

    move-result-object v4

    invoke-virtual {v4}, Lto;->k()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 108
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmc;->b:Lma;

    .line 112
    invoke-static {v1}, Lma;->c(Lma;)Landroid/content/Context;

    move-result-object v1

    sget v2, Llg;->tag_valor_visualizar:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-static {v0, v1}, Lzy;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_0
    iget-object v0, p0, Lmc;->b:Lma;

    invoke-static {v0}, Lma;->d(Lma;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    invoke-static {}, Lzs;->a()Lzs;

    move-result-object v0

    iget-object v1, p0, Lmc;->b:Lma;

    invoke-static {v1}, Lma;->e(Lma;)Lmr;

    move-result-object v1

    invoke-virtual {v1}, Lmr;->e()Lack;

    move-result-object v1

    iget-object v2, p0, Lmc;->b:Lma;

    invoke-static {v2}, Lma;->b(Lma;)Lacg;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lzs;->g(Landroid/content/Context;Lacg;)V

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_1
    invoke-static {}, Lzs;->a()Lzs;

    move-result-object v0

    iget-object v1, p0, Lmc;->b:Lma;

    invoke-static {v1}, Lma;->e(Lma;)Lmr;

    move-result-object v1

    invoke-virtual {v1}, Lmr;->e()Lack;

    move-result-object v1

    iget-object v2, p0, Lmc;->a:Lmj;

    iget-object v2, v2, Lmj;->a:Lace;

    invoke-virtual {v0, v1, v2}, Lzs;->a(Landroid/content/Context;Lace;)V

    goto :goto_0
.end method
