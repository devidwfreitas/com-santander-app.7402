.class Lden;
.super Ljava/lang/Object;

# interfaces
.implements Ldep;


# instance fields
.field final synthetic a:Ldem;


# direct methods
.method constructor <init>(Ldem;)V
    .locals 0

    iput-object p1, p0, Lden;->a:Ldem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ldat;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldat",
            "<*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lden;->a:Ldem;

    iget-object v0, v0, Ldem;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ldat;->f()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lden;->a:Ldem;

    invoke-static {v0}, Ldem;->a(Ldem;)Lcqt;

    :cond_0
    return-void
.end method
