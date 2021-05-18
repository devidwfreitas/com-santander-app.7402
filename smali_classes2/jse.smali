.class Ljse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljsg;


# instance fields
.field final synthetic a:Ljsd;


# direct methods
.method constructor <init>(Ljsd;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Ljse;->a:Ljsd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljrv;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 67
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Ljse;->a:Ljsd;

    invoke-static {v0}, Ljsd;->a(Ljsd;)Ljsn;

    move-result-object v0

    invoke-interface {v0}, Ljsn;->finish()V

    .line 75
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Ljse;->a:Ljsd;

    invoke-static {v0, p1}, Ljsd;->a(Ljsd;Ljava/util/List;)Ljava/util/List;

    .line 72
    iget-object v0, p0, Ljse;->a:Ljsd;

    invoke-static {v0}, Ljsd;->a(Ljsd;)Ljsn;

    move-result-object v0

    iget-object v1, p0, Ljse;->a:Ljsd;

    invoke-static {v1}, Ljsd;->b(Ljsd;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljsn;->a(Ljava/util/List;)V

    .line 73
    iget-object v0, p0, Ljse;->a:Ljsd;

    invoke-virtual {v0, v2}, Ljsd;->c(I)V

    .line 74
    iget-object v0, p0, Ljse;->a:Ljsd;

    invoke-virtual {v0, v2}, Ljsd;->a(I)V

    goto :goto_0
.end method
