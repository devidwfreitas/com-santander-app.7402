.class Ljeq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Ljep;


# direct methods
.method constructor <init>(Ljep;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Ljeq;->a:Ljep;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 60
    check-cast p1, Ljdi;

    .line 61
    invoke-virtual {p1}, Ljdi;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljdi;->getMensagemErro()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Ljeq;->a:Ljep;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Ljep;->a(Ljep;Ljdi;I)V

    .line 67
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Ljeq;->a:Ljep;

    invoke-static {v0}, Ljep;->a(Ljep;)Ljeo;

    move-result-object v0

    iget-object v1, p0, Ljeq;->a:Ljep;

    invoke-static {v1, p1}, Ljep;->a(Ljep;Ljdi;)Lgvb;

    move-result-object v1

    invoke-interface {v0, v1}, Ljeo;->b(Lgvb;)V

    goto :goto_0
.end method
