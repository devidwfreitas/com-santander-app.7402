.class Lft;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lfa",
        "<",
        "Ljava/lang/Void;",
        "Lfd",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lev;

.field final synthetic b:Ljava/util/concurrent/Callable;

.field final synthetic c:Lfa;

.field final synthetic d:Ljava/util/concurrent/Executor;

.field final synthetic e:Lez;

.field final synthetic f:Lfd;


# direct methods
.method constructor <init>(Lfd;Lev;Ljava/util/concurrent/Callable;Lfa;Ljava/util/concurrent/Executor;Lez;)V
    .locals 0

    .prologue
    .line 611
    iput-object p1, p0, Lft;->f:Lfd;

    iput-object p2, p0, Lft;->a:Lev;

    iput-object p3, p0, Lft;->b:Ljava/util/concurrent/Callable;

    iput-object p4, p0, Lft;->c:Lfa;

    iput-object p5, p0, Lft;->d:Ljava/util/concurrent/Executor;

    iput-object p6, p0, Lft;->e:Lez;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lfd;)Lfd;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfd",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lfd",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 614
    iget-object v0, p0, Lft;->a:Lev;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lft;->a:Lev;

    invoke-virtual {v0}, Lev;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    invoke-static {}, Lfd;->i()Lfd;

    move-result-object v0

    .line 622
    :goto_0
    return-object v0

    .line 618
    :cond_0
    iget-object v0, p0, Lft;->b:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 619
    invoke-static {v1}, Lfd;->a(Ljava/lang/Object;)Lfd;

    move-result-object v0

    iget-object v1, p0, Lft;->c:Lfa;

    iget-object v2, p0, Lft;->d:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2}, Lfd;->d(Lfa;Ljava/util/concurrent/Executor;)Lfd;

    move-result-object v1

    iget-object v0, p0, Lft;->e:Lez;

    invoke-virtual {v0}, Lez;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfa;

    iget-object v2, p0, Lft;->d:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v0, v2}, Lfd;->d(Lfa;Ljava/util/concurrent/Executor;)Lfd;

    move-result-object v0

    goto :goto_0

    .line 622
    :cond_1
    invoke-static {v1}, Lfd;->a(Ljava/lang/Object;)Lfd;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic b(Lfd;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 611
    invoke-virtual {p0, p1}, Lft;->a(Lfd;)Lfd;

    move-result-object v0

    return-object v0
.end method
