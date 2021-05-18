.class Lmlz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Lmlw;


# direct methods
.method constructor <init>(Lmlw;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lmlz;->a:Lmlw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 132
    check-cast p1, Lmli;

    .line 133
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lmli;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lmli;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lmlz;->a:Lmlw;

    invoke-static {v0}, Lmlw;->a(Lmlw;)Lmlv;

    move-result-object v0

    invoke-interface {v0, p1}, Lmlv;->c(Lmli;)V

    .line 137
    :cond_0
    return-void
.end method
