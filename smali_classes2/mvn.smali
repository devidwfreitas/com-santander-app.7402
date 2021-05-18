.class Lmvn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmsk;


# instance fields
.field final synthetic a:Lmvm;


# direct methods
.method constructor <init>(Lmvm;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lmvn;->a:Lmvm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lmvn;->a:Lmvm;

    invoke-static {v0}, Lmvm;->a(Lmvm;)Lmuq;

    move-result-object v0

    if-nez v0, :cond_0

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lmvn;->a:Lmvm;

    invoke-static {v0}, Lmvm;->a(Lmvm;)Lmuq;

    move-result-object v0

    invoke-interface {v0}, Lmuq;->g()V

    .line 75
    iget-object v0, p0, Lmvn;->a:Lmvm;

    invoke-static {v0}, Lmvm;->a(Lmvm;)Lmuq;

    move-result-object v0

    invoke-interface {v0}, Lmuq;->d()V

    goto :goto_0
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lmvn;->a:Lmvm;

    invoke-static {v0}, Lmvm;->a(Lmvm;)Lmuq;

    move-result-object v0

    if-nez v0, :cond_0

    .line 102
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lmvn;->a:Lmvm;

    invoke-static {v0}, Lmvm;->a(Lmvm;)Lmuq;

    move-result-object v0

    invoke-interface {v0}, Lmuq;->d()V

    .line 96
    iget-object v0, p0, Lmvn;->a:Lmvm;

    invoke-static {v0}, Lmvm;->a(Lmvm;)Lmuq;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lmvo;

    invoke-direct {v2, p0}, Lmvo;-><init>(Lmvn;)V

    invoke-interface {v0, v1, v2}, Lmuq;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lmvn;->a:Lmvm;

    invoke-static {v0}, Lmvm;->a(Lmvm;)Lmuq;

    move-result-object v0

    if-nez v0, :cond_0

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lmvn;->a:Lmvm;

    invoke-static {v0}, Lmvm;->a(Lmvm;)Lmuq;

    move-result-object v0

    invoke-interface {v0}, Lmuq;->f()V

    .line 83
    iget-object v0, p0, Lmvn;->a:Lmvm;

    invoke-static {v0}, Lmvm;->a(Lmvm;)Lmuq;

    move-result-object v0

    invoke-interface {v0}, Lmuq;->d()V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lmvn;->a:Lmvm;

    invoke-static {v0, p1}, Lmvm;->a(Lmvm;Ljava/lang/String;)V

    .line 89
    return-void
.end method
