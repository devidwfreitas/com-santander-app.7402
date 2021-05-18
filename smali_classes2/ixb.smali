.class Lixb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Liuz;

.field final synthetic b:Lixa;


# direct methods
.method constructor <init>(Lixa;Liuz;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lixb;->b:Lixa;

    iput-object p2, p0, Lixb;->a:Liuz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 38
    check-cast p1, Lnax;

    .line 39
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {p1}, Lnax;->getTokenTransacao()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmir;->i(Ljava/lang/String;)V

    .line 41
    new-instance v0, Ljbq;

    new-instance v1, Lixc;

    invoke-direct {v1, p0}, Lixc;-><init>(Lixb;)V

    iget-object v2, p0, Lixb;->b:Lixa;

    .line 46
    invoke-static {v2}, Lixa;->a(Lixa;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljbq;-><init>(Lgkw;Landroid/app/Activity;)V

    iget-object v1, p0, Lixb;->a:Liuz;

    invoke-virtual {v0, v1}, Ljbq;->a(Liuz;)V

    .line 48
    return-void
.end method
