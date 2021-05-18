.class public Lhsp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhsn;


# static fields
.field private static final a:Ljava/lang/String; = "CPConsigRepositoryImpl"

.field private static final g:I = 0xc8


# instance fields
.field private b:Lhqi;

.field private c:Lhti;

.field private d:Lhtp;

.field private e:Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;

.field private f:Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateRequest;


# direct methods
.method public constructor <init>(Lhqi;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lhsp;->b:Lhqi;

    .line 46
    new-instance v0, Lhtj;

    invoke-direct {v0}, Lhtj;-><init>()V

    iput-object v0, p0, Lhsp;->c:Lhti;

    .line 47
    new-instance v0, Lhtq;

    invoke-direct {v0}, Lhtq;-><init>()V

    iput-object v0, p0, Lhsp;->d:Lhtp;

    .line 48
    return-void
.end method

.method static synthetic a(Lhsp;Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;)Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lhsp;->e:Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;

    return-object p1
.end method

.method static synthetic a(Lhsp;Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateRequest;)Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateRequest;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lhsp;->f:Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateRequest;

    return-object p1
.end method

.method static synthetic a(Lhsp;)Lhti;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lhsp;->c:Lhti;

    return-object v0
.end method

.method static synthetic b(Lhsp;)Lhtp;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lhsp;->d:Lhtp;

    return-object v0
.end method

.method static synthetic c(Lhsp;)Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lhsp;->e:Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoRequest;

    return-object v0
.end method

.method static synthetic d(Lhsp;)Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateRequest;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lhsp;->f:Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateRequest;

    return-object v0
.end method


# virtual methods
.method public a(ILcom/santander/app/contacorrente/domain/Conta;Lhso;)V
    .locals 2
    .param p1    # I
        .annotation build Lhxu;
        .end annotation
    .end param
    .param p3    # Lhso;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/santander/app/contacorrente/domain/Conta;",
            "Lhso",
            "<",
            "Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;",
            "Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lhsp;->b:Lhqi;

    new-instance v1, Lhsq;

    invoke-direct {v1, p0, p3, p2, p3}, Lhsq;-><init>(Lhsp;Lhso;Lcom/santander/app/contacorrente/domain/Conta;Lhso;)V

    invoke-interface {v0, p1, v1}, Lhqi;->a(ILhqj;)V

    .line 116
    return-void
.end method

.method public a(ILcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;Lcom/santander/app/contacorrente/domain/Conta;FIILhso;)V
    .locals 10
    .param p1    # I
        .annotation build Lhxu;
        .end annotation
    .end param
    .param p7    # Lhso;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;",
            "Lcom/santander/app/contacorrente/domain/Conta;",
            "FII",
            "Lhso",
            "<",
            "Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;",
            "Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 127
    iget-object v9, p0, Lhsp;->b:Lhqi;

    new-instance v0, Lhst;

    move-object v1, p0

    move-object/from16 v2, p7

    move-object v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object v7, p2

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lhst;-><init>(Lhsp;Lhso;Lcom/santander/app/contacorrente/domain/Conta;FIILcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;Lhso;)V

    invoke-interface {v9, p1, v0}, Lhqi;->a(ILhqj;)V

    .line 172
    return-void
.end method

.method public a(IZLhso;)V
    .locals 2
    .param p1    # I
        .annotation build Lhxu;
        .end annotation
    .end param
    .param p3    # Lhso;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Lhso",
            "<",
            "Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;",
            "Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lhsp;->b:Lhqi;

    new-instance v1, Lhsw;

    invoke-direct {v1, p0, p3, p2, p3}, Lhsw;-><init>(Lhsp;Lhso;ZLhso;)V

    invoke-interface {v0, p1, v1}, Lhqi;->a(ILhqj;)V

    .line 227
    return-void
.end method
