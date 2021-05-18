.class public final Lcti;
.super Lcup;


# instance fields
.field private a:Lctb;

.field private final b:I


# direct methods
.method public constructor <init>(Lctb;I)V
    .locals 0
    .param p1    # Lctb;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcup;-><init>()V

    iput-object p1, p0, Lcti;->a:Lctb;

    iput p2, p0, Lcti;->b:I

    return-void
.end method

.method private a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcti;->a:Lctb;

    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;)V
    .locals 3
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    const-string v0, "GmsClient"

    const-string v1, "received deprecated onAccountValidationComplete callback, ignoring"

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 2
    .param p2    # Landroid/os/IBinder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    iget-object v0, p0, Lcti;->a:Lctb;

    const-string v1, "onPostInitComplete can be called only once per call to getRemoteService"

    invoke-static {v0, v1}, Lcsp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcti;->a:Lctb;

    iget v1, p0, Lcti;->b:I

    invoke-virtual {v0, p1, p2, p3, v1}, Lctb;->a(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    invoke-direct {p0}, Lcti;->a()V

    return-void
.end method
