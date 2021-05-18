.class Lirf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfoh;


# instance fields
.field final synthetic a:Lird;


# direct methods
.method constructor <init>(Lird;)V
    .locals 0

    .prologue
    .line 517
    iput-object p1, p0, Lirf;->a:Lird;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 520
    check-cast p1, Ljava/lang/String;

    .line 521
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 522
    iget-object v0, p0, Lirf;->a:Lird;

    invoke-static {v0}, Lird;->a(Lird;)Lirb;

    move-result-object v0

    invoke-interface {v0, p1}, Lirb;->d(Ljava/lang/String;)V

    .line 523
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiq;->l(Z)V

    .line 527
    :goto_0
    return-void

    .line 525
    :cond_0
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiq;->l(Z)V

    goto :goto_0
.end method
