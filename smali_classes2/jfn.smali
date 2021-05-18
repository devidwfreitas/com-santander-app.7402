.class Ljfn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Ljfj;


# direct methods
.method constructor <init>(Ljfj;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Ljfn;->a:Ljfj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 93
    check-cast p1, Ljdq;

    .line 94
    invoke-virtual {p1}, Ljdq;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Ljfn;->a:Ljfj;

    invoke-static {v0}, Ljfj;->a(Ljfj;)Ljfi;

    move-result-object v0

    invoke-interface {v0, p1}, Ljfi;->a(Ljdq;)V

    .line 98
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Ljfn;->a:Ljfj;

    invoke-static {v0}, Ljfj;->a(Ljfj;)Ljfi;

    move-result-object v0

    invoke-interface {v0, p1}, Ljfi;->b(Ljdq;)V

    goto :goto_0
.end method
