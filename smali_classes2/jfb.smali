.class Ljfb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Ljdx;

.field final synthetic b:Ljfa;


# direct methods
.method constructor <init>(Ljfa;Ljdx;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Ljfb;->b:Ljfa;

    iput-object p2, p0, Ljfb;->a:Ljdx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 58
    check-cast p1, Ljdm;

    .line 59
    invoke-virtual {p1}, Ljdm;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Ljfb;->b:Ljfa;

    iget-object v1, p0, Ljfb;->a:Ljdx;

    invoke-virtual {v1}, Ljdx;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljdm;->d()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljfa;->a(Ljfa;Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    .line 61
    iget-object v1, p0, Ljfb;->b:Ljfa;

    invoke-static {v1}, Ljfa;->a(Ljfa;)Ljez;

    move-result-object v1

    invoke-interface {v1, v0}, Ljez;->a(Ljava/util/ArrayList;)V

    .line 65
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Ljfb;->b:Ljfa;

    invoke-static {v0}, Ljfa;->a(Ljfa;)Ljez;

    move-result-object v0

    invoke-interface {v0, p1}, Ljez;->a(Ljdm;)V

    goto :goto_0
.end method
