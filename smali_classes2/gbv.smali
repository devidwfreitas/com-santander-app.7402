.class Lgbv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Lgbu;


# direct methods
.method constructor <init>(Lgbu;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lgbv;->a:Lgbu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lgbv;->a:Lgbu;

    check-cast p1, Lgay;

    invoke-static {v0, p1}, Lgbu;->a(Lgbu;Lgay;)Lgay;

    .line 44
    iget-object v0, p0, Lgbv;->a:Lgbu;

    invoke-static {v0}, Lgbu;->a(Lgbu;)Lgay;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgbv;->a:Lgbu;

    invoke-static {v0}, Lgbu;->a(Lgbu;)Lgay;

    move-result-object v0

    invoke-virtual {v0}, Lgay;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lgbv;->a:Lgbu;

    invoke-static {v0}, Lgbu;->c(Lgbu;)Lgbt;

    move-result-object v0

    iget-object v1, p0, Lgbv;->a:Lgbu;

    invoke-static {v1}, Lgbu;->b(Lgbu;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Lgbt;->a(Ljava/util/ArrayList;)V

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lgbv;->a:Lgbu;

    invoke-static {v0}, Lgbu;->c(Lgbu;)Lgbt;

    move-result-object v0

    invoke-interface {v0}, Lgbt;->a()V

    goto :goto_0
.end method
