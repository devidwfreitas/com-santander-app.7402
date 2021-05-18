.class final Lgza;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Lbfx;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lgyv;

.field final synthetic d:Lgyx;

.field final synthetic e:Lgzs;


# direct methods
.method constructor <init>(Lbfx;Landroid/content/Context;Lgyv;Lgyx;Lgzs;)V
    .locals 0

    .prologue
    .line 393
    iput-object p1, p0, Lgza;->a:Lbfx;

    iput-object p2, p0, Lgza;->b:Landroid/content/Context;

    iput-object p3, p0, Lgza;->c:Lgyv;

    iput-object p4, p0, Lgza;->d:Lgyx;

    iput-object p5, p0, Lgza;->e:Lgzs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 396
    check-cast p1, Lnax;

    .line 397
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {p1}, Lnax;->getTokenTransacao()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmir;->i(Ljava/lang/String;)V

    .line 398
    new-instance v0, Lgzy;

    new-instance v1, Lgzb;

    invoke-direct {v1, p0}, Lgzb;-><init>(Lgza;)V

    invoke-direct {v0, v1}, Lgzy;-><init>(Lgkw;)V

    iget-object v1, p0, Lgza;->e:Lgzs;

    .line 406
    invoke-virtual {v1}, Lgzs;->a()Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgzy;->h(Ljava/lang/String;)V

    .line 407
    return-void
.end method
