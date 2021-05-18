.class final Lgzj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lbfx;

.field final synthetic d:Lgyx;

.field final synthetic e:Lgzr;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lbfx;Lgyx;Lgzr;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lgzj;->a:Landroid/content/Context;

    iput-object p2, p0, Lgzj;->b:Ljava/lang/String;

    iput-object p3, p0, Lgzj;->c:Lbfx;

    iput-object p4, p0, Lgzj;->d:Lgyx;

    iput-object p5, p0, Lgzj;->e:Lgzr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 263
    if-eqz p1, :cond_0

    .line 265
    check-cast p1, Lgzp;

    .line 267
    invoke-virtual {p1}, Lgzp;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    sput-boolean v6, Lgyy;->a:Z

    .line 269
    iget-object v0, p0, Lgzj;->a:Landroid/content/Context;

    iget-object v1, p0, Lgzj;->b:Ljava/lang/String;

    iget-object v2, p0, Lgzj;->c:Lbfx;

    iget-object v3, p0, Lgzj;->d:Lgyx;

    invoke-virtual {p1}, Lgzp;->a()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lgzj;->e:Lgzr;

    invoke-static/range {v0 .. v5}, Lgyy;->a(Landroid/content/Context;Ljava/lang/String;Lbfx;Lgyx;Ljava/lang/String;Lgzr;)V

    .line 275
    :cond_0
    :goto_0
    sput-boolean v6, Lgyy;->a:Z

    .line 276
    return-void

    .line 271
    :cond_1
    sput-boolean v6, Lgyy;->a:Z

    .line 272
    iget-object v0, p0, Lgzj;->d:Lgyx;

    invoke-virtual {p1}, Lgzp;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgyx;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method
