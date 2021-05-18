.class public final Lcom/datami/smi/c/d;
.super Ljava/lang/Thread;


# static fields
.field private static final a:Ljava/lang/String; = "[dmi]GlobalDiscovery"

.field private static b:I

.field private static e:Z

.field private static f:Z

.field private static final g:[B

.field private static h:I


# instance fields
.field private final c:Landroid/content/Context;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0x263

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/datami/smi/c/d;->g:[B

    const/16 v0, 0xaa

    sput v0, Lcom/datami/smi/c/d;->h:I

    const/4 v0, 0x1

    sput v0, Lcom/datami/smi/c/d;->b:I

    sput-boolean v1, Lcom/datami/smi/c/d;->e:Z

    sput-boolean v1, Lcom/datami/smi/c/d;->f:Z

    return-void

    :array_0
    .array-data 1
        0x41t
        -0x31t
        0x6ft
        0x61t
        0x1t
        0xet
        0x1t
        -0x2t
        0x4t
        -0x12t
        0xdt
        -0x5t
        0x15t
        0x6t
        0x4t
        -0xct
        0x0t
        0xct
        -0x4bt
        0x45t
        0x6t
        0xbt
        -0xft
        0xdt
        0x8t
        -0x10t
        0xet
        0x8t
        -0x58t
        0x53t
        -0xct
        0xft
        -0x2t
        0x0t
        0x0t
        0x2t
        0x5t
        -0xdt
        -0x44t
        0x51t
        -0xet
        0x12t
        0x2t
        -0x9t
        0x6t
        -0x6t
        -0x46t
        0x47t
        -0x4t
        0x9t
        0x4t
        -0x6t
        0x0t
        -0x29t
        -0x19t
        -0x2t
        -0x43t
        0x56t
        -0x4t
        -0xbt
        -0x2t
        0x14t
        -0xet
        0x0t
        -0x2t
        0x14t
        -0x12t
        0xdt
        -0x3t
        -0x3bt
        0x47t
        -0xdt
        -0x1t
        0x13t
        -0x2t
        -0xct
        -0x37t
        0x3ft
        -0x5t
        0x15t
        -0x2t
        -0x43t
        0x47t
        -0x4t
        0x9t
        0x4t
        -0x6t
        0x0t
        -0x43t
        0x58t
        -0xdt
        0xct
        -0xbt
        -0x47t
        0x46t
        0xet
        0x1t
        -0x2t
        0x4t
        -0x37t
        -0x19t
        0x3t
        0x0t
        -0x2t
        -0x2t
        -0x43t
        0x51t
        -0xet
        0x12t
        0x2t
        -0xdt
        -0x44t
        0x54t
        0x3t
        -0x11t
        0x1t
        0x3t
        0xft
        0x1t
        -0xct
        0x10t
        -0x8t
        -0xbt
        -0x4t
        -0x1t
        0x7t
        0x6t
        0x4t
        -0xct
        0x0t
        0xct
        -0x4bt
        0x45t
        0x6t
        0xbt
        -0xft
        0xdt
        0x8t
        -0x10t
        0xet
        0x8t
        -0x58t
        0x53t
        -0xct
        0xft
        -0x2t
        0x0t
        0x0t
        0x6t
        -0xdt
        -0x2at
        -0x19t
        -0x15t
        -0xdt
        0x12t
        -0xdt
        0xet
        0x5t
        -0xct
        -0x5t
        0x3t
        0xft
        -0x6t
        0x6t
        -0x6t
        -0x7t
        0x3t
        0x3t
        0x12t
        -0xat
        0x7t
        0x0t
        0xbt
        -0x2t
        0xft
        0x10t
        0x1t
        -0x26t
        0x1ct
        0x1t
        0x3t
        0xbt
        -0x3t
        -0x6t
        0x13t
        -0xat
        0x2t
        0x6t
        -0x6t
        -0x46t
        0x47t
        -0x4t
        0x9t
        0x4t
        -0x6t
        0x0t
        -0x43t
        0x1bt
        -0x19t
        0x14t
        0x1t
        0x14t
        -0x4dt
        0x4ft
        -0x2t
        -0x43t
        0x46t
        0xet
        0x1t
        -0x2t
        0x4t
        -0x37t
        -0x19t
        0x6t
        0x4t
        -0xct
        0x0t
        0xct
        -0x4bt
        0x45t
        0x6t
        0xbt
        -0xft
        0xdt
        0x8t
        -0x10t
        0xet
        0x8t
        -0x58t
        0x56t
        -0x2t
        -0x5t
        -0x4bt
        -0x4t
        0x2t
        -0x3t
        0xet
        0x1t
        -0x2t
        0x4t
        -0x12t
        0xft
        0x7t
        -0xbt
        -0x7t
        0xdt
        -0x5t
        0x15t
        0xdt
        0x1t
        -0x3t
        -0x2ft
        0x54t
        0x2t
        -0x12t
        0x14t
        0x2t
        -0x1t
        -0x52t
        0x24t
        0x2dt
        -0xat
        0x2t
        -0x44t
        0x1bt
        -0x19t
        -0x9t
        0x1t
        0xbt
        0x2t
        -0xat
        -0x42t
        0x51t
        -0xet
        0x12t
        0x2t
        -0x9t
        0x6t
        -0x6t
        -0x46t
        0x47t
        -0x4t
        0x9t
        0x4t
        -0x6t
        0x0t
        -0x29t
        -0x19t
        0xdt
        -0x2t
        0x1t
        -0x6t
        -0x1t
        0x12t
        -0x4t
        0x4t
        -0x2t
        -0x43t
        0x54t
        0x2t
        -0x12t
        0x14t
        0x2t
        -0x1t
        -0x52t
        0x50t
        -0x3t
        -0x7t
        0xft
        0x1t
        -0x11t
        0x7t
        -0x1t
        -0x5t
        0x7t
        0x8t
        0xct
        -0xbt
        0xdt
        -0x1t
        0x3t
        0x6t
        0x4t
        -0xct
        0x0t
        0xct
        -0x4bt
        0x45t
        0x6t
        0xbt
        -0xft
        0xdt
        0x8t
        -0x10t
        0xet
        0x8t
        -0x58t
        0x45t
        -0x2t
        0x14t
        -0x12t
        -0x40t
        0x56t
        -0x4t
        -0xbt
        -0x2t
        0x14t
        -0xet
        0x0t
        -0x43t
        0x58t
        -0xdt
        0xct
        -0xbt
        -0x47t
        0x46t
        0xet
        0x1t
        -0x2t
        0x4t
        -0x51t
        0x53t
        -0xct
        0xft
        -0x2t
        0x0t
        0x0t
        0x6t
        -0xdt
        0xat
        0xat
        -0x3t
        -0xbt
        -0x15t
        0x26t
        0x4t
        -0xct
        0x0t
        0xct
        -0x27t
        0x26t
        0xbt
        -0xft
        0xdt
        0x8t
        -0x10t
        0xet
        0x8t
        0x9t
        0xat
        0x3t
        -0xet
        0x8t
        -0x7t
        0x8t
        0x0t
        -0x8t
        0x9t
        0xat
        -0xet
        0x3t
        0x8t
        -0x2t
        -0x43t
        0x54t
        0x3t
        -0x11t
        0x1t
        0x3t
        0xft
        0x1t
        -0xct
        0x10t
        -0x8t
        -0x6t
        0x6t
        -0x6t
        0xdt
        0x1t
        -0x3t
        -0x35t
        -0xat
        0x1t
        0x36t
        0x6t
        0xbt
        -0xft
        0xdt
        0x8t
        -0x10t
        0xet
        0x8t
        -0x4at
        0x36t
        0xat
        0x4t
        0x7t
        -0x10t
        0xat
        -0x3t
        -0x3at
        0x37t
        -0x2t
        0x14t
        -0x12t
        0xdt
        -0x3t
        -0x3at
        0x36t
        0xdt
        -0x1t
        -0x3dt
        0x48t
        -0x45t
        -0x12t
        0x14t
        -0x12t
        0x4t
        0xct
        -0xbt
        0xdt
        -0x1t
        0x3t
        0x53t
        -0xct
        0xdt
        -0x50t
        0x4bt
        0xat
        -0x3t
        0x0t
        -0x33t
        -0x19t
        -0x15t
        0x6t
        0x4t
        -0xct
        0x0t
        0xct
        -0x4bt
        0x45t
        0x6t
        0xbt
        -0xft
        0xdt
        0x8t
        -0x10t
        0xet
        0x8t
        -0x58t
        0x4at
        0xbt
        -0x52t
        0x47t
        -0x4t
        0x9t
        0x4t
        -0x6t
        0x0t
        -0x29t
        -0x19t
        -0xct
        0x8t
        -0x2t
        -0x7t
        0xet
        -0xat
        0x3t
        -0x2t
        -0x43t
        0x54t
        0x2t
        -0x12t
        0x12t
        0x3t
        -0xet
        0x0t
        0x14t
        -0x46t
        0x48t
        0xet
        0x1t
        -0x2t
        0x4t
        -0x2et
        0x2dt
        -0xat
        0x2t
        -0x9t
        0x1t
        0xbt
        0x2t
        -0xat
        0x6t
        0x4t
        -0xct
        0x0t
        0xct
        -0x4bt
        0x45t
        0x6t
        0xbt
        -0xft
        0xdt
        0x8t
        -0x10t
        0xet
        0x8t
        -0x58t
        0x4dt
        -0xat
        0x13t
        0x2t
        -0x53t
        0x46t
        0xet
        0x1t
        -0x2t
        0x4t
        -0x51t
        0x44t
        0xdt
        -0xat
        0x2t
        -0x2at
        -0x19t
        0x9t
        -0xat
        0x4t
        0x0t
        -0x4t
        0x7t
        0xet
        0x1t
        -0x2t
        0x4t
        -0x12t
        0xdt
        -0x5t
        0x15t
        -0x2t
        -0x10t
        0xdt
        0xdt
        -0xat
        0x2t
        -0x1t
        0x15t
        -0x1t
        -0xdt
        0xct
        -0xat
        0x12t
        -0x4t
        0x2t
        0xet
        -0x9t
        0xft
        -0x2t
        -0x5t
        -0x4t
        -0x4t
        0xbt
        -0x4t
        -0x6t
        -0xat
        -0x2t
        0x6t
        0xat
        0x0t
        -0x8t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, -0x2

    iput v0, p0, Lcom/datami/smi/c/d;->d:I

    iput-object p1, p0, Lcom/datami/smi/c/d;->c:Landroid/content/Context;

    return-void
.end method

.method private static a(III)Ljava/lang/String;
    .locals 9

    const/4 v5, 0x0

    new-instance v7, Ljava/lang/String;

    sget-object v8, Lcom/datami/smi/c/d;->g:[B

    rsub-int v3, p0, 0x25b

    rsub-int/lit8 v0, p2, 0x76

    rsub-int/lit8 v2, p1, 0x31

    new-array v1, v2, [B

    add-int/lit8 v2, v2, -0x1

    if-nez v8, :cond_1

    move v4, v5

    move v6, v3

    move-object v3, v1

    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    add-int/lit8 v1, v0, -0x1

    move v0, v4

    :goto_1
    int-to-byte v4, v1

    aput-byte v4, v3, v0

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v4, v0, 0x1

    if-ne v0, v2, :cond_0

    invoke-direct {v7, v3, v5}, Ljava/lang/String;-><init>([BI)V

    return-object v7

    :cond_0
    aget-byte v0, v8, v6

    goto :goto_0

    :cond_1
    move v6, v3

    move-object v3, v1

    move v1, v0

    move v0, v5

    goto :goto_1
.end method

.method private static a(I)V
    .locals 6

    const/16 v0, 0x106

    if-ne v0, p0, :cond_3

    :try_start_0
    sget-boolean v0, Lcom/datami/smi/c/d;->f:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/datami/smi/c/c;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    add-int/lit8 v3, v2, -0x1

    if-ge v0, v3, :cond_0

    aget-char v3, v1, v0

    add-int/lit8 v4, v0, 0x1

    aget-char v4, v1, v4

    aput-char v4, v1, v0

    add-int/lit8 v4, v0, 0x1

    int-to-char v3, v3

    aput-char v3, v1, v4

    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    invoke-static {v0}, Lcom/datami/smi/c/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/datami/smi/c/c;->e:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/datami/smi/c/d;->f:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v0

    sget v1, Lcom/datami/smi/c/d;->h:I

    or-int/lit8 v1, v1, 0x41

    sget-object v2, Lcom/datami/smi/c/d;->g:[B

    const/16 v3, 0xb2

    aget-byte v2, v2, v3

    add-int/lit8 v2, v2, 0x1

    sget-object v3, Lcom/datami/smi/c/d;->g:[B

    const/16 v4, 0xc5

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1a5

    const/16 v3, 0x20

    sget-object v4, Lcom/datami/smi/c/d;->g:[B

    const/4 v5, 0x5

    aget-byte v4, v4, v5

    invoke-static {v2, v3, v4}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/datami/smi/SmiSdk;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/datami/smi/c/d;->g:[B

    const/16 v2, 0x31

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/c/d;->g:[B

    const/16 v3, 0x17b

    aget-byte v2, v2, v3

    neg-int v2, v2

    sget-object v3, Lcom/datami/smi/c/d;->g:[B

    const/16 v4, 0xc

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/datami/smi/c/c;->e:Ljava/lang/String;

    goto :goto_1
.end method

.method private a(J)V
    .locals 9

    const/4 v4, 0x2

    const/16 v8, 0xd

    const/16 v7, 0xc

    const/4 v5, 0x5

    const/4 v6, 0x1

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v6, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xb

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v7, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v8, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xe

    const/16 v3, 0xe

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v5, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v1, v4, v0}, Ljava/util/Calendar;->set(II)V

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/datami/smi/c/d;->c:Landroid/content/Context;

    const-class v3, Lcom/datami/smi/NWChangeReceiver;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget v2, Lcom/datami/smi/c/d;->h:I

    or-int/lit16 v2, v2, 0x110

    sget-object v3, Lcom/datami/smi/c/d;->g:[B

    const/16 v4, 0x176

    aget-byte v3, v3, v4

    sget-object v4, Lcom/datami/smi/c/d;->g:[B

    aget-byte v4, v4, v8

    invoke-static {v2, v3, v4}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/datami/smi/c/d;->c:Landroid/content/Context;

    const/16 v3, 0x3039

    const/high16 v4, 0x10000000

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iget-object v0, p0, Lcom/datami/smi/c/d;->c:Landroid/content/Context;

    sget-object v3, Lcom/datami/smi/c/d;->g:[B

    aget-byte v3, v3, v5

    sget-object v4, Lcom/datami/smi/c/d;->g:[B

    const/16 v5, 0x104

    aget-byte v4, v4, v5

    add-int/lit8 v4, v4, -0x1

    sget-object v5, Lcom/datami/smi/c/d;->g:[B

    aget-byte v5, v5, v7

    invoke-static {v3, v4, v5}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v0, v6, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 10

    const/16 v9, 0xc5

    const/16 v8, 0xb2

    const/16 v7, 0x1f

    const/16 v6, 0x72

    iget-object v0, p0, Lcom/datami/smi/c/d;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/datami/smi/b/k;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {}, Lcom/datami/smi/g/c;->a()I

    move-result v2

    sget v3, Lcom/datami/smi/c/d;->h:I

    or-int/lit8 v3, v3, 0x41

    sget-object v4, Lcom/datami/smi/c/d;->g:[B

    aget-byte v4, v4, v8

    add-int/lit8 v4, v4, 0x1

    sget-object v5, Lcom/datami/smi/c/d;->g:[B

    aget-byte v5, v5, v9

    invoke-static {v3, v4, v5}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/datami/smi/c/d;->g:[B

    const/16 v5, 0x2f

    aget-byte v4, v4, v5

    sget-object v5, Lcom/datami/smi/c/d;->g:[B

    aget-byte v5, v5, v7

    invoke-static {v4, v5, v5}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_2

    const/16 v3, 0x257

    sget v4, Lcom/datami/smi/c/d;->h:I

    and-int/lit8 v4, v4, 0x7c

    sget-object v5, Lcom/datami/smi/c/d;->g:[B

    aget-byte v5, v5, v6

    neg-int v5, v5

    invoke-static {v3, v4, v5}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const/4 v2, -0x2

    iget v3, p0, Lcom/datami/smi/c/d;->d:I

    if-eq v2, v3, :cond_0

    sget-object v2, Lcom/datami/smi/c/d;->g:[B

    const/16 v3, 0x176

    aget-byte v2, v2, v3

    add-int/lit8 v3, v2, -0x4

    sget-object v4, Lcom/datami/smi/c/d;->g:[B

    aget-byte v4, v4, v6

    neg-int v4, v4

    invoke-static {v2, v3, v4}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/datami/smi/c/d;->d:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_0
    if-eqz p1, :cond_1

    const/16 v2, 0x170

    sget-object v3, Lcom/datami/smi/c/d;->g:[B

    const/16 v4, 0x103

    aget-byte v3, v3, v4

    sget-object v4, Lcom/datami/smi/c/d;->g:[B

    aget-byte v4, v4, v6

    neg-int v4, v4

    invoke-static {v2, v3, v4}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_1
    invoke-static {v0}, Lcom/datami/smi/c/c;->b(Landroid/content/SharedPreferences;)V

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget v0, Lcom/datami/smi/c/d;->h:I

    or-int/lit8 v0, v0, 0x41

    sget-object v1, Lcom/datami/smi/c/d;->g:[B

    aget-byte v1, v1, v8

    add-int/lit8 v1, v1, 0x1

    sget-object v2, Lcom/datami/smi/c/d;->g:[B

    aget-byte v2, v2, v9

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    const/16 v0, 0x11b

    sget-object v1, Lcom/datami/smi/c/d;->g:[B

    const/16 v2, 0x10

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/c/d;->g:[B

    aget-byte v2, v2, v7

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    :cond_2
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 12

    iget-object v2, p0, Lcom/datami/smi/c/d;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/datami/smi/b/k;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    const/4 v2, 0x0

    sput-object v2, Lcom/datami/smi/c/c;->c:Lcom/datami/smi/c/b;

    new-instance v2, Lcom/datami/smi/c/b;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    invoke-direct/range {v2 .. v9}, Lcom/datami/smi/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    sput-object v2, Lcom/datami/smi/c/c;->c:Lcom/datami/smi/c/b;

    :try_start_0
    new-instance v2, Lcom/datami/smi/c/a;

    const/16 v3, 0x21c

    sget v4, Lcom/datami/smi/c/d;->h:I

    and-int/lit8 v4, v4, 0x70

    sget-object v5, Lcom/datami/smi/c/d;->g:[B

    const/16 v6, 0x29

    aget-byte v5, v5, v6

    invoke-static {v3, v4, v5}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/datami/smi/c/a;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-le v3, v4, :cond_0

    const/16 v3, 0x1e0

    sget-object v4, Lcom/datami/smi/c/d;->g:[B

    const/16 v5, 0x20c

    aget-byte v4, v4, v5

    neg-int v4, v4

    sget-object v5, Lcom/datami/smi/c/d;->g:[B

    const/16 v6, 0x7d

    aget-byte v5, v5, v6

    invoke-static {v3, v4, v5}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/datami/smi/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v11, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-le v3, v4, :cond_1

    const/16 v3, 0x18

    sget-object v4, Lcom/datami/smi/c/d;->g:[B

    const/16 v5, 0x104

    aget-byte v4, v4, v5

    sget-object v5, Lcom/datami/smi/c/d;->g:[B

    const/4 v6, 0x4

    aget-byte v5, v5, v6

    invoke-static {v3, v4, v5}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/datami/smi/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v11, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-le v3, v4, :cond_2

    const/16 v3, 0x1a9

    sget-object v4, Lcom/datami/smi/c/d;->g:[B

    const/16 v5, 0x104

    aget-byte v4, v4, v5

    add-int/lit8 v4, v4, -0x1

    sget-object v5, Lcom/datami/smi/c/d;->g:[B

    const/16 v6, 0xc

    aget-byte v5, v5, v6

    invoke-static {v3, v4, v5}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/datami/smi/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v11, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-le v3, v4, :cond_3

    const/16 v3, 0x1f7

    sget-object v4, Lcom/datami/smi/c/d;->g:[B

    const/16 v5, 0x104

    aget-byte v4, v4, v5

    sget-object v5, Lcom/datami/smi/c/d;->g:[B

    const/16 v6, 0x8

    aget-byte v5, v5, v6

    invoke-static {v3, v4, v5}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/datami/smi/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v11, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_3
    if-eqz p5, :cond_4

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-le v3, v4, :cond_4

    const/16 v3, 0x13c

    const/16 v4, 0x28

    sget-object v5, Lcom/datami/smi/c/d;->g:[B

    const/16 v6, 0x49

    aget-byte v5, v5, v6

    invoke-static {v3, v4, v5}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/datami/smi/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_4
    const-wide/16 v2, -0x1

    cmp-long v2, p6, v2

    if-eqz v2, :cond_5

    const-wide/16 v2, 0x0

    cmp-long v2, v2, p6

    if-nez v2, :cond_a

    sget v2, Lcom/datami/smi/c/d;->h:I

    or-int/lit8 v2, v2, 0x14

    sget-object v3, Lcom/datami/smi/c/d;->g:[B

    const/16 v4, 0x104

    aget-byte v3, v3, v4

    sget-object v4, Lcom/datami/smi/c/d;->g:[B

    const/16 v5, 0xd

    aget-byte v4, v4, v5

    invoke-static {v2, v3, v4}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v2

    move-wide/from16 v0, p6

    invoke-interface {v11, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :cond_5
    :goto_0
    if-eqz p8, :cond_6

    const/16 v2, 0x123

    sget-object v3, Lcom/datami/smi/c/d;->g:[B

    const/16 v4, 0x104

    aget-byte v3, v3, v4

    sget-object v4, Lcom/datami/smi/c/d;->g:[B

    const/16 v5, 0x31

    aget-byte v4, v4, v5

    invoke-static {v2, v3, v4}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p8 .. p8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v11, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_6
    if-eqz p9, :cond_7

    const/16 v2, 0x1b0

    sget-object v3, Lcom/datami/smi/c/d;->g:[B

    const/16 v4, 0x20c

    aget-byte v3, v3, v4

    neg-int v3, v3

    sget-object v4, Lcom/datami/smi/c/d;->g:[B

    const/16 v5, 0xa

    aget-byte v4, v4, v5

    invoke-static {v2, v3, v4}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p9 .. p9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v11, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    :goto_1
    const/16 v2, 0x257

    sget v3, Lcom/datami/smi/c/d;->h:I

    and-int/lit8 v3, v3, 0x7c

    sget-object v4, Lcom/datami/smi/c/d;->g:[B

    const/16 v5, 0x72

    aget-byte v4, v4, v5

    neg-int v4, v4

    invoke-static {v2, v3, v4}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v2, 0x257

    sget v3, Lcom/datami/smi/c/d;->h:I

    and-int/lit8 v3, v3, 0x7c

    sget-object v4, Lcom/datami/smi/c/d;->g:[B

    const/16 v5, 0x72

    aget-byte v4, v4, v5

    neg-int v4, v4

    invoke-static {v2, v3, v4}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_8
    sget-object v2, Lcom/datami/smi/c/d;->g:[B

    const/16 v3, 0x176

    aget-byte v2, v2, v3

    add-int/lit8 v3, v2, -0x4

    sget-object v4, Lcom/datami/smi/c/d;->g:[B

    const/16 v5, 0x72

    aget-byte v4, v4, v5

    neg-int v4, v4

    invoke-static {v2, v3, v4}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    sget-object v2, Lcom/datami/smi/c/d;->g:[B

    const/16 v3, 0x176

    aget-byte v2, v2, v3

    add-int/lit8 v3, v2, -0x4

    sget-object v4, Lcom/datami/smi/c/d;->g:[B

    const/16 v5, 0x72

    aget-byte v4, v4, v5

    neg-int v4, v4

    invoke-static {v2, v3, v4}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_9
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget v2, Lcom/datami/smi/c/d;->h:I

    or-int/lit8 v2, v2, 0x41

    sget-object v3, Lcom/datami/smi/c/d;->g:[B

    const/16 v4, 0xb2

    aget-byte v3, v3, v4

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lcom/datami/smi/c/d;->g:[B

    const/16 v5, 0xc5

    aget-byte v4, v4, v5

    invoke-static {v2, v3, v4}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x225

    sget-object v4, Lcom/datami/smi/c/d;->g:[B

    const/16 v5, 0x17b

    aget-byte v4, v4, v5

    neg-int v4, v4

    sget-object v5, Lcom/datami/smi/c/d;->g:[B

    const/16 v6, 0x1f

    aget-byte v5, v5, v6

    invoke-static {v3, v4, v5}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    const-wide/16 v2, 0x3c

    mul-long v2, v2, p6

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v2, v4

    sget v4, Lcom/datami/smi/c/d;->h:I

    or-int/lit8 v4, v4, 0x14

    sget-object v5, Lcom/datami/smi/c/d;->g:[B

    const/16 v6, 0x104

    aget-byte v5, v5, v6

    sget-object v6, Lcom/datami/smi/c/d;->g:[B

    const/16 v7, 0xd

    aget-byte v6, v6, v7

    invoke-static {v4, v5, v6}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v11, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0, v2, v3}, Lcom/datami/smi/c/d;->a(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    sget v3, Lcom/datami/smi/c/d;->h:I

    or-int/lit8 v3, v3, 0x41

    sget-object v4, Lcom/datami/smi/c/d;->g:[B

    const/16 v5, 0xb2

    aget-byte v4, v4, v5

    add-int/lit8 v4, v4, 0x1

    sget-object v5, Lcom/datami/smi/c/d;->g:[B

    const/16 v6, 0xc5

    aget-byte v5, v5, v6

    invoke-static {v3, v4, v5}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto/16 :goto_1
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/16 v7, 0x1f

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/datami/smi/c/d;->g:[B

    const/16 v2, 0xc

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/c/d;->g:[B

    const/16 v3, 0x104

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/c/d;->g:[B

    const/16 v4, 0x49

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/datami/smi/c/d;->g:[B

    const/16 v2, 0xc

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/c/d;->g:[B

    const/16 v3, 0x104

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/c/d;->g:[B

    const/16 v4, 0x49

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/datami/smi/c/d;->d:I

    sget v1, Lcom/datami/smi/c/d;->h:I

    or-int/lit8 v1, v1, 0x41

    sget-object v2, Lcom/datami/smi/c/d;->g:[B

    const/16 v3, 0xb2

    aget-byte v2, v2, v3

    add-int/lit8 v2, v2, 0x1

    sget-object v3, Lcom/datami/smi/c/d;->g:[B

    const/16 v4, 0xc5

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x190

    sget-object v4, Lcom/datami/smi/c/d;->g:[B

    const/16 v5, 0x17b

    aget-byte v4, v4, v5

    neg-int v4, v4

    sget-object v5, Lcom/datami/smi/c/d;->g:[B

    const/16 v6, 0x1f

    aget-byte v5, v5, v6

    invoke-static {v3, v4, v5}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/datami/smi/c/d;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v1, Lcom/datami/smi/c/d;->g:[B

    const/16 v2, 0x29

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/c/d;->g:[B

    const/16 v3, 0x104

    aget-byte v2, v2, v3

    add-int/lit8 v2, v2, -0x1

    sget-object v3, Lcom/datami/smi/c/d;->g:[B

    const/16 v4, 0x49

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/datami/smi/c/d;->g:[B

    const/16 v2, 0x29

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/c/d;->g:[B

    const/16 v3, 0x104

    aget-byte v2, v2, v3

    add-int/lit8 v2, v2, -0x1

    sget-object v3, Lcom/datami/smi/c/d;->g:[B

    const/16 v4, 0x49

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lcom/datami/smi/c/d;->a(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v1

    sget v1, Lcom/datami/smi/c/d;->h:I

    or-int/lit8 v1, v1, 0x41

    sget-object v2, Lcom/datami/smi/c/d;->g:[B

    const/16 v3, 0xb2

    aget-byte v2, v2, v3

    add-int/lit8 v2, v2, 0x1

    sget-object v3, Lcom/datami/smi/c/d;->g:[B

    const/16 v4, 0xc5

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    const/16 v1, 0x24f

    sget-object v2, Lcom/datami/smi/c/d;->g:[B

    const/16 v3, 0xd

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/c/d;->g:[B

    aget-byte v3, v3, v7

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    goto :goto_0
.end method

.method protected static a()Z
    .locals 1

    sget-boolean v0, Lcom/datami/smi/c/d;->e:Z

    return v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    add-int/lit8 v3, v2, -0x1

    if-ge v0, v3, :cond_0

    aget-char v3, v1, v0

    add-int/lit8 v4, v0, 0x1

    aget-char v4, v1, v4

    aput-char v4, v1, v0

    add-int/lit8 v4, v0, 0x1

    int-to-char v3, v3

    aput-char v3, v1, v4

    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method private b()Lorg/json/JSONObject;
    .locals 14

    const/16 v13, 0x35

    const/16 v12, 0x10

    const/16 v11, 0x104

    const/16 v10, 0x2b

    const/16 v9, 0xc

    iget-object v0, p0, Lcom/datami/smi/c/d;->c:Landroid/content/Context;

    const/16 v1, 0xd3

    sget-object v2, Lcom/datami/smi/c/d;->g:[B

    aget-byte v2, v2, v11

    add-int/lit8 v2, v2, -0x1

    sget-object v3, Lcom/datami/smi/c/d;->g:[B

    const/16 v4, 0xd

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    move-object v2, v1

    :goto_0
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-le v3, v4, :cond_0

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x258

    sget-object v5, Lcom/datami/smi/c/d;->g:[B

    const/16 v6, 0xfb

    aget-byte v5, v5, v6

    neg-int v5, v5

    sget-object v6, Lcom/datami/smi/c/d;->g:[B

    const/16 v7, 0x5e

    aget-byte v6, v6, v7

    invoke-static {v4, v5, v6}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v1, 0x0

    :cond_1
    if-nez v1, :cond_2

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_2
    const/4 v1, 0x3

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x1f4

    const/16 v6, 0x30

    sget-object v7, Lcom/datami/smi/c/d;->g:[B

    const/16 v8, 0x1ea

    aget-byte v7, v7, v8

    add-int/lit8 v7, v7, -0x1

    invoke-static {v5, v6, v7}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Lcom/datami/smi/c/d;->a(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    const-string v1, ""

    :cond_3
    :goto_3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    sget-object v3, Lcom/datami/smi/c/d;->g:[B

    const/16 v4, 0x171

    aget-byte v3, v3, v4

    sget-object v4, Lcom/datami/smi/c/d;->g:[B

    const/16 v5, 0xfb

    aget-byte v4, v4, v5

    neg-int v4, v4

    sget-object v5, Lcom/datami/smi/c/d;->g:[B

    const/16 v6, 0x7d

    aget-byte v5, v5, v6

    invoke-static {v3, v4, v5}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/datami/smi/c/d;->g:[B

    const/16 v3, 0x225

    aget-byte v1, v1, v3

    add-int/lit8 v1, v1, -0x1

    sget-object v3, Lcom/datami/smi/c/d;->g:[B

    const/16 v4, 0x31

    aget-byte v3, v3, v4

    invoke-static {v1, v10, v3}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/16 v0, 0x1ad

    const/16 v1, 0x2c

    sget-object v3, Lcom/datami/smi/c/d;->g:[B

    aget-byte v3, v3, v9

    invoke-static {v0, v1, v3}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/datami/smi/c/d;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/16 v0, 0x1e2

    sget-object v1, Lcom/datami/smi/c/d;->g:[B

    const/16 v3, 0x20c

    aget-byte v1, v1, v3

    neg-int v1, v1

    sget-object v3, Lcom/datami/smi/c/d;->g:[B

    const/4 v4, 0x4

    aget-byte v3, v3, v4

    invoke-static {v0, v1, v3}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/datami/smi/c/c;->e:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v0, v2

    goto/16 :goto_1

    :catch_0
    move-exception v1

    sget v1, Lcom/datami/smi/c/d;->h:I

    or-int/lit8 v1, v1, 0x41

    sget-object v3, Lcom/datami/smi/c/d;->g:[B

    const/16 v4, 0xb2

    aget-byte v3, v3, v4

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lcom/datami/smi/c/d;->g:[B

    const/16 v5, 0xc5

    aget-byte v4, v4, v5

    invoke-static {v1, v3, v4}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    const/16 v1, 0x152

    sget-object v3, Lcom/datami/smi/c/d;->g:[B

    const/16 v4, 0xc5

    aget-byte v3, v3, v4

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lcom/datami/smi/c/d;->g:[B

    const/16 v5, 0x31

    aget-byte v4, v4, v5

    invoke-static {v1, v3, v4}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    goto/16 :goto_2

    :cond_4
    const/16 v2, 0xd8

    sget-object v3, Lcom/datami/smi/c/d;->g:[B

    aget-byte v3, v3, v9

    invoke-static {v2, v10, v3}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v1, 0xd8

    sget-object v2, Lcom/datami/smi/c/d;->g:[B

    aget-byte v2, v2, v9

    invoke-static {v1, v10, v2}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    :cond_5
    sget-object v2, Lcom/datami/smi/c/d;->g:[B

    aget-byte v2, v2, v12

    sget-object v3, Lcom/datami/smi/c/d;->g:[B

    aget-byte v3, v3, v13

    neg-int v3, v3

    sget-object v4, Lcom/datami/smi/c/d;->g:[B

    aget-byte v4, v4, v12

    invoke-static {v2, v3, v4}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v1, Lcom/datami/smi/c/d;->g:[B

    aget-byte v1, v1, v12

    sget-object v2, Lcom/datami/smi/c/d;->g:[B

    aget-byte v2, v2, v13

    neg-int v2, v2

    sget-object v3, Lcom/datami/smi/c/d;->g:[B

    aget-byte v3, v3, v12

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    :cond_6
    const/16 v2, 0x173

    sget-object v3, Lcom/datami/smi/c/d;->g:[B

    aget-byte v3, v3, v11

    sget-object v4, Lcom/datami/smi/c/d;->g:[B

    const/16 v5, 0xa

    aget-byte v4, v4, v5

    invoke-static {v2, v3, v4}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v1, 0x173

    sget-object v2, Lcom/datami/smi/c/d;->g:[B

    aget-byte v2, v2, v11

    sget-object v3, Lcom/datami/smi/c/d;->g:[B

    const/16 v4, 0xa

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    :cond_7
    const/16 v2, 0x67

    sget-object v3, Lcom/datami/smi/c/d;->g:[B

    aget-byte v3, v3, v13

    neg-int v3, v3

    sget-object v4, Lcom/datami/smi/c/d;->g:[B

    const/16 v5, 0x8

    aget-byte v4, v4, v5

    invoke-static {v2, v3, v4}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v1, 0x67

    sget-object v2, Lcom/datami/smi/c/d;->g:[B

    aget-byte v2, v2, v13

    neg-int v2, v2

    sget-object v3, Lcom/datami/smi/c/d;->g:[B

    const/16 v4, 0x8

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    :cond_8
    const/16 v2, 0xcf

    sget-object v3, Lcom/datami/smi/c/d;->g:[B

    aget-byte v3, v3, v9

    invoke-static {v2, v10, v3}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/16 v1, 0xcf

    sget-object v2, Lcom/datami/smi/c/d;->g:[B

    aget-byte v2, v2, v9

    invoke-static {v1, v10, v2}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    :cond_9
    const/16 v2, 0x120

    sget-object v3, Lcom/datami/smi/c/d;->g:[B

    const/16 v4, 0x29

    aget-byte v3, v3, v4

    invoke-static {v2, v10, v3}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/16 v1, 0x96

    sget-object v2, Lcom/datami/smi/c/d;->g:[B

    const/16 v3, 0x17b

    aget-byte v2, v2, v3

    neg-int v2, v2

    sget-object v3, Lcom/datami/smi/c/d;->g:[B

    const/16 v4, 0x23

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    :cond_a
    const/16 v2, 0x195

    sget-object v3, Lcom/datami/smi/c/d;->g:[B

    const/16 v4, 0x20c

    aget-byte v3, v3, v4

    neg-int v3, v3

    sget-object v4, Lcom/datami/smi/c/d;->g:[B

    aget-byte v4, v4, v9

    invoke-static {v2, v3, v4}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    const/16 v2, 0x193

    sget-object v3, Lcom/datami/smi/c/d;->g:[B

    aget-byte v3, v3, v11

    sget-object v4, Lcom/datami/smi/c/d;->g:[B

    aget-byte v4, v4, v9

    invoke-static {v2, v3, v4}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    sget-object v2, Lcom/datami/smi/c/d;->g:[B

    const/16 v3, 0x59

    aget-byte v2, v2, v3

    add-int/lit8 v2, v2, -0x1

    sget-object v3, Lcom/datami/smi/c/d;->g:[B

    aget-byte v3, v3, v11

    sget-object v4, Lcom/datami/smi/c/d;->g:[B

    aget-byte v4, v4, v9

    invoke-static {v2, v3, v4}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_b
    const/16 v1, 0x195

    sget-object v2, Lcom/datami/smi/c/d;->g:[B

    const/16 v3, 0x20c

    aget-byte v2, v2, v3

    neg-int v2, v2

    sget-object v3, Lcom/datami/smi/c/d;->g:[B

    aget-byte v3, v3, v9

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    :cond_c
    move-object v0, v1

    goto/16 :goto_0
.end method

.method private b(Lorg/json/JSONObject;)V
    .locals 17
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v8, -0x1

    const/16 v2, 0x1c1

    :try_start_0
    sget-object v12, Lcom/datami/smi/c/d;->g:[B

    const/16 v13, 0x35

    aget-byte v12, v12, v13

    neg-int v12, v12

    sget-object v13, Lcom/datami/smi/c/d;->g:[B

    const/16 v14, 0x65

    aget-byte v13, v13, v14

    invoke-static {v2, v12, v13}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x1c1

    sget-object v12, Lcom/datami/smi/c/d;->g:[B

    const/16 v13, 0x35

    aget-byte v12, v12, v13

    neg-int v12, v12

    sget-object v13, Lcom/datami/smi/c/d;->g:[B

    const/16 v14, 0x65

    aget-byte v13, v13, v14

    invoke-static {v2, v12, v13}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const/16 v12, 0x1e0

    sget-object v13, Lcom/datami/smi/c/d;->g:[B

    const/16 v14, 0x20c

    aget-byte v13, v13, v14

    neg-int v13, v13

    sget-object v14, Lcom/datami/smi/c/d;->g:[B

    const/16 v15, 0x7d

    aget-byte v14, v14, v15

    invoke-static {v12, v13, v14}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/16 v12, 0x1e0

    sget-object v13, Lcom/datami/smi/c/d;->g:[B

    const/16 v14, 0x20c

    aget-byte v13, v13, v14

    neg-int v13, v13

    sget-object v14, Lcom/datami/smi/c/d;->g:[B

    const/16 v15, 0x7d

    aget-byte v14, v14, v15

    invoke-static {v12, v13, v14}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_0
    const/16 v12, 0x18

    sget-object v13, Lcom/datami/smi/c/d;->g:[B

    const/16 v14, 0x104

    aget-byte v13, v13, v14

    sget-object v14, Lcom/datami/smi/c/d;->g:[B

    const/4 v15, 0x4

    aget-byte v14, v14, v15

    invoke-static {v12, v13, v14}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/16 v12, 0x18

    sget-object v13, Lcom/datami/smi/c/d;->g:[B

    const/16 v14, 0x104

    aget-byte v13, v13, v14

    sget-object v14, Lcom/datami/smi/c/d;->g:[B

    const/4 v15, 0x4

    aget-byte v14, v14, v15

    invoke-static {v12, v13, v14}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_1
    const/16 v12, 0x1a9

    sget-object v13, Lcom/datami/smi/c/d;->g:[B

    const/16 v14, 0x104

    aget-byte v13, v13, v14

    add-int/lit8 v13, v13, -0x1

    sget-object v14, Lcom/datami/smi/c/d;->g:[B

    const/16 v15, 0xc

    aget-byte v14, v14, v15

    invoke-static {v12, v13, v14}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    const/16 v12, 0x1a9

    sget-object v13, Lcom/datami/smi/c/d;->g:[B

    const/16 v14, 0x104

    aget-byte v13, v13, v14

    add-int/lit8 v13, v13, -0x1

    sget-object v14, Lcom/datami/smi/c/d;->g:[B

    const/16 v15, 0xc

    aget-byte v14, v14, v15

    invoke-static {v12, v13, v14}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_2
    const/16 v12, 0x1f7

    sget-object v13, Lcom/datami/smi/c/d;->g:[B

    const/16 v14, 0x104

    aget-byte v13, v13, v14

    sget-object v14, Lcom/datami/smi/c/d;->g:[B

    const/16 v15, 0x8

    aget-byte v14, v14, v15

    invoke-static {v12, v13, v14}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/16 v12, 0x1f7

    sget-object v13, Lcom/datami/smi/c/d;->g:[B

    const/16 v14, 0x104

    aget-byte v13, v13, v14

    sget-object v14, Lcom/datami/smi/c/d;->g:[B

    const/16 v15, 0x8

    aget-byte v14, v14, v15

    invoke-static {v12, v13, v14}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_3
    const/16 v12, 0x13c

    const/16 v13, 0x28

    sget-object v14, Lcom/datami/smi/c/d;->g:[B

    const/16 v15, 0x49

    aget-byte v14, v14, v15

    invoke-static {v12, v13, v14}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    const/16 v12, 0x13c

    const/16 v13, 0x28

    sget-object v14, Lcom/datami/smi/c/d;->g:[B

    const/16 v15, 0x49

    aget-byte v14, v14, v15

    invoke-static {v12, v13, v14}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_4
    const/16 v2, 0x123

    sget-object v12, Lcom/datami/smi/c/d;->g:[B

    const/16 v13, 0x104

    aget-byte v12, v12, v13

    sget-object v13, Lcom/datami/smi/c/d;->g:[B

    const/16 v14, 0x31

    aget-byte v13, v13, v14

    invoke-static {v2, v12, v13}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v2, 0x123

    sget-object v12, Lcom/datami/smi/c/d;->g:[B

    const/16 v13, 0x104

    aget-byte v12, v12, v13

    sget-object v13, Lcom/datami/smi/c/d;->g:[B

    const/16 v14, 0x31

    aget-byte v13, v13, v14

    invoke-static {v2, v12, v13}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    new-instance v2, Lcom/datami/smi/c/o;

    invoke-direct {v2, v10}, Lcom/datami/smi/c/o;-><init>(Lorg/json/JSONObject;)V

    sput-object v2, Lcom/datami/smi/c/c;->a:Lcom/datami/smi/c/o;

    :goto_0
    sget v2, Lcom/datami/smi/c/d;->h:I

    or-int/lit8 v2, v2, 0x14

    sget-object v12, Lcom/datami/smi/c/d;->g:[B

    const/16 v13, 0x104

    aget-byte v12, v12, v13

    sget-object v13, Lcom/datami/smi/c/d;->g:[B

    const/16 v14, 0xd

    aget-byte v13, v13, v14

    invoke-static {v2, v12, v13}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget v2, Lcom/datami/smi/c/d;->h:I

    or-int/lit8 v2, v2, 0x14

    sget-object v12, Lcom/datami/smi/c/d;->g:[B

    const/16 v13, 0x104

    aget-byte v12, v12, v13

    sget-object v13, Lcom/datami/smi/c/d;->g:[B

    const/16 v14, 0xd

    aget-byte v13, v13, v14

    invoke-static {v2, v12, v13}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    :cond_5
    sget v2, Lcom/datami/smi/c/d;->h:I

    or-int/lit16 v2, v2, 0x104

    sget-object v12, Lcom/datami/smi/c/d;->g:[B

    const/16 v13, 0xfb

    aget-byte v12, v12, v13

    neg-int v12, v12

    sget-object v13, Lcom/datami/smi/c/d;->g:[B

    const/16 v14, 0x29

    aget-byte v13, v13, v14

    invoke-static {v2, v12, v13}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    sget v2, Lcom/datami/smi/c/d;->h:I

    or-int/lit16 v2, v2, 0x104

    sget-object v12, Lcom/datami/smi/c/d;->g:[B

    const/16 v13, 0xfb

    aget-byte v12, v12, v13

    neg-int v12, v12

    sget-object v13, Lcom/datami/smi/c/d;->g:[B

    const/16 v14, 0x29

    aget-byte v13, v13, v14

    invoke-static {v2, v12, v13}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const/16 v12, 0x18

    sget-object v13, Lcom/datami/smi/c/d;->g:[B

    const/16 v14, 0x104

    aget-byte v13, v13, v14

    sget-object v14, Lcom/datami/smi/c/d;->g:[B

    const/4 v15, 0x4

    aget-byte v14, v14, v15

    invoke-static {v12, v13, v14}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/datami/smi/c/d;->e:Z

    :goto_1
    const/16 v2, 0x1b0

    sget-object v12, Lcom/datami/smi/c/d;->g:[B

    const/16 v13, 0x20c

    aget-byte v12, v12, v13

    neg-int v12, v12

    sget-object v13, Lcom/datami/smi/c/d;->g:[B

    const/16 v14, 0xa

    aget-byte v13, v13, v14

    invoke-static {v2, v12, v13}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v2, 0x1b0

    sget-object v12, Lcom/datami/smi/c/d;->g:[B

    const/16 v13, 0x20c

    aget-byte v12, v12, v13

    neg-int v12, v12

    sget-object v13, Lcom/datami/smi/c/d;->g:[B

    const/16 v14, 0xa

    aget-byte v13, v13, v14

    invoke-static {v2, v12, v13}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const/16 v2, 0x1b0

    sget-object v12, Lcom/datami/smi/c/d;->g:[B

    const/16 v13, 0x20c

    aget-byte v12, v12, v13

    neg-int v12, v12

    sget-object v13, Lcom/datami/smi/c/d;->g:[B

    const/16 v14, 0xa

    aget-byte v13, v13, v14

    invoke-static {v2, v12, v13}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    new-instance v2, Lcom/datami/smi/c/n;

    invoke-direct {v2, v11}, Lcom/datami/smi/c/n;-><init>(Lorg/json/JSONObject;)V

    sput-object v2, Lcom/datami/smi/c/c;->b:Lcom/datami/smi/c/n;

    invoke-virtual {v2}, Lcom/datami/smi/c/n;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/datami/smi/c/d;->a(I)V

    :cond_6
    sget v2, Lcom/datami/smi/c/d;->h:I

    or-int/lit8 v2, v2, 0x41

    sget-object v12, Lcom/datami/smi/c/d;->g:[B

    const/16 v13, 0xb2

    aget-byte v12, v12, v13

    add-int/lit8 v12, v12, 0x1

    sget-object v13, Lcom/datami/smi/c/d;->g:[B

    const/16 v14, 0xc5

    aget-byte v13, v13, v14

    invoke-static {v2, v12, v13}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v2

    const/16 v12, 0x1f4

    const/16 v13, 0x1e

    sget-object v14, Lcom/datami/smi/c/d;->g:[B

    const/16 v15, 0x1f

    aget-byte v14, v14, v15

    invoke-static {v12, v13, v14}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v11}, Lcom/datami/smi/c/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-void

    :cond_7
    :try_start_1
    new-instance v2, Lcom/datami/smi/c/o;

    invoke-direct {v2}, Lcom/datami/smi/c/o;-><init>()V

    sput-object v2, Lcom/datami/smi/c/c;->a:Lcom/datami/smi/c/o;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    sget-object v12, Lcom/datami/smi/c/c;->a:Lcom/datami/smi/c/o;

    if-nez v12, :cond_8

    new-instance v12, Lcom/datami/smi/c/o;

    invoke-direct {v12}, Lcom/datami/smi/c/o;-><init>()V

    sput-object v12, Lcom/datami/smi/c/c;->a:Lcom/datami/smi/c/o;

    :cond_8
    sget-object v12, Lcom/datami/smi/c/c;->b:Lcom/datami/smi/c/n;

    if-nez v12, :cond_9

    new-instance v12, Lcom/datami/smi/c/n;

    invoke-direct {v12}, Lcom/datami/smi/c/n;-><init>()V

    sput-object v12, Lcom/datami/smi/c/c;->b:Lcom/datami/smi/c/n;

    :cond_9
    new-instance v12, Ljava/util/Properties;

    invoke-direct {v12}, Ljava/util/Properties;-><init>()V

    const/16 v13, 0x129

    sget-object v14, Lcom/datami/smi/c/d;->g:[B

    const/16 v15, 0x96

    aget-byte v14, v14, v15

    neg-int v14, v14

    sget-object v15, Lcom/datami/smi/c/d;->g:[B

    const/16 v16, 0x31

    aget-byte v15, v15, v16

    invoke-static {v13, v14, v15}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_b

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {v12, v13, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x1c3

    sget-object v13, Lcom/datami/smi/c/d;->g:[B

    const/16 v14, 0x20c

    aget-byte v13, v13, v14

    neg-int v13, v13

    sget-object v14, Lcom/datami/smi/c/d;->g:[B

    const/16 v15, 0x65

    aget-byte v14, v14, v15

    invoke-static {v2, v13, v14}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v2

    sget-object v13, Lcom/datami/smi/d/c;->c:Lcom/datami/smi/d/c;

    invoke-static {v13}, Lcom/datami/smi/d/a;->a(Lcom/datami/smi/d/c;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v2, v13}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/datami/smi/d/d;->a:Lcom/datami/smi/d/d;

    invoke-static {v2}, Lcom/datami/smi/d/a;->a(Lcom/datami/smi/d/d;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v12}, Lcom/datami/smi/b/m;->b(Ljava/lang/String;Ljava/util/Properties;)V

    sget v2, Lcom/datami/smi/c/d;->h:I

    or-int/lit8 v2, v2, 0x41

    sget-object v12, Lcom/datami/smi/c/d;->g:[B

    const/16 v13, 0xb2

    aget-byte v12, v12, v13

    add-int/lit8 v12, v12, 0x1

    sget-object v13, Lcom/datami/smi/c/d;->g:[B

    const/16 v14, 0xc5

    aget-byte v13, v13, v14

    invoke-static {v2, v12, v13}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    const/16 v2, 0x24f

    sget-object v12, Lcom/datami/smi/c/d;->g:[B

    const/16 v13, 0xd

    aget-byte v12, v12, v13

    sget-object v13, Lcom/datami/smi/c/d;->g:[B

    const/16 v14, 0x1f

    aget-byte v13, v13, v14

    invoke-static {v2, v12, v13}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    goto/16 :goto_2

    :cond_a
    const/4 v2, 0x0

    :try_start_2
    sput-boolean v2, Lcom/datami/smi/c/d;->e:Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    :cond_b
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_3
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/16 v7, 0x104

    const/16 v6, 0x35

    const/16 v3, 0x10

    const/16 v5, 0x2b

    const/16 v4, 0xc

    if-nez p0, :cond_1

    const-string p0, ""

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const/16 v0, 0xd8

    sget-object v1, Lcom/datami/smi/c/d;->g:[B

    aget-byte v1, v1, v4

    invoke-static {v0, v5, v1}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xd8

    sget-object v1, Lcom/datami/smi/c/d;->g:[B

    aget-byte v1, v1, v4

    invoke-static {v0, v5, v1}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/datami/smi/c/d;->g:[B

    aget-byte v0, v0, v3

    sget-object v1, Lcom/datami/smi/c/d;->g:[B

    aget-byte v1, v1, v6

    neg-int v1, v1

    sget-object v2, Lcom/datami/smi/c/d;->g:[B

    aget-byte v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/datami/smi/c/d;->g:[B

    aget-byte v0, v0, v3

    sget-object v1, Lcom/datami/smi/c/d;->g:[B

    aget-byte v1, v1, v6

    neg-int v1, v1

    sget-object v2, Lcom/datami/smi/c/d;->g:[B

    aget-byte v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    const/16 v0, 0x173

    sget-object v1, Lcom/datami/smi/c/d;->g:[B

    aget-byte v1, v1, v7

    sget-object v2, Lcom/datami/smi/c/d;->g:[B

    const/16 v3, 0xa

    aget-byte v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x173

    sget-object v1, Lcom/datami/smi/c/d;->g:[B

    aget-byte v1, v1, v7

    sget-object v2, Lcom/datami/smi/c/d;->g:[B

    const/16 v3, 0xa

    aget-byte v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_4
    const/16 v0, 0x67

    sget-object v1, Lcom/datami/smi/c/d;->g:[B

    aget-byte v1, v1, v6

    neg-int v1, v1

    sget-object v2, Lcom/datami/smi/c/d;->g:[B

    const/16 v3, 0x8

    aget-byte v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x67

    sget-object v1, Lcom/datami/smi/c/d;->g:[B

    aget-byte v1, v1, v6

    neg-int v1, v1

    sget-object v2, Lcom/datami/smi/c/d;->g:[B

    const/16 v3, 0x8

    aget-byte v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :cond_5
    const/16 v0, 0xcf

    sget-object v1, Lcom/datami/smi/c/d;->g:[B

    aget-byte v1, v1, v4

    invoke-static {v0, v5, v1}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0xcf

    sget-object v1, Lcom/datami/smi/c/d;->g:[B

    aget-byte v1, v1, v4

    invoke-static {v0, v5, v1}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :cond_6
    const/16 v0, 0x120

    sget-object v1, Lcom/datami/smi/c/d;->g:[B

    const/16 v2, 0x29

    aget-byte v1, v1, v2

    invoke-static {v0, v5, v1}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x96

    sget-object v1, Lcom/datami/smi/c/d;->g:[B

    const/16 v2, 0x17b

    aget-byte v1, v1, v2

    neg-int v1, v1

    sget-object v2, Lcom/datami/smi/c/d;->g:[B

    const/16 v3, 0x23

    aget-byte v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :cond_7
    const/16 v0, 0x195

    sget-object v1, Lcom/datami/smi/c/d;->g:[B

    const/16 v2, 0x20c

    aget-byte v1, v1, v2

    neg-int v1, v1

    sget-object v2, Lcom/datami/smi/c/d;->g:[B

    aget-byte v2, v2, v4

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const/16 v0, 0x193

    sget-object v1, Lcom/datami/smi/c/d;->g:[B

    aget-byte v1, v1, v7

    sget-object v2, Lcom/datami/smi/c/d;->g:[B

    aget-byte v2, v2, v4

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/datami/smi/c/d;->g:[B

    const/16 v1, 0x59

    aget-byte v0, v0, v1

    add-int/lit8 v0, v0, -0x1

    sget-object v1, Lcom/datami/smi/c/d;->g:[B

    aget-byte v1, v1, v7

    sget-object v2, Lcom/datami/smi/c/d;->g:[B

    aget-byte v2, v2, v4

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_8
    const/16 v0, 0x195

    sget-object v1, Lcom/datami/smi/c/d;->g:[B

    const/16 v2, 0x20c

    aget-byte v1, v1, v2

    neg-int v1, v1

    sget-object v2, Lcom/datami/smi/c/d;->g:[B

    aget-byte v2, v2, v4

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0
.end method

.method private static d(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x258

    sget-object v3, Lcom/datami/smi/c/d;->g:[B

    const/16 v4, 0xfb

    aget-byte v3, v3, v4

    neg-int v3, v3

    sget-object v4, Lcom/datami/smi/c/d;->g:[B

    const/16 v5, 0x5e

    aget-byte v4, v4, v5

    invoke-static {v2, v3, v4}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method


# virtual methods
.method public final run()V
    .locals 26

    const/4 v2, 0x0

    sput-boolean v2, Lcom/datami/smi/b/m;->b:Z

    sget v2, Lcom/datami/smi/c/d;->h:I

    or-int/lit8 v2, v2, 0x41

    sget-object v3, Lcom/datami/smi/c/d;->g:[B

    const/16 v4, 0xb2

    aget-byte v3, v3, v4

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lcom/datami/smi/c/d;->g:[B

    const/16 v5, 0xc5

    aget-byte v4, v4, v5

    invoke-static {v2, v3, v4}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/datami/smi/c/d;->g:[B

    const/4 v4, 0x3

    aget-byte v3, v3, v4

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lcom/datami/smi/c/d;->g:[B

    const/16 v5, 0x17b

    aget-byte v4, v4, v5

    neg-int v4, v4

    sget-object v5, Lcom/datami/smi/c/d;->g:[B

    const/16 v6, 0x1f

    aget-byte v5, v5, v6

    invoke-static {v3, v4, v5}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    move v12, v2

    move-wide v2, v4

    :goto_0
    sget v4, Lcom/datami/smi/c/d;->b:I

    if-gt v12, v4, :cond_0

    const/4 v5, 0x0

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/datami/smi/c/d;->b()Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v7

    if-nez v7, :cond_2

    :cond_0
    :goto_1
    sub-long v4, v2, v16

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    invoke-static {}, Lcom/datami/smi/a/d;->a()Lcom/datami/smi/a/d;

    move-result-object v4

    sub-long v2, v2, v16

    invoke-virtual {v4, v2, v3}, Lcom/datami/smi/a/d;->c(J)V

    :cond_1
    return-void

    :cond_2
    const/4 v6, 0x0

    :try_start_1
    sget v4, Lcom/datami/smi/c/d;->h:I

    or-int/lit8 v4, v4, 0x11

    sget-object v8, Lcom/datami/smi/c/d;->g:[B

    const/16 v9, 0x15

    aget-byte v8, v8, v9

    sget-object v9, Lcom/datami/smi/c/d;->g:[B

    const/4 v10, 0x5

    aget-byte v9, v9, v10

    invoke-static {v4, v8, v9}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v4

    sget-object v8, Lcom/datami/smi/c/c;->a:Lcom/datami/smi/c/o;

    if-eqz v8, :cond_3

    sget-object v4, Lcom/datami/smi/c/c;->a:Lcom/datami/smi/c/o;

    sget v6, Lcom/datami/smi/c/d;->h:I

    or-int/lit8 v6, v6, 0x11

    sget-object v8, Lcom/datami/smi/c/d;->g:[B

    const/16 v9, 0x15

    aget-byte v8, v8, v9

    sget-object v9, Lcom/datami/smi/c/d;->g:[B

    const/4 v10, 0x5

    aget-byte v9, v9, v10

    invoke-static {v6, v8, v9}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/datami/smi/c/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/datami/smi/c/c;->a:Lcom/datami/smi/c/o;

    invoke-virtual {v6}, Lcom/datami/smi/c/o;->b()Z

    move-result v6

    :cond_3
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    sget v8, Lcom/datami/smi/c/d;->h:I

    or-int/lit8 v8, v8, 0x41

    sget-object v9, Lcom/datami/smi/c/d;->g:[B

    const/16 v10, 0xb2

    aget-byte v9, v9, v10

    add-int/lit8 v9, v9, 0x1

    sget-object v10, Lcom/datami/smi/c/d;->g:[B

    const/16 v11, 0xc5

    aget-byte v10, v10, v11

    invoke-static {v8, v9, v10}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0x187

    sget-object v10, Lcom/datami/smi/c/d;->g:[B

    const/16 v11, 0xb2

    aget-byte v10, v10, v11

    sget-object v11, Lcom/datami/smi/c/d;->g:[B

    const/16 v13, 0x1f

    aget-byte v11, v11, v13

    invoke-static {v9, v10, v11}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x8d

    sget-object v10, Lcom/datami/smi/c/d;->g:[B

    const/16 v11, 0x176

    aget-byte v10, v10, v11

    add-int/lit8 v10, v10, -0x1

    sget-object v11, Lcom/datami/smi/c/d;->g:[B

    const/16 v13, 0x39

    aget-byte v11, v11, v13

    invoke-static {v9, v10, v11}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/datami/smi/c/d;->c:Landroid/content/Context;

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    invoke-static {v8, v4, v7, v9, v6}, Lcom/datami/smi/g/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-wide v14

    :try_start_2
    invoke-static {}, Lcom/datami/smi/g/c;->a()I

    move-result v2

    sget v3, Lcom/datami/smi/c/d;->h:I

    or-int/lit8 v3, v3, 0x41

    sget-object v6, Lcom/datami/smi/c/d;->g:[B

    const/16 v7, 0xb2

    aget-byte v6, v6, v7

    add-int/lit8 v6, v6, 0x1

    sget-object v7, Lcom/datami/smi/c/d;->g:[B

    const/16 v8, 0xc5

    aget-byte v7, v7, v8

    invoke-static {v3, v6, v7}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x1de

    sget-object v7, Lcom/datami/smi/c/d;->g:[B

    const/16 v8, 0xc

    aget-byte v7, v7, v8

    sget-object v8, Lcom/datami/smi/c/d;->g:[B

    const/16 v9, 0x1f

    aget-byte v8, v8, v9

    invoke-static {v6, v7, v8}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v6, 0x164

    const/16 v7, 0x1e

    sget-object v8, Lcom/datami/smi/c/d;->g:[B

    const/16 v9, 0x20c

    aget-byte v8, v8, v9

    neg-int v8, v8

    invoke-static {v6, v7, v8}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    const/16 v3, 0xc8

    if-ne v3, v2, :cond_15

    :try_start_3
    sget v2, Lcom/datami/smi/c/d;->h:I

    or-int/lit8 v2, v2, 0x41

    sget-object v3, Lcom/datami/smi/c/d;->g:[B

    const/16 v4, 0xb2

    aget-byte v3, v3, v4

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lcom/datami/smi/c/d;->g:[B

    const/16 v5, 0xc5

    aget-byte v4, v4, v5

    invoke-static {v2, v3, v4}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x134

    sget-object v4, Lcom/datami/smi/c/d;->g:[B

    const/16 v5, 0x176

    aget-byte v4, v4, v5

    add-int/lit8 v4, v4, -0x1

    sget-object v5, Lcom/datami/smi/c/d;->g:[B

    const/16 v6, 0x1f

    aget-byte v5, v5, v6

    invoke-static {v3, v4, v5}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/datami/smi/c/d;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/datami/smi/b/k;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {v2}, Lcom/datami/smi/c/c;->b(Landroid/content/SharedPreferences;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    const/16 v2, 0x1c1

    :try_start_4
    sget-object v18, Lcom/datami/smi/c/d;->g:[B

    const/16 v19, 0x35

    aget-byte v18, v18, v19

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    sget-object v19, Lcom/datami/smi/c/d;->g:[B

    const/16 v20, 0x65

    aget-byte v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v2, v0, v1}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v2, 0x1c1

    sget-object v18, Lcom/datami/smi/c/d;->g:[B

    const/16 v19, 0x35

    aget-byte v18, v18, v19

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    sget-object v19, Lcom/datami/smi/c/d;->g:[B

    const/16 v20, 0x65

    aget-byte v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v2, v0, v1}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const/16 v18, 0x1e0

    sget-object v19, Lcom/datami/smi/c/d;->g:[B

    const/16 v20, 0x20c

    aget-byte v19, v19, v20

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v19, v0

    sget-object v20, Lcom/datami/smi/c/d;->g:[B

    const/16 v21, 0x7d

    aget-byte v20, v20, v21

    invoke-static/range {v18 .. v20}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    const/16 v18, 0x1e0

    sget-object v19, Lcom/datami/smi/c/d;->g:[B

    const/16 v20, 0x20c

    aget-byte v19, v19, v20

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v19, v0

    sget-object v20, Lcom/datami/smi/c/d;->g:[B

    const/16 v21, 0x7d

    aget-byte v20, v20, v21

    invoke-static/range {v18 .. v20}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :cond_4
    const/16 v18, 0x18

    sget-object v19, Lcom/datami/smi/c/d;->g:[B

    const/16 v20, 0x104

    aget-byte v19, v19, v20

    sget-object v20, Lcom/datami/smi/c/d;->g:[B

    const/16 v21, 0x4

    aget-byte v20, v20, v21

    invoke-static/range {v18 .. v20}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5

    const/16 v18, 0x18

    sget-object v19, Lcom/datami/smi/c/d;->g:[B

    const/16 v20, 0x104

    aget-byte v19, v19, v20

    sget-object v20, Lcom/datami/smi/c/d;->g:[B

    const/16 v21, 0x4

    aget-byte v20, v20, v21

    invoke-static/range {v18 .. v20}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :cond_5
    const/16 v18, 0x1a9

    sget-object v19, Lcom/datami/smi/c/d;->g:[B

    const/16 v20, 0x104

    aget-byte v19, v19, v20

    add-int/lit8 v19, v19, -0x1

    sget-object v20, Lcom/datami/smi/c/d;->g:[B

    const/16 v21, 0xc

    aget-byte v20, v20, v21

    invoke-static/range {v18 .. v20}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_6

    const/16 v18, 0x1a9

    sget-object v19, Lcom/datami/smi/c/d;->g:[B

    const/16 v20, 0x104

    aget-byte v19, v19, v20

    add-int/lit8 v19, v19, -0x1

    sget-object v20, Lcom/datami/smi/c/d;->g:[B

    const/16 v21, 0xc

    aget-byte v20, v20, v21

    invoke-static/range {v18 .. v20}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :cond_6
    const/16 v18, 0x1f7

    sget-object v19, Lcom/datami/smi/c/d;->g:[B

    const/16 v20, 0x104

    aget-byte v19, v19, v20

    sget-object v20, Lcom/datami/smi/c/d;->g:[B

    const/16 v21, 0x8

    aget-byte v20, v20, v21

    invoke-static/range {v18 .. v20}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_7

    const/16 v18, 0x1f7

    sget-object v19, Lcom/datami/smi/c/d;->g:[B

    const/16 v20, 0x104

    aget-byte v19, v19, v20

    sget-object v20, Lcom/datami/smi/c/d;->g:[B

    const/16 v21, 0x8

    aget-byte v20, v20, v21

    invoke-static/range {v18 .. v20}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :cond_7
    const/16 v18, 0x13c

    const/16 v19, 0x28

    sget-object v20, Lcom/datami/smi/c/d;->g:[B

    const/16 v21, 0x49

    aget-byte v20, v20, v21

    invoke-static/range {v18 .. v20}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_8

    const/16 v18, 0x13c

    const/16 v19, 0x28

    sget-object v20, Lcom/datami/smi/c/d;->g:[B

    const/16 v21, 0x49

    aget-byte v20, v20, v21

    invoke-static/range {v18 .. v20}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_8
    const/16 v2, 0x123

    sget-object v18, Lcom/datami/smi/c/d;->g:[B

    const/16 v19, 0x104

    aget-byte v18, v18, v19

    sget-object v19, Lcom/datami/smi/c/d;->g:[B

    const/16 v20, 0x31

    aget-byte v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v2, v0, v1}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/16 v2, 0x123

    sget-object v18, Lcom/datami/smi/c/d;->g:[B

    const/16 v19, 0x104

    aget-byte v18, v18, v19

    sget-object v19, Lcom/datami/smi/c/d;->g:[B

    const/16 v20, 0x31

    aget-byte v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v2, v0, v1}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    new-instance v2, Lcom/datami/smi/c/o;

    invoke-direct {v2, v6}, Lcom/datami/smi/c/o;-><init>(Lorg/json/JSONObject;)V

    sput-object v2, Lcom/datami/smi/c/c;->a:Lcom/datami/smi/c/o;

    :goto_2
    sget v2, Lcom/datami/smi/c/d;->h:I

    or-int/lit8 v2, v2, 0x14

    sget-object v18, Lcom/datami/smi/c/d;->g:[B

    const/16 v19, 0x104

    aget-byte v18, v18, v19

    sget-object v19, Lcom/datami/smi/c/d;->g:[B

    const/16 v20, 0xd

    aget-byte v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v2, v0, v1}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    sget v2, Lcom/datami/smi/c/d;->h:I

    or-int/lit8 v2, v2, 0x14

    sget-object v18, Lcom/datami/smi/c/d;->g:[B

    const/16 v19, 0x104

    aget-byte v18, v18, v19

    sget-object v19, Lcom/datami/smi/c/d;->g:[B

    const/16 v20, 0xd

    aget-byte v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v2, v0, v1}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    :cond_9
    sget v2, Lcom/datami/smi/c/d;->h:I

    or-int/lit16 v2, v2, 0x104

    sget-object v18, Lcom/datami/smi/c/d;->g:[B

    const/16 v19, 0xfb

    aget-byte v18, v18, v19

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    sget-object v19, Lcom/datami/smi/c/d;->g:[B

    const/16 v20, 0x29

    aget-byte v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v2, v0, v1}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    sget v2, Lcom/datami/smi/c/d;->h:I

    or-int/lit16 v2, v2, 0x104

    sget-object v18, Lcom/datami/smi/c/d;->g:[B

    const/16 v19, 0xfb

    aget-byte v18, v18, v19

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    sget-object v19, Lcom/datami/smi/c/d;->g:[B

    const/16 v20, 0x29

    aget-byte v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v2, v0, v1}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const/16 v18, 0x18

    sget-object v19, Lcom/datami/smi/c/d;->g:[B

    const/16 v20, 0x104

    aget-byte v19, v19, v20

    sget-object v20, Lcom/datami/smi/c/d;->g:[B

    const/16 v21, 0x4

    aget-byte v20, v20, v21

    invoke-static/range {v18 .. v20}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/datami/smi/c/d;->e:Z

    :goto_3
    const/16 v2, 0x1b0

    sget-object v18, Lcom/datami/smi/c/d;->g:[B

    const/16 v19, 0x20c

    aget-byte v18, v18, v19

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    sget-object v19, Lcom/datami/smi/c/d;->g:[B

    const/16 v20, 0xa

    aget-byte v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v2, v0, v1}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/16 v2, 0x1b0

    sget-object v18, Lcom/datami/smi/c/d;->g:[B

    const/16 v19, 0x20c

    aget-byte v18, v18, v19

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    sget-object v19, Lcom/datami/smi/c/d;->g:[B

    const/16 v20, 0xa

    aget-byte v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v2, v0, v1}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    const/16 v2, 0x1b0

    sget-object v18, Lcom/datami/smi/c/d;->g:[B

    const/16 v19, 0x20c

    aget-byte v18, v18, v19

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    sget-object v19, Lcom/datami/smi/c/d;->g:[B

    const/16 v20, 0xa

    aget-byte v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v2, v0, v1}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v2, Lcom/datami/smi/c/n;

    invoke-direct {v2, v3}, Lcom/datami/smi/c/n;-><init>(Lorg/json/JSONObject;)V

    sput-object v2, Lcom/datami/smi/c/c;->b:Lcom/datami/smi/c/n;

    invoke-virtual {v2}, Lcom/datami/smi/c/n;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/datami/smi/c/d;->a(I)V

    :cond_a
    sget v2, Lcom/datami/smi/c/d;->h:I

    or-int/lit8 v2, v2, 0x41

    sget-object v18, Lcom/datami/smi/c/d;->g:[B

    const/16 v19, 0xb2

    aget-byte v18, v18, v19

    add-int/lit8 v18, v18, 0x1

    sget-object v19, Lcom/datami/smi/c/d;->g:[B

    const/16 v20, 0xc5

    aget-byte v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v2, v0, v1}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v2

    const/16 v18, 0x1f4

    const/16 v19, 0x1e

    sget-object v20, Lcom/datami/smi/c/d;->g:[B

    const/16 v21, 0x1f

    aget-byte v20, v20, v21

    invoke-static/range {v18 .. v20}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-wide/from16 v23, v4

    move-object v5, v9

    move-object v4, v10

    move-object v10, v6

    move-object v6, v8

    move-wide/from16 v8, v23

    move-object/from16 v25, v3

    move-object v3, v11

    move-object/from16 v11, v25

    :goto_4
    move-object/from16 v2, p0

    :try_start_5
    invoke-direct/range {v2 .. v11}, Lcom/datami/smi/c/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLorg/json/JSONObject;Lorg/json/JSONObject;)V

    const/4 v2, 0x1

    sput v2, Lcom/datami/smi/c/c;->d:I

    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    const/16 v3, 0x1c3

    sget-object v4, Lcom/datami/smi/c/d;->g:[B

    const/16 v5, 0x20c

    aget-byte v4, v4, v5

    neg-int v4, v4

    sget-object v5, Lcom/datami/smi/c/d;->g:[B

    const/16 v6, 0x65

    aget-byte v5, v5, v6

    invoke-static {v3, v4, v5}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/datami/smi/d/c;->a:Lcom/datami/smi/d/c;

    invoke-static {v4}, Lcom/datami/smi/d/a;->a(Lcom/datami/smi/d/c;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/datami/smi/d/d;->a:Lcom/datami/smi/d/d;

    invoke-static {v3}, Lcom/datami/smi/d/a;->a(Lcom/datami/smi/d/d;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/datami/smi/b/m;->b(Ljava/lang/String;Ljava/util/Properties;)V

    sget v2, Lcom/datami/smi/c/d;->h:I

    or-int/lit8 v2, v2, 0x41

    sget-object v3, Lcom/datami/smi/c/d;->g:[B

    const/16 v4, 0xb2

    aget-byte v3, v3, v4

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lcom/datami/smi/c/d;->g:[B

    const/16 v5, 0xc5

    aget-byte v4, v4, v5

    invoke-static {v2, v3, v4}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xca

    sget-object v4, Lcom/datami/smi/c/d;->g:[B

    const/16 v5, 0x103

    aget-byte v4, v4, v5

    sget-object v5, Lcom/datami/smi/c/d;->g:[B

    const/16 v6, 0x1f

    aget-byte v5, v5, v6

    invoke-static {v3, v4, v5}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-wide v2, v14

    goto/16 :goto_1

    :cond_b
    :try_start_6
    new-instance v2, Lcom/datami/smi/c/o;

    invoke-direct {v2}, Lcom/datami/smi/c/o;-><init>()V

    sput-object v2, Lcom/datami/smi/c/c;->a:Lcom/datami/smi/c/o;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_2

    :catch_0
    move-exception v2

    :try_start_7
    sget-object v18, Lcom/datami/smi/c/c;->a:Lcom/datami/smi/c/o;

    if-nez v18, :cond_c

    new-instance v18, Lcom/datami/smi/c/o;

    invoke-direct/range {v18 .. v18}, Lcom/datami/smi/c/o;-><init>()V

    sput-object v18, Lcom/datami/smi/c/c;->a:Lcom/datami/smi/c/o;

    :cond_c
    sget-object v18, Lcom/datami/smi/c/c;->b:Lcom/datami/smi/c/n;

    if-nez v18, :cond_d

    new-instance v18, Lcom/datami/smi/c/n;

    invoke-direct/range {v18 .. v18}, Lcom/datami/smi/c/n;-><init>()V

    sput-object v18, Lcom/datami/smi/c/c;->b:Lcom/datami/smi/c/n;

    :cond_d
    new-instance v18, Ljava/util/Properties;

    invoke-direct/range {v18 .. v18}, Ljava/util/Properties;-><init>()V

    const/16 v19, 0x129

    sget-object v20, Lcom/datami/smi/c/d;->g:[B

    const/16 v21, 0x96

    aget-byte v20, v20, v21

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    sget-object v21, Lcom/datami/smi/c/d;->g:[B

    const/16 v22, 0x31

    aget-byte v21, v21, v22

    invoke-static/range {v19 .. v21}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_14

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    :goto_5
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x1c3

    sget-object v19, Lcom/datami/smi/c/d;->g:[B

    const/16 v20, 0x20c

    aget-byte v19, v19, v20

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v19, v0

    sget-object v20, Lcom/datami/smi/c/d;->g:[B

    const/16 v21, 0x65

    aget-byte v20, v20, v21

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v2, v0, v1}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v2

    sget-object v19, Lcom/datami/smi/d/c;->c:Lcom/datami/smi/d/c;

    invoke-static/range {v19 .. v19}, Lcom/datami/smi/d/a;->a(Lcom/datami/smi/d/c;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/datami/smi/d/d;->a:Lcom/datami/smi/d/d;

    invoke-static {v2}, Lcom/datami/smi/d/a;->a(Lcom/datami/smi/d/d;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Lcom/datami/smi/b/m;->b(Ljava/lang/String;Ljava/util/Properties;)V

    sget v2, Lcom/datami/smi/c/d;->h:I

    or-int/lit8 v2, v2, 0x41

    sget-object v18, Lcom/datami/smi/c/d;->g:[B

    const/16 v19, 0xb2

    aget-byte v18, v18, v19

    add-int/lit8 v18, v18, 0x1

    sget-object v19, Lcom/datami/smi/c/d;->g:[B

    const/16 v20, 0xc5

    aget-byte v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v2, v0, v1}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    const/16 v2, 0x24f

    sget-object v18, Lcom/datami/smi/c/d;->g:[B

    const/16 v19, 0xd

    aget-byte v18, v18, v19

    sget-object v19, Lcom/datami/smi/c/d;->g:[B

    const/16 v20, 0x1f

    aget-byte v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v2, v0, v1}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    move-wide/from16 v23, v4

    move-object v5, v9

    move-object v4, v10

    move-object v10, v6

    move-object v6, v8

    move-wide/from16 v8, v23

    move-object/from16 v25, v3

    move-object v3, v11

    move-object/from16 v11, v25

    goto/16 :goto_4

    :cond_e
    const/4 v2, 0x0

    :try_start_8
    sput-boolean v2, Lcom/datami/smi/c/d;->e:Z
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v2

    move-object v3, v13

    move-wide v4, v14

    :goto_6
    invoke-static {}, Lcom/datami/smi/g/c;->a()I

    move-result v6

    new-instance v7, Ljava/util/Properties;

    invoke-direct {v7}, Ljava/util/Properties;-><init>()V

    const/16 v8, 0xc8

    if-eq v8, v6, :cond_f

    move-object/from16 v0, p0

    iput v6, v0, Lcom/datami/smi/c/d;->d:I

    const-string v8, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/datami/smi/c/d;->a(Ljava/lang/String;)V

    sget-object v8, Lcom/datami/smi/c/d;->g:[B

    const/16 v9, 0x70

    aget-byte v8, v8, v9

    sget v9, Lcom/datami/smi/c/d;->h:I

    and-int/lit8 v9, v9, 0x7c

    sget-object v10, Lcom/datami/smi/c/d;->g:[B

    const/16 v11, 0x72

    aget-byte v10, v10, v11

    neg-int v10, v10

    invoke-static {v8, v9, v10}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    const/4 v6, 0x0

    sput v6, Lcom/datami/smi/c/c;->d:I

    const/16 v6, 0x129

    sget-object v8, Lcom/datami/smi/c/d;->g:[B

    const/16 v9, 0x96

    aget-byte v8, v8, v9

    neg-int v8, v8

    sget-object v9, Lcom/datami/smi/c/d;->g:[B

    const/16 v10, 0x31

    aget-byte v9, v9, v10

    invoke-static {v6, v8, v9}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_16

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    :goto_7
    invoke-virtual {v7, v6, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x1c3

    sget-object v6, Lcom/datami/smi/c/d;->g:[B

    const/16 v8, 0x20c

    aget-byte v6, v6, v8

    neg-int v6, v6

    sget-object v8, Lcom/datami/smi/c/d;->g:[B

    const/16 v9, 0x65

    aget-byte v8, v8, v9

    invoke-static {v2, v6, v8}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/datami/smi/d/c;->c:Lcom/datami/smi/d/c;

    invoke-static {v6}, Lcom/datami/smi/d/a;->a(Lcom/datami/smi/d/c;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v2, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/datami/smi/d/d;->a:Lcom/datami/smi/d/d;

    invoke-static {v2}, Lcom/datami/smi/d/a;->a(Lcom/datami/smi/d/d;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v7}, Lcom/datami/smi/b/m;->b(Ljava/lang/String;Ljava/util/Properties;)V

    sget v2, Lcom/datami/smi/c/d;->h:I

    or-int/lit8 v2, v2, 0x41

    sget-object v6, Lcom/datami/smi/c/d;->g:[B

    const/16 v7, 0xb2

    aget-byte v6, v6, v7

    add-int/lit8 v6, v6, 0x1

    sget-object v7, Lcom/datami/smi/c/d;->g:[B

    const/16 v8, 0xc5

    aget-byte v7, v7, v8

    invoke-static {v2, v6, v7}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    sget v2, Lcom/datami/smi/c/d;->h:I

    and-int/lit16 v2, v2, 0x3c7

    sget-object v6, Lcom/datami/smi/c/d;->g:[B

    const/16 v7, 0xc

    aget-byte v6, v6, v7

    sget-object v7, Lcom/datami/smi/c/d;->g:[B

    const/16 v8, 0x1f

    aget-byte v7, v7, v8

    invoke-static {v2, v6, v7}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-object v13, v3

    :goto_8
    if-eqz v13, :cond_12

    const/4 v2, 0x0

    :try_start_9
    sget-object v3, Lcom/datami/smi/c/d;->g:[B

    const/16 v6, 0xc

    aget-byte v3, v3, v6

    sget-object v6, Lcom/datami/smi/c/d;->g:[B

    const/16 v7, 0x104

    aget-byte v6, v6, v7

    sget-object v7, Lcom/datami/smi/c/d;->g:[B

    const/16 v8, 0x49

    aget-byte v7, v7, v8

    invoke-static {v3, v6, v7}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    sget-object v3, Lcom/datami/smi/c/d;->g:[B

    const/16 v6, 0xc

    aget-byte v3, v3, v6

    sget-object v6, Lcom/datami/smi/c/d;->g:[B

    const/16 v7, 0x104

    aget-byte v6, v6, v7

    sget-object v7, Lcom/datami/smi/c/d;->g:[B

    const/16 v8, 0x49

    aget-byte v7, v7, v8

    invoke-static {v3, v6, v7}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/datami/smi/c/d;->d:I

    sget v3, Lcom/datami/smi/c/d;->h:I

    or-int/lit8 v3, v3, 0x41

    sget-object v6, Lcom/datami/smi/c/d;->g:[B

    const/16 v7, 0xb2

    aget-byte v6, v6, v7

    add-int/lit8 v6, v6, 0x1

    sget-object v7, Lcom/datami/smi/c/d;->g:[B

    const/16 v8, 0xc5

    aget-byte v7, v7, v8

    invoke-static {v3, v6, v7}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x190

    sget-object v8, Lcom/datami/smi/c/d;->g:[B

    const/16 v9, 0x17b

    aget-byte v8, v8, v9

    neg-int v8, v8

    sget-object v9, Lcom/datami/smi/c/d;->g:[B

    const/16 v10, 0x1f

    aget-byte v9, v9, v10

    invoke-static {v7, v8, v9}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/datami/smi/c/d;->d:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    sget-object v3, Lcom/datami/smi/c/d;->g:[B

    const/16 v6, 0x29

    aget-byte v3, v3, v6

    sget-object v6, Lcom/datami/smi/c/d;->g:[B

    const/16 v7, 0x104

    aget-byte v6, v6, v7

    add-int/lit8 v6, v6, -0x1

    sget-object v7, Lcom/datami/smi/c/d;->g:[B

    const/16 v8, 0x49

    aget-byte v7, v7, v8

    invoke-static {v3, v6, v7}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    sget-object v3, Lcom/datami/smi/c/d;->g:[B

    const/16 v6, 0x29

    aget-byte v3, v3, v6

    sget-object v6, Lcom/datami/smi/c/d;->g:[B

    const/16 v7, 0x104

    aget-byte v6, v6, v7

    add-int/lit8 v6, v6, -0x1

    sget-object v7, Lcom/datami/smi/c/d;->g:[B

    const/16 v8, 0x49

    aget-byte v7, v7, v8

    invoke-static {v3, v6, v7}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_2

    move-result-object v2

    :cond_11
    :goto_9
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/datami/smi/c/d;->a(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    const/16 v3, 0x129

    sget-object v6, Lcom/datami/smi/c/d;->g:[B

    const/16 v7, 0x96

    aget-byte v6, v6, v7

    neg-int v6, v6

    sget-object v7, Lcom/datami/smi/c/d;->g:[B

    const/16 v8, 0x31

    aget-byte v7, v7, v8

    invoke-static {v3, v6, v7}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x1c3

    sget-object v6, Lcom/datami/smi/c/d;->g:[B

    const/16 v7, 0x20c

    aget-byte v6, v6, v7

    neg-int v6, v6

    sget-object v7, Lcom/datami/smi/c/d;->g:[B

    const/16 v8, 0x65

    aget-byte v7, v7, v8

    invoke-static {v3, v6, v7}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/datami/smi/d/c;->b:Lcom/datami/smi/d/c;

    invoke-static {v6}, Lcom/datami/smi/d/a;->a(Lcom/datami/smi/d/c;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/datami/smi/d/d;->a:Lcom/datami/smi/d/d;

    invoke-static {v3}, Lcom/datami/smi/d/a;->a(Lcom/datami/smi/d/d;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/datami/smi/b/m;->b(Ljava/lang/String;Ljava/util/Properties;)V

    :cond_12
    const/16 v2, 0x3e7

    move-object/from16 v0, p0

    iget v3, v0, Lcom/datami/smi/c/d;->d:I

    if-eq v2, v3, :cond_13

    const/16 v2, 0x3e8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/datami/smi/c/d;->d:I

    if-eq v2, v3, :cond_13

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/datami/smi/c/d;->d:I

    if-eq v2, v3, :cond_13

    const/4 v2, -0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/datami/smi/c/d;->d:I

    if-ne v2, v3, :cond_17

    :cond_13
    add-int/lit8 v2, v12, 0x1

    move v12, v2

    move-wide v2, v4

    goto/16 :goto_0

    :cond_14
    :try_start_a
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto/16 :goto_5

    :cond_15
    const/4 v3, 0x0

    sput v3, Lcom/datami/smi/c/c;->d:I

    sget v3, Lcom/datami/smi/c/d;->h:I

    or-int/lit8 v3, v3, 0x41

    sget-object v4, Lcom/datami/smi/c/d;->g:[B

    const/16 v5, 0xb2

    aget-byte v4, v4, v5

    add-int/lit8 v4, v4, 0x1

    sget-object v5, Lcom/datami/smi/c/d;->g:[B

    const/16 v6, 0xc5

    aget-byte v5, v5, v6

    invoke-static {v3, v4, v5}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x20c

    sget-object v6, Lcom/datami/smi/c/d;->g:[B

    const/16 v7, 0xc5

    aget-byte v6, v6, v7

    sget-object v7, Lcom/datami/smi/c/d;->g:[B

    const/16 v8, 0x1f

    aget-byte v7, v7, v8

    invoke-static {v5, v6, v7}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    move-wide v4, v14

    goto/16 :goto_8

    :cond_16
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto/16 :goto_7

    :catch_2
    move-exception v3

    sget v3, Lcom/datami/smi/c/d;->h:I

    or-int/lit8 v3, v3, 0x41

    sget-object v6, Lcom/datami/smi/c/d;->g:[B

    const/16 v7, 0xb2

    aget-byte v6, v6, v7

    add-int/lit8 v6, v6, 0x1

    sget-object v7, Lcom/datami/smi/c/d;->g:[B

    const/16 v8, 0xc5

    aget-byte v7, v7, v8

    invoke-static {v3, v6, v7}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    const/16 v3, 0x24f

    sget-object v6, Lcom/datami/smi/c/d;->g:[B

    const/16 v7, 0xd

    aget-byte v6, v6, v7

    sget-object v7, Lcom/datami/smi/c/d;->g:[B

    const/16 v8, 0x1f

    aget-byte v7, v7, v8

    invoke-static {v3, v6, v7}, Lcom/datami/smi/c/d;->a(III)Ljava/lang/String;

    goto/16 :goto_9

    :catch_3
    move-exception v4

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    move-wide v4, v2

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    goto/16 :goto_6

    :catch_4
    move-exception v2

    move-object v3, v5

    move-wide v4, v14

    goto/16 :goto_6

    :cond_17
    move-wide v2, v4

    goto/16 :goto_1
.end method
