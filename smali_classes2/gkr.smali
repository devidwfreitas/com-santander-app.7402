.class Lgkr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Lfoh;

.field final synthetic b:Lgkq;


# direct methods
.method constructor <init>(Lgkq;Lfoh;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lgkr;->b:Lgkq;

    iput-object p2, p0, Lgkr;->a:Lfoh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 43
    check-cast p1, Lnax;

    .line 44
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {p1}, Lnax;->getTokenTransacao()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmir;->i(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lgkr;->a:Lfoh;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lfoh;->a(Ljava/lang/Object;)V

    .line 47
    return-void
.end method
