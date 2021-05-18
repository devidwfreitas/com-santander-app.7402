.class Lhpj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhpo;


# instance fields
.field final synthetic a:Lhpf;

.field final synthetic b:Lhpg;


# direct methods
.method constructor <init>(Lhpg;Lhpf;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lhpj;->b:Lhpg;

    iput-object p2, p0, Lhpj;->a:Lhpf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lhpj;->a:Lhpf;

    invoke-interface {v0}, Lhpf;->a()V

    .line 71
    return-void
.end method

.method public a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;)V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lhpj;->a:Lhpf;

    invoke-interface {v0}, Lhpf;->b()V

    .line 76
    return-void
.end method
