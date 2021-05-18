.class public final Lcom/datami/smi/c;
.super Ljava/lang/Object;


# static fields
.field private static A:Landroid/content/Context; = null

.field private static B:Landroid/app/NotificationManager; = null

.field private static C:Landroid/app/Notification$Builder; = null

.field private static D:Lcom/datami/smi/SmiResult; = null

.field private static final E:Ljava/lang/String; = "NOTIFICATION_REMOVED"

.field private static F:Landroid/content/SharedPreferences; = null

.field private static G:I = 0x0

.field private static H:Z = false

.field private static I:Landroid/content/Context; = null

.field private static J:Z = false

.field private static final K:[B

.field private static L:I = 0x0

.field public static final a:Ljava/lang/String; = "[dmi]SmiCustomToast"

.field static c:Landroid/widget/TextView;

.field static g:Ljava/lang/String;

.field static h:Ljava/lang/String;

.field static i:Ljava/lang/String;

.field static j:Ljava/lang/String;

.field static k:Ljava/lang/String;

.field static l:Ljava/lang/String;

.field static m:Ljava/lang/String;

.field static n:Ljava/lang/String;

.field static o:Ljava/lang/String;

.field static p:Ljava/lang/String;

.field static q:Ljava/lang/String;

.field static r:I

.field static s:I

.field static t:Landroid/widget/Toast;

.field public static u:Z

.field static v:Landroid/content/SharedPreferences$Editor;

.field static w:Lcom/datami/smi/g;

.field private static x:Landroid/app/AlertDialog;

.field private static y:Z

.field private static z:Ljava/lang/String;


# instance fields
.field b:Landroid/view/LayoutInflater;

.field d:Landroid/widget/ImageView;

.field e:Landroid/graphics/Bitmap;

.field f:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/16 v5, 0xd3

    const/16 v4, 0x83

    const/4 v3, 0x1

    const/16 v0, 0x1fe

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/datami/smi/c;->K:[B

    const/16 v0, 0xe9

    sput v0, Lcom/datami/smi/c;->L:I

    sget-object v0, Lcom/datami/smi/c;->K:[B

    const/16 v1, 0x35

    aget-byte v0, v0, v1

    neg-int v0, v0

    sget-object v1, Lcom/datami/smi/c;->K:[B

    const/16 v2, 0x28

    aget-byte v1, v1, v2

    neg-int v1, v1

    const/16 v2, 0x32

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c;->a(III)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/datami/smi/c;->g:Ljava/lang/String;

    sget-object v0, Lcom/datami/smi/c;->K:[B

    aget-byte v0, v0, v3

    sget-object v1, Lcom/datami/smi/c;->K:[B

    aget-byte v1, v1, v4

    neg-int v1, v1

    invoke-static {v5, v0, v1}, Lcom/datami/smi/c;->a(III)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/datami/smi/c;->h:Ljava/lang/String;

    sget-object v0, Lcom/datami/smi/c;->K:[B

    aget-byte v0, v0, v3

    sget-object v1, Lcom/datami/smi/c;->K:[B

    aget-byte v1, v1, v4

    neg-int v1, v1

    invoke-static {v5, v0, v1}, Lcom/datami/smi/c;->a(III)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/datami/smi/c;->i:Ljava/lang/String;

    sget-object v0, Lcom/datami/smi/c;->K:[B

    aget-byte v0, v0, v3

    sget-object v1, Lcom/datami/smi/c;->K:[B

    aget-byte v1, v1, v4

    neg-int v1, v1

    invoke-static {v5, v0, v1}, Lcom/datami/smi/c;->a(III)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/datami/smi/c;->j:Ljava/lang/String;

    sget-object v0, Lcom/datami/smi/c;->K:[B

    aget-byte v0, v0, v3

    sget-object v1, Lcom/datami/smi/c;->K:[B

    aget-byte v1, v1, v4

    neg-int v1, v1

    invoke-static {v5, v0, v1}, Lcom/datami/smi/c;->a(III)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/datami/smi/c;->k:Ljava/lang/String;

    sget-object v0, Lcom/datami/smi/c;->K:[B

    aget-byte v0, v0, v3

    sget-object v1, Lcom/datami/smi/c;->K:[B

    aget-byte v1, v1, v4

    neg-int v1, v1

    invoke-static {v5, v0, v1}, Lcom/datami/smi/c;->a(III)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/datami/smi/c;->l:Ljava/lang/String;

    sget-object v0, Lcom/datami/smi/c;->K:[B

    aget-byte v0, v0, v3

    sget-object v1, Lcom/datami/smi/c;->K:[B

    aget-byte v1, v1, v4

    neg-int v1, v1

    invoke-static {v5, v0, v1}, Lcom/datami/smi/c;->a(III)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/datami/smi/c;->m:Ljava/lang/String;

    sget-object v0, Lcom/datami/smi/c;->K:[B

    aget-byte v0, v0, v3

    sget-object v1, Lcom/datami/smi/c;->K:[B

    aget-byte v1, v1, v4

    neg-int v1, v1

    invoke-static {v5, v0, v1}, Lcom/datami/smi/c;->a(III)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/datami/smi/c;->n:Ljava/lang/String;

    sget-object v0, Lcom/datami/smi/c;->K:[B

    const/16 v1, 0x75

    aget-byte v0, v0, v1

    or-int/lit8 v1, v0, 0x31

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c;->a(III)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/datami/smi/c;->o:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/datami/smi/c;->p:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/datami/smi/c;->q:Ljava/lang/String;

    sput v7, Lcom/datami/smi/c;->r:I

    sput-boolean v6, Lcom/datami/smi/c;->y:Z

    sput-boolean v6, Lcom/datami/smi/c;->u:Z

    sput v7, Lcom/datami/smi/c;->G:I

    sput-boolean v6, Lcom/datami/smi/c;->H:Z

    sput-boolean v6, Lcom/datami/smi/c;->J:Z

    return-void

    :array_0
    .array-data 1
        0x45t
        0x21t
        0x59t
        0x3et
        -0xbt
        -0xft
        0x1t
        -0x7t
        -0xdt
        -0x4t
        -0x8t
        -0x1dt
        0x1t
        -0x10t
        -0x9t
        -0x1bt
        0x3t
        0x3t
        -0x12t
        -0xct
        -0x11t
        0x7t
        -0x9t
        -0x1at
        -0xft
        -0x7t
        -0x9t
        -0x1bt
        -0x1t
        -0x7t
        -0xft
        -0x3t
        0x3dt
        -0x30t
        -0x19t
        -0x5t
        0x26t
        -0x3ct
        -0x1dt
        -0x6t
        -0x1et
        -0x9t
        0x2t
        -0x11t
        -0xdt
        -0x1t
        -0x14t
        0x8t
        -0x1dt
        0x1t
        -0x10t
        -0x9t
        0x44t
        -0x50t
        -0x13t
        -0xdt
        0x48t
        -0x56t
        -0x7t
        -0xet
        -0x6t
        -0x15t
        0x4at
        -0x2t
        -0x8t
        -0x11t
        -0xat
        -0x3t
        -0xft
        -0x3t
        0x3dt
        -0x5ft
        -0x8t
        0x4t
        -0x17t
        0x48t
        -0x57t
        -0x2t
        -0x18t
        -0xat
        0x8t
        -0x10t
        -0x8t
        -0x17t
        -0x18t
        -0xbt
        -0xft
        0x1t
        -0x7t
        -0xdt
        -0x4t
        -0x8t
        -0x1dt
        0x1t
        -0x10t
        -0x9t
        -0x16t
        -0x9t
        -0xat
        -0x1t
        -0x8t
        -0x1bt
        0x1t
        -0x10t
        -0x9t
        0x44t
        -0x4dt
        -0x19t
        0x3t
        -0x6t
        -0x1dt
        0x5t
        -0x9t
        -0x13t
        -0x13t
        -0x6t
        0x2t
        0x0t
        -0x24t
        -0x6t
        0xct
        -0x1bt
        -0x11t
        0xdt
        -0x1ft
        -0xet
        -0x2t
        -0x17t
        -0xbt
        -0x14t
        0x15t
        -0x25t
        0x4t
        -0x1ct
        -0xbt
        0x1dt
        -0x22t
        -0x18t
        -0xat
        0x8t
        -0x10t
        -0x8t
        0xbt
        -0x1ft
        -0x13t
        0x0t
        -0xft
        -0xft
        -0x3t
        0x35t
        -0xbt
        -0x1t
        -0x24t
        0x10t
        -0x16t
        -0xat
        -0x6t
        -0xdt
        0x2ft
        0x1t
        -0xat
        -0x4et
        0x36t
        -0x5t
        -0x3dt
        -0x16t
        0x2t
        -0x23t
        0x1t
        -0x9t
        0x3t
        -0x20t
        -0x6t
        0x3bt
        -0x3ft
        -0x16t
        -0x8t
        0x34t
        -0x4et
        0x5t
        -0x13t
        -0x10t
        0x2t
        0x2et
        -0x52t
        -0x3t
        -0xdt
        0x3at
        -0x4et
        -0x7t
        -0x9t
        -0x9t
        -0xft
        -0x6t
        -0xdt
        0x3t
        -0x9t
        0x2bt
        -0x44t
        -0xft
        0x0t
        -0xft
        -0x4t
        -0x8t
        -0x1dt
        -0x5t
        -0xdt
        0x3at
        -0x4ct
        -0x8t
        -0x3t
        -0x39t
        0x3t
        -0x6t
        -0x1dt
        0x1t
        -0xft
        -0x3t
        0x3dt
        -0x4dt
        -0x16t
        -0x9t
        -0xat
        -0x1t
        -0x8t
        -0x1bt
        0x1t
        -0x10t
        -0x9t
        -0x6t
        -0x49t
        -0xft
        0x0t
        -0xft
        -0x4t
        -0x8t
        -0x1dt
        -0x5t
        -0xdt
        0x3at
        -0x4ct
        -0x8t
        -0x3t
        -0x1et
        -0x7t
        0x3bt
        -0x56t
        -0xdt
        -0x2t
        -0x12t
        0x21t
        -0x38t
        0x7t
        -0x20t
        0xct
        -0xbt
        -0x14t
        -0x3t
        0x3bt
        -0x53t
        -0x14t
        0x49t
        -0x58t
        -0xbt
        -0xft
        0x4at
        -0x58t
        -0x11t
        -0x1t
        -0xat
        0x1t
        -0x11t
        -0x12t
        0x19t
        -0x25t
        0x4t
        -0x1ct
        -0xbt
        0x4at
        -0x4ft
        -0x13t
        -0x10t
        0x5t
        -0x17t
        0x48t
        -0x5dt
        -0xbt
        0x9t
        -0x1dt
        0x5t
        0x3bt
        -0x2bt
        -0x9t
        0x44t
        -0x3dt
        -0x27t
        -0x9t
        -0x9t
        -0xft
        -0x6t
        -0xdt
        0x3t
        -0x9t
        0x3at
        -0x2et
        -0x27t
        -0x1dt
        0x9t
        0x37t
        -0x2bt
        -0x2ct
        -0xat
        -0xct
        -0x18t
        -0xat
        -0xbt
        -0xft
        0x1t
        -0x7t
        -0xdt
        -0x4t
        -0x8t
        -0x1dt
        0x1t
        -0x10t
        -0x9t
        0x5t
        -0x1dt
        0x3t
        -0x12t
        -0xct
        -0x11t
        0x7t
        -0x9t
        -0x36t
        -0x9t
        -0xat
        -0x1t
        -0x8t
        -0x1bt
        0x1t
        -0x10t
        -0x9t
        0x44t
        -0x4dt
        -0x19t
        0x3t
        -0x6t
        -0x1dt
        0x5t
        -0x9t
        0x3at
        -0x4dt
        -0x16t
        -0x9t
        -0xat
        -0x1t
        -0x8t
        -0x1bt
        -0x13t
        -0x13t
        -0x6t
        0x2t
        0x0t
        -0x24t
        -0x6t
        0x1ct
        -0x3ct
        -0x8t
        -0xbt
        -0x5t
        -0x8t
        0xft
        -0x25t
        0x4t
        -0x1ct
        -0xbt
        -0x3dt
        0xbt
        -0xct
        -0x15t
        -0xet
        0x1t
        -0x10t
        -0x9t
        0x44t
        -0x53t
        -0xft
        0x44t
        -0x5ft
        -0x3t
        -0xet
        0x3t
        -0xct
        -0xct
        -0x14t
        -0xbt
        0x5t
        -0x17t
        -0x1t
        -0xft
        -0x3t
        0x3dt
        -0x3ct
        -0x1dt
        -0x8t
        -0xct
        -0xet
        -0x17t
        0x7t
        -0x17t
        -0xet
        0x2t
        -0x10t
        -0x8t
        0x17t
        -0x2ft
        -0x13t
        -0x58t
        0x5ft
        -0x25t
        -0x58t
        -0x39t
        -0xat
        0x46t
        -0x57t
        -0xct
        0x3t
        -0x11t
        -0xdt
        -0x3t
        0x3bt
        -0x4et
        -0x7t
        -0x1dt
        0x9t
        0x37t
        -0x53t
        -0x14t
        0x49t
        -0x5dt
        -0x7t
        -0x9t
        -0x9t
        -0xft
        -0x6t
        -0xdt
        0x3t
        -0x9t
        -0x8t
        -0x19t
        0x1at
        -0x1ft
        -0x13t
        0x0t
        -0xft
        -0xft
        -0x3t
        0xat
        -0x2bt
        0x9t
        -0x1dt
        0x5t
        0x15t
        -0x33t
        -0xdt
        0x14t
        -0x25t
        0x4t
        -0x1ct
        -0xbt
        0x42t
        -0xbt
        -0x1t
        -0x24t
        0x10t
        -0x39t
        0x3t
        -0x6t
        -0x1dt
        0x1t
        -0xft
        -0x3t
        0x3dt
        -0x4dt
        -0x16t
        -0x9t
        -0xat
        -0x1t
        -0x8t
        -0x1bt
        0x1t
        -0x10t
        -0x9t
        0x44t
        -0x4dt
        -0x16t
        -0x9t
        -0xat
        -0x1t
        -0x8t
        -0x1bt
        -0x39t
        -0xat
        0x46t
        -0x3ft
        -0x28t
        0x8t
        -0x10t
        -0x8t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/datami/smi/c;->A:Landroid/content/Context;

    invoke-static {p1}, Lcom/datami/smi/b/k;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/datami/smi/c;->F:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-object v0, Lcom/datami/smi/c;->v:Landroid/content/SharedPreferences$Editor;

    const/16 v0, 0x2710

    sput v0, Lcom/datami/smi/c;->s:I

    return-void
.end method

.method private static a(FLandroid/content/Context;)I
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method static synthetic a(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    sput-object p0, Lcom/datami/smi/c;->x:Landroid/app/AlertDialog;

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Landroid/app/AlertDialog;
    .locals 5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/datami/smi/c;->I:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/datami/smi/c;->y:Z

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/16 v1, 0x111

    sget-object v2, Lcom/datami/smi/c;->K:[B

    const/16 v3, 0xfb

    aget-byte v2, v2, v3

    neg-int v2, v2

    sget-object v3, Lcom/datami/smi/c;->K:[B

    const/16 v4, 0x76

    aget-byte v3, v3, v4

    neg-int v3, v3

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c;->a(III)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/datami/smi/f;

    invoke-direct {v2}, Lcom/datami/smi/f;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private static a(III)Ljava/lang/String;
    .locals 9

    const/4 v5, 0x0

    sget-object v7, Lcom/datami/smi/c;->K:[B

    rsub-int v3, p0, 0x1f5

    rsub-int/lit8 v0, p2, 0x73

    rsub-int/lit8 v2, p1, 0x3a

    new-instance v8, Ljava/lang/String;

    new-array v1, v2, [B

    add-int/lit8 v2, v2, -0x1

    if-nez v7, :cond_1

    move v4, v5

    move v6, v3

    move-object v3, v1

    move v1, v2

    :goto_0
    neg-int v0, v0

    add-int/2addr v0, v1

    add-int/lit8 v1, v0, -0xa

    :goto_1
    add-int/lit8 v6, v6, 0x1

    int-to-byte v0, v1

    aput-byte v0, v3, v4

    if-ne v4, v2, :cond_0

    invoke-direct {v8, v3, v5}, Ljava/lang/String;-><init>([BI)V

    return-object v8

    :cond_0
    add-int/lit8 v4, v4, 0x1

    aget-byte v0, v7, v6

    goto :goto_0

    :cond_1
    move v4, v5

    move v6, v3

    move-object v3, v1

    move v1, v0

    goto :goto_1
.end method

.method public static a(I)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/datami/smi/d;

    invoke-direct {v1, p0}, Lcom/datami/smi/d;-><init>(I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected static a(Landroid/content/Context;)V
    .locals 0

    sput-object p0, Lcom/datami/smi/c;->I:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Landroid/content/Context;I)V
    .locals 5

    const/16 v0, 0x185

    sget v1, Lcom/datami/smi/c;->L:I

    and-int/lit8 v1, v1, 0x3f

    sget-object v2, Lcom/datami/smi/c;->K:[B

    const/16 v3, 0x4e

    aget-byte v2, v2, v3

    neg-int v2, v2

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c;->a(III)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x1df

    sget-object v2, Lcom/datami/smi/c;->K:[B

    const/16 v3, 0x14

    aget-byte v2, v2, v3

    neg-int v2, v2

    sget-object v3, Lcom/datami/smi/c;->K:[B

    const/16 v4, 0xab

    aget-byte v3, v3, v4

    neg-int v3, v3

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/datami/smi/b/u;

    invoke-direct {v0, p0, p1}, Lcom/datami/smi/b/u;-><init>(Landroid/content/Context;I)V

    sget-object v1, Lcom/datami/smi/b/m;->a:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v2, 0x1e

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v0, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/datami/smi/c;->e:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/datami/smi/c;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/datami/smi/c;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public static a(Lcom/datami/smi/SmiResult;)V
    .locals 0

    sput-object p0, Lcom/datami/smi/c;->D:Lcom/datami/smi/SmiResult;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/datami/smi/c;->g:Ljava/lang/String;

    sput-object p1, Lcom/datami/smi/c;->h:Ljava/lang/String;

    sput-object p2, Lcom/datami/smi/c;->i:Ljava/lang/String;

    sput-object p3, Lcom/datami/smi/c;->j:Ljava/lang/String;

    sput-object p4, Lcom/datami/smi/c;->k:Ljava/lang/String;

    sput-object p5, Lcom/datami/smi/c;->l:Ljava/lang/String;

    sput-object p7, Lcom/datami/smi/c;->n:Ljava/lang/String;

    sput-object p6, Lcom/datami/smi/c;->m:Ljava/lang/String;

    sput-object p8, Lcom/datami/smi/c;->o:Ljava/lang/String;

    return-void
.end method

.method public static a(Z)V
    .locals 5

    sget-object v0, Lcom/datami/smi/c;->F:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/datami/smi/c;->v:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/datami/smi/c;->v:Landroid/content/SharedPreferences$Editor;

    const/16 v1, 0xbb

    sget-object v2, Lcom/datami/smi/c;->K:[B

    const/16 v3, 0x24

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/c;->K:[B

    const/16 v4, 0x6f

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcom/datami/smi/c;->v:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object v0, Lcom/datami/smi/c;->v:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method public static a()Z
    .locals 6

    sget-boolean v0, Lcom/datami/smi/c;->H:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/datami/smi/c;->G:I

    sget-object v1, Lcom/datami/smi/SdState;->SD_AVAILABLE:Lcom/datami/smi/SdState;

    invoke-virtual {v1}, Lcom/datami/smi/SdState;->getStatusCode()I

    move-result v1

    if-eq v0, v1, :cond_0

    sget v0, Lcom/datami/smi/c;->G:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x8f

    sget-object v2, Lcom/datami/smi/c;->K:[B

    const/16 v3, 0x127

    aget-byte v2, v2, v3

    neg-int v2, v2

    sget-object v3, Lcom/datami/smi/c;->K:[B

    const/16 v4, 0x4e

    aget-byte v3, v3, v4

    neg-int v3, v3

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c;->a(III)Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x175

    sget-object v3, Lcom/datami/smi/c;->K:[B

    const/16 v4, 0xab

    aget-byte v3, v3, v4

    neg-int v3, v3

    sget-object v4, Lcom/datami/smi/c;->K:[B

    const/16 v5, 0x1ca

    aget-byte v4, v4, v5

    invoke-static {v2, v3, v4}, Lcom/datami/smi/c;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()I
    .locals 5

    const/4 v0, 0x0

    sput-boolean v0, Lcom/datami/smi/c;->H:Z

    const/16 v0, 0x8f

    sget-object v1, Lcom/datami/smi/c;->K:[B

    const/16 v2, 0x127

    aget-byte v1, v1, v2

    neg-int v1, v1

    sget-object v2, Lcom/datami/smi/c;->K:[B

    const/16 v3, 0x4e

    aget-byte v2, v2, v3

    neg-int v2, v2

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c;->a(III)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/datami/smi/c;->K:[B

    const/16 v2, 0x95

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/c;->K:[B

    const/16 v3, 0x28

    aget-byte v2, v2, v3

    neg-int v2, v2

    sget-object v3, Lcom/datami/smi/c;->K:[B

    const/16 v4, 0x78

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/datami/smi/c;->G:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget v0, Lcom/datami/smi/c;->G:I

    return v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    const/4 v13, 0x1

    const/4 v12, 0x0

    const/16 v11, 0xa1

    const/16 v10, 0x117

    const/16 v9, 0xfb

    invoke-static {}, Lcom/datami/smi/a/a;->a()Lcom/datami/smi/a/a;

    invoke-static {}, Lcom/datami/smi/a/i;->e()J

    move-result-wide v0

    invoke-static {}, Lcom/datami/smi/a/a;->a()Lcom/datami/smi/a/a;

    invoke-static {}, Lcom/datami/smi/a/b;->a()J

    move-result-wide v2

    sget-object v4, Lcom/datami/smi/c;->o:Ljava/lang/String;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/datami/smi/c;->o:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    sget-object v4, Lcom/datami/smi/c;->o:Ljava/lang/String;

    const/16 v5, 0x1a3

    sget-object v6, Lcom/datami/smi/c;->K:[B

    aget-byte v6, v6, v9

    neg-int v6, v6

    sget-object v7, Lcom/datami/smi/c;->K:[B

    aget-byte v7, v7, v10

    neg-int v7, v7

    invoke-static {v5, v6, v7}, Lcom/datami/smi/c;->a(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/datami/smi/c;->o:Ljava/lang/String;

    const/16 v5, 0x1a2

    sget-object v6, Lcom/datami/smi/c;->K:[B

    aget-byte v6, v6, v9

    neg-int v6, v6

    sget-object v7, Lcom/datami/smi/c;->K:[B

    aget-byte v7, v7, v10

    neg-int v7, v7

    invoke-static {v5, v6, v7}, Lcom/datami/smi/c;->a(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/datami/smi/c;->o:Ljava/lang/String;

    const/16 v5, 0x1a3

    sget-object v6, Lcom/datami/smi/c;->K:[B

    aget-byte v6, v6, v9

    neg-int v6, v6

    sget-object v7, Lcom/datami/smi/c;->K:[B

    aget-byte v7, v7, v10

    neg-int v7, v7

    invoke-static {v5, v6, v7}, Lcom/datami/smi/c;->a(III)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x110

    sget-object v7, Lcom/datami/smi/c;->K:[B

    aget-byte v7, v7, v9

    neg-int v7, v7

    sget-object v8, Lcom/datami/smi/c;->K:[B

    aget-byte v8, v8, v11

    neg-int v8, v8

    invoke-static {v6, v7, v8}, Lcom/datami/smi/c;->a(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1a2

    sget-object v6, Lcom/datami/smi/c;->K:[B

    aget-byte v6, v6, v9

    neg-int v6, v6

    sget-object v7, Lcom/datami/smi/c;->K:[B

    aget-byte v7, v7, v10

    neg-int v7, v7

    invoke-static {v5, v6, v7}, Lcom/datami/smi/c;->a(III)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x110

    sget-object v7, Lcom/datami/smi/c;->K:[B

    aget-byte v7, v7, v9

    neg-int v7, v7

    sget-object v8, Lcom/datami/smi/c;->K:[B

    aget-byte v8, v8, v11

    neg-int v8, v8

    invoke-static {v6, v7, v8}, Lcom/datami/smi/c;->a(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v12

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v13

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x54

    sget-object v2, Lcom/datami/smi/c;->K:[B

    const/16 v3, 0x95

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/c;->K:[B

    aget-byte v3, v3, v11

    neg-int v3, v3

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c;->a(III)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v12

    aput-object v0, v2, v13

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static b(I)V
    .locals 8

    const/16 v7, 0x127

    const/16 v6, 0x8f

    const/16 v5, 0x75

    const/16 v4, 0x4e

    sget-object v0, Lcom/datami/smi/c;->K:[B

    aget-byte v0, v0, v7

    neg-int v0, v0

    sget-object v1, Lcom/datami/smi/c;->K:[B

    aget-byte v1, v1, v4

    neg-int v1, v1

    invoke-static {v6, v0, v1}, Lcom/datami/smi/c;->a(III)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/datami/smi/c;->L:I

    add-int/lit8 v1, v1, -0x1

    sget-object v2, Lcom/datami/smi/c;->K:[B

    const/16 v3, 0x76

    aget-byte v2, v2, v3

    neg-int v2, v2

    sget-object v3, Lcom/datami/smi/c;->K:[B

    aget-byte v3, v3, v5

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sput p0, Lcom/datami/smi/c;->r:I

    sput p0, Lcom/datami/smi/c;->G:I

    sget-object v0, Lcom/datami/smi/SdState;->SD_AVAILABLE:Lcom/datami/smi/SdState;

    invoke-virtual {v0}, Lcom/datami/smi/SdState;->getStatusCode()I

    move-result v0

    if-ne p0, v0, :cond_6

    sget-object v0, Lcom/datami/smi/c;->g:Ljava/lang/String;

    sget-object v1, Lcom/datami/smi/b/m;->g:Lcom/datami/smi/b/l;

    sget-object v2, Lcom/datami/smi/b/l;->b:Lcom/datami/smi/b/l;

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/datami/smi/b/m;->g:Lcom/datami/smi/b/l;

    sget-object v2, Lcom/datami/smi/b/l;->d:Lcom/datami/smi/b/l;

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-static {v0}, Lcom/datami/smi/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    sput-object v0, Lcom/datami/smi/c;->p:Ljava/lang/String;

    sget-object v0, Lcom/datami/smi/c;->g:Ljava/lang/String;

    sget-object v1, Lcom/datami/smi/b/m;->g:Lcom/datami/smi/b/l;

    sget-object v2, Lcom/datami/smi/b/l;->c:Lcom/datami/smi/b/l;

    if-eq v1, v2, :cond_2

    sget-object v1, Lcom/datami/smi/b/m;->g:Lcom/datami/smi/b/l;

    sget-object v2, Lcom/datami/smi/b/l;->d:Lcom/datami/smi/b/l;

    if-ne v1, v2, :cond_3

    :cond_2
    invoke-static {v0}, Lcom/datami/smi/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    sput-object v0, Lcom/datami/smi/c;->q:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/datami/smi/c;->H:Z

    :goto_0
    sget-object v0, Lcom/datami/smi/SdState;->SD_AVAILABLE:Lcom/datami/smi/SdState;

    invoke-virtual {v0}, Lcom/datami/smi/SdState;->getStatusCode()I

    move-result v0

    if-eq p0, v0, :cond_4

    sget-object v0, Lcom/datami/smi/c;->p:Ljava/lang/String;

    sput-object v0, Lcom/datami/smi/c;->q:Ljava/lang/String;

    :cond_4
    const/4 v0, 0x0

    sput-boolean v0, Lcom/datami/smi/c;->J:Z

    invoke-static {}, Lcom/datami/smi/SmiSdk;->allowUserMessaging()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/datami/smi/SmiSdk;->isForeground()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/datami/smi/b/m;->w()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/datami/smi/b/m;->G()Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/datami/smi/c;->p:Ljava/lang/String;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/datami/smi/c;->p:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_5
    sget-object v0, Lcom/datami/smi/c;->K:[B

    aget-byte v0, v0, v7

    neg-int v0, v0

    sget-object v1, Lcom/datami/smi/c;->K:[B

    aget-byte v1, v1, v4

    neg-int v1, v1

    invoke-static {v6, v0, v1}, Lcom/datami/smi/c;->a(III)Ljava/lang/String;

    const/16 v0, 0x1b7

    sget-object v1, Lcom/datami/smi/c;->K:[B

    const/16 v2, 0x83

    aget-byte v1, v1, v2

    neg-int v1, v1

    sget-object v2, Lcom/datami/smi/c;->K:[B

    aget-byte v2, v2, v5

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c;->a(III)Ljava/lang/String;

    :goto_1
    return-void

    :cond_6
    const/4 v0, 0x4

    if-ne p0, v0, :cond_7

    sget-object v0, Lcom/datami/smi/c;->i:Ljava/lang/String;

    sput-object v0, Lcom/datami/smi/c;->p:Ljava/lang/String;

    goto :goto_0

    :cond_7
    const/4 v0, 0x5

    if-ne p0, v0, :cond_8

    sget-object v0, Lcom/datami/smi/c;->j:Ljava/lang/String;

    sput-object v0, Lcom/datami/smi/c;->p:Ljava/lang/String;

    goto :goto_0

    :cond_8
    const/4 v0, 0x6

    if-ne p0, v0, :cond_9

    sget-object v0, Lcom/datami/smi/c;->k:Ljava/lang/String;

    sput-object v0, Lcom/datami/smi/c;->p:Ljava/lang/String;

    goto :goto_0

    :cond_9
    const/4 v0, 0x7

    if-ne p0, v0, :cond_a

    sget-object v0, Lcom/datami/smi/c;->l:Ljava/lang/String;

    sput-object v0, Lcom/datami/smi/c;->p:Ljava/lang/String;

    goto :goto_0

    :cond_a
    const/16 v0, 0x8

    if-ne p0, v0, :cond_b

    sget-object v0, Lcom/datami/smi/c;->m:Ljava/lang/String;

    sput-object v0, Lcom/datami/smi/c;->p:Ljava/lang/String;

    goto :goto_0

    :cond_b
    const/16 v0, 0x9

    if-ne p0, v0, :cond_c

    sget-object v0, Lcom/datami/smi/c;->n:Ljava/lang/String;

    sput-object v0, Lcom/datami/smi/c;->p:Ljava/lang/String;

    goto/16 :goto_0

    :cond_c
    sget-object v0, Lcom/datami/smi/c;->h:Ljava/lang/String;

    sput-object v0, Lcom/datami/smi/c;->p:Ljava/lang/String;

    goto/16 :goto_0

    :cond_d
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/datami/smi/c;->A:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/datami/smi/e;

    invoke-direct {v1, p0}, Lcom/datami/smi/e;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method public static b(Landroid/content/Context;)V
    .locals 10

    const/16 v9, 0x83

    const/16 v8, 0x24

    const/16 v7, 0x15

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v0, Lcom/datami/smi/SmiSdk;->mIconId:I

    if-lez v0, :cond_0

    invoke-static {}, Lcom/datami/smi/b/m;->w()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/datami/smi/c;->q:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/datami/smi/c;->q:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/datami/smi/b/m;->G()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/datami/smi/b/m;->r()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/datami/smi/c;->D:Lcom/datami/smi/SmiResult;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/datami/smi/c;->D:Lcom/datami/smi/SmiResult;

    invoke-virtual {v0}, Lcom/datami/smi/SmiResult;->getSdState()Lcom/datami/smi/SdState;

    move-result-object v0

    sget-object v2, Lcom/datami/smi/SdState;->WIFI:Lcom/datami/smi/SdState;

    if-eq v0, v2, :cond_0

    invoke-static {}, Lcom/datami/smi/SmiSdk;->isForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/datami/smi/c;->D:Lcom/datami/smi/SmiResult;

    invoke-virtual {v0}, Lcom/datami/smi/SmiResult;->getSdState()Lcom/datami/smi/SdState;

    move-result-object v0

    sget-object v2, Lcom/datami/smi/SdState;->SD_NOT_AVAILABLE:Lcom/datami/smi/SdState;

    if-ne v0, v2, :cond_2

    sget-object v0, Lcom/datami/smi/c;->h:Ljava/lang/String;

    sput-object v0, Lcom/datami/smi/c;->q:Ljava/lang/String;

    :cond_2
    sget-object v0, Lcom/datami/smi/c;->B:Landroid/app/NotificationManager;

    if-nez v0, :cond_3

    const/16 v0, 0x1a1

    sget-object v2, Lcom/datami/smi/c;->K:[B

    const/16 v3, 0xb7

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/c;->K:[B

    const/16 v4, 0x6f

    aget-byte v3, v3, v4

    invoke-static {v0, v2, v3}, Lcom/datami/smi/c;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    sput-object v0, Lcom/datami/smi/c;->B:Landroid/app/NotificationManager;

    :cond_3
    sget-object v0, Lcom/datami/smi/c;->C:Landroid/app/Notification$Builder;

    if-nez v0, :cond_4

    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/datami/smi/c;->C:Landroid/app/Notification$Builder;

    :cond_4
    :try_start_0
    sget-object v0, Lcom/datami/smi/c;->A:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    sget-object v2, Lcom/datami/smi/c;->A:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    sget-object v2, Lcom/datami/smi/c;->C:Landroid/app/Notification$Builder;

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    sget v2, Lcom/datami/smi/SmiSdk;->mIconId:I

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    sget-object v0, Lcom/datami/smi/c;->D:Lcom/datami/smi/SmiResult;

    invoke-virtual {v0}, Lcom/datami/smi/SmiResult;->getSdState()Lcom/datami/smi/SdState;

    move-result-object v0

    sget-object v2, Lcom/datami/smi/SdState;->SD_AVAILABLE:Lcom/datami/smi/SdState;

    if-ne v0, v2, :cond_5

    sget-object v0, Lcom/datami/smi/c;->C:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    :goto_2
    sget-object v0, Lcom/datami/smi/c;->C:Landroid/app/Notification$Builder;

    new-instance v2, Landroid/app/Notification$BigTextStyle;

    sget-object v3, Lcom/datami/smi/c;->C:Landroid/app/Notification$Builder;

    invoke-direct {v2, v3}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    sget-object v3, Lcom/datami/smi/c;->q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    sget-object v0, Lcom/datami/smi/c;->C:Landroid/app/Notification$Builder;

    sget-object v2, Lcom/datami/smi/c;->q:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    new-instance v0, Landroid/content/Intent;

    const/16 v2, 0x1f2

    sget-object v3, Lcom/datami/smi/c;->K:[B

    aget-byte v3, v3, v8

    sget-object v4, Lcom/datami/smi/c;->K:[B

    aget-byte v4, v4, v9

    neg-int v4, v4

    invoke-static {v2, v3, v4}, Lcom/datami/smi/c;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/datami/smi/g;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/datami/smi/g;-><init>(Lcom/datami/smi/d;)V

    sput-object v2, Lcom/datami/smi/c;->w:Lcom/datami/smi/g;

    new-instance v2, Landroid/content/IntentFilter;

    const/16 v3, 0x1f2

    sget-object v4, Lcom/datami/smi/c;->K:[B

    aget-byte v4, v4, v8

    sget-object v5, Lcom/datami/smi/c;->K:[B

    aget-byte v5, v5, v9

    neg-int v5, v5

    invoke-static {v3, v4, v5}, Lcom/datami/smi/c;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/datami/smi/c;->w:Lcom/datami/smi/g;

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-static {v1, v6, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    sget-object v1, Lcom/datami/smi/c;->C:Landroid/app/Notification$Builder;

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_6

    sget-object v0, Lcom/datami/smi/c;->B:Landroid/app/NotificationManager;

    sget-object v1, Lcom/datami/smi/c;->C:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x5b

    sget-object v3, Lcom/datami/smi/c;->K:[B

    const/16 v4, 0xd3

    aget-byte v3, v3, v4

    neg-int v3, v3

    sget-object v4, Lcom/datami/smi/c;->K:[B

    aget-byte v4, v4, v6

    invoke-static {v2, v3, v4}, Lcom/datami/smi/c;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_5
    sget-object v0, Lcom/datami/smi/c;->C:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    goto/16 :goto_2

    :cond_6
    sget-object v0, Lcom/datami/smi/c;->B:Landroid/app/NotificationManager;

    sget-object v1, Lcom/datami/smi/c;->C:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0
.end method

.method private static b(Landroid/content/Context;I)V
    .locals 5

    const/16 v0, 0x185

    sget v1, Lcom/datami/smi/c;->L:I

    and-int/lit8 v1, v1, 0x3f

    sget-object v2, Lcom/datami/smi/c;->K:[B

    const/16 v3, 0x4e

    aget-byte v2, v2, v3

    neg-int v2, v2

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c;->a(III)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x1df

    sget-object v2, Lcom/datami/smi/c;->K:[B

    const/16 v3, 0x14

    aget-byte v2, v2, v3

    neg-int v2, v2

    sget-object v3, Lcom/datami/smi/c;->K:[B

    const/16 v4, 0xab

    aget-byte v3, v3, v4

    neg-int v3, v3

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/datami/smi/b/u;

    invoke-direct {v0, p0, p1}, Lcom/datami/smi/b/u;-><init>(Landroid/content/Context;I)V

    sget-object v1, Lcom/datami/smi/b/m;->a:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v2, 0x1e

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v0, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method private static b(Landroid/graphics/Bitmap;)V
    .locals 6

    const/16 v5, 0x1ca

    new-instance v0, Landroid/content/ContextWrapper;

    sget-object v1, Lcom/datami/smi/c;->A:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x5b

    const/16 v2, 0x32

    sget-object v3, Lcom/datami/smi/c;->K:[B

    aget-byte v3, v3, v5

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c;->a(III)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    const/16 v2, 0x10f

    sget-object v3, Lcom/datami/smi/c;->K:[B

    const/16 v4, 0xb7

    aget-byte v3, v3, v4

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lcom/datami/smi/c;->K:[B

    aget-byte v4, v4, v5

    invoke-static {v2, v3, v4}, Lcom/datami/smi/c;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p0, v0, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/datami/smi/c;->z:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static c()V
    .locals 1

    const/16 v0, 0x3a98

    sput v0, Lcom/datami/smi/c;->s:I

    return-void
.end method

.method private static c(I)V
    .locals 4

    const/4 v0, 0x0

    sput-boolean v0, Lcom/datami/smi/c;->J:Z

    invoke-static {}, Lcom/datami/smi/SmiSdk;->allowUserMessaging()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/datami/smi/SmiSdk;->isForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/datami/smi/b/m;->w()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/datami/smi/b/m;->G()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/datami/smi/c;->p:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/datami/smi/c;->p:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x8f

    sget-object v1, Lcom/datami/smi/c;->K:[B

    const/16 v2, 0x127

    aget-byte v1, v1, v2

    neg-int v1, v1

    sget-object v2, Lcom/datami/smi/c;->K:[B

    const/16 v3, 0x4e

    aget-byte v2, v2, v3

    neg-int v2, v2

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c;->a(III)Ljava/lang/String;

    const/16 v0, 0x1b7

    sget-object v1, Lcom/datami/smi/c;->K:[B

    const/16 v2, 0x83

    aget-byte v1, v1, v2

    neg-int v1, v1

    sget-object v2, Lcom/datami/smi/c;->K:[B

    const/16 v3, 0x75

    aget-byte v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c;->a(III)Ljava/lang/String;

    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/datami/smi/c;->A:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/datami/smi/e;

    invoke-direct {v1, p0}, Lcom/datami/smi/e;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 7

    const/16 v6, 0xb7

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v0, Lcom/datami/smi/SmiSdk;->mIconId:I

    if-lez v0, :cond_0

    invoke-static {}, Lcom/datami/smi/b/m;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    sget-object v0, Lcom/datami/smi/c;->w:Lcom/datami/smi/g;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sget-object v0, Lcom/datami/smi/c;->B:Landroid/app/NotificationManager;

    if-nez v0, :cond_2

    const/16 v0, 0x1a1

    sget-object v2, Lcom/datami/smi/c;->K:[B

    aget-byte v2, v2, v6

    sget-object v3, Lcom/datami/smi/c;->K:[B

    const/16 v4, 0x6f

    aget-byte v3, v3, v4

    invoke-static {v0, v2, v3}, Lcom/datami/smi/c;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    sput-object v0, Lcom/datami/smi/c;->B:Landroid/app/NotificationManager;

    :cond_2
    sget-object v0, Lcom/datami/smi/c;->B:Landroid/app/NotificationManager;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v2, 0x8f

    sget-object v3, Lcom/datami/smi/c;->K:[B

    const/16 v4, 0x127

    aget-byte v3, v3, v4

    neg-int v3, v3

    sget-object v4, Lcom/datami/smi/c;->K:[B

    const/16 v5, 0x4e

    aget-byte v4, v4, v5

    neg-int v4, v4

    invoke-static {v2, v3, v4}, Lcom/datami/smi/c;->a(III)Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x7d

    sget-object v4, Lcom/datami/smi/c;->K:[B

    const/16 v5, 0x19f

    aget-byte v4, v4, v5

    sget-object v5, Lcom/datami/smi/c;->K:[B

    aget-byte v5, v5, v6

    invoke-static {v3, v4, v5}, Lcom/datami/smi/c;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method static synthetic d()Lcom/datami/smi/SmiResult;
    .locals 1

    sget-object v0, Lcom/datami/smi/c;->D:Lcom/datami/smi/SmiResult;

    return-object v0
.end method

.method private static d(Landroid/content/Context;)V
    .locals 1

    sput-object p0, Lcom/datami/smi/c;->A:Landroid/content/Context;

    invoke-static {p0}, Lcom/datami/smi/b/k;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/datami/smi/c;->F:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-object v0, Lcom/datami/smi/c;->v:Landroid/content/SharedPreferences$Editor;

    const/16 v0, 0x2710

    sput v0, Lcom/datami/smi/c;->s:I

    return-void
.end method

.method static synthetic e()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/datami/smi/c;->A:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/datami/smi/c;->I:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic g()Landroid/app/AlertDialog;
    .locals 1

    sget-object v0, Lcom/datami/smi/c;->x:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic h()Z
    .locals 1

    sget-boolean v0, Lcom/datami/smi/c;->J:Z

    return v0
.end method

.method static synthetic i()Z
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/datami/smi/c;->J:Z

    return v0
.end method

.method static synthetic j()I
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/datami/smi/c;->G:I

    return v0
.end method

.method private static k()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/datami/smi/c;->g:Ljava/lang/String;

    sget-object v1, Lcom/datami/smi/b/m;->g:Lcom/datami/smi/b/l;

    sget-object v2, Lcom/datami/smi/b/l;->b:Lcom/datami/smi/b/l;

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/datami/smi/b/m;->g:Lcom/datami/smi/b/l;

    sget-object v2, Lcom/datami/smi/b/l;->d:Lcom/datami/smi/b/l;

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-static {v0}, Lcom/datami/smi/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private static l()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/datami/smi/c;->g:Ljava/lang/String;

    sget-object v1, Lcom/datami/smi/b/m;->g:Lcom/datami/smi/b/l;

    sget-object v2, Lcom/datami/smi/b/l;->c:Lcom/datami/smi/b/l;

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/datami/smi/b/m;->g:Lcom/datami/smi/b/l;

    sget-object v2, Lcom/datami/smi/b/l;->d:Lcom/datami/smi/b/l;

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-static {v0}, Lcom/datami/smi/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private static m()Landroid/graphics/Bitmap;
    .locals 6

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/datami/smi/c;->z:Ljava/lang/String;

    const/16 v2, 0x10f

    sget-object v3, Lcom/datami/smi/c;->K:[B

    const/16 v4, 0xb7

    aget-byte v3, v3, v4

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lcom/datami/smi/c;->K:[B

    const/16 v5, 0x1ca

    aget-byte v4, v4, v5

    invoke-static {v2, v3, v4}, Lcom/datami/smi/c;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static n()Landroid/graphics/Bitmap;
    .locals 9

    const/16 v8, 0x7c

    const/16 v7, 0x8f

    const/16 v6, 0x4e

    const/16 v5, 0x127

    :try_start_0
    new-instance v0, Ljava/net/URL;

    const/16 v1, 0x15c

    sget-object v2, Lcom/datami/smi/c;->K:[B

    const/16 v3, 0x75

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/c;->K:[B

    const/16 v4, 0x8e

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x8f

    sget-object v2, Lcom/datami/smi/c;->K:[B

    const/16 v3, 0x127

    aget-byte v2, v2, v3

    neg-int v2, v2

    sget-object v3, Lcom/datami/smi/c;->K:[B

    const/16 v4, 0x4e

    aget-byte v3, v3, v4

    neg-int v3, v3

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c;->a(III)Ljava/lang/String;

    const/16 v1, 0x123

    sget-object v2, Lcom/datami/smi/c;->K:[B

    const/16 v3, 0x127

    aget-byte v2, v2, v3

    neg-int v2, v2

    sget-object v3, Lcom/datami/smi/c;->K:[B

    const/16 v4, 0x21

    aget-byte v3, v3, v4

    neg-int v3, v3

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c;->a(III)Ljava/lang/String;

    invoke-static {v0}, Lcom/ca/android/app/CaMDOHTTPClient;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/16 v1, 0x8f

    sget-object v2, Lcom/datami/smi/c;->K:[B

    const/16 v3, 0x127

    aget-byte v2, v2, v3

    neg-int v2, v2

    sget-object v3, Lcom/datami/smi/c;->K:[B

    const/16 v4, 0x4e

    aget-byte v3, v3, v4

    neg-int v3, v3

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c;->a(III)Ljava/lang/String;

    const/16 v1, 0x196

    sget-object v2, Lcom/datami/smi/c;->K:[B

    const/16 v3, 0x1fa

    aget-byte v2, v2, v3

    neg-int v2, v2

    sget-object v3, Lcom/datami/smi/c;->K:[B

    const/16 v4, 0x99

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c;->a(III)Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/16 v1, 0x8f

    sget-object v2, Lcom/datami/smi/c;->K:[B

    const/16 v3, 0x127

    aget-byte v2, v2, v3

    neg-int v2, v2

    sget-object v3, Lcom/datami/smi/c;->K:[B

    const/16 v4, 0x4e

    aget-byte v3, v3, v4

    neg-int v3, v3

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c;->a(III)Ljava/lang/String;

    sget-object v1, Lcom/datami/smi/c;->K:[B

    const/16 v2, 0x1c3

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/c;->K:[B

    const/16 v3, 0x7c

    aget-byte v2, v2, v3

    neg-int v2, v2

    sget-object v3, Lcom/datami/smi/c;->K:[B

    const/16 v4, 0x21

    aget-byte v3, v3, v4

    neg-int v3, v3

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c;->a(III)Ljava/lang/String;

    invoke-static {v0}, Lcom/ca/android/app/CaMDOHTTPClient;->connect(Ljava/net/HttpURLConnection;)V

    const/16 v1, 0x8f

    sget-object v2, Lcom/datami/smi/c;->K:[B

    const/16 v3, 0x127

    aget-byte v2, v2, v3

    neg-int v2, v2

    sget-object v3, Lcom/datami/smi/c;->K:[B

    const/16 v4, 0x4e

    aget-byte v3, v3, v4

    neg-int v3, v3

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c;->a(III)Ljava/lang/String;

    sget v1, Lcom/datami/smi/c;->L:I

    and-int/lit16 v1, v1, 0x3be

    sget-object v2, Lcom/datami/smi/c;->K:[B

    const/16 v3, 0xab

    aget-byte v2, v2, v3

    neg-int v2, v2

    sget-object v3, Lcom/datami/smi/c;->K:[B

    const/16 v4, 0x21

    aget-byte v3, v3, v4

    neg-int v3, v3

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c;->a(III)Ljava/lang/String;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/datami/smi/c;->K:[B

    aget-byte v1, v1, v5

    neg-int v1, v1

    sget-object v2, Lcom/datami/smi/c;->K:[B

    aget-byte v2, v2, v6

    neg-int v2, v2

    invoke-static {v7, v1, v2}, Lcom/datami/smi/c;->a(III)Ljava/lang/String;

    const/16 v1, 0x103

    sget-object v2, Lcom/datami/smi/c;->K:[B

    const/16 v3, 0x28

    aget-byte v2, v2, v3

    neg-int v2, v2

    sget-object v3, Lcom/datami/smi/c;->K:[B

    aget-byte v3, v3, v8

    neg-int v3, v3

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c;->a(III)Ljava/lang/String;

    new-instance v1, Landroid/content/ContextWrapper;

    sget-object v2, Lcom/datami/smi/c;->A:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x5b

    const/16 v3, 0x32

    sget-object v4, Lcom/datami/smi/c;->K:[B

    const/16 v5, 0x1ca

    aget-byte v4, v4, v5

    invoke-static {v2, v3, v4}, Lcom/datami/smi/c;->a(III)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContextWrapper;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    new-instance v1, Ljava/io/File;

    const/16 v3, 0x10f

    sget-object v4, Lcom/datami/smi/c;->K:[B

    const/16 v5, 0xb7

    aget-byte v4, v4, v5

    add-int/lit8 v4, v4, -0x1

    sget-object v5, Lcom/datami/smi/c;->K:[B

    const/16 v6, 0x1ca

    aget-byte v5, v5, v6

    invoke-static {v3, v4, v5}, Lcom/datami/smi/c;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v0, v1, v4, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/datami/smi/c;->z:Ljava/lang/String;

    :cond_0
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static o()Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {}, Lcom/datami/smi/c;->m()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/datami/smi/c;->n()Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static p()Z
    .locals 6

    const/4 v0, 0x0

    sget-object v1, Lcom/datami/smi/c;->F:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/datami/smi/c;->F:Landroid/content/SharedPreferences;

    const/16 v2, 0xbb

    sget-object v3, Lcom/datami/smi/c;->K:[B

    const/16 v4, 0x24

    aget-byte v3, v3, v4

    sget-object v4, Lcom/datami/smi/c;->K:[B

    const/16 v5, 0x6f

    aget-byte v4, v4, v5

    invoke-static {v2, v3, v4}, Lcom/datami/smi/c;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    return v0
.end method
