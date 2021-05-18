.class Lmjs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Lmjr;


# direct methods
.method constructor <init>(Lmjr;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lmjs;->a:Lmjr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 32
    check-cast p1, Lmjb;

    .line 33
    if-eqz p1, :cond_2

    .line 34
    invoke-virtual {p1}, Lmjb;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 35
    invoke-virtual {p1}, Lmjb;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lmjs;->a:Lmjr;

    invoke-static {v0}, Lmjr;->a(Lmjr;)Lmjq;

    move-result-object v0

    invoke-interface {v0, p1}, Lmjq;->a(Lmjb;)V

    .line 47
    :goto_0
    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lmjs;->a:Lmjr;

    invoke-static {v0}, Lmjr;->a(Lmjr;)Lmjq;

    move-result-object v0

    invoke-interface {v0, p1}, Lmjq;->b(Lmjb;)V

    goto :goto_0

    .line 41
    :cond_1
    iget-object v0, p0, Lmjs;->a:Lmjr;

    invoke-static {v0}, Lmjr;->a(Lmjr;)Lmjq;

    move-result-object v0

    invoke-interface {v0, p1}, Lmjq;->b(Lmjb;)V

    goto :goto_0

    .line 44
    :cond_2
    iget-object v0, p0, Lmjs;->a:Lmjr;

    invoke-static {v0}, Lmjr;->a(Lmjr;)Lmjq;

    move-result-object v0

    invoke-interface {v0, p1}, Lmjq;->b(Lmjb;)V

    goto :goto_0
.end method
