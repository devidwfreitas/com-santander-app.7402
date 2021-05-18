.class Ljfg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Ljff;


# direct methods
.method constructor <init>(Ljff;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Ljfg;->a:Ljff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 46
    check-cast p1, Ljdo;

    .line 47
    invoke-virtual {p1}, Ljdo;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Ljfg;->a:Ljff;

    invoke-static {v0}, Ljff;->a(Ljff;)Ljfe;

    move-result-object v0

    invoke-interface {v0, p1}, Ljfe;->a(Ljdo;)V

    .line 51
    :goto_0
    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Ljfg;->a:Ljff;

    invoke-static {v0}, Ljff;->a(Ljff;)Ljfe;

    move-result-object v0

    invoke-interface {v0, p1}, Ljfe;->b(Ljdo;)V

    goto :goto_0
.end method
