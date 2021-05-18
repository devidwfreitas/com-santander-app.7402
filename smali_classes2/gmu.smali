.class Lgmu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhxy;


# instance fields
.field final synthetic a:Lgmv;

.field final synthetic b:Z

.field final synthetic c:Lgmm;


# direct methods
.method constructor <init>(Lgmm;Lgmv;Z)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lgmu;->c:Lgmm;

    iput-object p2, p0, Lgmu;->a:Lgmv;

    iput-boolean p3, p0, Lgmu;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 364
    iget-object v0, p0, Lgmu;->c:Lgmm;

    iget-object v1, p0, Lgmu;->a:Lgmv;

    invoke-static {v0, v1}, Lgmm;->b(Lgmm;Lgmv;)V

    .line 365
    iget-object v0, p0, Lgmu;->c:Lgmm;

    iget-object v1, p0, Lgmu;->a:Lgmv;

    invoke-static {v0, v1}, Lgmm;->c(Lgmm;Lgmv;)V

    .line 366
    invoke-direct {p0}, Lgmu;->d()V

    .line 367
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lgmu;->c:Lgmm;

    invoke-static {v0}, Lgmm;->j(Lgmm;)I

    .line 371
    iget-object v0, p0, Lgmu;->c:Lgmm;

    invoke-static {v0}, Lgmm;->k(Lgmm;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lgmu;->c:Lgmm;

    invoke-static {v0}, Lgmm;->l(Lgmm;)Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lgmu;->b:Z

    if-eqz v0, :cond_2

    .line 372
    :cond_1
    iget-object v0, p0, Lgmu;->c:Lgmm;

    invoke-static {v0}, Lgmm;->l(Lgmm;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 373
    :cond_2
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lgmu;->c:Lgmm;

    invoke-static {v0}, Lgmm;->d(Lgmm;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lgmu;->c:Lgmm;

    invoke-static {v0}, Lgmm;->e(Lgmm;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Nao"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lgmu;->c:Lgmm;

    invoke-static {v0}, Lgmm;->g(Lgmm;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lgmu;->c:Lgmm;

    invoke-static {v1}, Lgmm;->h(Lgmm;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    :cond_0
    invoke-direct {p0}, Lgmu;->d()V

    .line 341
    iget-boolean v0, p0, Lgmu;->b:Z

    if-eqz v0, :cond_1

    .line 342
    iget-object v0, p0, Lgmu;->a:Lgmv;

    invoke-static {v0}, Lgmv;->a(Lgmv;)Lgml;

    move-result-object v0

    invoke-virtual {v0}, Lgml;->h()V

    .line 346
    :goto_0
    return-void

    .line 344
    :cond_1
    invoke-direct {p0}, Lgmu;->c()V

    goto :goto_0
.end method

.method public a(I)V
    .locals 2
    .param p1    # I
        .annotation build Lhyr;
        .end annotation
    .end param

    .prologue
    .line 318
    iget-object v0, p0, Lgmu;->c:Lgmm;

    invoke-static {v0}, Lgmm;->d(Lgmm;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lgmu;->c:Lgmm;

    invoke-static {v0}, Lgmm;->e(Lgmm;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Sim"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lgmu;->c:Lgmm;

    invoke-static {v0}, Lgmm;->f(Lgmm;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CreditoFinanciamento"

    invoke-static {v0, v1}, Lfrq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lgmu;->c:Lgmm;

    invoke-static {v0}, Lgmm;->g(Lgmm;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lgmu;->c:Lgmm;

    invoke-static {v1}, Lgmm;->h(Lgmm;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    :cond_0
    iget-object v0, p0, Lgmu;->c:Lgmm;

    iget-object v1, p0, Lgmu;->a:Lgmv;

    invoke-static {v1}, Lgmv;->a(Lgmv;)Lgml;

    move-result-object v1

    invoke-static {v0, v1}, Lgmm;->a(Lgmm;Lgml;)V

    .line 325
    invoke-direct {p0}, Lgmu;->d()V

    .line 326
    iget-boolean v0, p0, Lgmu;->b:Z

    if-eqz v0, :cond_1

    .line 327
    iget-object v0, p0, Lgmu;->a:Lgmv;

    invoke-static {v0}, Lgmv;->a(Lgmv;)Lgml;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgml;->a(I)V

    .line 331
    :goto_0
    return-void

    .line 329
    :cond_1
    invoke-direct {p0}, Lgmu;->c()V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lgmu;->c:Lgmm;

    invoke-static {v0}, Lgmm;->d(Lgmm;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lgmu;->c:Lgmm;

    invoke-static {v0}, Lgmm;->i(Lgmm;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SistemaIndisponivel"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lgmu;->c:Lgmm;

    invoke-static {v0}, Lgmm;->g(Lgmm;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lgmu;->c:Lgmm;

    invoke-static {v1}, Lgmm;->h(Lgmm;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    :cond_0
    invoke-direct {p0}, Lgmu;->d()V

    .line 356
    iget-boolean v0, p0, Lgmu;->b:Z

    if-eqz v0, :cond_1

    .line 357
    iget-object v0, p0, Lgmu;->a:Lgmv;

    invoke-static {v0}, Lgmv;->a(Lgmv;)Lgml;

    move-result-object v0

    invoke-virtual {v0}, Lgml;->i()V

    .line 361
    :goto_0
    return-void

    .line 359
    :cond_1
    invoke-direct {p0}, Lgmu;->c()V

    goto :goto_0
.end method
