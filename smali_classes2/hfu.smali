.class public Lhfu;
.super Lhfn;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lhfy;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lhfn;-><init>(Lhfy;)V

    .line 17
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x2

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string v0, "Custo Efetivo Total"

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    const-string v0, "empre-reneg-ler3"

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string v0, "Custo Efetivo Total (CET)."

    return-object v0
.end method

.method public i()Lbfj;
    .locals 3

    .prologue
    .line 41
    new-instance v0, Lbfj;

    invoke-direct {v0}, Lbfj;-><init>()V

    .line 43
    const-string v1, "CET a.a: "

    invoke-virtual {v0, v1}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 44
    iget-object v1, p0, Lhfu;->a:Lhfy;

    invoke-interface {v1}, Lhfy;->J()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lhfu;->f()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbfj;->a(Ljava/lang/CharSequence;[Ljava/lang/Object;)Lbfj;

    .line 45
    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 47
    const-string v1, "Valor Financiado: "

    invoke-virtual {v0, v1}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 48
    iget-object v1, p0, Lhfu;->a:Lhfy;

    invoke-interface {v1}, Lhfy;->A()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lhfu;->f()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbfj;->a(Ljava/lang/CharSequence;[Ljava/lang/Object;)Lbfj;

    .line 49
    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 51
    const-string v1, "Valor Liberado: "

    invoke-virtual {v0, v1}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 52
    iget-object v1, p0, Lhfu;->a:Lhfy;

    invoke-interface {v1}, Lhfy;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lhfu;->f()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbfj;->a(Ljava/lang/CharSequence;[Ljava/lang/Object;)Lbfj;

    .line 53
    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 55
    const-string v1, "Valor do IOF: "

    invoke-virtual {v0, v1}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 56
    iget-object v1, p0, Lhfu;->a:Lhfy;

    invoke-interface {v1}, Lhfy;->G()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lhfu;->f()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbfj;->a(Ljava/lang/CharSequence;[Ljava/lang/Object;)Lbfj;

    .line 57
    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 59
    const-string v1, "Percentual do IOF: "

    invoke-virtual {v0, v1}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 60
    iget-object v1, p0, Lhfu;->a:Lhfy;

    invoke-interface {v1}, Lhfy;->H()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lhfu;->f()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbfj;->a(Ljava/lang/CharSequence;[Ljava/lang/Object;)Lbfj;

    .line 61
    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 63
    return-object v0
.end method

.method public synthetic j()Landroid/text/Spanned;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lhfu;->i()Lbfj;

    move-result-object v0

    return-object v0
.end method
