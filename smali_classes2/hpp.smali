.class public Lhpp;
.super Lhqk;
.source "SourceFile"

# interfaces
.implements Lhpl;


# static fields
.field private static d:Lhpp;


# instance fields
.field final a:Lhsn;

.field private final e:Lhqa;

.field private f:Lcom/santander/app/contacorrente/domain/Conta;

.field private g:F

.field private h:I

.field private i:Z

.field private j:Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;

.field private k:Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;

.field private l:Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;

.field private m:Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;

.field private final n:Lhpc;

.field private o:I

.field private p:I

.field private q:F

.field private r:F


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lhqk;-><init>()V

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhpp;->i:Z

    .line 67
    new-instance v0, Lhsp;

    invoke-direct {v0, p0}, Lhsp;-><init>(Lhqi;)V

    iput-object v0, p0, Lhpp;->a:Lhsn;

    .line 68
    new-instance v0, Lhqd;

    invoke-direct {v0}, Lhqd;-><init>()V

    iput-object v0, p0, Lhpp;->e:Lhqa;

    .line 69
    new-instance v0, Lhpc;

    invoke-direct {v0}, Lhpc;-><init>()V

    iput-object v0, p0, Lhpp;->n:Lhpc;

    .line 70
    return-void
.end method

.method static synthetic a(Lhpp;F)F
    .locals 0

    .prologue
    .line 42
    iput p1, p0, Lhpp;->r:F

    return p1
.end method

.method static synthetic a(Lhpp;I)I
    .locals 0

    .prologue
    .line 42
    iput p1, p0, Lhpp;->p:I

    return p1
.end method

.method static synthetic a(Lhpp;Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;)Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lhpp;->j:Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;

    return-object p1
.end method

.method static synthetic a(Lhpp;Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;)Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lhpp;->k:Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;

    return-object p1
.end method

.method static synthetic a(Lhpp;Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;)Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lhpp;->m:Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;

    return-object p1
.end method

.method static synthetic a(Lhpp;)Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lhpp;->l:Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;

    return-object v0
.end method

.method static synthetic a(Lhpp;Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;)Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lhpp;->l:Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;

    return-object p1
.end method

.method private a(IIZFIILhpn;)V
    .locals 10
    .param p1    # I
        .annotation build Lcom/santander/app/emprestimo/creditopessoal/domain/CPTypeService;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Lhxu;
        .end annotation
    .end param
    .param p7    # Lhpn;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhpp;->i:Z

    .line 256
    iget-object v7, p0, Lhpp;->a:Lhsn;

    iget-object v8, p0, Lhpp;->j:Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;

    iget-object v9, p0, Lhpp;->f:Lcom/santander/app/contacorrente/domain/Conta;

    new-instance v0, Lhpu;

    const/4 v2, 0x0

    move-object v1, p0

    move v3, p3

    move/from16 v4, p6

    move v5, p1

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lhpu;-><init>(Lhpp;ZZIILhpn;)V

    move-object v1, v7

    move v2, p2

    move-object v3, v8

    move-object v4, v9

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move-object v8, v0

    invoke-interface/range {v1 .. v8}, Lhsn;->a(ILcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;Lcom/santander/app/contacorrente/domain/Conta;FIILhso;)V

    .line 303
    return-void
.end method

.method private a(IZLcom/santander/app/contacorrente/domain/Conta;Lhpm;)V
    .locals 3
    .param p1    # I
        .annotation build Lhxu;
        .end annotation
    .end param
    .param p4    # Lhpm;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 129
    iget-object v0, p0, Lhpp;->a:Lhsn;

    new-instance v1, Lhpr;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p2, p4}, Lhpr;-><init>(Lhpp;ZZLhpm;)V

    invoke-interface {v0, p1, p3, v1}, Lhsn;->a(ILcom/santander/app/contacorrente/domain/Conta;Lhso;)V

    .line 151
    return-void
.end method

.method private a(Lhpm;)V
    .locals 2
    .param p1    # Lhpm;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 155
    :try_start_0
    invoke-virtual {p0}, Lhpp;->h()Lhxq;

    move-result-object v0

    .line 156
    new-instance v1, Lhps;

    invoke-direct {v1, p0, p1, v0}, Lhps;-><init>(Lhpp;Lhpm;Lhxq;)V

    invoke-virtual {p0, v1}, Lhpp;->b(Lhqj;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :goto_0
    return-void

    .line 197
    :catch_0
    move-exception v0

    .line 198
    invoke-interface {p1}, Lhpm;->a()V

    goto :goto_0
.end method

.method static synthetic a(Lhpp;IIZFIILhpn;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct/range {p0 .. p7}, Lhpp;->a(IIZFIILhpn;)V

    return-void
.end method

.method static synthetic a(Lhpp;IZLcom/santander/app/contacorrente/domain/Conta;Lhpm;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lhpp;->a(IZLcom/santander/app/contacorrente/domain/Conta;Lhpm;)V

    return-void
.end method

.method static synthetic a(Lhpp;Lhpm;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lhpp;->a(Lhpm;)V

    return-void
.end method

.method static synthetic b(Lhpp;F)F
    .locals 0

    .prologue
    .line 42
    iput p1, p0, Lhpp;->q:F

    return p1
.end method

.method static synthetic b(Lhpp;I)I
    .locals 0

    .prologue
    .line 42
    iput p1, p0, Lhpp;->o:I

    return p1
.end method

.method static synthetic b(Lhpp;)Lhqa;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lhpp;->e:Lhqa;

    return-object v0
.end method

.method static synthetic c(Lhpp;)Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lhpp;->j:Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;

    return-object v0
.end method

.method static synthetic d(Lhpp;)Lhpc;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lhpp;->n:Lhpc;

    return-object v0
.end method

.method static synthetic e(Lhpp;)Lcom/santander/app/contacorrente/domain/Conta;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lhpp;->f:Lcom/santander/app/contacorrente/domain/Conta;

    return-object v0
.end method

.method static synthetic f(Lhpp;)Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lhpp;->m:Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;

    return-object v0
.end method

.method static synthetic g(Lhpp;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lhpp;->h:I

    return v0
.end method

.method static synthetic h(Lhpp;)Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lhpp;->k:Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;

    return-object v0
.end method

.method static synthetic i(Lhpp;)F
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lhpp;->g:F

    return v0
.end method

.method static synthetic j(Lhpp;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lhpp;->p:I

    return v0
.end method

.method static synthetic k(Lhpp;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lhpp;->o:I

    return v0
.end method

.method static synthetic l(Lhpp;)F
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lhpp;->r:F

    return v0
.end method

.method static synthetic m(Lhpp;)F
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lhpp;->q:F

    return v0
.end method

.method public static m()Lhpl;
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lhpp;

    invoke-direct {v0}, Lhpp;-><init>()V

    sput-object v0, Lhpp;->d:Lhpp;

    return-object v0
.end method

.method public static n()Lhpl;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lhpp;->d:Lhpp;

    if-nez v0, :cond_0

    .line 78
    invoke-static {}, Lhpp;->m()Lhpl;

    .line 80
    :cond_0
    sget-object v0, Lhpp;->d:Lhpp;

    return-object v0
.end method

.method private w()Z
    .locals 2

    .prologue
    .line 84
    invoke-virtual {p0}, Lhpp;->h()Lhxq;

    move-result-object v0

    .line 85
    if-eqz v0, :cond_0

    .line 86
    instance-of v1, v0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;

    if-eqz v1, :cond_1

    .line 87
    check-cast v0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;

    iput-object v0, p0, Lhpp;->l:Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;

    .line 93
    :cond_0
    :goto_0
    iget-object v0, p0, Lhpp;->l:Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 88
    :cond_1
    instance-of v1, v0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;

    if-eqz v1, :cond_0

    .line 89
    check-cast v0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;

    .line 90
    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->getConsignadoSimulationResponse()Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;

    move-result-object v0

    iput-object v0, p0, Lhpp;->l:Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;

    goto :goto_0

    .line 93
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private x()Z
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lhpp;->m:Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhpp;->m:Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->isRefinanciamento()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)F
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 438
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0

    .line 441
    :cond_0
    invoke-static {p1}, Lhyx;->a(Ljava/lang/String;)F

    move-result v0

    .line 443
    cmpl-float v1, v0, v2

    if-nez v1, :cond_1

    .line 444
    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0

    .line 446
    :cond_1
    iput v2, p0, Lhpp;->r:F

    .line 447
    iput v2, p0, Lhpp;->q:F

    .line 448
    invoke-virtual {p0}, Lhpp;->h()Lhxq;

    move-result-object v1

    .line 449
    new-instance v2, Lhpx;

    invoke-direct {v2, p0, v1}, Lhpx;-><init>(Lhpp;Lhxq;)V

    invoke-virtual {p0, v2}, Lhpp;->b(Lhqj;)V

    .line 480
    iget v1, p0, Lhpp;->r:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    .line 481
    new-instance v1, Lhov;

    iget v2, p0, Lhpp;->r:F

    invoke-direct {v1, v0, v2}, Lhov;-><init>(FF)V

    throw v1

    .line 482
    :cond_2
    iget v1, p0, Lhpp;->q:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_3

    .line 483
    new-instance v1, Lhow;

    iget v2, p0, Lhpp;->q:F

    invoke-direct {v1, v0, v2}, Lhow;-><init>(FF)V

    throw v1

    .line 485
    :cond_3
    return v0
.end method

.method public a(I)Lcom/santander/app/contacorrente/domain/Conta;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lhpp;->b:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->q()Lgvx;

    move-result-object v0

    invoke-interface {v0}, Lgvx;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/contacorrente/domain/Conta;

    return-object v0
.end method

.method public a()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 350
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 351
    iget-object v0, p0, Lhpp;->b:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->q()Lgvx;

    move-result-object v0

    invoke-interface {v0}, Lgvx;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/contacorrente/domain/Conta;

    .line 352
    invoke-static {v0}, Lhyx;->a(Lcom/santander/app/contacorrente/domain/Conta;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 354
    :cond_0
    return-object v1
.end method

.method public a(IFIILhpn;)V
    .locals 7
    .param p1    # I
        .annotation build Lcom/santander/app/emprestimo/creditopessoal/domain/CPTypeService;
        .end annotation
    .end param
    .param p5    # Lhpn;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 223
    iput p2, p0, Lhpp;->g:F

    .line 224
    iput p4, p0, Lhpp;->h:I

    .line 225
    new-instance v0, Lhpt;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lhpt;-><init>(Lhpp;IFIILhpn;)V

    invoke-virtual {p0, v0}, Lhpp;->b(Lhqj;)V

    .line 247
    return-void
.end method

.method public bridge synthetic a(ILhqj;)V
    .locals 0
    .param p1    # I
        .annotation build Lhxu;
        .end annotation
    .end param

    .prologue
    .line 42
    invoke-super {p0, p1, p2}, Lhqk;->a(ILhqj;)V

    return-void
.end method

.method public a(Lcom/santander/app/contacorrente/domain/Conta;Lhpm;)V
    .locals 2
    .param p2    # Lhpm;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 99
    iput-object p1, p0, Lhpp;->f:Lcom/santander/app/contacorrente/domain/Conta;

    .line 100
    invoke-direct {p0}, Lhpp;->w()Z

    move-result v0

    .line 101
    new-instance v1, Lhpq;

    invoke-direct {v1, p0, p1, p2, v0}, Lhpq;-><init>(Lhpp;Lcom/santander/app/contacorrente/domain/Conta;Lhpm;Z)V

    invoke-virtual {p0, v1}, Lhpp;->b(Lhqj;)V

    .line 122
    return-void
.end method

.method public bridge synthetic a(Lhqj;)V
    .locals 0

    .prologue
    .line 42
    invoke-super {p0, p1}, Lhqk;->a(Lhqj;)V

    return-void
.end method

.method public a(ZLhpo;)V
    .locals 3
    .param p2    # Lhpo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 309
    iput-boolean p1, p0, Lhpp;->i:Z

    .line 310
    iget-object v0, p0, Lhpp;->a:Lhsn;

    invoke-virtual {p0}, Lhpp;->q()I

    move-result v1

    new-instance v2, Lhpv;

    invoke-direct {v2, p0, p2}, Lhpv;-><init>(Lhpp;Lhpo;)V

    invoke-interface {v0, v1, p1, v2}, Lhsn;->a(IZLhso;)V

    .line 341
    return-void
.end method

.method public b()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 359
    iput v3, p0, Lhpp;->p:I

    .line 360
    iput v3, p0, Lhpp;->o:I

    .line 361
    invoke-virtual {p0}, Lhpp;->h()Lhxq;

    move-result-object v0

    .line 362
    new-instance v1, Lhpw;

    invoke-direct {v1, p0, v0}, Lhpw;-><init>(Lhpp;Lhxq;)V

    invoke-virtual {p0, v1}, Lhpp;->b(Lhqj;)V

    .line 400
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 401
    iget v0, p0, Lhpp;->o:I

    :goto_0
    iget v2, p0, Lhpp;->p:I

    if-gt v0, v2, :cond_0

    .line 402
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 404
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 405
    const-string v0, ""

    invoke-interface {v1, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 406
    return-object v1
.end method

.method public bridge synthetic b(I)V
    .locals 0
    .param p1    # I
        .annotation build Lhxu;
        .end annotation
    .end param

    .prologue
    .line 42
    invoke-super {p0, p1}, Lhqk;->b(I)V

    return-void
.end method

.method public bridge synthetic b(Lhqj;)V
    .locals 0

    .prologue
    .line 42
    invoke-super {p0, p1}, Lhqk;->b(Lhqj;)V

    return-void
.end method

.method public c()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 411
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 413
    const/4 v0, 0x1

    :goto_0
    const/16 v2, 0x1e

    if-gt v0, v2, :cond_0

    .line 414
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 416
    :cond_0
    return-object v1
.end method

.method public bridge synthetic c(I)V
    .locals 0
    .param p1    # I
        .annotation build Lhxu;
        .end annotation
    .end param

    .prologue
    .line 42
    invoke-super {p0, p1}, Lhqk;->c(I)V

    return-void
.end method

.method public d()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 421
    iget-object v0, p0, Lhpp;->m:Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;

    if-nez v0, :cond_0

    .line 422
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 427
    :goto_0
    return-object v0

    .line 424
    :cond_0
    iget-object v0, p0, Lhpp;->m:Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->getMesPagamento()Ljava/lang/String;

    move-result-object v1

    .line 425
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 426
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public bridge synthetic d(I)V
    .locals 0
    .param p1    # I
        .annotation build Lhxu;
        .end annotation
    .end param

    .prologue
    .line 42
    invoke-super {p0, p1}, Lhqk;->d(I)V

    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 433
    iget-boolean v0, p0, Lhpp;->i:Z

    return v0
.end method

.method public f()Lhxr;
    .locals 3

    .prologue
    .line 204
    invoke-virtual {p0}, Lhpp;->h()Lhxq;

    move-result-object v0

    .line 205
    invoke-interface {v0}, Lhxq;->isEligivel()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 206
    iget-object v1, p0, Lhpp;->j:Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lhpp;->j:Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;

    .line 207
    invoke-virtual {v1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;->getValorLimiteMax()F

    move-result v1

    invoke-interface {v0}, Lhxq;->getValorLimiteMax()F

    move-result v2

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_1

    .line 208
    :cond_0
    invoke-interface {v0}, Lhxq;->isMorno()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 209
    :cond_1
    iget-object v0, p0, Lhpp;->j:Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;

    .line 214
    :cond_2
    :goto_0
    return-object v0

    :cond_3
    iget-object v0, p0, Lhpp;->j:Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;

    goto :goto_0
.end method

.method public g()Lhxm;
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lhpp;->k:Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhpp;->k:Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;

    :goto_0
    check-cast v0, Lhxm;

    return-object v0

    :cond_0
    iget-object v0, p0, Lhpp;->j:Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;

    goto :goto_0
.end method

.method public h()Lhxq;
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lhpp;->c:Lhxo;

    invoke-virtual {v0}, Lhxo;->h()Lhxq;

    move-result-object v0

    return-object v0
.end method

.method public i()Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;
    .locals 2

    .prologue
    .line 502
    invoke-virtual {p0}, Lhpp;->q()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 503
    iget-object v0, p0, Lhpp;->m:Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;

    .line 505
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lhpp;->k:Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;

    goto :goto_0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 510
    invoke-virtual {p0}, Lhpp;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lhpp;->h()Lhxq;

    move-result-object v0

    invoke-interface {v0}, Lhxq;->isMorno()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lhpp;->m:Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhpp;->m:Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;

    .line 516
    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->isMorno()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 515
    :goto_0
    return v0

    .line 516
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Z
    .locals 3

    .prologue
    .line 521
    iget-object v0, p0, Lhpp;->k:Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;->getValorParcela()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 522
    invoke-direct {p0}, Lhpp;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhpp;->m:Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->getValorParcelamentoAdicional()F

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 523
    iget-object v2, p0, Lhpp;->m:Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;

    if-eqz v2, :cond_0

    .line 524
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 523
    :goto_1
    return v0

    .line 522
    :cond_1
    iget-object v0, p0, Lhpp;->m:Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;->getValorParcela()F

    move-result v0

    goto :goto_0

    .line 524
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public bridge synthetic o()Z
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lhqk;->o()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic p()Z
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lhqk;->p()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic q()I
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lhqk;->q()I

    move-result v0

    return v0
.end method

.method public bridge synthetic r()I
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lhqk;->r()I

    move-result v0

    return v0
.end method

.method public bridge synthetic s()I
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lhqk;->s()I

    move-result v0

    return v0
.end method

.method public bridge synthetic t()Z
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lhqk;->t()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic u()Z
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lhqk;->u()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic v()Z
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lhqk;->v()Z

    move-result v0

    return v0
.end method
