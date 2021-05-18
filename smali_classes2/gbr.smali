.class Lgbr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Lgbq;


# direct methods
.method constructor <init>(Lgbq;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lgbr;->a:Lgbq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lgbr;->a:Lgbq;

    check-cast p1, Lgaw;

    invoke-static {v0, p1}, Lgbq;->a(Lgbq;Lgaw;)Lgaw;

    .line 43
    iget-object v0, p0, Lgbr;->a:Lgbq;

    invoke-static {v0}, Lgbq;->a(Lgbq;)Lgaw;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lgbr;->a:Lgbq;

    invoke-static {v0}, Lgbq;->a(Lgbq;)Lgaw;

    move-result-object v0

    invoke-virtual {v0}, Lgaw;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 45
    iget-object v0, p0, Lgbr;->a:Lgbq;

    invoke-static {v0}, Lgbq;->a(Lgbq;)Lgaw;

    move-result-object v0

    invoke-virtual {v0}, Lgaw;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p0, Lgbr;->a:Lgbq;

    invoke-static {v0}, Lgbq;->a(Lgbq;)Lgaw;

    move-result-object v0

    invoke-virtual {v0}, Lgaw;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FALSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lgbr;->a:Lgbq;

    invoke-static {v0}, Lgbq;->b(Lgbq;)V

    .line 48
    iget-object v0, p0, Lgbr;->a:Lgbq;

    invoke-static {v0}, Lgbq;->c(Lgbq;)V

    .line 50
    iget-object v0, p0, Lgbr;->a:Lgbq;

    invoke-static {v0}, Lgbq;->d(Lgbq;)Lgbp;

    move-result-object v0

    iget-object v1, p0, Lgbr;->a:Lgbq;

    invoke-static {v1}, Lgbq;->a(Lgbq;)Lgaw;

    move-result-object v1

    invoke-interface {v0, v1}, Lgbp;->a(Lgaw;)V

    .line 61
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lgbr;->a:Lgbq;

    invoke-static {v0}, Lgbq;->d(Lgbq;)Lgbp;

    move-result-object v0

    iget-object v1, p0, Lgbr;->a:Lgbq;

    invoke-static {v1}, Lgbq;->a(Lgbq;)Lgaw;

    move-result-object v1

    invoke-virtual {v1}, Lgaw;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgbp;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_1
    iget-object v0, p0, Lgbr;->a:Lgbq;

    invoke-static {v0}, Lgbq;->d(Lgbq;)Lgbp;

    move-result-object v0

    iget-object v1, p0, Lgbr;->a:Lgbq;

    invoke-static {v1}, Lgbq;->a(Lgbq;)Lgaw;

    move-result-object v1

    invoke-interface {v0, v1}, Lgbp;->b(Lgaw;)V

    goto :goto_0

    .line 59
    :cond_2
    iget-object v0, p0, Lgbr;->a:Lgbq;

    invoke-static {v0}, Lgbq;->d(Lgbq;)Lgbp;

    move-result-object v0

    iget-object v1, p0, Lgbr;->a:Lgbq;

    invoke-static {v1}, Lgbq;->a(Lgbq;)Lgaw;

    move-result-object v1

    invoke-interface {v0, v1}, Lgbp;->b(Lgaw;)V

    goto :goto_0
.end method
