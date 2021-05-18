.class Lgiq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Lgio;


# direct methods
.method constructor <init>(Lgio;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lgiq;->a:Lgio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lgiq;->a:Lgio;

    invoke-static {v0}, Lgio;->a(Lgio;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    check-cast p1, Lghv;

    .line 106
    invoke-virtual {p1}, Lghv;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "0"

    invoke-virtual {p1}, Lghv;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lgiq;->a:Lgio;

    invoke-static {v0}, Lgio;->b(Lgio;)Lgin;

    move-result-object v0

    invoke-interface {v0, p1}, Lgin;->b(Lghv;)V

    .line 117
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lgiq;->a:Lgio;

    invoke-static {v0}, Lgio;->b(Lgio;)Lgin;

    move-result-object v0

    invoke-interface {v0, p1}, Lgin;->a(Lghv;)V

    goto :goto_0

    .line 111
    :cond_1
    check-cast p1, Lghw;

    .line 112
    invoke-virtual {p1}, Lghw;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "ok"

    invoke-virtual {p1}, Lghw;->getConfirmacao()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 113
    iget-object v0, p0, Lgiq;->a:Lgio;

    invoke-static {v0}, Lgio;->b(Lgio;)Lgin;

    move-result-object v0

    invoke-interface {v0, p1}, Lgin;->b(Lghw;)V

    goto :goto_0

    .line 115
    :cond_2
    iget-object v0, p0, Lgiq;->a:Lgio;

    invoke-static {v0}, Lgio;->b(Lgio;)Lgin;

    move-result-object v0

    invoke-interface {v0, p1}, Lgin;->a(Lghw;)V

    goto :goto_0
.end method
