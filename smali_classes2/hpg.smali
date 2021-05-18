.class public Lhpg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhpd;


# instance fields
.field private a:Lhpp;

.field private b:Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;

.field private c:Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {}, Lhpp;->n()Lhpl;

    move-result-object v0

    check-cast v0, Lhpp;

    iput-object v0, p0, Lhpg;->a:Lhpp;

    .line 22
    return-void
.end method

.method static synthetic a(Lhpg;)Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lhpg;->c:Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;

    return-object v0
.end method

.method static synthetic a(Lhpg;Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;)Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lhpg;->b:Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;

    return-object p1
.end method

.method static synthetic a(Lhpg;Lhpe;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lhpg;->c(Lhpe;)V

    return-void
.end method

.method static synthetic b(Lhpg;)Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lhpg;->b:Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;

    return-object v0
.end method

.method static synthetic b(Lhpg;Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;)Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lhpg;->c:Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;

    return-object p1
.end method

.method private b(Lhpe;)V
    .locals 4

    .prologue
    .line 36
    :try_start_0
    iget-object v0, p0, Lhpg;->a:Lhpp;

    invoke-virtual {v0}, Lhpp;->q()I

    move-result v0

    .line 37
    iget-object v1, p0, Lhpg;->a:Lhpp;

    iget-object v1, v1, Lhpp;->a:Lhsn;

    const/4 v2, 0x0

    new-instance v3, Lhph;

    invoke-direct {v3, p0, p1}, Lhph;-><init>(Lhpg;Lhpe;)V

    invoke-interface {v1, v0, v2, v3}, Lhsn;->a(IZLhso;)V
    :try_end_0
    .catch Lhou; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    invoke-interface {p1}, Lhpe;->a()V

    goto :goto_0
.end method

.method private c(Lhpe;)V
    .locals 4

    .prologue
    .line 51
    :try_start_0
    iget-object v0, p0, Lhpg;->a:Lhpp;

    invoke-virtual {v0}, Lhpp;->q()I

    move-result v0

    .line 52
    iget-object v1, p0, Lhpg;->a:Lhpp;

    iget-object v1, v1, Lhpp;->a:Lhsn;

    const/4 v2, 0x1

    new-instance v3, Lhpi;

    invoke-direct {v3, p0, p1}, Lhpi;-><init>(Lhpg;Lhpe;)V

    invoke-interface {v1, v0, v2, v3}, Lhsn;->a(IZLhso;)V
    :try_end_0
    .catch Lhou; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    invoke-interface {p1}, Lhpe;->a()V

    goto :goto_0
.end method


# virtual methods
.method public a(Lhpe;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lhpg;->b(Lhpe;)V

    .line 32
    return-void
.end method

.method public a(ZLhpf;)V
    .locals 2

    .prologue
    .line 67
    :try_start_0
    iget-object v0, p0, Lhpg;->a:Lhpp;

    new-instance v1, Lhpj;

    invoke-direct {v1, p0, p2}, Lhpj;-><init>(Lhpg;Lhpf;)V

    invoke-virtual {v0, p1, v1}, Lhpp;->a(ZLhpo;)V
    :try_end_0
    .catch Lhou; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    invoke-interface {p2}, Lhpf;->b()V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lhpg;->a:Lhpp;

    invoke-virtual {v0}, Lhpp;->e()Z

    move-result v0

    return v0
.end method

.method public b()Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lhpg;->a:Lhpp;

    invoke-virtual {v0}, Lhpp;->i()Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;

    move-result-object v0

    return-object v0
.end method
