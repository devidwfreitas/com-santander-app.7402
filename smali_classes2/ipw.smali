.class Lipw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lgkw",
        "<",
        "Ljdf;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lipu;


# direct methods
.method constructor <init>(Lipu;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lipw;->a:Lipu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 131
    check-cast p1, Ljdf;

    invoke-virtual {p0, p1}, Lipw;->a(Ljdf;)V

    return-void
.end method

.method public a(Ljdf;)V
    .locals 2

    .prologue
    .line 134
    invoke-virtual {p1}, Ljdf;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p1}, Ljdf;->getMensagemErro()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lipw;->a:Lipu;

    invoke-static {v0}, Lipu;->a(Lipu;)Lipt;

    move-result-object v0

    invoke-interface {v0, p1}, Lipt;->a(Ljdf;)V

    .line 140
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lipw;->a:Lipu;

    invoke-static {v0}, Lipu;->a(Lipu;)Lipt;

    move-result-object v0

    invoke-interface {v0, p1}, Lipt;->b(Ljdf;)V

    goto :goto_0
.end method
