.class Lnkr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lnkq;


# direct methods
.method constructor <init>(Lnkq;)V
    .locals 0

    iput-object p1, p0, Lnkr;->a:Lnkq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lnkr;->a:Lnkq;

    invoke-static {v0}, Lnkq;->a(Lnkq;)Lnhg;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lnkr;->a:Lnkq;

    invoke-static {v0}, Lnkq;->b(Lnkq;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {v2}, Lnhg;->a()Lnjx;

    move-result-object v3

    iget-object v0, p0, Lnkr;->a:Lnkq;

    invoke-static {v0}, Lnkq;->b(Lnkq;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnjq;

    invoke-virtual {v3, v0}, Lnjx;->a(Lnjq;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
