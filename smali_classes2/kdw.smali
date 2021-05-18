.class Lkdw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Lkdv;


# direct methods
.method constructor <init>(Lkdv;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lkdw;->a:Lkdv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 39
    check-cast p1, Lkcy;

    .line 41
    if-eqz p1, :cond_2

    .line 43
    invoke-virtual {p1}, Lkcy;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 45
    invoke-virtual {p1}, Lkcy;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lkdw;->a:Lkdv;

    invoke-static {v0}, Lkdv;->a(Lkdv;)Lkec;

    move-result-object v0

    invoke-interface {v0, p1}, Lkec;->a(Lkcy;)V

    .line 63
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lkdw;->a:Lkdv;

    invoke-static {v0}, Lkdv;->a(Lkdv;)Lkec;

    move-result-object v0

    invoke-interface {v0, p1}, Lkec;->b(Lkcy;)V

    goto :goto_0

    .line 56
    :cond_1
    iget-object v0, p0, Lkdw;->a:Lkdv;

    invoke-static {v0}, Lkdv;->a(Lkdv;)Lkec;

    move-result-object v0

    invoke-interface {v0, p1}, Lkec;->b(Lkcy;)V

    goto :goto_0

    .line 61
    :cond_2
    iget-object v0, p0, Lkdw;->a:Lkdv;

    invoke-static {v0}, Lkdv;->a(Lkdv;)Lkec;

    move-result-object v0

    invoke-interface {v0, p1}, Lkec;->b(Lkcy;)V

    goto :goto_0
.end method
