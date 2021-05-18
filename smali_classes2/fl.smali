.class Lfl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lfa",
        "<TTContinuationResult;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfk;


# direct methods
.method constructor <init>(Lfk;)V
    .locals 0

    .prologue
    .line 921
    iput-object p1, p0, Lfl;->a:Lfk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lfd;)Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfd",
            "<TTContinuationResult;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 924
    iget-object v0, p0, Lfl;->a:Lfk;

    iget-object v0, v0, Lfk;->a:Lev;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfl;->a:Lfk;

    iget-object v0, v0, Lfk;->a:Lev;

    invoke-virtual {v0}, Lev;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 925
    iget-object v0, p0, Lfl;->a:Lfk;

    iget-object v0, v0, Lfk;->b:Lfw;

    invoke-virtual {v0}, Lfw;->c()V

    .line 936
    :goto_0
    return-object v2

    .line 929
    :cond_0
    invoke-virtual {p1}, Lfd;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 930
    iget-object v0, p0, Lfl;->a:Lfk;

    iget-object v0, v0, Lfk;->b:Lfw;

    invoke-virtual {v0}, Lfw;->c()V

    goto :goto_0

    .line 931
    :cond_1
    invoke-virtual {p1}, Lfd;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 932
    iget-object v0, p0, Lfl;->a:Lfk;

    iget-object v0, v0, Lfk;->b:Lfw;

    invoke-virtual {p1}, Lfd;->g()Ljava/lang/Exception;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfw;->b(Ljava/lang/Exception;)V

    goto :goto_0

    .line 934
    :cond_2
    iget-object v0, p0, Lfl;->a:Lfk;

    iget-object v0, v0, Lfk;->b:Lfw;

    invoke-virtual {p1}, Lfd;->f()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfw;->b(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public synthetic b(Lfd;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 921
    invoke-virtual {p0, p1}, Lfl;->a(Lfd;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
