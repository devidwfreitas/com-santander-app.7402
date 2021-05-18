.class Lghb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Lggy;


# direct methods
.method constructor <init>(Lggy;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lghb;->a:Lggy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 173
    check-cast p1, Lggt;

    .line 175
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lggt;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lggt;->a()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lghb;->a:Lggy;

    invoke-static {v0, p1}, Lggy;->a(Lggy;Lggt;)Ljava/util/List;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lghb;->a:Lggy;

    invoke-static {v1}, Lggy;->b(Lggy;)Lghd;

    move-result-object v1

    invoke-interface {v1, v0}, Lghd;->a(Ljava/util/List;)V

    .line 182
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lghb;->a:Lggy;

    invoke-static {v0}, Lggy;->b(Lggy;)Lghd;

    move-result-object v0

    iget-object v1, p0, Lghb;->a:Lggy;

    invoke-static {v1}, Lggy;->a(Lggy;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0907ac

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lghd;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
