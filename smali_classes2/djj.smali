.class final Ldjj;
.super Ldit;


# instance fields
.field private a:Ldao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldao",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ldao;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldao",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ldit;-><init>()V

    iput-object p1, p0, Ldjj;->a:Ldao;

    return-void
.end method

.method private a(I)V
    .locals 2

    iget-object v0, p0, Ldjj;->a:Ldao;

    if-nez v0, :cond_0

    const-string v0, "LocationClientImpl"

    const-string v1, "onRemoveGeofencesResult called multiple times"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Ldub;->a(I)I

    move-result v0

    invoke-static {v0}, Ldub;->b(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    iget-object v1, p0, Ldjj;->a:Ldao;

    invoke-interface {v1, v0}, Ldao;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Ldjj;->a:Ldao;

    goto :goto_0
.end method


# virtual methods
.method public a(ILandroid/app/PendingIntent;)V
    .locals 0

    invoke-direct {p0, p1}, Ldjj;->a(I)V

    return-void
.end method

.method public a(I[Ljava/lang/String;)V
    .locals 2

    const-string v0, "LocationClientImpl"

    const-string v1, "Unexpected call to onAddGeofencesResult"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public b(I[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ldjj;->a(I)V

    return-void
.end method
