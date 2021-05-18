.class public Ldhu;
.super Lctv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lctv",
        "<",
        "Ldiv;",
        ">;"
    }
.end annotation


# instance fields
.field protected final e:Ldjo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldjo",
            "<",
            "Ldiv;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcpv;Lcpw;Ljava/lang/String;Lctn;)V
    .locals 7

    const/16 v3, 0x17

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p6

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lctv;-><init>(Landroid/content/Context;Landroid/os/Looper;ILctn;Lcpv;Lcpw;)V

    new-instance v0, Ldhv;

    invoke-direct {v0, p0}, Ldhv;-><init>(Ldhu;)V

    iput-object v0, p0, Ldhu;->e:Ldjo;

    iput-object p5, p0, Ldhu;->f:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Ldhu;)V
    .locals 0

    invoke-virtual {p0}, Ldhu;->u()V

    return-void
.end method


# virtual methods
.method protected synthetic a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Ldhu;->b(Landroid/os/IBinder;)Ldiv;

    move-result-object v0

    return-object v0
.end method

.method protected b(Landroid/os/IBinder;)Ldiv;
    .locals 1

    invoke-static {p1}, Ldiw;->a(Landroid/os/IBinder;)Ldiv;

    move-result-object v0

    return-object v0
.end method

.method protected i()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.location.internal.GoogleLocationManagerService.START"

    return-object v0
.end method

.method protected j()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    return-object v0
.end method

.method protected t()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "client_name"

    iget-object v2, p0, Ldhu;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
