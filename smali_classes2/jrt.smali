.class Ljrt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljsg;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljrr;


# direct methods
.method constructor <init>(Ljrr;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Ljrt;->b:Ljrr;

    iput-object p2, p0, Ljrt;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljrv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Ljrt;->b:Ljrr;

    invoke-static {v0}, Ljrr;->a(Ljrr;)V

    .line 65
    :goto_0
    return-void

    .line 61
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ljrt;->b:Ljrr;

    invoke-static {v1}, Ljrr;->b(Ljrr;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/santander/app/novidades/view/NovidadesActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 62
    const-string v1, "extra_segment"

    iget-object v2, p0, Ljrt;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    iget-object v1, p0, Ljrt;->b:Ljrr;

    invoke-static {v1}, Ljrr;->b(Ljrr;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
