.class Lmme;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Lmlw;


# direct methods
.method constructor <init>(Lmlw;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lmme;->a:Lmlw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 283
    check-cast p1, Lmls;

    .line 284
    if-eqz p1, :cond_2

    .line 285
    invoke-virtual {p1}, Lmls;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lmls;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    const-string v1, "erro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lmme;->a:Lmlw;

    invoke-static {v0}, Lmlw;->a(Lmlw;)Lmlv;

    move-result-object v0

    invoke-virtual {p1}, Lmls;->getMensagemErro()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lmlv;->b(Ljava/lang/String;)V

    .line 295
    :goto_0
    return-void

    .line 287
    :cond_0
    invoke-virtual {p1}, Lmls;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lmls;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    iget-object v0, p0, Lmme;->a:Lmlw;

    invoke-static {v0}, Lmlw;->a(Lmlw;)Lmlv;

    move-result-object v0

    invoke-interface {v0, p1}, Lmlv;->b(Lmls;)V

    goto :goto_0

    .line 290
    :cond_1
    iget-object v0, p0, Lmme;->a:Lmlw;

    invoke-static {v0}, Lmlw;->a(Lmlw;)Lmlv;

    move-result-object v0

    invoke-virtual {p1}, Lmls;->getMensagemErro()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lmlv;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 293
    :cond_2
    iget-object v0, p0, Lmme;->a:Lmlw;

    invoke-static {v0}, Lmlw;->a(Lmlw;)Lmlv;

    move-result-object v0

    const-string v1, "Sistema indispon\u00edvel no momento. Por favor, tente mais tarde."

    invoke-interface {v0, v1}, Lmlv;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
