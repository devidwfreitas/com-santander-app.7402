.class Lmjl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Lmjk;


# direct methods
.method constructor <init>(Lmjk;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lmjl;->a:Lmjk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 47
    check-cast p1, Lmiy;

    .line 48
    if-eqz p1, :cond_2

    .line 49
    invoke-virtual {p1}, Lmiy;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {p1}, Lmiy;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lmjl;->a:Lmjk;

    invoke-static {v0}, Lmjk;->a(Lmjk;)Lmjj;

    move-result-object v0

    invoke-interface {v0, p1}, Lmjj;->a(Lmiy;)V

    .line 62
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lmjl;->a:Lmjk;

    invoke-static {v0}, Lmjk;->a(Lmjk;)Lmjj;

    move-result-object v0

    invoke-interface {v0, p1}, Lmjj;->b(Lmiy;)V

    goto :goto_0

    .line 56
    :cond_1
    iget-object v0, p0, Lmjl;->a:Lmjk;

    invoke-static {v0}, Lmjk;->a(Lmjk;)Lmjj;

    move-result-object v0

    invoke-interface {v0, p1}, Lmjj;->b(Lmiy;)V

    goto :goto_0

    .line 59
    :cond_2
    iget-object v0, p0, Lmjl;->a:Lmjk;

    invoke-static {v0}, Lmjk;->a(Lmjk;)Lmjj;

    move-result-object v0

    invoke-interface {v0, p1}, Lmjj;->b(Lmiy;)V

    goto :goto_0
.end method
