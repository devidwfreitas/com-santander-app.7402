.class Lgpf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laok;


# instance fields
.field final synthetic a:Lgpe;


# direct methods
.method constructor <init>(Lgpe;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lgpf;->a:Lgpe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Laoa;)V
    .locals 2
    .param p1    # Laoa;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 42
    iget-object v0, p0, Lgpf;->a:Lgpe;

    invoke-static {v0}, Lgpe;->a(Lgpe;)Lgpj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lgpf;->a:Lgpe;

    invoke-static {v0}, Lgpe;->a(Lgpe;)Lgpj;

    move-result-object v0

    invoke-interface {v0}, Lgpj;->c()V

    .line 45
    :cond_0
    invoke-virtual {p1}, Laoa;->c()V

    .line 46
    iget-object v0, p0, Lgpf;->a:Lgpe;

    invoke-static {v0}, Lgpe;->b(Lgpe;)Lmxc;

    move-result-object v0

    invoke-virtual {v0}, Lmxc;->c()V

    .line 47
    iget-object v0, p0, Lgpf;->a:Lgpe;

    invoke-static {v0}, Lgpe;->b(Lgpe;)Lmxc;

    move-result-object v0

    invoke-virtual {v0}, Lmxc;->b()Ljava/lang/String;

    move-result-object v0

    .line 48
    iget-object v1, p0, Lgpf;->a:Lgpe;

    invoke-virtual {v1, v0}, Lgpe;->a(Ljava/lang/String;)V

    .line 49
    return-void
.end method
