.class Ljrf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfoh;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljre;


# direct methods
.method constructor <init>(Ljre;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Ljrf;->c:Ljre;

    iput-object p2, p0, Ljrf;->a:Ljava/lang/String;

    iput-object p3, p0, Ljrf;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Ljrf;->c:Ljre;

    invoke-static {v0}, Ljre;->a(Ljre;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Ljrf;->c:Ljre;

    invoke-static {v0}, Ljre;->b(Ljre;)Lmip;

    move-result-object v0

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->p()Liow;

    move-result-object v0

    const-string v1, "N"

    .line 89
    invoke-virtual {v0, v1}, Liow;->i(Ljava/lang/String;)V

    .line 91
    :cond_0
    iget-object v0, p0, Ljrf;->c:Ljre;

    invoke-static {v0}, Ljre;->b(Ljre;)Lmip;

    move-result-object v0

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    iget-object v1, p0, Ljrf;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmir;->c(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Ljrf;->c:Ljre;

    invoke-static {v0}, Ljre;->b(Ljre;)Lmip;

    move-result-object v0

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    iget-object v1, p0, Ljrf;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmir;->d(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Ljrf;->c:Ljre;

    invoke-static {v0}, Ljre;->c(Ljre;)Ljra;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljra;->a(ZLjava/lang/String;)V

    .line 95
    return-void
.end method
