.class Lgxp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhxy;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lgxj;


# direct methods
.method constructor <init>(Lgxj;I)V
    .locals 0

    .prologue
    .line 422
    iput-object p1, p0, Lgxp;->b:Lgxj;

    iput p2, p0, Lgxp;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 443
    iget-object v0, p0, Lgxp;->b:Lgxj;

    iget-object v0, v0, Lgxj;->a:Lgxg;

    invoke-static {v0}, Lgxg;->j(Lgxg;)Lhya;

    move-result-object v0

    iget-object v1, p0, Lgxp;->b:Lgxj;

    iget-object v1, v1, Lgxj;->a:Lgxg;

    invoke-static {v1}, Lgxg;->i(Lgxg;)Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lgxp;->a:I

    invoke-interface {v0, v1, v2}, Lhya;->a(Landroid/content/Context;I)V

    .line 444
    return-void
.end method

.method public a(I)V
    .locals 3
    .param p1    # I
        .annotation build Lhyr;
        .end annotation
    .end param

    .prologue
    const/16 v2, 0x9

    .line 425
    iget v0, p0, Lgxp;->a:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 426
    if-ne p1, v2, :cond_1

    .line 427
    iget-object v0, p0, Lgxp;->b:Lgxj;

    iget-object v0, v0, Lgxj;->a:Lgxg;

    invoke-static {v0}, Lgxg;->h(Lgxg;)Lgxu;

    move-result-object v0

    const-class v1, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;

    invoke-interface {v0, v1}, Lgxu;->a(Ljava/lang/Class;)V

    .line 438
    :cond_0
    :goto_0
    iget-object v0, p0, Lgxp;->b:Lgxj;

    iget-object v0, v0, Lgxj;->a:Lgxg;

    iget-object v0, v0, Lgxg;->a:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->w()Lgwx;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgwx;->b(Ljava/lang/Boolean;)V

    .line 439
    return-void

    .line 429
    :cond_1
    iget-object v0, p0, Lgxp;->b:Lgxj;

    iget-object v0, v0, Lgxj;->a:Lgxg;

    invoke-static {v0}, Lgxg;->h(Lgxg;)Lgxu;

    move-result-object v0

    const-class v1, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;

    invoke-interface {v0, v1}, Lgxu;->a(Ljava/lang/Class;)V

    goto :goto_0

    .line 431
    :cond_2
    iget v0, p0, Lgxp;->a:I

    if-ne v0, v2, :cond_3

    .line 432
    iget-object v0, p0, Lgxp;->b:Lgxj;

    iget-object v0, v0, Lgxj;->a:Lgxg;

    invoke-static {v0}, Lgxg;->h(Lgxg;)Lgxu;

    move-result-object v0

    const-class v1, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;

    invoke-interface {v0, v1}, Lgxu;->a(Ljava/lang/Class;)V

    goto :goto_0

    .line 433
    :cond_3
    iget v0, p0, Lgxp;->a:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_4

    .line 434
    iget-object v0, p0, Lgxp;->b:Lgxj;

    iget-object v0, v0, Lgxj;->a:Lgxg;

    invoke-static {v0}, Lgxg;->h(Lgxg;)Lgxu;

    move-result-object v0

    const-class v1, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;

    invoke-interface {v0, v1}, Lgxu;->a(Ljava/lang/Class;)V

    goto :goto_0

    .line 435
    :cond_4
    iget v0, p0, Lgxp;->a:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 436
    iget-object v0, p0, Lgxp;->b:Lgxj;

    iget-object v0, v0, Lgxj;->a:Lgxg;

    invoke-static {v0}, Lgxg;->h(Lgxg;)Lgxu;

    move-result-object v0

    const-class v1, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;

    invoke-interface {v0, v1}, Lgxu;->a(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 448
    iget-object v0, p0, Lgxp;->b:Lgxj;

    iget-object v0, v0, Lgxj;->a:Lgxg;

    invoke-static {v0}, Lgxg;->j(Lgxg;)Lhya;

    move-result-object v0

    iget-object v1, p0, Lgxp;->b:Lgxj;

    iget-object v1, v1, Lgxj;->a:Lgxg;

    invoke-static {v1}, Lgxg;->i(Lgxg;)Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lgxp;->a:I

    invoke-interface {v0, v1, v2}, Lhya;->b(Landroid/content/Context;I)V

    .line 449
    return-void
.end method
