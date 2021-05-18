.class Lxa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lwx;


# direct methods
.method constructor <init>(Lwx;)V
    .locals 0

    .prologue
    .line 411
    iput-object p1, p0, Lxa;->a:Lwx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 414
    iget-object v0, p0, Lxa;->a:Lwx;

    invoke-static {v0}, Lwx;->h(Lwx;)Lacg;

    move-result-object v0

    iget-object v1, p0, Lxa;->a:Lwx;

    invoke-static {v1}, Lwx;->e(Lwx;)Lace;

    move-result-object v1

    invoke-virtual {v0, v1}, Lacg;->c(Lace;)V

    .line 415
    iget-object v0, p0, Lxa;->a:Lwx;

    invoke-static {v0}, Lwx;->h(Lwx;)Lacg;

    move-result-object v0

    iget-object v1, p0, Lxa;->a:Lwx;

    invoke-static {v1}, Lwx;->e(Lwx;)Lace;

    move-result-object v1

    invoke-virtual {v1}, Lace;->y()Z

    move-result v1

    invoke-virtual {v0, v1}, Lacg;->a(Z)V

    .line 416
    iget-object v0, p0, Lxa;->a:Lwx;

    sget v1, Llg;->tag_name_resgatar_acao:I

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lxa;->a:Lwx;

    .line 417
    invoke-static {v3}, Lwx;->e(Lwx;)Lace;

    move-result-object v3

    invoke-virtual {v3}, Lace;->u()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget-object v4, p0, Lxa;->a:Lwx;

    .line 418
    invoke-static {v4}, Lwx;->e(Lwx;)Lace;

    move-result-object v4

    invoke-virtual {v4}, Lace;->f()Lto;

    move-result-object v4

    invoke-virtual {v4}, Lto;->j()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lxa;->a:Lwx;

    .line 419
    invoke-static {v4}, Lwx;->e(Lwx;)Lace;

    move-result-object v4

    invoke-virtual {v4}, Lace;->f()Lto;

    move-result-object v4

    invoke-virtual {v4}, Lto;->k()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 416
    invoke-virtual {v0, v1, v2}, Lwx;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lxa;->a:Lwx;

    sget v2, Llg;->tag_valor_continuar:I

    new-array v3, v5, [Ljava/lang/Object;

    .line 420
    invoke-virtual {v1, v2, v3}, Lwx;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 416
    invoke-static {v0, v1}, Lzy;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    invoke-static {}, Lzs;->a()Lzs;

    move-result-object v0

    iget-object v1, p0, Lxa;->a:Lwx;

    invoke-virtual {v1}, Lwx;->e()Lack;

    move-result-object v1

    iget-object v2, p0, Lxa;->a:Lwx;

    invoke-static {v2}, Lwx;->h(Lwx;)Lacg;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lzs;->e(Landroid/content/Context;Lacg;)V

    .line 423
    return-void
.end method
