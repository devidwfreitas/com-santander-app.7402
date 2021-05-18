.class Lgpg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laol;


# instance fields
.field final synthetic a:Lgpe;


# direct methods
.method constructor <init>(Lgpe;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lgpg;->a:Lgpe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Laoa;)Z
    .locals 1
    .param p1    # Laoa;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 54
    iget-object v0, p0, Lgpg;->a:Lgpe;

    invoke-static {v0}, Lgpe;->a(Lgpe;)Lgpj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lgpg;->a:Lgpe;

    invoke-static {v0}, Lgpe;->a(Lgpe;)Lgpj;

    move-result-object v0

    invoke-interface {v0}, Lgpj;->b()V

    .line 57
    :cond_0
    iget-object v0, p0, Lgpg;->a:Lgpe;

    invoke-static {v0}, Lgpe;->b(Lgpe;)Lmxc;

    move-result-object v0

    invoke-virtual {v0}, Lmxc;->c()V

    .line 58
    const/4 v0, 0x1

    return v0
.end method
