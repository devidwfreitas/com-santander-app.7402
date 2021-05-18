.class final Ldjk;
.super Ldiz;


# instance fields
.field private a:Ldao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldao",
            "<",
            "Lcom/google/android/gms/location/LocationSettingsResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ldao;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldao",
            "<",
            "Lcom/google/android/gms/location/LocationSettingsResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ldiz;-><init>()V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "listener can\'t be null."

    invoke-static {v0, v1}, Lcsp;->b(ZLjava/lang/Object;)V

    iput-object p1, p0, Ldjk;->a:Ldao;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/location/LocationSettingsResult;)V
    .locals 1

    iget-object v0, p0, Ldjk;->a:Ldao;

    invoke-interface {v0, p1}, Ldao;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Ldjk;->a:Ldao;

    return-void
.end method
