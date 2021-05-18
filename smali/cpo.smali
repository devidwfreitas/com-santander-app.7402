.class public final Lcpo;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcpy",
            "<*>;>;"
        }
    .end annotation
.end field

.field private b:Lcpt;


# direct methods
.method public constructor <init>(Lcpt;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcpo;->a:Ljava/util/List;

    iput-object p1, p0, Lcpo;->b:Lcpt;

    return-void
.end method


# virtual methods
.method public a()Lcpm;
    .locals 4

    new-instance v0, Lcpm;

    iget-object v1, p0, Lcpo;->a:Ljava/util/List;

    iget-object v2, p0, Lcpo;->b:Lcpt;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcpm;-><init>(Ljava/util/List;Lcpt;Lcpn;)V

    return-object v0
.end method

.method public a(Lcpy;)Lcpq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lcqg;",
            ">(",
            "Lcpy",
            "<TR;>;)",
            "Lcpq",
            "<TR;>;"
        }
    .end annotation

    new-instance v0, Lcpq;

    iget-object v1, p0, Lcpo;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcpq;-><init>(I)V

    iget-object v1, p0, Lcpo;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
