.class Lkmo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Lkmn;


# direct methods
.method constructor <init>(Lkmn;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lkmo;->a:Lkmn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 36
    check-cast p1, Lkma;

    .line 37
    if-eqz p1, :cond_2

    .line 38
    invoke-virtual {p1}, Lkma;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 39
    invoke-virtual {p1}, Lkma;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lkmo;->a:Lkmn;

    invoke-static {v0}, Lkmn;->a(Lkmn;)Lkmm;

    move-result-object v0

    invoke-interface {v0, p1}, Lkmm;->a(Lkma;)V

    .line 54
    :goto_0
    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lkmo;->a:Lkmn;

    invoke-static {v0}, Lkmn;->a(Lkmn;)Lkmm;

    move-result-object v0

    invoke-interface {v0, p1}, Lkmm;->b(Lkma;)V

    goto :goto_0

    .line 46
    :cond_1
    iget-object v0, p0, Lkmo;->a:Lkmn;

    invoke-static {v0}, Lkmn;->a(Lkmn;)Lkmm;

    move-result-object v0

    invoke-interface {v0, p1}, Lkmm;->b(Lkma;)V

    goto :goto_0

    .line 51
    :cond_2
    iget-object v0, p0, Lkmo;->a:Lkmn;

    invoke-static {v0}, Lkmn;->a(Lkmn;)Lkmm;

    move-result-object v0

    invoke-interface {v0, p1}, Lkmm;->b(Lkma;)V

    goto :goto_0
.end method
