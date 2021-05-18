.class Ljfr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Ljfq;


# direct methods
.method constructor <init>(Ljfq;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Ljfr;->a:Ljfq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 48
    check-cast p1, Ljds;

    .line 49
    invoke-virtual {p1}, Ljds;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Ljfr;->a:Ljfq;

    invoke-static {v0}, Ljfq;->a(Ljfq;)Ljfp;

    move-result-object v0

    invoke-interface {v0, p1}, Ljfp;->a(Ljds;)V

    .line 53
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Ljfr;->a:Ljfq;

    invoke-static {v0}, Ljfq;->a(Ljfq;)Ljfp;

    move-result-object v0

    invoke-interface {v0, p1}, Ljfp;->b(Ljds;)V

    goto :goto_0
.end method
