.class Lzq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzb;


# instance fields
.field final synthetic a:Lzp;


# direct methods
.method constructor <init>(Lzp;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lzq;->a:Lzp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Labv;)V
    .locals 2

    .prologue
    .line 54
    check-cast p1, Lyr;

    .line 55
    invoke-virtual {p1}, Lyr;->b()Lzc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p1}, Lyr;->b()Lzc;

    move-result-object v0

    invoke-virtual {v0}, Lzc;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p1}, Lyr;->b()Lzc;

    move-result-object v0

    invoke-virtual {v0}, Lzc;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lzq;->a:Lzp;

    invoke-virtual {p1}, Lyr;->b()Lzc;

    move-result-object v1

    invoke-virtual {v1}, Lzc;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lzp;->a(Lzp;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lzq;->a:Lzp;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lzp;->a(Lzp;Ljava/lang/Boolean;)V

    .line 69
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-virtual {p1}, Lyr;->a()Lys;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 62
    invoke-virtual {p1}, Lyr;->a()Lys;

    move-result-object v0

    invoke-virtual {v0}, Lys;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 63
    invoke-virtual {p1}, Lyr;->a()Lys;

    move-result-object v0

    invoke-virtual {v0}, Lys;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 64
    iget-object v0, p0, Lzq;->a:Lzp;

    invoke-virtual {p1}, Lyr;->a()Lys;

    move-result-object v1

    invoke-static {v0, v1}, Lzp;->a(Lzp;Lys;)Lys;

    .line 65
    iget-object v0, p0, Lzq;->a:Lzp;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lzp;->a(Lzp;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 67
    :cond_1
    iget-object v0, p0, Lzq;->a:Lzp;

    invoke-static {v0}, Lzp;->a(Lzp;)V

    goto :goto_0
.end method

.method public a(Laby;)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lzq;->a:Lzp;

    invoke-static {v0}, Lzp;->a(Lzp;)V

    .line 74
    return-void
.end method
