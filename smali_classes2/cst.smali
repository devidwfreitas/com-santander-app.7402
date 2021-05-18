.class public final Lcst;
.super Lcxq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcxq",
        "<",
        "Lcva;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcst;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcst;

    invoke-direct {v0}, Lcst;-><init>()V

    sput-object v0, Lcst;->a:Lcst;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.common.ui.SignInButtonCreatorImpl"

    invoke-direct {p0, v0}, Lcxq;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;II)Landroid/view/View;
    .locals 1

    sget-object v0, Lcst;->a:Lcst;

    invoke-direct {v0, p0, p1, p2}, Lcst;->b(Landroid/content/Context;II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/content/Context;II)Landroid/view/View;
    .locals 4

    :try_start_0
    new-instance v1, Lcom/google/android/gms/common/internal/zzah;

    const/4 v0, 0x0

    invoke-direct {v1, p2, p3, v0}, Lcom/google/android/gms/common/internal/zzah;-><init>(II[Lcom/google/android/gms/common/api/Scope;)V

    invoke-static {p1}, Lcxo;->a(Ljava/lang/Object;)Lcwx;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcst;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcva;

    invoke-interface {v0, v2, v1}, Lcva;->a(Lcwx;Lcom/google/android/gms/common/internal/zzah;)Lcwx;

    move-result-object v0

    invoke-static {v0}, Lcxo;->a(Lcwx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcxr;

    const/16 v2, 0x40

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Could not get button with size "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and color "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcxr;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public a(Landroid/os/IBinder;)Lcva;
    .locals 1

    invoke-static {p1}, Lcvb;->a(Landroid/os/IBinder;)Lcva;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcst;->a(Landroid/os/IBinder;)Lcva;

    move-result-object v0

    return-object v0
.end method
