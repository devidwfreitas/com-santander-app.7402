.class Ldbk;
.super Ljava/lang/Object;

# interfaces
.implements Legr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Legr",
        "<TTResult;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Legw;

.field final synthetic b:Ldbi;


# direct methods
.method constructor <init>(Ldbi;Legw;)V
    .locals 0

    iput-object p1, p0, Ldbk;->b:Ldbi;

    iput-object p2, p0, Ldbk;->a:Legw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Legv;)V
    .locals 2
    .param p1    # Legv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Legv",
            "<TTResult;>;)V"
        }
    .end annotation

    iget-object v0, p0, Ldbk;->b:Ldbi;

    invoke-static {v0}, Ldbi;->b(Ldbi;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Ldbk;->a:Legw;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
