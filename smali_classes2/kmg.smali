.class Lkmg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Lkmf;


# direct methods
.method constructor <init>(Lkmf;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lkmg;->a:Lkmf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 37
    check-cast p1, Lklb;

    .line 38
    if-eqz p1, :cond_2

    .line 40
    invoke-virtual {p1}, Lklb;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 41
    invoke-virtual {p1}, Lklb;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lkmg;->a:Lkmf;

    invoke-static {v0}, Lkmf;->a(Lkmf;)Lkme;

    move-result-object v0

    invoke-interface {v0, p1}, Lkme;->a(Lklb;)V

    .line 56
    :goto_0
    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lkmg;->a:Lkmf;

    invoke-static {v0}, Lkmf;->a(Lkmf;)Lkme;

    move-result-object v0

    invoke-interface {v0, p1}, Lkme;->b(Lklb;)V

    goto :goto_0

    .line 48
    :cond_1
    iget-object v0, p0, Lkmg;->a:Lkmf;

    invoke-static {v0}, Lkmf;->a(Lkmf;)Lkme;

    move-result-object v0

    invoke-interface {v0, p1}, Lkme;->b(Lklb;)V

    goto :goto_0

    .line 53
    :cond_2
    iget-object v0, p0, Lkmg;->a:Lkmf;

    invoke-static {v0}, Lkmf;->a(Lkmf;)Lkme;

    move-result-object v0

    invoke-interface {v0, p1}, Lkme;->b(Lklb;)V

    goto :goto_0
.end method
