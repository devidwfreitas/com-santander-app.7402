.class final Lcsm;
.super Ljava/lang/Object;

# interfaces
.implements Lcsn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcsn",
        "<TR;TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcqs;


# direct methods
.method constructor <init>(Lcqs;)V
    .locals 0

    iput-object p1, p0, Lcsm;->a:Lcqs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcqg;)Lcqs;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcsm;->a:Lcqs;

    invoke-virtual {v0, p1}, Lcqs;->a(Lcqg;)V

    iget-object v0, p0, Lcsm;->a:Lcqs;

    return-object v0
.end method

.method public synthetic b(Lcqg;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcsm;->a(Lcqg;)Lcqs;

    move-result-object v0

    return-object v0
.end method
