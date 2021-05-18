.class Lhph;
.super Lhpk;
.source "SourceFile"


# instance fields
.field final synthetic a:Lhpe;

.field final synthetic b:Lhpg;


# direct methods
.method constructor <init>(Lhpg;Lhpe;)V
    .locals 1

    .prologue
    .line 37
    iput-object p1, p0, Lhph;->b:Lhpg;

    iput-object p2, p0, Lhph;->a:Lhpe;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lhpk;-><init>(Lhpg;Lhph;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lhph;->b:Lhpg;

    iget-object v1, p0, Lhph;->c:Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;

    invoke-static {v0, v1}, Lhpg;->a(Lhpg;Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;)Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;

    .line 41
    iget-object v0, p0, Lhph;->b:Lhpg;

    iget-object v1, p0, Lhph;->a:Lhpe;

    invoke-static {v0, v1}, Lhpg;->a(Lhpg;Lhpe;)V

    .line 42
    return-void
.end method
