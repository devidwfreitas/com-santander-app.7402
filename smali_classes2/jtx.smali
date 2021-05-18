.class Ljtx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Ljss;

.field final synthetic b:Ljtv;


# direct methods
.method constructor <init>(Ljtv;Ljss;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Ljtx;->b:Ljtv;

    iput-object p2, p0, Ljtx;->a:Ljss;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 119
    check-cast p1, Ljsr;

    .line 121
    if-eqz p1, :cond_0

    .line 122
    invoke-virtual {p1}, Ljsr;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p1}, Ljsr;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Ljtx;->a:Ljss;

    invoke-virtual {v0}, Ljss;->getConta()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljsr;->b(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Ljtx;->a:Ljss;

    invoke-virtual {v0}, Ljss;->getAgencia()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljsr;->c(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Ljtx;->a:Ljss;

    invoke-virtual {v0}, Ljss;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljsr;->d(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Ljtx;->a:Ljss;

    invoke-virtual {v0}, Ljss;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljsr;->r(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Ljtx;->a:Ljss;

    invoke-virtual {v0}, Ljss;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljsr;->a(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Ljtx;->a:Ljss;

    invoke-virtual {v0}, Ljss;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljsr;->k(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Ljtx;->a:Ljss;

    invoke-virtual {v0}, Ljss;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljsr;->p(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Ljtx;->b:Ljtv;

    invoke-static {v0}, Ljtv;->c(Ljtv;)Ljtu;

    move-result-object v0

    invoke-interface {v0, p1}, Ljtu;->a(Ljsr;)V

    .line 138
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Ljtx;->b:Ljtv;

    invoke-static {v0}, Ljtv;->c(Ljtv;)Ljtu;

    move-result-object v0

    invoke-interface {v0, p1}, Ljtu;->b(Ljsr;)V

    goto :goto_0
.end method
