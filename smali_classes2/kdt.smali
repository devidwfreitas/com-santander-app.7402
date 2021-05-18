.class Lkdt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Lkds;


# direct methods
.method constructor <init>(Lkds;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lkdt;->a:Lkds;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 40
    check-cast p1, Lkdd;

    .line 42
    if-eqz p1, :cond_2

    .line 44
    invoke-virtual {p1}, Lkdd;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 46
    invoke-virtual {p1}, Lkdd;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lkdt;->a:Lkds;

    invoke-static {v0}, Lkds;->a(Lkds;)Lkdr;

    move-result-object v0

    invoke-interface {v0, p1}, Lkdr;->a(Lkdd;)V

    .line 64
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lkdt;->a:Lkds;

    invoke-static {v0}, Lkds;->a(Lkds;)Lkdr;

    move-result-object v0

    invoke-interface {v0, p1}, Lkdr;->b(Lkdd;)V

    goto :goto_0

    .line 57
    :cond_1
    iget-object v0, p0, Lkdt;->a:Lkds;

    invoke-static {v0}, Lkds;->a(Lkds;)Lkdr;

    move-result-object v0

    invoke-interface {v0, p1}, Lkdr;->b(Lkdd;)V

    goto :goto_0

    .line 62
    :cond_2
    iget-object v0, p0, Lkdt;->a:Lkds;

    invoke-static {v0}, Lkds;->a(Lkds;)Lkdr;

    move-result-object v0

    invoke-interface {v0, p1}, Lkdr;->b(Lkdd;)V

    goto :goto_0
.end method
