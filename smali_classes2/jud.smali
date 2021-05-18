.class Ljud;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Ljuc;


# direct methods
.method constructor <init>(Ljuc;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Ljud;->a:Ljuc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 56
    check-cast p1, Ljsr;

    .line 58
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljsr;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Ljud;->a:Ljuc;

    invoke-static {v0}, Ljuc;->a(Ljuc;)Ljub;

    move-result-object v0

    invoke-interface {v0, p1}, Ljub;->a(Ljsr;)V

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Ljud;->a:Ljuc;

    invoke-static {v0}, Ljuc;->a(Ljuc;)Ljub;

    move-result-object v0

    invoke-interface {v0, p1}, Ljub;->b(Ljsr;)V

    goto :goto_0
.end method
