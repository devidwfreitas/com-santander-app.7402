.class public final Lcom/datami/smi/c/l;
.super Ljava/lang/Object;


# static fields
.field private static final B:[B

.field private static C:I = 0x0

.field public static final a:Ljava/lang/String; = "services"

.field public static final b:Ljava/lang/String; = "mgmt"

.field public static final c:Ljava/lang/String; = "use_sni"

.field public static final d:Ljava/lang/String; = "secured"

.field public static final e:Ljava/lang/String; = "gd"

.field public static final f:Ljava/lang/String; = "oms"

.field public static final g:Ljava/lang/String; = "uram"

.field public static final h:Ljava/lang/String; = "aacmi"

.field public static final i:Ljava/lang/String; = "rtsp"

.field public static final j:Ljava/lang/String; = "collector"

.field public static final k:Ljava/lang/String; = "mcc"

.field public static final l:Ljava/lang/String; = "mnc"

.field public static final m:Ljava/lang/String; = "deployment"

.field public static final n:Ljava/lang/String; = "country"

.field public static final o:Ljava/lang/String; = "ping"

.field public static final p:Ljava/lang/String; = "dr"

.field public static final q:Ljava/lang/String; = "msisdn_discovery"

.field public static final r:Ljava/lang/String; = "enabled"

.field public static final s:Ljava/lang/String; = "device_session_url"

.field public static final t:Ljava/lang/String; = "general"

.field public static final u:Ljava/lang/String; = "collect_ad_ids"

.field public static final v:Ljava/lang/String; = "hash_uid"

.field public static final w:Ljava/lang/String; = "uuid"

.field public static final x:Ljava/lang/String; = "roaming"

.field public static final y:Ljava/lang/String; = "isp"

.field public static final z:Ljava/lang/String; = "operator"


# instance fields
.field final synthetic A:Lcom/datami/smi/c/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x98

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/datami/smi/c/l;->B:[B

    const/16 v0, 0xca

    sput v0, Lcom/datami/smi/c/l;->C:I

    return-void

    :array_0
    .array-data 1
        0x59t
        0x52t
        0x55t
        -0x62t
        -0x2t
        0x1t
        0x3t
        -0xct
        0x3t
        0x0t
        0x7t
        0x2t
        -0x11t
        0x15t
        -0x2t
        -0x3t
        0x5t
        -0xat
        0x5t
        -0xft
        0x2t
        -0x6t
        0xet
        -0xdt
        -0x4t
        0xdt
        0x6t
        -0x2t
        -0xet
        -0xct
        -0x6t
        0x7t
        -0x6t
        0x2t
        -0x7t
        -0xat
        0x3t
        -0xet
        -0x1t
        0xbt
        -0xdt
        0x11t
        -0x13t
        0x5t
        -0x3t
        0x0t
        -0x2t
        -0xat
        0x4t
        -0x6t
        0xat
        -0xat
        0xft
        -0xat
        0xft
        -0x5t
        -0x5t
        -0xat
        0x10t
        -0xct
        -0x7t
        0x11t
        -0xdt
        -0x7t
        0xet
        0x2t
        -0x12t
        0x3t
        0xdt
        0x1t
        -0xct
        0x3t
        0x0t
        0x7t
        0x2t
        -0x11t
        0x5t
        -0x3t
        0x3t
        -0x1t
        0xbt
        0x6t
        -0x6t
        -0x7t
        0x7t
        -0x12t
        0xbt
        0x9t
        -0x16t
        0xct
        0x5t
        0x7t
        -0x5t
        0x7t
        -0x9t
        0xdt
        -0x1t
        -0xat
        0x7t
        0x1t
        -0x1t
        -0xbt
        0x4t
        -0x3t
        -0xat
        0xct
        0x8t
        -0x9t
        -0x6t
        0x3t
        0xet
        -0xct
        0x4t
        -0x5t
        0x7t
        0x2t
        0xet
        0x6t
        -0x14t
        0x5t
        0x5t
        0xat
        0x0t
        0x0t
        0xct
        0x5t
        -0x1t
        -0x11t
        0xdt
        0x6t
        -0x2t
        0x6t
        -0x14t
        0xet
        -0xet
        0x0t
        0xat
        -0x6t
        0x1t
        0xft
        -0x16t
        0x3t
        0x6t
        0x3t
        0x11t
        -0xct
        0x2t
        -0x9t
        0x9t
        -0xdt
        0x11t
        -0xbt
    .end array-data
.end method

.method private constructor <init>(Lcom/datami/smi/c/e;)V
    .locals 0

    iput-object p1, p0, Lcom/datami/smi/c/l;->A:Lcom/datami/smi/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(III)Ljava/lang/String;
    .locals 10

    const/4 v4, 0x0

    rsub-int/lit8 v1, p1, 0x75

    sget-object v6, Lcom/datami/smi/c/l;->B:[B

    new-instance v7, Ljava/lang/String;

    add-int/lit8 v0, p0, 0x4

    rsub-int/lit8 v8, p2, 0x12

    new-array v2, v8, [B

    if-nez v6, :cond_1

    move v3, v4

    move v5, v0

    :goto_0
    add-int/lit8 v5, v5, 0x1

    neg-int v0, v0

    add-int/2addr v1, v0

    move v0, v3

    :goto_1
    add-int/lit8 v3, v0, 0x1

    int-to-byte v9, v1

    aput-byte v9, v2, v0

    if-ne v3, v8, :cond_0

    invoke-direct {v7, v2, v4}, Ljava/lang/String;-><init>([BI)V

    return-object v7

    :cond_0
    aget-byte v0, v6, v5

    goto :goto_0

    :cond_1
    move v5, v0

    move v0, v4

    goto :goto_1
.end method
