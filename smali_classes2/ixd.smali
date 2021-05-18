.class Lixd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Lixa;


# direct methods
.method constructor <init>(Lixa;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lixd;->a:Lixa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 58
    check-cast p1, Lnax;

    .line 59
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {p1}, Lnax;->getTokenTransacao()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmir;->i(Ljava/lang/String;)V

    .line 61
    new-instance v0, Ljbq;

    new-instance v1, Lixe;

    invoke-direct {v1, p0}, Lixe;-><init>(Lixd;)V

    iget-object v2, p0, Lixd;->a:Lixa;

    .line 66
    invoke-static {v2}, Lixa;->a(Lixa;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljbq;-><init>(Lgkw;Landroid/app/Activity;)V

    iget-object v1, p0, Lixd;->a:Lixa;

    invoke-static {v1}, Lixa;->b(Lixa;)Liuz;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljbq;->b(Liuz;)V

    .line 68
    return-void
.end method
