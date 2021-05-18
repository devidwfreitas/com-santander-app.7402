.class Lhps;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhqj;


# instance fields
.field final synthetic a:Lhpm;

.field final synthetic b:Lhxq;

.field final synthetic c:Lhpp;


# direct methods
.method constructor <init>(Lhpp;Lhpm;Lhxq;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lhps;->c:Lhpp;

    iput-object p2, p0, Lhps;->a:Lhpm;

    iput-object p3, p0, Lhps;->b:Lhxq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lhps;->c:Lhpp;

    invoke-static {v0}, Lhpp;->c(Lhpp;)Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lhps;->c:Lhpp;

    invoke-static {v0}, Lhpp;->c(Lhpp;)Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;->getValorLimiteMax()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 161
    iget-object v0, p0, Lhps;->a:Lhpm;

    iget-object v1, p0, Lhps;->c:Lhpp;

    invoke-static {v1}, Lhpp;->c(Lhpp;)Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Lhpm;->a(Lhxr;)V

    .line 168
    :goto_0
    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lhps;->a:Lhpm;

    invoke-interface {v0}, Lhpm;->a()V

    goto :goto_0

    .line 166
    :cond_1
    iget-object v0, p0, Lhps;->a:Lhpm;

    invoke-interface {v0}, Lhpm;->b()V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lhps;->b:Lhxq;

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lhps;->b:Lhxq;

    invoke-interface {v0}, Lhxq;->isEligivel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lhps;->a:Lhpm;

    iget-object v1, p0, Lhps;->b:Lhxq;

    invoke-interface {v0, v1}, Lhpm;->a(Lhxr;)V

    .line 181
    :goto_0
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lhps;->a:Lhpm;

    invoke-interface {v0}, Lhpm;->a()V

    goto :goto_0

    .line 179
    :cond_1
    iget-object v0, p0, Lhps;->a:Lhpm;

    invoke-interface {v0}, Lhpm;->b()V

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lhps;->b:Lhxq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhps;->b:Lhxq;

    invoke-interface {v0}, Lhxq;->isEligivel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lhps;->a:Lhpm;

    iget-object v1, p0, Lhps;->c:Lhpp;

    invoke-virtual {v1}, Lhpp;->f()Lhxr;

    move-result-object v1

    invoke-interface {v0, v1}, Lhpm;->a(Lhxr;)V

    .line 195
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lhps;->c:Lhpp;

    invoke-static {v0}, Lhpp;->c(Lhpp;)Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lhps;->c:Lhpp;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lhpp;->d(I)V

    .line 189
    iget-object v0, p0, Lhps;->a:Lhpm;

    iget-object v1, p0, Lhps;->c:Lhpp;

    invoke-static {v1}, Lhpp;->c(Lhpp;)Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Lhpm;->a(Lhxr;)V

    goto :goto_0

    .line 190
    :cond_1
    iget-object v0, p0, Lhps;->b:Lhxq;

    if-nez v0, :cond_2

    .line 191
    iget-object v0, p0, Lhps;->a:Lhpm;

    invoke-interface {v0}, Lhpm;->b()V

    goto :goto_0

    .line 193
    :cond_2
    iget-object v0, p0, Lhps;->a:Lhpm;

    invoke-interface {v0}, Lhpm;->a()V

    goto :goto_0
.end method
