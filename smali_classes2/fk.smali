.class final Lfk;
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
    .line 908
    iput-object p1, p0, Lfk;->a:Lev;

    iput-object p2, p0, Lfk;->b:Lfw;

    iput-object p3, p0, Lfk;->c:Lfa;

    iput-object p4, p0, Lfk;->d:Lfd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 911
    iget-object v0, p0, Lfk;->a:Lev;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfk;->a:Lev;

    invoke-virtual {v0}, Lev;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 912
    iget-object v0, p0, Lfk;->b:Lfw;

    invoke-virtual {v0}, Lfw;->c()V

    .line 945
    :goto_0
    return-void

    .line 917
    :cond_0
    :try_start_0
    iget-object v0, p0, Lfk;->c:Lfa;

    iget-object v1, p0, Lfk;->d:Lfd;

    invoke-interface {v0, v1}, Lfa;->b(Lfd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfd;

    .line 918
    if-nez v0, :cond_1

    .line 919
    iget-object v0, p0, Lfk;->b:Lfw;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lfw;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 940
    :catch_0
    move-exception v0

    .line 941
    iget-object v0, p0, Lfk;->b:Lfw;

    invoke-virtual {v0}, Lfw;->c()V

    goto :goto_0

    .line 921
    :cond_1
    :try_start_1
    new-instance v1, Lfl;

    invoke-direct {v1, p0}, Lfl;-><init>(Lfk;)V

    invoke-virtual {v0, v1}, Lfd;->a(Lfa;)Lfd;
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 942
    :catch_1
    move-exception v0

    .line 943
    iget-object v1, p0, Lfk;->b:Lfw;

    invoke-virtual {v1, v0}, Lfw;->b(Ljava/lang/Exception;)V

    goto :goto_0
.end method
