.class Lhwd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhva;


# instance fields
.field final synthetic a:Lhwc;


# direct methods
.method constructor <init>(Lhwc;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lhwd;->a:Lhwc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lhwd;->a:Lhwc;

    invoke-static {v0}, Lhwc;->a(Lhwc;)Lhvv;

    move-result-object v0

    if-nez v0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lhwd;->a:Lhwc;

    invoke-static {v0}, Lhwc;->a(Lhwc;)Lhvv;

    move-result-object v0

    invoke-interface {v0}, Lhvv;->d()V

    .line 83
    iget-object v0, p0, Lhwd;->a:Lhwc;

    invoke-static {v0}, Lhwc;->a(Lhwc;)Lhvv;

    move-result-object v0

    iget-object v1, p0, Lhwd;->a:Lhwc;

    invoke-static {v1}, Lhwc;->b(Lhwc;)Lhuz;

    move-result-object v1

    invoke-interface {v1}, Lhuz;->a()Lhxn;

    move-result-object v1

    invoke-interface {v0, v1}, Lhvv;->a(Lhxn;)V

    .line 84
    iget-object v0, p0, Lhwd;->a:Lhwc;

    invoke-static {v0}, Lhwc;->a(Lhwc;)Lhvv;

    move-result-object v0

    iget-object v1, p0, Lhwd;->a:Lhwc;

    invoke-static {v1}, Lhwc;->c(Lhwc;)I

    move-result v1

    invoke-interface {v0, v1}, Lhvv;->a(I)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lhwd;->a:Lhwc;

    invoke-static {v0}, Lhwc;->a(Lhwc;)Lhvv;

    move-result-object v0

    if-nez v0, :cond_0

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lhwd;->a:Lhwc;

    invoke-static {v0}, Lhwc;->a(Lhwc;)Lhvv;

    move-result-object v0

    invoke-interface {v0}, Lhvv;->d()V

    .line 92
    iget-object v0, p0, Lhwd;->a:Lhwc;

    invoke-static {v0}, Lhwc;->a(Lhwc;)Lhvv;

    move-result-object v0

    invoke-interface {v0}, Lhvv;->e()V

    goto :goto_0
.end method
