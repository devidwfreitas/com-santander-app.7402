.class Lfx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lfd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfd",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lfd;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfd",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lfx;->a:Lfd;

    .line 13
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lfx;->a:Lfd;

    .line 32
    return-void
.end method

.method protected finalize()V
    .locals 4

    .prologue
    .line 18
    :try_start_0
    iget-object v0, p0, Lfx;->a:Lfd;

    .line 19
    if-eqz v0, :cond_0

    .line 20
    invoke-static {}, Lfd;->a()Lfv;

    move-result-object v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    new-instance v2, Lfy;

    invoke-virtual {v0}, Lfd;->g()Ljava/lang/Exception;

    move-result-object v3

    invoke-direct {v2, v3}, Lfy;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v1, v0, v2}, Lfv;->a(Lfd;Lfy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 28
    return-void

    .line 26
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
