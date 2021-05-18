.class Lxm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laay;


# instance fields
.field final synthetic a:Lwx;


# direct methods
.method constructor <init>(Lwx;)V
    .locals 0

    .prologue
    .line 397
    iput-object p1, p0, Lxm;->a:Lwx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 400
    iget-object v0, p0, Lxm;->a:Lwx;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    iget-object v3, p0, Lxm;->a:Lwx;

    invoke-static {v3}, Lwx;->l(Lwx;)Landroid/widget/TextView;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lxm;->a:Lwx;

    invoke-static {v3}, Lwx;->m(Lwx;)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lwx;->a(Lwx;[Landroid/view/View;)V

    .line 401
    iget-object v0, p0, Lxm;->a:Lwx;

    invoke-static {v0}, Lwx;->n(Lwx;)Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;->selectAll()V

    .line 402
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 406
    iget-object v0, p0, Lxm;->a:Lwx;

    iget-object v1, p0, Lxm;->a:Lwx;

    invoke-static {v1}, Lwx;->n(Lwx;)Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;

    move-result-object v1

    invoke-virtual {v0, v1}, Lwx;->b(Landroid/view/View;)V

    .line 407
    iget-object v0, p0, Lxm;->a:Lwx;

    invoke-static {v0}, Lwx;->o(Lwx;)V

    .line 408
    return-void
.end method
