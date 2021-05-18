.class Lggz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Lghu;

.field final synthetic b:Lggx;

.field final synthetic c:Lggy;


# direct methods
.method constructor <init>(Lggy;Lghu;Lggx;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lggz;->c:Lggy;

    iput-object p2, p0, Lggz;->a:Lghu;

    iput-object p3, p0, Lggz;->b:Lggx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 56
    check-cast p1, Lggs;

    .line 57
    if-eqz p1, :cond_1

    .line 58
    invoke-virtual {p1}, Lggs;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lggz;->c:Lggy;

    invoke-static {v0}, Lggy;->a(Lggy;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    .line 62
    const/4 v0, 0x2

    new-array v0, v0, [Lmzp;

    const/4 v1, 0x0

    sget-object v2, Lmzp;->RELOAD_CARTOES:Lmzp;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lmzp;->RELOAD_CARTOES_DESBLOQUEIO:Lmzp;

    aput-object v2, v0, v1

    .line 66
    new-instance v1, Lmzn;

    invoke-direct {v1}, Lmzn;-><init>()V

    .line 67
    new-instance v2, Lgha;

    invoke-direct {v2, p0, p1}, Lgha;-><init>(Lggz;Lggs;)V

    invoke-virtual {v1, v0, v2}, Lmzn;->a([Lmzp;Lfoh;)V

    .line 79
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lggz;->c:Lggy;

    invoke-static {v0}, Lggy;->b(Lggy;)Lghd;

    move-result-object v0

    iget-object v1, p0, Lggz;->c:Lggy;

    iget-object v2, p0, Lggz;->a:Lghu;

    iget-object v3, p0, Lggz;->b:Lggx;

    invoke-static {v1, v2, p1, v3}, Lggy;->a(Lggy;Lfvw;Lggs;Lggx;)Lgvb;

    move-result-object v1

    invoke-interface {v0, v1}, Lghd;->b(Lgvb;)V

    goto :goto_0

    .line 77
    :cond_1
    iget-object v0, p0, Lggz;->c:Lggy;

    invoke-static {v0}, Lggy;->b(Lggy;)Lghd;

    move-result-object v0

    iget-object v1, p0, Lggz;->c:Lggy;

    iget-object v2, p0, Lggz;->a:Lghu;

    iget-object v3, p0, Lggz;->b:Lggx;

    invoke-static {v1, v2, p1, v3}, Lggy;->a(Lggy;Lfvw;Lggs;Lggx;)Lgvb;

    move-result-object v1

    invoke-interface {v0, v1}, Lghd;->b(Lgvb;)V

    goto :goto_0
.end method
