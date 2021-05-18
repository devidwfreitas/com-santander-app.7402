.class Liwf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Liwe;


# direct methods
.method constructor <init>(Liwe;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Liwf;->a:Liwe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 34
    if-eqz p1, :cond_2

    instance-of v0, p1, Liva;

    if-eqz v0, :cond_2

    .line 36
    check-cast p1, Liva;

    .line 38
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Liva;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 40
    invoke-virtual {p1}, Liva;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Liwf;->a:Liwe;

    invoke-static {v0}, Liwe;->a(Liwe;)Ljan;

    move-result-object v0

    invoke-virtual {p1}, Liva;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljan;->a(Ljava/lang/String;)V

    .line 51
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Liwf;->a:Liwe;

    invoke-static {v0}, Liwe;->a(Liwe;)Ljan;

    move-result-object v0

    const-string v1, "falhaComunicacao|"

    invoke-virtual {p1}, Liva;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljan;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :cond_1
    iget-object v0, p0, Liwf;->a:Liwe;

    invoke-static {v0}, Liwe;->a(Liwe;)Ljan;

    move-result-object v0

    const-string v1, "falhaComunicacao|"

    const-string v2, "g0002"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljan;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :cond_2
    iget-object v0, p0, Liwf;->a:Liwe;

    invoke-static {v0}, Liwe;->a(Liwe;)Ljan;

    move-result-object v0

    const-string v1, "falhaComunicacao|"

    const-string v2, "g0001"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljan;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
