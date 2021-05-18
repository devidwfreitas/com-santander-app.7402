.class final Lcqc;
.super Ldat;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcqg;",
        ">",
        "Ldat",
        "<TR;>;"
    }
.end annotation


# instance fields
.field private final d:Lcqg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcpt;Lcqg;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcpt;",
            "TR;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ldat;-><init>(Lcpt;)V

    iput-object p2, p0, Lcqc;->d:Lcqg;

    return-void
.end method


# virtual methods
.method protected b(Lcom/google/android/gms/common/api/Status;)Lcqg;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Status;",
            ")TR;"
        }
    .end annotation

    iget-object v0, p0, Lcqc;->d:Lcqg;

    return-object v0
.end method
