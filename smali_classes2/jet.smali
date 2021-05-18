.class Ljet;
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
    .line 105
    iput-object p1, p0, Ljet;->a:Ljep;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 108
    check-cast p1, Ljdi;

    .line 109
    invoke-virtual {p1}, Ljdi;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljdi;->getMensagemErro()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Ljet;->a:Ljep;

    invoke-static {v0}, Ljep;->a(Ljep;)Ljeo;

    move-result-object v0

    invoke-interface {v0, p1}, Ljeo;->c(Ljdi;)V

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Ljet;->a:Ljep;

    invoke-static {v0}, Ljep;->a(Ljep;)Ljeo;

    move-result-object v0

    invoke-interface {v0, p1}, Ljeo;->d(Ljdi;)V

    goto :goto_0
.end method
