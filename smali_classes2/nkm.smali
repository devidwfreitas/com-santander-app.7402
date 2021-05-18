.class final Lnkm;
.super Ljava/lang/Object;

# interfaces
.implements Lnja;


# instance fields
.field private final a:Landroid/app/Application;

.field private final b:Landroid/app/Application$ActivityLifecycleCallbacks;


# direct methods
.method public constructor <init>(Lnkj;Lnhp;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lnkj;->b()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lnkm;->a:Landroid/app/Application;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    invoke-static {p2}, Lnkm;->a(Lnhp;)Landroid/app/Application$ActivityLifecycleCallbacks;

    move-result-object v0

    iput-object v0, p0, Lnkm;->b:Landroid/app/Application$ActivityLifecycleCallbacks;

    iget-object v0, p0, Lnkm;->a:Landroid/app/Application;

    iget-object v1, p0, Lnkm;->b:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lnkm;->b:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p1}, Lnkj;->o()Lnhc;

    move-result-object v0

    sget v1, Lnkf;->activity_observer_warn_api_too_low:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lnhc;->e(I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static a(Lnhp;)Landroid/app/Application$ActivityLifecycleCallbacks;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Lnkn;

    invoke-direct {v0, p0}, Lnkn;-><init>(Lnhp;)V

    return-object v0
.end method


# virtual methods
.method public a(Lnkg;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lnkm;->a:Landroid/app/Application;

    iget-object v1, p0, Lnkm;->b:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method
