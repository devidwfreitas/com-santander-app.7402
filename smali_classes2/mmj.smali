.class Lmmj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Lmlo;

.field final synthetic b:Lmmi;


# direct methods
.method constructor <init>(Lmmi;Lmlo;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lmmj;->b:Lmmi;

    iput-object p2, p0, Lmmj;->a:Lmlo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 83
    move-object v0, p1

    check-cast v0, Lmlp;

    .line 84
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lmlp;->getConfirmacao()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ok"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 85
    iget-object v1, p0, Lmmj;->a:Lmlo;

    invoke-virtual {v1}, Lmlo;->c()Lmkw;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmmj;->a:Lmlo;

    invoke-virtual {v1}, Lmlo;->c()Lmkw;

    move-result-object v1

    invoke-virtual {v1}, Lmkw;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    iget-object v1, p0, Lmmj;->b:Lmmi;

    new-instance v2, Lmqc;

    iget-object v3, p0, Lmmj;->b:Lmmi;

    invoke-static {v3}, Lmmi;->a(Lmmi;)Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lmqc;-><init>(Landroid/app/Activity;)V

    invoke-static {v1, v2}, Lmmi;->a(Lmmi;Lmqc;)Lmqc;

    .line 88
    iget-object v1, p0, Lmmj;->a:Lmlo;

    invoke-virtual {v1}, Lmlo;->c()Lmkw;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lmmj;->a:Lmlo;

    invoke-virtual {v3}, Lmlo;->c()Lmkw;

    move-result-object v3

    invoke-virtual {v3}, Lmkw;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmmj;->a:Lmlo;

    invoke-virtual {v3}, Lmlo;->c()Lmkw;

    move-result-object v3

    invoke-virtual {v3}, Lmkw;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmkw;->e(Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lmmj;->a:Lmlo;

    invoke-virtual {v1}, Lmlo;->c()Lmkw;

    move-result-object v1

    invoke-virtual {v1}, Lmkw;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lmmj;->a:Lmlo;

    invoke-virtual {v1}, Lmlo;->c()Lmkw;

    move-result-object v1

    invoke-virtual {v1}, Lmkw;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "&"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 92
    iget-object v2, p0, Lmmj;->a:Lmlo;

    invoke-virtual {v2}, Lmlo;->c()Lmkw;

    move-result-object v2

    invoke-virtual {v2, v1}, Lmkw;->h(Ljava/lang/String;)V

    .line 95
    :cond_0
    iget-object v1, p0, Lmmj;->b:Lmmi;

    invoke-static {v1}, Lmmi;->b(Lmmi;)Lmqc;

    move-result-object v1

    iget-object v2, p0, Lmmj;->a:Lmlo;

    invoke-virtual {v2}, Lmlo;->c()Lmkw;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmqc;->a(Lmkw;)V

    .line 98
    iget-object v1, p0, Lmmj;->b:Lmmi;

    invoke-static {v1}, Lmmi;->b(Lmmi;)Lmqc;

    const/4 v1, 0x0

    sput-object v1, Lmqc;->a:Lmkt;

    .line 100
    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [Lmzp;

    const/4 v2, 0x0

    sget-object v3, Lmzp;->RELOAD_CARTOES:Lmzp;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lmzp;->RELOAD_CONTA:Lmzp;

    aput-object v3, v1, v2

    .line 104
    new-instance v2, Lmzn;

    invoke-direct {v2}, Lmzn;-><init>()V

    .line 105
    new-instance v3, Lmmk;

    invoke-direct {v3, p0, v0}, Lmmk;-><init>(Lmmj;Lmlp;)V

    invoke-virtual {v2, v1, v3}, Lmzn;->a([Lmzp;Lfoh;)V

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_2
    iget-object v0, p0, Lmmj;->b:Lmmi;

    invoke-static {v0}, Lmmi;->c(Lmmi;)Lmmh;

    move-result-object v0

    iget-object v1, p0, Lmmj;->b:Lmmi;

    check-cast p1, Lmlp;

    invoke-static {v1, p1}, Lmmi;->a(Lmmi;Lmlp;)Lgvb;

    move-result-object v1

    invoke-interface {v0, v1}, Lmmh;->b(Lgvb;)V

    goto :goto_0
.end method
