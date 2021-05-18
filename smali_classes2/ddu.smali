.class public Lddu;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ldta;

.field public final b:I

.field public final c:Lcqn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcqn",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ldta;ILcqn;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldta;",
            "I",
            "Lcqn",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lddu;->a:Ldta;

    iput p2, p0, Lddu;->b:I

    iput-object p3, p0, Lddu;->c:Lcqn;

    return-void
.end method
