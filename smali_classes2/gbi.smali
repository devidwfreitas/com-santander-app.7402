.class Lgbi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Lgbh;


# direct methods
.method constructor <init>(Lgbh;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lgbi;->a:Lgbh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 54
    :try_start_0
    check-cast p1, Lgar;

    .line 55
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lgar;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lgbi;->a:Lgbh;

    invoke-static {v0}, Lgbh;->a(Lgbh;)Lgbg;

    move-result-object v0

    iget-object v1, p0, Lgbi;->a:Lgbh;

    invoke-static {v1, p1}, Lgbh;->a(Lgbh;Lgar;)Lgvb;

    move-result-object v1

    invoke-interface {v0, v1}, Lgbg;->a(Lgvb;)V

    .line 62
    :goto_0
    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lgbi;->a:Lgbh;

    invoke-static {v0}, Lgbh;->a(Lgbh;)Lgbg;

    move-result-object v0

    iget-object v1, p0, Lgbi;->a:Lgbh;

    invoke-static {v1, p1}, Lgbh;->b(Lgbh;Lgar;)Lgvb;

    move-result-object v1

    invoke-interface {v0, v1}, Lgbg;->b(Lgvb;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    iget-object v0, p0, Lgbi;->a:Lgbh;

    invoke-static {v0}, Lgbh;->a(Lgbh;)Lgbg;

    move-result-object v0

    iget-object v1, p0, Lgbi;->a:Lgbh;

    invoke-static {v1}, Lgbh;->b(Lgbh;)Lgvb;

    move-result-object v1

    invoke-interface {v0, v1}, Lgbg;->b(Lgvb;)V

    goto :goto_0
.end method
