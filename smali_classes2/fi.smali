.class Lfi;
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
    .line 806
    iput-object p1, p0, Lfi;->c:Lfd;

    iput-object p2, p0, Lfi;->a:Lev;

    iput-object p3, p0, Lfi;->b:Lfa;

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
    .line 809
    iget-object v0, p0, Lfi;->a:Lev;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfi;->a:Lev;

    invoke-virtual {v0}, Lev;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 810
    invoke-static {}, Lfd;->i()Lfd;

    move-result-object v0

    .line 818
    :goto_0
    return-object v0

    .line 813
    :cond_0
    invoke-virtual {p1}, Lfd;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 814
    invoke-virtual {p1}, Lfd;->g()Ljava/lang/Exception;

    move-result-object v0

    invoke-static {v0}, Lfd;->a(Ljava/lang/Exception;)Lfd;

    move-result-object v0

    goto :goto_0

    .line 815
    :cond_1
    invoke-virtual {p1}, Lfd;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 816
    invoke-static {}, Lfd;->i()Lfd;

    move-result-object v0

    goto :goto_0

    .line 818
    :cond_2
    iget-object v0, p0, Lfi;->b:Lfa;

    invoke-virtual {p1, v0}, Lfd;->b(Lfa;)Lfd;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic b(Lfd;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 806
    invoke-virtual {p0, p1}, Lfi;->a(Lfd;)Lfd;

    move-result-object v0

    return-object v0
.end method
