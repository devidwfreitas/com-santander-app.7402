.class Lmms;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Lmmq;


# direct methods
.method constructor <init>(Lmmq;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lmms;->a:Lmmq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 78
    check-cast p1, Lmlb;

    .line 79
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lmlb;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 80
    :cond_0
    iget-object v0, p0, Lmms;->a:Lmmq;

    invoke-static {v0}, Lmmq;->a(Lmmq;)Lmmp;

    move-result-object v0

    invoke-interface {v0}, Lmmp;->a()V

    .line 85
    :goto_0
    return-void

    .line 82
    :cond_1
    iget-object v0, p0, Lmms;->a:Lmmq;

    invoke-static {v0}, Lmmq;->a(Lmmq;)Lmmp;

    move-result-object v0

    invoke-interface {v0, p1}, Lmmp;->a(Lmlb;)V

    goto :goto_0
.end method
