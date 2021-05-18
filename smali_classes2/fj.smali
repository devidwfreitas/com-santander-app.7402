.class final Lfj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lev;

.field final synthetic b:Lfw;

.field final synthetic c:Lfa;

.field final synthetic d:Lfd;


# direct methods
.method constructor <init>(Lev;Lfw;Lfa;Lfd;)V
    .locals 0

    .prologue
    .line 863
    iput-object p1, p0, Lfj;->a:Lev;

    iput-object p2, p0, Lfj;->b:Lfw;

    iput-object p3, p0, Lfj;->c:Lfa;

    iput-object p4, p0, Lfj;->d:Lfd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 866
    iget-object v0, p0, Lfj;->a:Lev;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfj;->a:Lev;

    invoke-virtual {v0}, Lev;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 867
    iget-object v0, p0, Lfj;->b:Lfw;

    invoke-virtual {v0}, Lfw;->c()V

    .line 879
    :goto_0
    return-void

    .line 872
    :cond_0
    :try_start_0
    iget-object v0, p0, Lfj;->c:Lfa;

    iget-object v1, p0, Lfj;->d:Lfd;

    invoke-interface {v0, v1}, Lfa;->b(Lfd;)Ljava/lang/Object;

    move-result-object v0

    .line 873
    iget-object v1, p0, Lfj;->b:Lfw;

    invoke-virtual {v1, v0}, Lfw;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 874
    :catch_0
    move-exception v0

    .line 875
    iget-object v0, p0, Lfj;->b:Lfw;

    invoke-virtual {v0}, Lfw;->c()V

    goto :goto_0

    .line 876
    :catch_1
    move-exception v0

    .line 877
    iget-object v1, p0, Lfj;->b:Lfw;

    invoke-virtual {v1, v0}, Lfw;->b(Ljava/lang/Exception;)V

    goto :goto_0
.end method
