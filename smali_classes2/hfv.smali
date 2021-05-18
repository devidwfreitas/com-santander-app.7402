.class public Lhfv;
.super Lhfn;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lhfy;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lhfn;-><init>(Lhfy;)V

    .line 23
    return-void
.end method


# virtual methods
.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const-string v0, "empre-reneg-ler1"

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const-string v0, "Condi\u00e7\u00f5es Gerais."

    return-object v0
.end method

.method public i()Lbfj;
    .locals 6

    .prologue
    .line 37
    iget-object v0, p0, Lhfv;->a:Lhfy;

    invoke-interface {v0}, Lhfy;->L()Ljava/util/List;

    move-result-object v0

    .line 39
    new-instance v1, Lbfj;

    invoke-direct {v1}, Lbfj;-><init>()V

    .line 40
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhfo;

    .line 41
    invoke-virtual {v0}, Lhfo;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lhfv;->a(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    .line 42
    invoke-virtual {v0}, Lhfo;->a()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 43
    invoke-virtual {v1, v3}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 50
    :goto_1
    const-string v0, "\n\n"

    invoke-virtual {v1, v0}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {v0}, Lhfo;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Landroid/text/style/StyleSpan;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1, v0, v4}, Lbfj;->a(Ljava/lang/CharSequence;Ljava/lang/Object;)Lbfj;

    .line 47
    const-string v0, ". "

    invoke-virtual {v1, v0}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 48
    invoke-virtual {v1, v3}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    goto :goto_1

    .line 53
    :cond_1
    return-object v1
.end method

.method public synthetic j()Landroid/text/Spanned;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lhfv;->i()Lbfj;

    move-result-object v0

    return-object v0
.end method
