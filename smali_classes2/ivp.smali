.class Livp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Livo;


# direct methods
.method constructor <init>(Livo;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Livp;->a:Livo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    check-cast p1, Ljqj;

    .line 37
    iget-object v0, p0, Livp;->a:Livo;

    invoke-static {v0}, Livo;->a(Livo;)Ljac;

    move-result-object v0

    invoke-interface {v0, p1}, Ljac;->a(Ljqj;)V

    .line 39
    new-instance v0, Ljqc;

    invoke-direct {v0}, Ljqc;-><init>()V

    .line 41
    invoke-virtual {v0, p1}, Ljqc;->i(Ljqj;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 42
    invoke-virtual {v0, p1}, Ljqc;->j(Ljqj;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    iget-object v0, p0, Livp;->a:Livo;

    invoke-static {v0}, Livo;->a(Livo;)Ljac;

    move-result-object v0

    const-string v1, "N\u00famero de identifica\u00e7\u00e3o inv\u00e1lido."

    invoke-interface {v0, v1, v2}, Ljac;->a(Ljava/lang/String;Z)V

    .line 59
    :goto_0
    return-void

    .line 45
    :cond_0
    invoke-virtual {v0, p1}, Ljqc;->k(Ljqj;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    iget-object v0, p0, Livp;->a:Livo;

    invoke-static {v0}, Livo;->a(Livo;)Ljac;

    move-result-object v0

    const-string v1, "N\u00famero de identifica\u00e7\u00e3o inv\u00e1lido. Voc\u00ea s\u00f3 tem mais uma tentativa antes de cancelar o seu Cart\u00e3o de Seguran\u00e7a On-line."

    invoke-interface {v0, v1, v2}, Ljac;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {v0, p1}, Ljqc;->l(Ljqj;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    iget-object v0, p0, Livp;->a:Livo;

    invoke-static {v0}, Livo;->a(Livo;)Ljac;

    move-result-object v0

    invoke-virtual {p1}, Ljqj;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljac;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 53
    :cond_2
    iget-object v0, p0, Livp;->a:Livo;

    invoke-static {v0}, Livo;->a(Livo;)Ljac;

    move-result-object v0

    invoke-virtual {p1}, Ljqj;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljac;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 57
    :cond_3
    iget-object v0, p0, Livp;->a:Livo;

    invoke-static {v0}, Livo;->a(Livo;)Ljac;

    move-result-object v0

    invoke-interface {v0}, Ljac;->b()V

    goto :goto_0
.end method
