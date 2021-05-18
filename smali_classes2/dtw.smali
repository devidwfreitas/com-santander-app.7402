.class public Ldtw;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcox;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcox",
            "<",
            "Lcpa;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ldtn;

.field public static final c:Ldtr;

.field public static final d:Lduc;

.field private static final e:Lcpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcpi",
            "<",
            "Ldjh;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Lcpd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcpd",
            "<",
            "Ldjh;",
            "Lcpa;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcpi;

    invoke-direct {v0}, Lcpi;-><init>()V

    sput-object v0, Ldtw;->e:Lcpi;

    new-instance v0, Ldtx;

    invoke-direct {v0}, Ldtx;-><init>()V

    sput-object v0, Ldtw;->f:Lcpd;

    new-instance v0, Lcox;

    const-string v1, "LocationServices.API"

    sget-object v2, Ldtw;->f:Lcpd;

    sget-object v3, Ldtw;->e:Lcpi;

    invoke-direct {v0, v1, v2, v3}, Lcox;-><init>(Ljava/lang/String;Lcpd;Lcpi;)V

    sput-object v0, Ldtw;->a:Lcox;

    new-instance v0, Ldhx;

    invoke-direct {v0}, Ldhx;-><init>()V

    sput-object v0, Ldtw;->b:Ldtn;

    new-instance v0, Ldil;

    invoke-direct {v0}, Ldil;-><init>()V

    sput-object v0, Ldtw;->c:Ldtr;

    new-instance v0, Ldjp;

    invoke-direct {v0}, Ldjp;-><init>()V

    sput-object v0, Ldtw;->d:Lduc;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcpt;)Ldjh;
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "GoogleApiClient parameter is required."

    invoke-static {v0, v3}, Lcsp;->b(ZLjava/lang/Object;)V

    sget-object v0, Ldtw;->e:Lcpi;

    invoke-virtual {p0, v0}, Lcpt;->a(Lcpf;)Lcph;

    move-result-object v0

    check-cast v0, Ldjh;

    if-eqz v0, :cond_1

    :goto_1
    const-string v2, "GoogleApiClient is not configured to use the LocationServices.API Api. Pass thisinto GoogleApiClient.Builder#addApi() to use this feature."

    invoke-static {v1, v2}, Lcsp;->a(ZLjava/lang/Object;)V

    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
