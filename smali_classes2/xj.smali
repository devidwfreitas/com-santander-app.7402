.class Lxj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lto;

.field final synthetic b:Lwx;


# direct methods
.method constructor <init>(Lwx;Lto;)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Lxj;->b:Lwx;

    iput-object p2, p0, Lxj;->a:Lto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 355
    iget-object v0, p0, Lxj;->b:Lwx;

    sget v1, Llg;->tag_name_resgatar_acao:I

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lxj;->b:Lwx;

    .line 357
    invoke-static {v3}, Lwx;->h(Lwx;)Lacg;

    move-result-object v3

    invoke-virtual {v3}, Lacg;->p()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget-object v4, p0, Lxj;->a:Lto;

    invoke-virtual {v4}, Lto;->j()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lxj;->a:Lto;

    invoke-virtual {v4}, Lto;->k()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 356
    invoke-virtual {v0, v1, v2}, Lwx;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lxj;->b:Lwx;

    sget v2, Llg;->tag_valor_resgatar_acao_total:I

    new-array v3, v5, [Ljava/lang/Object;

    .line 358
    invoke-virtual {v1, v2, v3}, Lwx;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 355
    invoke-static {v0, v1}, Lzy;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lxj;->b:Lwx;

    invoke-static {v0}, Lwx;->j(Lwx;)V

    .line 361
    return-void
.end method
