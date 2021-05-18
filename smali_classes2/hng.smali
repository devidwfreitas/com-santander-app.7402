.class Lhng;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lgkv",
        "<",
        "Lhla;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lhxl;

.field final synthetic b:Lhmz;

.field final synthetic c:Lhnc;


# direct methods
.method constructor <init>(Lhnc;Lhxl;Lhmz;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lhng;->c:Lhnc;

    iput-object p2, p0, Lhng;->a:Lhxl;

    iput-object p3, p0, Lhng;->b:Lhmz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhla;)V
    .locals 3

    .prologue
    .line 138
    :try_start_0
    invoke-virtual {p1}, Lhla;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lhng;->a:Lhxl;

    invoke-interface {v0, p1}, Lhxl;->a(Lhlh;)V

    .line 140
    iget-object v0, p0, Lhng;->c:Lhnc;

    iget-object v1, p0, Lhng;->b:Lhmz;

    invoke-static {v0, v1}, Lhnc;->a(Lhnc;Lhmz;)V

    .line 141
    iget-object v0, p0, Lhng;->c:Lhnc;

    invoke-static {v0}, Lhnc;->b(Lhnc;)Lhya;

    move-result-object v0

    invoke-interface {v0}, Lhya;->h()V

    .line 149
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lhng;->b:Lhmz;

    invoke-interface {v0}, Lhmz;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    const-string v1, "CancelamentoRepository"

    const-string v2, "cancelarCP"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    iget-object v0, p0, Lhng;->b:Lhmz;

    invoke-interface {v0}, Lhmz;->b()V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 134
    check-cast p1, Lhla;

    invoke-virtual {p0, p1}, Lhng;->a(Lhla;)V

    return-void
.end method
