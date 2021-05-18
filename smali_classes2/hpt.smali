.class Lhpt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhqj;


# instance fields
.field final synthetic a:I

.field final synthetic b:F

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lhpn;

.field final synthetic f:Lhpp;


# direct methods
.method constructor <init>(Lhpp;IFIILhpn;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lhpt;->f:Lhpp;

    iput p2, p0, Lhpt;->a:I

    iput p3, p0, Lhpt;->b:F

    iput p4, p0, Lhpt;->c:I

    iput p5, p0, Lhpt;->d:I

    iput-object p6, p0, Lhpt;->e:Lhpn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    .prologue
    .line 228
    iget-object v0, p0, Lhpt;->f:Lhpp;

    iget v1, p0, Lhpt;->a:I

    const/16 v2, 0xa

    const/4 v3, 0x0

    iget v4, p0, Lhpt;->b:F

    iget v5, p0, Lhpt;->c:I

    iget v6, p0, Lhpt;->d:I

    iget-object v7, p0, Lhpt;->e:Lhpn;

    invoke-static/range {v0 .. v7}, Lhpp;->a(Lhpp;IIZFIILhpn;)V

    .line 229
    return-void
.end method

.method public b()V
    .locals 8

    .prologue
    .line 233
    iget-object v0, p0, Lhpt;->f:Lhpp;

    iget v1, p0, Lhpt;->a:I

    const/16 v2, 0xb

    const/4 v3, 0x0

    iget v4, p0, Lhpt;->b:F

    iget v5, p0, Lhpt;->c:I

    iget v6, p0, Lhpt;->d:I

    iget-object v7, p0, Lhpt;->e:Lhpn;

    invoke-static/range {v0 .. v7}, Lhpp;->a(Lhpp;IIZFIILhpn;)V

    .line 234
    return-void
.end method

.method public c()V
    .locals 8

    .prologue
    .line 238
    iget-object v0, p0, Lhpt;->f:Lhpp;

    invoke-static {v0}, Lhpp;->d(Lhpp;)Lhpc;

    move-result-object v0

    iget v1, p0, Lhpt;->b:F

    iget v2, p0, Lhpt;->c:I

    invoke-virtual {v0, v1, v2}, Lhpc;->a(FI)I

    move-result v2

    .line 239
    const/16 v0, 0x63

    if-ne v2, v0, :cond_0

    .line 240
    iget-object v0, p0, Lhpt;->e:Lhpn;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lhpn;->a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;)V

    .line 245
    :goto_0
    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lhpt;->f:Lhpp;

    invoke-virtual {v0}, Lhpp;->h()Lhxq;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhpt;->f:Lhpp;

    invoke-virtual {v0}, Lhpp;->h()Lhxq;

    move-result-object v0

    invoke-interface {v0}, Lhxq;->isMorno()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v3, 0x1

    .line 243
    :goto_1
    iget-object v0, p0, Lhpt;->f:Lhpp;

    iget v1, p0, Lhpt;->a:I

    iget v4, p0, Lhpt;->b:F

    iget v5, p0, Lhpt;->c:I

    iget v6, p0, Lhpt;->d:I

    iget-object v7, p0, Lhpt;->e:Lhpn;

    invoke-static/range {v0 .. v7}, Lhpp;->a(Lhpp;IIZFIILhpn;)V

    goto :goto_0

    .line 242
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method
