.class abstract Lhpk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhso;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhso",
        "<",
        "Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;",
        "Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;",
        ">;"
    }
.end annotation


# instance fields
.field c:Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;

.field final synthetic d:Lhpg;


# direct methods
.method private constructor <init>(Lhpg;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lhpk;->d:Lhpg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lhpg;Lhph;)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lhpk;-><init>(Lhpg;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;)V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method public a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lhpk;->c:Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;

    .line 93
    return-void
.end method

.method public a(Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lhpk;->c:Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;

    .line 103
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 88
    check-cast p1, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;

    invoke-virtual {p0, p1}, Lhpk;->a(Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;)V

    return-void
.end method

.method public b(Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;)V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method public synthetic b(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 88
    check-cast p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;

    invoke-virtual {p0, p1}, Lhpk;->a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPSimularEmprestimoResponse;)V

    return-void
.end method
