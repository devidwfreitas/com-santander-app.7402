.class public Lmev;
.super Lmda;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        "Item::",
        "Lmdq",
        "<TModel;TItem;*>;>",
        "Lmda",
        "<TItem;>;"
    }
.end annotation


# instance fields
.field private final c:Lmea;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmea",
            "<TModel;TItem;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmer",
            "<TModel;TItem;>;)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Lmda;-><init>()V

    .line 29
    new-instance v0, Lmea;

    invoke-direct {v0, p1}, Lmea;-><init>(Lmer;)V

    iput-object v0, p0, Lmev;->c:Lmea;

    .line 30
    iget-object v0, p0, Lmev;->c:Lmea;

    invoke-virtual {v0, p0}, Lmea;->a(Lmda;)Lmcz;

    .line 31
    return-void
.end method


# virtual methods
.method public a(ILjava/util/List;)Lmev;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<TModel;>;)",
            "Lmev",
            "<TModel;TItem;>;"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lmev;->c:Lmea;

    invoke-virtual {v0, p1, p2}, Lmea;->b(ILjava/util/List;)Lmea;

    .line 112
    return-object p0
.end method

.method public final varargs a(I[Ljava/lang/Object;)Lmev;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[TModel;)",
            "Lmev",
            "<TModel;TItem;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lmev;->c:Lmea;

    invoke-virtual {v0, p1, p2}, Lmea;->a(I[Ljava/lang/Object;)Lmea;

    .line 101
    return-object p0
.end method

.method public a(Ljava/util/List;)Lmev;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TModel;>;)",
            "Lmev",
            "<TModel;TItem;>;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lmev;->c:Lmea;

    invoke-virtual {v0, p1}, Lmea;->d(Ljava/util/List;)Lmea;

    .line 58
    return-object p0
.end method

.method public final varargs a([Ljava/lang/Object;)Lmev;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TModel;)",
            "Lmev",
            "<TModel;TItem;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lmev;->c:Lmea;

    invoke-virtual {v0, p1}, Lmea;->a([Ljava/lang/Object;)Lmea;

    .line 79
    return-object p0
.end method

.method public b(ILjava/lang/Object;)Lmev;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITModel;)",
            "Lmev",
            "<TModel;TItem;>;"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lmev;->c:Lmea;

    invoke-virtual {v0, p1, p2}, Lmea;->a(ILjava/lang/Object;)Lmea;

    .line 123
    return-object p0
.end method

.method public b(Ljava/util/List;)Lmev;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TModel;>;)",
            "Lmev",
            "<TModel;TItem;>;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lmev;->c:Lmea;

    invoke-virtual {v0, p1}, Lmea;->e(Ljava/util/List;)Lmea;

    .line 68
    return-object p0
.end method

.method public c(Ljava/util/List;)Lmev;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TModel;>;)",
            "Lmev",
            "<TModel;TItem;>;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lmev;->c:Lmea;

    invoke-virtual {v0, p1}, Lmea;->f(Ljava/util/List;)Lmea;

    .line 89
    return-object p0
.end method

.method public g(II)Lmev;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lmev",
            "<TModel;TItem;>;"
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lmev;->c:Lmea;

    invoke-virtual {v0, p1, p2}, Lmea;->b(II)Lmea;

    .line 143
    return-object p0
.end method

.method public h(II)Lmev;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lmev",
            "<TModel;TItem;>;"
        }
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lmev;->c:Lmea;

    invoke-virtual {v0, p1, p2}, Lmea;->c(II)Lmea;

    .line 154
    return-object p0
.end method

.method public p()Lmea;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmea",
            "<TModel;TItem;>;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lmev;->c:Lmea;

    return-object v0
.end method

.method public q()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TModel;>;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lmev;->c:Lmea;

    invoke-virtual {v0}, Lmea;->f()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public q(I)Lmev;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lmev",
            "<TModel;TItem;>;"
        }
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lmev;->c:Lmea;

    invoke-virtual {v0, p1}, Lmea;->e(I)Lmea;

    .line 164
    return-object p0
.end method

.method public r()Lmev;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmev",
            "<TModel;TItem;>;"
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lmev;->c:Lmea;

    invoke-virtual {v0}, Lmea;->g()Lmea;

    .line 131
    return-object p0
.end method
