.class Ljfl;
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
    .line 60
    iput-object p1, p0, Ljfl;->a:Ljfj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 63
    check-cast p1, Ljdm;

    .line 64
    invoke-virtual {p1}, Ljdm;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Ljfl;->a:Ljfj;

    invoke-static {v0}, Ljfj;->a(Ljfj;)Ljfi;

    move-result-object v0

    invoke-interface {v0, p1}, Ljfi;->c(Ljdm;)V

    .line 68
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Ljfl;->a:Ljfj;

    invoke-static {v0}, Ljfj;->a(Ljfj;)Ljfi;

    move-result-object v0

    invoke-interface {v0, p1}, Ljfi;->d(Ljdm;)V

    goto :goto_0
.end method
