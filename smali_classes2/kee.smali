.class Lkee;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Lked;


# direct methods
.method constructor <init>(Lked;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lkee;->a:Lked;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 31
    check-cast p1, Lkcy;

    .line 33
    if-eqz p1, :cond_2

    .line 35
    invoke-virtual {p1}, Lkcy;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 37
    invoke-virtual {p1}, Lkcy;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lkee;->a:Lked;

    invoke-static {v0}, Lked;->a(Lked;)Lkec;

    move-result-object v0

    invoke-interface {v0, p1}, Lkec;->a(Lkcy;)V

    .line 55
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lkee;->a:Lked;

    invoke-static {v0}, Lked;->a(Lked;)Lkec;

    move-result-object v0

    invoke-interface {v0, p1}, Lkec;->b(Lkcy;)V

    goto :goto_0

    .line 48
    :cond_1
    iget-object v0, p0, Lkee;->a:Lked;

    invoke-static {v0}, Lked;->a(Lked;)Lkec;

    move-result-object v0

    invoke-interface {v0, p1}, Lkec;->b(Lkcy;)V

    goto :goto_0

    .line 53
    :cond_2
    iget-object v0, p0, Lkee;->a:Lked;

    invoke-static {v0}, Lked;->a(Lked;)Lkec;

    move-result-object v0

    invoke-interface {v0, p1}, Lkec;->b(Lkcy;)V

    goto :goto_0
.end method
