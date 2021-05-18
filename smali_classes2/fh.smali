.class Lfh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lfa",
        "<TTResult;",
        "Lfd",
        "<TTContinuationResult;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lev;

.field final synthetic b:Lfa;

.field final synthetic c:Lfd;


# direct methods
.method constructor <init>(Lfd;Lev;Lfa;)V
    .locals 0

    .prologue
    .line 754
    iput-object p1, p0, Lfh;->c:Lfd;

    iput-object p2, p0, Lfh;->a:Lev;

    iput-object p3, p0, Lfh;->b:Lfa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lfd;)Lfd;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfd",
            "<TTResult;>;)",
            "Lfd",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 757
    iget-object v0, p0, Lfh;->a:Lev;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfh;->a:Lev;

    invoke-virtual {v0}, Lev;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 758
    invoke-static {}, Lfd;->i()Lfd;

    move-result-object v0

    .line 766
    :goto_0
    return-object v0

    .line 761
    :cond_0
    invoke-virtual {p1}, Lfd;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 762
    invoke-virtual {p1}, Lfd;->g()Ljava/lang/Exception;

    move-result-object v0

    invoke-static {v0}, Lfd;->a(Ljava/lang/Exception;)Lfd;

    move-result-object v0

    goto :goto_0

    .line 763
    :cond_1
    invoke-virtual {p1}, Lfd;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 764
    invoke-static {}, Lfd;->i()Lfd;

    move-result-object v0

    goto :goto_0

    .line 766
    :cond_2
    iget-object v0, p0, Lfh;->b:Lfa;

    invoke-virtual {p1, v0}, Lfd;->a(Lfa;)Lfd;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic b(Lfd;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 754
    invoke-virtual {p0, p1}, Lfh;->a(Lfd;)Lfd;

    move-result-object v0

    return-object v0
.end method
