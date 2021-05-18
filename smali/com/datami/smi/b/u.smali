.class public final Lcom/datami/smi/b/u;
.super Ljava/util/TimerTask;


# static fields
.field private static final c:[B

.field private static d:I


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/datami/smi/b/w;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x73

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/datami/smi/b/u;->c:[B

    const/16 v0, 0x4d

    sput v0, Lcom/datami/smi/b/u;->d:I

    return-void

    :array_0
    .array-data 1
        0x77t
        -0x3ct
        -0x29t
        -0x69t
        -0x10t
        -0x5t
        0x3t
        0x1t
        -0x11t
        0x9t
        0x3t
        -0x5t
        0x7t
        0x47t
        -0x26t
        -0xft
        0x5t
        0x30t
        -0x32t
        -0x13t
        0x4t
        -0x14t
        0x1t
        0xct
        -0x7t
        -0x3t
        0x9t
        -0xat
        0x12t
        -0x13t
        0xbt
        -0x6t
        0x1t
        -0xft
        0x0t
        -0xft
        0xct
        0xft
        -0x1bt
        0x1et
        -0x14t
        0x1t
        0xct
        -0x2bt
        0x54t
        -0x49t
        -0xat
        0x53t
        -0x54t
        0xbt
        -0x4t
        0x8t
        0x45t
        -0x54t
        0x5t
        0x4ft
        -0x52t
        0xdt
        0x4t
        -0x14t
        0x1t
        0xct
        -0x1at
        0x4t
        0x23t
        -0x2ft
        0x5t
        0x1et
        -0x13t
        0x4t
        -0x14t
        0x1t
        0xct
        -0x7t
        -0x3t
        0x9t
        -0xat
        0x12t
        -0x13t
        0xbt
        -0x6t
        0x1t
        0x4et
        -0x34t
        -0xdt
        -0x12t
        0x8t
        0x4bt
        -0x49t
        -0xat
        0x53t
        -0x46t
        -0x3t
        -0x9t
        0xdt
        0x1t
        0x43t
        -0x9t
        -0x9t
        0x4t
        0xct
        0xat
        -0x1at
        0x4t
        0x16t
        -0x11t
        -0x7t
        0x17t
        -0x15t
        -0x4t
        0x8t
        -0xdt
        -0x1t
        0x1t
        0x11t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    iput-object p1, p0, Lcom/datami/smi/b/u;->a:Landroid/content/Context;

    packed-switch p2, :pswitch_data_0

    sget-object v0, Lcom/datami/smi/b/w;->d:Lcom/datami/smi/b/w;

    :goto_0
    iput-object v0, p0, Lcom/datami/smi/b/u;->b:Lcom/datami/smi/b/w;

    return-void

    :pswitch_0
    sget-object v0, Lcom/datami/smi/b/w;->a:Lcom/datami/smi/b/w;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/datami/smi/b/w;->b:Lcom/datami/smi/b/w;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/datami/smi/b/w;->c:Lcom/datami/smi/b/w;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static a(Lcom/datami/smi/b/w;)I
    .locals 2

    sget-object v0, Lcom/datami/smi/b/v;->a:[I

    invoke-virtual {p0}, Lcom/datami/smi/b/w;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x7

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x6

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static a(I)Lcom/datami/smi/b/w;
    .locals 1

    packed-switch p0, :pswitch_data_0

    sget-object v0, Lcom/datami/smi/b/w;->d:Lcom/datami/smi/b/w;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/datami/smi/b/w;->a:Lcom/datami/smi/b/w;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/datami/smi/b/w;->b:Lcom/datami/smi/b/w;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/datami/smi/b/w;->c:Lcom/datami/smi/b/w;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static a(III)Ljava/lang/String;
    .locals 9

    const/4 v4, 0x0

    add-int/lit8 v3, p2, 0x3

    rsub-int/lit8 v1, p0, 0x71

    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x41

    sget-object v6, Lcom/datami/smi/b/u;->c:[B

    new-instance v7, Ljava/lang/String;

    new-array v2, v3, [B

    add-int/lit8 v8, v3, -0x1

    if-nez v6, :cond_1

    move v3, v4

    move v5, v1

    :goto_0
    neg-int v0, v0

    add-int/2addr v1, v0

    add-int/lit8 v5, v5, 0x1

    :goto_1
    int-to-byte v0, v1

    aput-byte v0, v2, v3

    if-ne v3, v8, :cond_0

    invoke-direct {v7, v2, v4}, Ljava/lang/String;-><init>([BI)V

    return-object v7

    :cond_0
    aget-byte v0, v6, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v4

    move v5, v1

    move v1, v0

    goto :goto_1
.end method

.method private a()Z
    .locals 9

    const/4 v8, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v6, 0x65

    const/16 v7, 0x22

    sget-object v2, Lcom/datami/smi/b/v;->a:[I

    iget-object v3, p0, Lcom/datami/smi/b/u;->b:Lcom/datami/smi/b/w;

    invoke-virtual {v3}, Lcom/datami/smi/b/w;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-static {}, Lcom/datami/smi/b/m;->u()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    sget-object v3, Lcom/datami/smi/b/u;->c:[B

    aget-byte v3, v3, v7

    sget-object v4, Lcom/datami/smi/b/u;->c:[B

    aget-byte v4, v4, v6

    sget-object v5, Lcom/datami/smi/b/u;->c:[B

    aget-byte v5, v5, v7

    invoke-static {v3, v4, v5}, Lcom/datami/smi/b/u;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-direct {v3}, Ljava/util/GregorianCalendar;-><init>()V

    sget-object v4, Lcom/datami/smi/b/u;->c:[B

    aget-byte v4, v4, v7

    sget-object v5, Lcom/datami/smi/b/u;->c:[B

    aget-byte v5, v5, v6

    sget-object v6, Lcom/datami/smi/b/u;->c:[B

    aget-byte v6, v6, v7

    invoke-static {v4, v5, v6}, Lcom/datami/smi/b/u;->a(III)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_1
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-static {}, Lcom/datami/smi/b/m;->u()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    sget-object v3, Lcom/datami/smi/b/u;->c:[B

    aget-byte v3, v3, v7

    sget-object v4, Lcom/datami/smi/b/u;->c:[B

    aget-byte v4, v4, v6

    sget-object v5, Lcom/datami/smi/b/u;->c:[B

    aget-byte v5, v5, v7

    invoke-static {v3, v4, v5}, Lcom/datami/smi/b/u;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-direct {v3}, Ljava/util/GregorianCalendar;-><init>()V

    sget-object v4, Lcom/datami/smi/b/u;->c:[B

    aget-byte v4, v4, v7

    sget-object v5, Lcom/datami/smi/b/u;->c:[B

    aget-byte v5, v5, v6

    sget-object v6, Lcom/datami/smi/b/u;->c:[B

    aget-byte v6, v6, v7

    invoke-static {v4, v5, v6}, Lcom/datami/smi/b/u;->a(III)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_0

    move v0, v1

    goto/16 :goto_0

    :pswitch_2
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-static {}, Lcom/datami/smi/b/m;->u()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    sget-object v3, Lcom/datami/smi/b/u;->c:[B

    aget-byte v3, v3, v7

    sget-object v4, Lcom/datami/smi/b/u;->c:[B

    aget-byte v4, v4, v6

    sget-object v5, Lcom/datami/smi/b/u;->c:[B

    aget-byte v5, v5, v7

    invoke-static {v3, v4, v5}, Lcom/datami/smi/b/u;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-direct {v3}, Ljava/util/GregorianCalendar;-><init>()V

    sget-object v4, Lcom/datami/smi/b/u;->c:[B

    aget-byte v4, v4, v7

    sget-object v5, Lcom/datami/smi/b/u;->c:[B

    aget-byte v5, v5, v6

    sget-object v6, Lcom/datami/smi/b/u;->c:[B

    aget-byte v6, v6, v7

    invoke-static {v4, v5, v6}, Lcom/datami/smi/b/u;->a(III)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_0

    move v0, v1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static b()Z
    .locals 7

    const/16 v4, 0x65

    const/4 v6, 0x6

    const/16 v5, 0x22

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-static {}, Lcom/datami/smi/b/m;->u()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    sget-object v1, Lcom/datami/smi/b/u;->c:[B

    aget-byte v1, v1, v5

    sget-object v2, Lcom/datami/smi/b/u;->c:[B

    aget-byte v2, v2, v4

    sget-object v3, Lcom/datami/smi/b/u;->c:[B

    aget-byte v3, v3, v5

    invoke-static {v1, v2, v3}, Lcom/datami/smi/b/u;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    sget-object v2, Lcom/datami/smi/b/u;->c:[B

    aget-byte v2, v2, v5

    sget-object v3, Lcom/datami/smi/b/u;->c:[B

    aget-byte v3, v3, v4

    sget-object v4, Lcom/datami/smi/b/u;->c:[B

    aget-byte v4, v4, v5

    invoke-static {v2, v3, v4}, Lcom/datami/smi/b/u;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c()Z
    .locals 7

    const/16 v4, 0x65

    const/4 v6, 0x3

    const/16 v5, 0x22

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-static {}, Lcom/datami/smi/b/m;->u()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    sget-object v1, Lcom/datami/smi/b/u;->c:[B

    aget-byte v1, v1, v5

    sget-object v2, Lcom/datami/smi/b/u;->c:[B

    aget-byte v2, v2, v4

    sget-object v3, Lcom/datami/smi/b/u;->c:[B

    aget-byte v3, v3, v5

    invoke-static {v1, v2, v3}, Lcom/datami/smi/b/u;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    sget-object v2, Lcom/datami/smi/b/u;->c:[B

    aget-byte v2, v2, v5

    sget-object v3, Lcom/datami/smi/b/u;->c:[B

    aget-byte v3, v3, v4

    sget-object v4, Lcom/datami/smi/b/u;->c:[B

    aget-byte v4, v4, v5

    invoke-static {v2, v3, v4}, Lcom/datami/smi/b/u;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static d()Z
    .locals 7

    const/16 v4, 0x65

    const/4 v6, 0x2

    const/16 v5, 0x22

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-static {}, Lcom/datami/smi/b/m;->u()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    sget-object v1, Lcom/datami/smi/b/u;->c:[B

    aget-byte v1, v1, v5

    sget-object v2, Lcom/datami/smi/b/u;->c:[B

    aget-byte v2, v2, v4

    sget-object v3, Lcom/datami/smi/b/u;->c:[B

    aget-byte v3, v3, v5

    invoke-static {v1, v2, v3}, Lcom/datami/smi/b/u;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    sget-object v2, Lcom/datami/smi/b/u;->c:[B

    aget-byte v2, v2, v5

    sget-object v3, Lcom/datami/smi/b/u;->c:[B

    aget-byte v3, v3, v4

    sget-object v4, Lcom/datami/smi/b/u;->c:[B

    aget-byte v4, v4, v5

    invoke-static {v2, v3, v4}, Lcom/datami/smi/b/u;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final run()V
    .locals 9

    const/4 v1, 0x1

    const/4 v0, 0x4

    const/4 v2, 0x0

    const/16 v7, 0x65

    const/16 v8, 0x22

    sget-object v3, Lcom/datami/smi/b/u;->c:[B

    aget-byte v3, v3, v0

    neg-int v3, v3

    sget-object v4, Lcom/datami/smi/b/u;->c:[B

    const/16 v5, 0x39

    aget-byte v4, v4, v5

    add-int/lit8 v5, v4, 0x1

    invoke-static {v3, v4, v5}, Lcom/datami/smi/b/u;->a(III)Ljava/lang/String;

    const/16 v3, 0x33

    sget-object v4, Lcom/datami/smi/b/u;->c:[B

    const/16 v5, 0x9

    aget-byte v4, v4, v5

    const/16 v5, 0x21

    invoke-static {v3, v4, v5}, Lcom/datami/smi/b/u;->a(III)Ljava/lang/String;

    sget-object v3, Lcom/datami/smi/b/v;->a:[I

    iget-object v4, p0, Lcom/datami/smi/b/u;->b:Lcom/datami/smi/b/w;

    invoke-virtual {v4}, Lcom/datami/smi/b/w;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    move v1, v2

    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    sget-object v1, Lcom/datami/smi/b/u;->c:[B

    aget-byte v0, v1, v0

    neg-int v0, v0

    sget-object v1, Lcom/datami/smi/b/u;->c:[B

    const/16 v2, 0x39

    aget-byte v1, v1, v2

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v1, v2}, Lcom/datami/smi/b/u;->a(III)Ljava/lang/String;

    sget-object v0, Lcom/datami/smi/b/u;->c:[B

    const/16 v1, 0x5b

    aget-byte v0, v0, v1

    neg-int v0, v0

    sget-object v1, Lcom/datami/smi/b/u;->c:[B

    const/16 v2, 0x14

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/b/u;->c:[B

    const/16 v3, 0x72

    aget-byte v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/b/u;->a(III)Ljava/lang/String;

    iget-object v0, p0, Lcom/datami/smi/b/u;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/datami/smi/b/u;->a:Landroid/content/Context;

    const-class v2, Lcom/datami/smi/SmiIntentService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget v1, Lcom/datami/smi/b/u;->d:I

    add-int/lit8 v1, v1, 0x3

    sget-object v2, Lcom/datami/smi/b/u;->c:[B

    aget-byte v2, v2, v8

    sget-object v3, Lcom/datami/smi/b/u;->c:[B

    const/16 v4, 0x33

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/b/u;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/datami/smi/b/f;->e:Lcom/datami/smi/b/f;

    sput-object v1, Lcom/datami/smi/b/m;->l:Lcom/datami/smi/b/f;

    iget-object v1, p0, Lcom/datami/smi/b/u;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1
    :goto_1
    return-void

    :pswitch_0
    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-direct {v3}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-static {}, Lcom/datami/smi/b/m;->u()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    sget-object v4, Lcom/datami/smi/b/u;->c:[B

    aget-byte v4, v4, v8

    sget-object v5, Lcom/datami/smi/b/u;->c:[B

    aget-byte v5, v5, v7

    sget-object v6, Lcom/datami/smi/b/u;->c:[B

    aget-byte v6, v6, v8

    invoke-static {v4, v5, v6}, Lcom/datami/smi/b/u;->a(III)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v4, Ljava/util/GregorianCalendar;

    invoke-direct {v4}, Ljava/util/GregorianCalendar;-><init>()V

    sget-object v5, Lcom/datami/smi/b/u;->c:[B

    aget-byte v5, v5, v8

    sget-object v6, Lcom/datami/smi/b/u;->c:[B

    aget-byte v6, v6, v7

    sget-object v7, Lcom/datami/smi/b/u;->c:[B

    aget-byte v7, v7, v8

    invoke-static {v5, v6, v7}, Lcom/datami/smi/b/u;->a(III)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    const/4 v5, 0x6

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v3, v4, :cond_0

    move v1, v2

    goto/16 :goto_0

    :pswitch_1
    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-direct {v3}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-static {}, Lcom/datami/smi/b/m;->u()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    sget-object v4, Lcom/datami/smi/b/u;->c:[B

    aget-byte v4, v4, v8

    sget-object v5, Lcom/datami/smi/b/u;->c:[B

    aget-byte v5, v5, v7

    sget-object v6, Lcom/datami/smi/b/u;->c:[B

    aget-byte v6, v6, v8

    invoke-static {v4, v5, v6}, Lcom/datami/smi/b/u;->a(III)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v4, Ljava/util/GregorianCalendar;

    invoke-direct {v4}, Ljava/util/GregorianCalendar;-><init>()V

    sget-object v5, Lcom/datami/smi/b/u;->c:[B

    aget-byte v5, v5, v8

    sget-object v6, Lcom/datami/smi/b/u;->c:[B

    aget-byte v6, v6, v7

    sget-object v7, Lcom/datami/smi/b/u;->c:[B

    aget-byte v7, v7, v8

    invoke-static {v5, v6, v7}, Lcom/datami/smi/b/u;->a(III)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v3, v4, :cond_0

    move v1, v2

    goto/16 :goto_0

    :pswitch_2
    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-direct {v3}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-static {}, Lcom/datami/smi/b/m;->u()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    sget-object v4, Lcom/datami/smi/b/u;->c:[B

    aget-byte v4, v4, v8

    sget-object v5, Lcom/datami/smi/b/u;->c:[B

    aget-byte v5, v5, v7

    sget-object v6, Lcom/datami/smi/b/u;->c:[B

    aget-byte v6, v6, v8

    invoke-static {v4, v5, v6}, Lcom/datami/smi/b/u;->a(III)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v4, Ljava/util/GregorianCalendar;

    invoke-direct {v4}, Ljava/util/GregorianCalendar;-><init>()V

    sget-object v5, Lcom/datami/smi/b/u;->c:[B

    aget-byte v5, v5, v8

    sget-object v6, Lcom/datami/smi/b/u;->c:[B

    aget-byte v6, v6, v7

    sget-object v7, Lcom/datami/smi/b/u;->c:[B

    aget-byte v7, v7, v8

    invoke-static {v5, v6, v7}, Lcom/datami/smi/b/u;->a(III)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v3, v4, :cond_0

    move v1, v2

    goto/16 :goto_0

    :cond_2
    sget-object v1, Lcom/datami/smi/b/u;->c:[B

    aget-byte v1, v1, v0

    neg-int v1, v1

    sget-object v2, Lcom/datami/smi/b/u;->c:[B

    const/16 v3, 0x39

    aget-byte v2, v2, v3

    add-int/lit8 v3, v2, 0x1

    invoke-static {v1, v2, v3}, Lcom/datami/smi/b/u;->a(III)Ljava/lang/String;

    sget v1, Lcom/datami/smi/b/u;->d:I

    or-int/lit8 v1, v1, 0x20

    sget-object v2, Lcom/datami/smi/b/u;->c:[B

    const/16 v3, 0x9

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/b/u;->c:[B

    const/16 v4, 0x26

    aget-byte v3, v3, v4

    neg-int v3, v3

    invoke-static {v1, v2, v3}, Lcom/datami/smi/b/u;->a(III)Ljava/lang/String;

    new-instance v1, Lcom/datami/smi/b/u;

    iget-object v2, p0, Lcom/datami/smi/b/u;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/datami/smi/b/u;->b:Lcom/datami/smi/b/w;

    sget-object v4, Lcom/datami/smi/b/v;->a:[I

    invoke-virtual {v3}, Lcom/datami/smi/b/w;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_1

    const/4 v0, 0x7

    :goto_2
    :pswitch_3
    invoke-direct {v1, v2, v0}, Lcom/datami/smi/b/u;-><init>(Landroid/content/Context;I)V

    sget-object v0, Lcom/datami/smi/b/m;->a:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v2, 0x1e

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto/16 :goto_1

    :pswitch_4
    const/4 v0, 0x5

    goto :goto_2

    :pswitch_5
    const/4 v0, 0x6

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
