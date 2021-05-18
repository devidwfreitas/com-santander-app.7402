.class Ljfc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Ljfa;


# direct methods
.method constructor <init>(Ljfa;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Ljfc;->a:Ljfa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 74
    check-cast p1, Lmiw;

    .line 75
    if-eqz p1, :cond_1

    .line 76
    invoke-virtual {p1}, Lmiw;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Ljfc;->a:Ljfa;

    invoke-static {v0}, Ljfa;->a(Ljfa;)Ljez;

    move-result-object v0

    invoke-interface {v0, p1}, Ljez;->c(Lmiw;)V

    .line 85
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Ljfc;->a:Ljfa;

    invoke-static {v0}, Ljfa;->a(Ljfa;)Ljez;

    move-result-object v0

    invoke-interface {v0, p1}, Ljez;->a(Lmiw;)V

    goto :goto_0

    .line 83
    :cond_1
    iget-object v0, p0, Ljfc;->a:Ljfa;

    invoke-static {v0}, Ljfa;->a(Ljfa;)Ljez;

    move-result-object v0

    invoke-interface {v0, p1}, Ljez;->b(Lmiw;)V

    goto :goto_0
.end method
