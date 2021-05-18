.class final Lgzk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Lgyx;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lgyx;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 325
    iput-object p1, p0, Lgzk;->a:Lgyx;

    iput-object p2, p0, Lgzk;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 328
    check-cast p1, Lnax;

    .line 329
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {p1}, Lnax;->getTokenTransacao()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmir;->i(Ljava/lang/String;)V

    .line 330
    new-instance v0, Lkkv;

    new-instance v1, Lgzl;

    invoke-direct {v1, p0}, Lgzl;-><init>(Lgzk;)V

    invoke-direct {v0, v1}, Lkkv;-><init>(Lgkv;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lkku;

    const/4 v2, 0x0

    .line 359
    invoke-static {}, Lgyy;->a()Lkku;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lkkv;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 360
    return-void
.end method
