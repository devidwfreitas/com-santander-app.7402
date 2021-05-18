.class Lhrr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhpe;


# instance fields
.field final synthetic a:Lhrq;


# direct methods
.method constructor <init>(Lhrq;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lhrr;->a:Lhrq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lhrr;->a:Lhrq;

    invoke-static {v0}, Lhrq;->a(Lhrq;)Lhqo;

    move-result-object v0

    invoke-interface {v0}, Lhqo;->d()V

    .line 64
    return-void
.end method

.method public a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;)V
    .locals 3

    .prologue
    .line 42
    iget-object v0, p0, Lhrr;->a:Lhrq;

    invoke-static {v0}, Lhrq;->a(Lhrq;)Lhqo;

    move-result-object v0

    .line 43
    invoke-interface {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getValorParcelaFormatted()Ljava/lang/String;

    move-result-object v1

    .line 44
    invoke-interface {p2}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getValorParcelaFormatted()Ljava/lang/String;

    move-result-object v2

    .line 42
    invoke-interface {v0, v1, v2}, Lhqo;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-interface {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getType()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 47
    iget-object v0, p0, Lhrr;->a:Lhrq;

    invoke-static {v0}, Lhrq;->a(Lhrq;)Lhqo;

    move-result-object v0

    const/16 v1, 0x50

    invoke-interface {v0, v1}, Lhqo;->a(I)V

    .line 48
    iget-object v0, p0, Lhrr;->a:Lhrq;

    invoke-static {v0}, Lhrq;->b(Lhrq;)V

    .line 57
    :goto_0
    iget-object v0, p0, Lhrr;->a:Lhrq;

    invoke-static {v0}, Lhrq;->a(Lhrq;)Lhqo;

    move-result-object v0

    invoke-interface {v0}, Lhqo;->a()V

    .line 58
    iget-object v0, p0, Lhrr;->a:Lhrq;

    invoke-static {v0}, Lhrq;->a(Lhrq;)Lhqo;

    move-result-object v0

    invoke-interface {v0}, Lhqo;->d()V

    .line 59
    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lhrr;->a:Lhrq;

    invoke-static {v0}, Lhrq;->a(Lhrq;)Lhqo;

    move-result-object v0

    const/16 v1, 0x4b

    invoke-interface {v0, v1}, Lhqo;->a(I)V

    .line 51
    invoke-interface {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getTypeSecure()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 52
    iget-object v0, p0, Lhrr;->a:Lhrq;

    invoke-static {v0}, Lhrq;->c(Lhrq;)V

    goto :goto_0

    .line 54
    :cond_1
    iget-object v0, p0, Lhrr;->a:Lhrq;

    invoke-static {v0}, Lhrq;->d(Lhrq;)V

    goto :goto_0
.end method
