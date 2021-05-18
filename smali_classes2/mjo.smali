.class Lmjo;
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
    .line 199
    iput-object p1, p0, Lmjo;->a:Lmjk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 202
    check-cast p1, Lmjh;

    .line 203
    if-eqz p1, :cond_2

    .line 204
    invoke-virtual {p1}, Lmjh;->p()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 205
    invoke-virtual {p1}, Lmjh;->p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lmjo;->a:Lmjk;

    invoke-static {v0}, Lmjk;->a(Lmjk;)Lmjj;

    move-result-object v0

    invoke-interface {v0, p1}, Lmjj;->a(Lmjh;)V

    .line 217
    :goto_0
    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lmjo;->a:Lmjk;

    invoke-static {v0}, Lmjk;->a(Lmjk;)Lmjj;

    move-result-object v0

    invoke-interface {v0, p1}, Lmjj;->b(Lmjh;)V

    goto :goto_0

    .line 211
    :cond_1
    iget-object v0, p0, Lmjo;->a:Lmjk;

    invoke-static {v0}, Lmjk;->a(Lmjk;)Lmjj;

    move-result-object v0

    invoke-interface {v0, p1}, Lmjj;->b(Lmjh;)V

    goto :goto_0

    .line 214
    :cond_2
    iget-object v0, p0, Lmjo;->a:Lmjk;

    invoke-static {v0}, Lmjk;->a(Lmjk;)Lmjj;

    move-result-object v0

    invoke-interface {v0, p1}, Lmjj;->b(Lmjh;)V

    goto :goto_0
.end method
