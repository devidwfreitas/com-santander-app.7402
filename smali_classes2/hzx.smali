.class Lhzx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Lhzw;


# direct methods
.method constructor <init>(Lhzw;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lhzx;->a:Lhzw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 31
    check-cast p1, Lhzg;

    .line 32
    if-eqz p1, :cond_2

    .line 34
    invoke-virtual {p1}, Lhzg;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 36
    invoke-virtual {p1}, Lhzg;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lhzx;->a:Lhzw;

    invoke-static {v0}, Lhzw;->a(Lhzw;)Lhzv;

    move-result-object v0

    invoke-interface {v0, p1}, Lhzv;->a(Lhzg;)V

    .line 54
    :goto_0
    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lhzx;->a:Lhzw;

    invoke-static {v0}, Lhzw;->a(Lhzw;)Lhzv;

    move-result-object v0

    invoke-interface {v0, p1}, Lhzv;->b(Lhzg;)V

    goto :goto_0

    .line 47
    :cond_1
    iget-object v0, p0, Lhzx;->a:Lhzw;

    invoke-static {v0}, Lhzw;->a(Lhzw;)Lhzv;

    move-result-object v0

    invoke-interface {v0, p1}, Lhzv;->b(Lhzg;)V

    goto :goto_0

    .line 52
    :cond_2
    iget-object v0, p0, Lhzx;->a:Lhzw;

    invoke-static {v0}, Lhzw;->a(Lhzw;)Lhzv;

    move-result-object v0

    invoke-interface {v0, p1}, Lhzv;->b(Lhzg;)V

    goto :goto_0
.end method
