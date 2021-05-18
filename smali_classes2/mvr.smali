.class Lmvr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmsj;


# instance fields
.field final synthetic a:Lmvm;


# direct methods
.method constructor <init>(Lmvm;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lmvr;->a:Lmvm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 3

    .prologue
    .line 164
    iget-object v0, p0, Lmvr;->a:Lmvm;

    invoke-static {v0}, Lmvm;->a(Lmvm;)Lmuq;

    move-result-object v0

    if-nez v0, :cond_0

    .line 173
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lmvr;->a:Lmvm;

    invoke-static {v0}, Lmvm;->a(Lmvm;)Lmuq;

    move-result-object v0

    invoke-interface {v0}, Lmuq;->d()V

    .line 167
    iget-object v0, p0, Lmvr;->a:Lmvm;

    invoke-static {v0}, Lmvm;->a(Lmvm;)Lmuq;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lmvs;

    invoke-direct {v2, p0}, Lmvs;-><init>(Lmvr;)V

    invoke-interface {v0, v1, v2}, Lmuq;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(Lmrk;)V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lmvr;->a:Lmvm;

    invoke-static {v0}, Lmvm;->a(Lmvm;)Lmuq;

    move-result-object v0

    if-nez v0, :cond_0

    .line 160
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lmvr;->a:Lmvm;

    invoke-static {v0}, Lmvm;->a(Lmvm;)Lmuq;

    move-result-object v0

    iget-object v1, p0, Lmvr;->a:Lmvm;

    invoke-static {v1}, Lmvm;->d(Lmvm;)I

    move-result v1

    invoke-interface {v0, v1}, Lmuq;->c(I)V

    .line 159
    iget-object v0, p0, Lmvr;->a:Lmvm;

    invoke-static {v0}, Lmvm;->a(Lmvm;)Lmuq;

    move-result-object v0

    invoke-interface {v0}, Lmuq;->d()V

    goto :goto_0
.end method
