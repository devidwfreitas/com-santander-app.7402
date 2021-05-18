.class Lgzb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Lgza;


# direct methods
.method constructor <init>(Lgza;)V
    .locals 0

    .prologue
    .line 398
    iput-object p1, p0, Lgzb;->a:Lgza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 401
    check-cast p1, Lgzw;

    .line 402
    if-eqz p1, :cond_0

    .line 403
    iget-object v0, p0, Lgzb;->a:Lgza;

    iget-object v0, v0, Lgza;->a:Lbfx;

    iget-object v1, p0, Lgzb;->a:Lgza;

    iget-object v1, v1, Lgza;->b:Landroid/content/Context;

    iget-object v2, p0, Lgzb;->a:Lgza;

    iget-object v2, v2, Lgza;->c:Lgyv;

    iget-object v3, p0, Lgzb;->a:Lgza;

    iget-object v3, v3, Lgza;->d:Lgyx;

    invoke-static {v0, p1, v1, v2, v3}, Lgyy;->a(Lbfx;Lgzw;Landroid/content/Context;Lgyv;Lgyx;)V

    .line 405
    :cond_0
    return-void
.end method
