.class public final Lcom/datami/smi/d/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "1.0"

.field public static final b:Ljava/lang/String; = "[dmi]EventRegisterService"

.field public static final c:Ljava/lang/String; = "[dmi]SmiSdkTimers"

.field public static final d:Ljava/lang/String; = "SdApp"

.field private static final k:[B

.field private static l:I


# instance fields
.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/util/HashMap;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xd5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/datami/smi/d/a;->k:[B

    const/16 v0, 0xab

    sput v0, Lcom/datami/smi/d/a;->l:I

    return-void

    :array_0
    .array-data 1
        0x2at
        -0x56t
        -0x4at
        -0x62t
        0x20t
        0x4t
        0xat
        0x8t
        0xft
        -0x2t
        0x16t
        0x7t
        -0x8t
        0xet
        0x8t
        0x18t
        -0x6t
        0x1t
        0x9t
        -0x2t
        0x16t
        0xat
        0x21t
        0x3t
        -0xft
        0x18t
        0xet
        -0x36t
        0x4ct
        -0x8t
        0xet
        -0x1ft
        0x38t
        -0xat
        0x10t
        0xdt
        0x6t
        -0x4ct
        -0x7t
        0x18t
        0x13t
        0x5t
        0xat
        0x6t
        0x6t
        -0x2t
        0x10t
        0xdt
        0x18t
        0xet
        -0x15t
        0x5t
        0x2dt
        0x18t
        -0xat
        0x10t
        0xdt
        -0x29t
        0x28t
        0x16t
        -0xct
        0xft
        0xat
        0xet
        0x17t
        -0x7t
        0x14t
        0xbt
        -0x6t
        0x1t
        0x9t
        -0x4t
        0xbt
        -0x1t
        0x13t
        0x6t
        0x7t
        0xct
        -0x2t
        -0x4t
        0x9t
        -0x4t
        0x8t
        0xet
        0x2t
        0x18t
        -0x1ct
        0x36t
        0x7t
        0x2ct
        0xat
        -0x6t
        0x6t
        0x12t
        -0x21t
        0x2ct
        0x11t
        -0x9t
        0x13t
        0xet
        -0xat
        0x14t
        0xet
        0x27t
        0x9t
        0x11t
        0x3t
        0x10t
        0x10t
        0x3t
        -0x5t
        -0x3t
        0x21t
        0x3t
        -0xft
        0x18t
        0xet
        -0x10t
        0x1ct
        0xbt
        -0x1t
        0x14t
        0x8t
        0x16t
        0x2t
        0x2t
        0x3t
        0x1t
        0x10t
        0x24t
        -0xat
        0x13t
        0x4t
        0x1at
        -0xct
        0x38t
        -0xat
        0x10t
        0xdt
        -0x1bt
        0x1at
        0x9t
        0x9t
        0x11t
        0x8t
        -0x8t
        0x14t
        -0x3t
        0x7t
        0x11t
        0x8t
        -0x4t
        -0xat
        0x14t
        0x18t
        0xet
        -0x23t
        0x34t
        -0x6t
        0x12t
        0x14t
        0x2t
        -0x4t
        0x1t
        0x17t
        0x21t
        0x3t
        -0xft
        0x18t
        0xet
        -0x36t
        0x3et
        0x18t
        -0xat
        0x10t
        0xdt
        0x6t
        -0x4ct
        0x4t
        0x9t
        0x4t
        0x3t
        0xat
        0x8t
        0x14t
        0x10t
        0x10t
        0x3t
        -0x5t
        -0x11t
        0x38t
        -0xat
        0x10t
        0xdt
        -0x1bt
        0x1at
        0x9t
        0x9t
        0x11t
        0x8t
        -0x8t
        0x14t
        -0x18t
        0x19t
        0x14t
        0xbt
        -0x6t
        0x1t
        0x9t
        -0x5t
        0x11t
        0x1t
        0x8t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/datami/smi/d/a;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/datami/smi/d/a;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/datami/smi/d/a;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/datami/smi/d/a;->i:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/datami/smi/d/a;->j:Z

    iput-object p1, p0, Lcom/datami/smi/d/a;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/datami/smi/d/a;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/datami/smi/d/a;->g:Ljava/util/HashMap;

    iput-object p4, p0, Lcom/datami/smi/d/a;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/datami/smi/d/a;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/datami/smi/d/a;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/datami/smi/d/a;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/datami/smi/d/a;->i:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/datami/smi/d/a;->j:Z

    iput-object p1, p0, Lcom/datami/smi/d/a;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/datami/smi/d/a;->g:Ljava/util/HashMap;

    iput-object p2, p0, Lcom/datami/smi/d/a;->f:Ljava/lang/String;

    iput-object p4, p0, Lcom/datami/smi/d/a;->h:Ljava/lang/String;

    iput-object p5, p0, Lcom/datami/smi/d/a;->i:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/datami/smi/d/a;->j:Z

    return-void
.end method

.method private static a(III)Ljava/lang/String;
    .locals 9

    const/4 v4, 0x0

    add-int/lit8 v0, p2, 0x30

    add-int/lit8 v3, p0, 0x1

    sget-object v6, Lcom/datami/smi/d/a;->k:[B

    new-instance v7, Ljava/lang/String;

    rsub-int v1, p1, 0xd4

    new-array v2, v3, [B

    add-int/lit8 v8, v3, -0x1

    if-nez v6, :cond_1

    move v3, v4

    move v5, v1

    :goto_0
    add-int/2addr v0, v1

    add-int/lit8 v1, v0, -0x7

    add-int/lit8 v5, v5, 0x1

    move v0, v3

    :goto_1
    int-to-byte v3, v1

    aput-byte v3, v2, v0

    add-int/lit8 v3, v0, 0x1

    if-ne v0, v8, :cond_0

    invoke-direct {v7, v2, v4}, Ljava/lang/String;-><init>([BI)V

    return-object v7

    :cond_0
    aget-byte v0, v6, v5

    goto :goto_0

    :cond_1
    move v5, v1

    move v1, v0

    move v0, v4

    goto :goto_1
.end method

.method public static a(Lcom/datami/smi/d/c;)Ljava/lang/String;
    .locals 4

    const/16 v3, 0x11

    sget-object v0, Lcom/datami/smi/d/b;->b:[I

    invoke-virtual {p0}, Lcom/datami/smi/d/c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/datami/smi/d/a;->k:[B

    aget-byte v0, v0, v3

    add-int/lit8 v0, v0, -0x1

    or-int/lit16 v1, v0, 0xc8

    sget-object v2, Lcom/datami/smi/d/a;->k:[B

    aget-byte v2, v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/datami/smi/d/a;->a(III)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/datami/smi/d/a;->k:[B

    aget-byte v0, v0, v3

    add-int/lit8 v0, v0, -0x1

    or-int/lit16 v1, v0, 0xc8

    sget-object v2, Lcom/datami/smi/d/a;->k:[B

    const/16 v3, 0x54

    aget-byte v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/d/a;->a(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/datami/smi/d/a;->k:[B

    aget-byte v0, v0, v3

    add-int/lit8 v0, v0, -0x1

    or-int/lit16 v1, v0, 0xc8

    sget-object v2, Lcom/datami/smi/d/a;->k:[B

    const/4 v3, 0x5

    aget-byte v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/d/a;->a(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/datami/smi/d/a;->k:[B

    aget-byte v0, v0, v3

    add-int/lit8 v0, v0, -0x1

    or-int/lit16 v1, v0, 0xc8

    sget-object v2, Lcom/datami/smi/d/a;->k:[B

    const/16 v3, 0x29

    aget-byte v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/d/a;->a(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Lcom/datami/smi/d/d;)Ljava/lang/String;
    .locals 6

    const/16 v5, 0x9c

    const/16 v4, 0x81

    const/16 v3, 0x40

    sget-object v0, Lcom/datami/smi/d/b;->a:[I

    invoke-virtual {p0}, Lcom/datami/smi/d/d;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/datami/smi/d/a;->k:[B

    const/16 v1, 0x24

    aget-byte v0, v0, v1

    const/16 v1, 0xd0

    sget-object v2, Lcom/datami/smi/d/a;->k:[B

    aget-byte v2, v2, v4

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/datami/smi/d/a;->a(III)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/datami/smi/d/a;->k:[B

    const/16 v1, 0xd

    aget-byte v0, v0, v1

    const/16 v1, 0x7b

    sget-object v2, Lcom/datami/smi/d/a;->k:[B

    aget-byte v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/d/a;->a(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/datami/smi/d/a;->k:[B

    const/16 v1, 0x17

    aget-byte v0, v0, v1

    or-int/lit8 v1, v0, 0x50

    sget-object v2, Lcom/datami/smi/d/a;->k:[B

    aget-byte v2, v2, v4

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/datami/smi/d/a;->a(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/datami/smi/d/a;->k:[B

    const/4 v1, 0x5

    aget-byte v0, v0, v1

    or-int/lit8 v1, v0, 0x69

    sget-object v2, Lcom/datami/smi/d/a;->k:[B

    const/16 v3, 0x60

    aget-byte v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/d/a;->a(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/datami/smi/d/a;->k:[B

    const/16 v1, 0x4d

    aget-byte v0, v0, v1

    or-int/lit8 v1, v0, 0x41

    sget-object v2, Lcom/datami/smi/d/a;->k:[B

    const/16 v3, 0x32

    aget-byte v2, v2, v3

    neg-int v2, v2

    invoke-static {v0, v1, v2}, Lcom/datami/smi/d/a;->a(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/datami/smi/d/a;->k:[B

    const/16 v1, 0x54

    aget-byte v0, v0, v1

    const/16 v1, 0x59

    sget-object v2, Lcom/datami/smi/d/a;->k:[B

    const/16 v3, 0xa

    aget-byte v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/d/a;->a(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/datami/smi/d/a;->k:[B

    const/16 v1, 0x11

    aget-byte v0, v0, v1

    const/16 v1, 0x94

    sget-object v2, Lcom/datami/smi/d/a;->k:[B

    aget-byte v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/d/a;->a(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/datami/smi/d/a;->k:[B

    const/16 v1, 0x29

    aget-byte v0, v0, v1

    const/16 v1, 0xa4

    sget-object v2, Lcom/datami/smi/d/a;->k:[B

    aget-byte v2, v2, v5

    neg-int v2, v2

    invoke-static {v0, v1, v2}, Lcom/datami/smi/d/a;->a(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    sget-object v0, Lcom/datami/smi/d/a;->k:[B

    const/16 v1, 0x43

    aget-byte v0, v0, v1

    const/16 v1, 0x3a

    sget-object v2, Lcom/datami/smi/d/a;->k:[B

    aget-byte v2, v2, v5

    neg-int v2, v2

    invoke-static {v0, v1, v2}, Lcom/datami/smi/d/a;->a(III)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static a()Lorg/json/JSONObject;
    .locals 15

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    sget-object v3, Lcom/datami/smi/d/a;->k:[B

    const/16 v4, 0x11

    aget-byte v3, v3, v4

    sget v4, Lcom/datami/smi/d/a;->l:I

    and-int/lit16 v4, v4, 0x3c0

    sget-object v5, Lcom/datami/smi/d/a;->k:[B

    const/16 v6, 0x20

    aget-byte v5, v5, v6

    add-int/lit8 v5, v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/datami/smi/d/a;->a(III)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/datami/smi/c/e;->b:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v3, Lcom/datami/smi/d/a;->k:[B

    const/16 v4, 0x54

    aget-byte v3, v3, v4

    or-int/lit16 v4, v3, 0xc8

    const/16 v5, 0x31

    invoke-static {v3, v4, v5}, Lcom/datami/smi/d/a;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    sget-object v3, Lcom/datami/smi/d/a;->k:[B

    const/16 v4, 0x11

    aget-byte v3, v3, v4

    add-int/lit8 v4, v3, -0x1

    or-int/lit8 v5, v4, 0x3f

    invoke-static {v3, v4, v5}, Lcom/datami/smi/d/a;->a(III)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/datami/smi/c/e;->d:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v3, Lcom/datami/smi/d/a;->k:[B

    const/16 v4, 0x29

    aget-byte v3, v3, v4

    const/16 v4, 0x41

    const/16 v5, 0x3d

    invoke-static {v3, v4, v5}, Lcom/datami/smi/d/a;->a(III)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/datami/smi/c/e;->c:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v3, Lcom/datami/smi/d/a;->k:[B

    const/16 v4, 0x17

    aget-byte v3, v3, v4

    const/16 v4, 0xc1

    sget-object v5, Lcom/datami/smi/d/a;->k:[B

    const/16 v6, 0xab

    aget-byte v5, v5, v6

    invoke-static {v3, v4, v5}, Lcom/datami/smi/d/a;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    sget-object v3, Lcom/datami/smi/d/a;->k:[B

    const/16 v4, 0x11

    aget-byte v3, v3, v4

    sget v4, Lcom/datami/smi/d/a;->l:I

    and-int/lit16 v4, v4, 0x3c0

    sget-object v5, Lcom/datami/smi/d/a;->k:[B

    const/16 v6, 0x20

    aget-byte v5, v5, v6

    add-int/lit8 v5, v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/datami/smi/d/a;->a(III)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/datami/smi/c/e;->e:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v3, Lcom/datami/smi/d/a;->k:[B

    const/16 v4, 0x17

    aget-byte v3, v3, v4

    sget-object v4, Lcom/datami/smi/d/a;->k:[B

    const/16 v5, 0xab

    aget-byte v4, v4, v5

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v3, v4}, Lcom/datami/smi/d/a;->a(III)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v3, Lcom/datami/smi/d/a;->k:[B

    const/4 v4, 0x5

    aget-byte v3, v3, v4

    or-int/lit16 v4, v3, 0x80

    sget-object v5, Lcom/datami/smi/d/a;->k:[B

    const/16 v6, 0xab

    aget-byte v5, v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v4, v5}, Lcom/datami/smi/d/a;->a(III)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v3, Lcom/datami/smi/d/a;->k:[B

    const/16 v4, 0x29

    aget-byte v3, v3, v4

    const/16 v4, 0xc6

    sget-object v5, Lcom/datami/smi/d/a;->k:[B

    const/16 v6, 0x9d

    aget-byte v5, v5, v6

    invoke-static {v3, v4, v5}, Lcom/datami/smi/d/a;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/datami/smi/d/a;->k:[B

    const/16 v3, 0x29

    aget-byte v1, v1, v3

    sget-object v3, Lcom/datami/smi/d/a;->k:[B

    const/4 v4, 0x4

    aget-byte v3, v3, v4

    sget-object v4, Lcom/datami/smi/d/a;->k:[B

    const/16 v5, 0x20

    aget-byte v4, v4, v5

    invoke-static {v1, v3, v4}, Lcom/datami/smi/d/a;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    sget-object v0, Lcom/datami/smi/d/a;->k:[B

    const/16 v1, 0xf

    aget-byte v0, v0, v1

    sget-object v1, Lcom/datami/smi/d/a;->k:[B

    const/16 v4, 0x8b

    aget-byte v1, v1, v4

    neg-int v1, v1

    sget v4, Lcom/datami/smi/d/a;->l:I

    and-int/lit8 v4, v4, 0x7f

    invoke-static {v0, v1, v4}, Lcom/datami/smi/d/a;->a(III)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/datami/smi/d/a;->k:[B

    const/16 v4, 0x22

    aget-byte v1, v1, v4

    or-int/lit16 v4, v1, 0xae

    sget-object v5, Lcom/datami/smi/d/a;->k:[B

    const/16 v6, 0x9c

    aget-byte v5, v5, v6

    neg-int v5, v5

    invoke-static {v1, v4, v5}, Lcom/datami/smi/d/a;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/datami/smi/b/m;->i:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/datami/smi/b/m;->i:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/datami/smi/d/a;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    sget-object v1, Lcom/datami/smi/d/a;->k:[B

    const/16 v6, 0x54

    aget-byte v1, v1, v6

    const/16 v6, 0x3c

    const/16 v7, 0x46

    invoke-static {v1, v6, v7}, Lcom/datami/smi/d/a;->a(III)Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lcom/datami/smi/d/a;->k:[B

    const/16 v7, 0x54

    aget-byte v6, v6, v7

    or-int/lit8 v7, v6, 0x20

    sget-object v8, Lcom/datami/smi/d/a;->k:[B

    const/16 v9, 0x11

    aget-byte v8, v8, v9

    invoke-static {v6, v7, v8}, Lcom/datami/smi/d/a;->a(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/datami/smi/d/a;->k:[B

    const/16 v6, 0x24

    aget-byte v1, v1, v6

    const/16 v6, 0x93

    const/16 v7, 0x43

    invoke-static {v1, v6, v7}, Lcom/datami/smi/d/a;->a(III)Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lcom/datami/smi/d/a;->k:[B

    const/4 v7, 0x5

    aget-byte v6, v6, v7

    or-int/lit8 v7, v6, 0x7b

    sget-object v8, Lcom/datami/smi/d/a;->k:[B

    const/16 v9, 0x9c

    aget-byte v8, v8, v9

    neg-int v8, v8

    invoke-static {v6, v7, v8}, Lcom/datami/smi/d/a;->a(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/datami/smi/d/a;->k:[B

    const/4 v6, 0x7

    aget-byte v1, v1, v6

    or-int/lit16 v6, v1, 0xa4

    sget-object v7, Lcom/datami/smi/d/a;->k:[B

    const/16 v8, 0x9d

    aget-byte v7, v7, v8

    add-int/lit8 v7, v7, -0x1

    invoke-static {v1, v6, v7}, Lcom/datami/smi/d/a;->a(III)Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lcom/datami/smi/d/a;->k:[B

    const/16 v7, 0x54

    aget-byte v6, v6, v7

    const/16 v7, 0xc8

    const/16 v8, 0x43

    invoke-static {v6, v7, v8}, Lcom/datami/smi/d/a;->a(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/datami/smi/d/a;->k:[B

    const/16 v6, 0x17

    aget-byte v1, v1, v6

    or-int/lit16 v6, v1, 0x84

    const/16 v7, 0x44

    invoke-static {v1, v6, v7}, Lcom/datami/smi/d/a;->a(III)Ljava/lang/String;

    move-result-object v1

    iget-object v6, v0, Lcom/datami/smi/d/a;->f:Ljava/lang/String;

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/datami/smi/d/a;->k:[B

    const/16 v6, 0x17

    aget-byte v1, v1, v6

    const/16 v6, 0x8d

    const/16 v7, 0x44

    invoke-static {v1, v6, v7}, Lcom/datami/smi/d/a;->a(III)Ljava/lang/String;

    move-result-object v1

    iget-object v6, v0, Lcom/datami/smi/d/a;->e:Ljava/lang/String;

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, v0, Lcom/datami/smi/d/a;->g:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    iget-object v8, v0, Lcom/datami/smi/d/a;->g:Ljava/util/HashMap;

    sget-object v1, Lcom/datami/smi/d/a;->k:[B

    const/16 v9, 0x54

    aget-byte v1, v1, v9

    or-int/lit16 v9, v1, 0xac

    const/16 v10, 0x43

    invoke-static {v1, v9, v10}, Lcom/datami/smi/d/a;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/datami/smi/d/a;->k:[B

    const/16 v9, 0x54

    aget-byte v1, v1, v9

    or-int/lit16 v9, v1, 0xac

    const/16 v10, 0x43

    invoke-static {v1, v9, v10}, Lcom/datami/smi/d/a;->a(III)Ljava/lang/String;

    move-result-object v1

    sget-object v9, Lcom/datami/smi/d/a;->k:[B

    const/16 v10, 0x54

    aget-byte v9, v9, v10

    or-int/lit16 v10, v9, 0xac

    const/16 v11, 0x43

    invoke-static {v9, v10, v11}, Lcom/datami/smi/d/a;->a(III)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/datami/smi/d/a;->k:[B

    const/16 v9, 0x54

    aget-byte v1, v1, v9

    or-int/lit16 v9, v1, 0xac

    const/16 v10, 0x43

    invoke-static {v1, v9, v10}, Lcom/datami/smi/d/a;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    sget-object v11, Lcom/datami/smi/d/a;->k:[B

    const/16 v12, 0x11

    aget-byte v11, v11, v12

    add-int/lit8 v11, v11, -0x1

    or-int/lit16 v12, v11, 0xac

    sget-object v13, Lcom/datami/smi/d/a;->k:[B

    const/16 v14, 0xab

    aget-byte v13, v13, v14

    invoke-static {v11, v12, v13}, Lcom/datami/smi/d/a;->a(III)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v11, Lcom/datami/smi/d/a;->k:[B

    const/16 v12, 0x11

    aget-byte v11, v11, v12

    add-int/lit8 v11, v11, -0x1

    or-int/lit16 v12, v11, 0xa4

    const/16 v13, 0x46

    invoke-static {v11, v12, v13}, Lcom/datami/smi/d/a;->a(III)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v11, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v7, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/datami/smi/d/a;->k:[B

    const/16 v8, 0x43

    aget-byte v1, v1, v8

    or-int/lit16 v8, v1, 0x94

    sget-object v9, Lcom/datami/smi/d/a;->k:[B

    const/16 v10, 0x57

    aget-byte v9, v9, v10

    add-int/lit8 v9, v9, -0x1

    invoke-static {v1, v8, v9}, Lcom/datami/smi/d/a;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    iget-object v1, v0, Lcom/datami/smi/d/a;->h:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/datami/smi/d/a;->k:[B

    const/4 v7, 0x5

    aget-byte v1, v1, v7

    or-int/lit8 v7, v1, 0x53

    and-int/lit16 v8, v7, 0x1ec

    invoke-static {v1, v7, v8}, Lcom/datami/smi/d/a;->a(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/datami/smi/d/a;->h:Ljava/lang/String;

    invoke-virtual {v6, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_2
    sget-object v0, Lcom/datami/smi/d/a;->k:[B

    const/16 v1, 0x17

    aget-byte v0, v0, v1

    const/16 v1, 0x50

    sget-object v7, Lcom/datami/smi/d/a;->k:[B

    const/16 v8, 0x9d

    aget-byte v7, v7, v8

    invoke-static {v0, v1, v7}, Lcom/datami/smi/d/a;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    sget-object v0, Lcom/datami/smi/d/a;->k:[B

    const/16 v1, 0x17

    aget-byte v0, v0, v1

    const/16 v1, 0x50

    sget-object v5, Lcom/datami/smi/d/a;->k:[B

    const/16 v6, 0x9d

    aget-byte v5, v5, v6

    invoke-static {v0, v1, v5}, Lcom/datami/smi/d/a;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    :cond_3
    sget-object v1, Lcom/datami/smi/d/a;->k:[B

    const/16 v7, 0x17

    aget-byte v1, v1, v7

    sget v7, Lcom/datami/smi/d/a;->l:I

    and-int/lit16 v7, v7, 0x3de

    sget-object v8, Lcom/datami/smi/d/a;->k:[B

    const/16 v9, 0x9d

    aget-byte v8, v8, v9

    add-int/lit8 v8, v8, -0x1

    invoke-static {v1, v7, v8}, Lcom/datami/smi/d/a;->a(III)Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, v0, Lcom/datami/smi/d/a;->j:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/datami/smi/d/a;->k:[B

    const/16 v7, 0x11

    aget-byte v0, v0, v7

    add-int/lit8 v0, v0, -0x1

    or-int/lit16 v7, v0, 0xa4

    const/16 v8, 0x47

    invoke-static {v0, v7, v8}, Lcom/datami/smi/d/a;->a(III)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v6, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_4
    sget-object v0, Lcom/datami/smi/d/a;->k:[B

    const/16 v7, 0x11

    aget-byte v0, v0, v7

    add-int/lit8 v0, v0, -0x1

    or-int/lit16 v7, v0, 0xae

    sget-object v8, Lcom/datami/smi/d/a;->k:[B

    const/16 v9, 0x9d

    aget-byte v8, v8, v9

    add-int/lit8 v8, v8, -0x1

    invoke-static {v0, v7, v8}, Lcom/datami/smi/d/a;->a(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    return-object v2
.end method

.method public static b()Lorg/json/JSONObject;
    .locals 15

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    sget-object v3, Lcom/datami/smi/d/a;->k:[B

    const/16 v4, 0x11

    aget-byte v3, v3, v4

    sget v4, Lcom/datami/smi/d/a;->l:I

    and-int/lit16 v4, v4, 0x3c0

    sget-object v5, Lcom/datami/smi/d/a;->k:[B

    const/16 v6, 0x20

    aget-byte v5, v5, v6

    add-int/lit8 v5, v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/datami/smi/d/a;->a(III)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/datami/smi/c/e;->b:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v3, Lcom/datami/smi/d/a;->k:[B

    const/16 v4, 0x54

    aget-byte v3, v3, v4

    or-int/lit16 v4, v3, 0xc8

    const/16 v5, 0x31

    invoke-static {v3, v4, v5}, Lcom/datami/smi/d/a;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    sget-object v3, Lcom/datami/smi/d/a;->k:[B

    const/16 v4, 0x11

    aget-byte v3, v3, v4

    add-int/lit8 v4, v3, -0x1

    or-int/lit8 v5, v4, 0x3f

    invoke-static {v3, v4, v5}, Lcom/datami/smi/d/a;->a(III)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/datami/smi/c/e;->d:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v3, Lcom/datami/smi/d/a;->k:[B

    const/16 v4, 0x29

    aget-byte v3, v3, v4

    const/16 v4, 0x41

    const/16 v5, 0x3d

    invoke-static {v3, v4, v5}, Lcom/datami/smi/d/a;->a(III)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/datami/smi/c/e;->c:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v3, Lcom/datami/smi/d/a;->k:[B

    const/16 v4, 0x17

    aget-byte v3, v3, v4

    const/16 v4, 0xc1

    sget-object v5, Lcom/datami/smi/d/a;->k:[B

    const/16 v6, 0xab

    aget-byte v5, v5, v6

    invoke-static {v3, v4, v5}, Lcom/datami/smi/d/a;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    sget-object v3, Lcom/datami/smi/d/a;->k:[B

    const/16 v4, 0x11

    aget-byte v3, v3, v4

    sget v4, Lcom/datami/smi/d/a;->l:I

    and-int/lit16 v4, v4, 0x3c0

    sget-object v5, Lcom/datami/smi/d/a;->k:[B

    const/16 v6, 0x20

    aget-byte v5, v5, v6

    add-int/lit8 v5, v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/datami/smi/d/a;->a(III)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/datami/smi/c/e;->e:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v3, Lcom/datami/smi/d/a;->k:[B

    const/16 v4, 0x17

    aget-byte v3, v3, v4

    sget-object v4, Lcom/datami/smi/d/a;->k:[B

    const/16 v5, 0xab

    aget-byte v4, v4, v5

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v3, v4}, Lcom/datami/smi/d/a;->a(III)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v3, Lcom/datami/smi/d/a;->k:[B

    const/4 v4, 0x5

    aget-byte v3, v3, v4

    or-int/lit16 v4, v3, 0x80

    sget-object v5, Lcom/datami/smi/d/a;->k:[B

    const/16 v6, 0xab

    aget-byte v5, v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v4, v5}, Lcom/datami/smi/d/a;->a(III)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v3, Lcom/datami/smi/d/a;->k:[B

    const/16 v4, 0x29

    aget-byte v3, v3, v4

    const/16 v4, 0xc6

    sget-object v5, Lcom/datami/smi/d/a;->k:[B

    const/16 v6, 0x9d

    aget-byte v5, v5, v6

    invoke-static {v3, v4, v5}, Lcom/datami/smi/d/a;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/datami/smi/d/a;->k:[B

    const/16 v3, 0x29

    aget-byte v1, v1, v3

    sget-object v3, Lcom/datami/smi/d/a;->k:[B

    const/4 v4, 0x4

    aget-byte v3, v3, v4

    sget-object v4, Lcom/datami/smi/d/a;->k:[B

    const/16 v5, 0x20

    aget-byte v4, v4, v5

    invoke-static {v1, v3, v4}, Lcom/datami/smi/d/a;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    sget-object v0, Lcom/datami/smi/d/a;->k:[B

    const/16 v1, 0xf

    aget-byte v0, v0, v1

    sget-object v1, Lcom/datami/smi/d/a;->k:[B

    const/16 v4, 0x8b

    aget-byte v1, v1, v4

    neg-int v1, v1

    sget v4, Lcom/datami/smi/d/a;->l:I

    and-int/lit8 v4, v4, 0x7f

    invoke-static {v0, v1, v4}, Lcom/datami/smi/d/a;->a(III)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/datami/smi/d/a;->k:[B

    const/16 v4, 0x23

    aget-byte v1, v1, v4

    or-int/lit8 v4, v1, 0x22

    sget-object v5, Lcom/datami/smi/d/a;->k:[B

    const/16 v6, 0x9c

    aget-byte v5, v5, v6

    neg-int v5, v5

    invoke-static {v1, v4, v5}, Lcom/datami/smi/d/a;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/datami/smi/b/m;->h:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/datami/smi/b/m;->h:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/datami/smi/d/a;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    sget-object v1, Lcom/datami/smi/d/a;->k:[B

    const/16 v6, 0x54

    aget-byte v1, v1, v6

    const/16 v6, 0x3c

    const/16 v7, 0x46

    invoke-static {v1, v6, v7}, Lcom/datami/smi/d/a;->a(III)Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lcom/datami/smi/d/a;->k:[B

    const/16 v7, 0x54

    aget-byte v6, v6, v7

    or-int/lit8 v7, v6, 0x20

    sget-object v8, Lcom/datami/smi/d/a;->k:[B

    const/16 v9, 0x11

    aget-byte v8, v8, v9

    invoke-static {v6, v7, v8}, Lcom/datami/smi/d/a;->a(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/datami/smi/d/a;->k:[B

    const/16 v6, 0x24

    aget-byte v1, v1, v6

    const/16 v6, 0x93

    const/16 v7, 0x43

    invoke-static {v1, v6, v7}, Lcom/datami/smi/d/a;->a(III)Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lcom/datami/smi/d/a;->k:[B

    const/4 v7, 0x5

    aget-byte v6, v6, v7

    or-int/lit8 v7, v6, 0x7b

    sget-object v8, Lcom/datami/smi/d/a;->k:[B

    const/16 v9, 0x9c

    aget-byte v8, v8, v9

    neg-int v8, v8

    invoke-static {v6, v7, v8}, Lcom/datami/smi/d/a;->a(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/datami/smi/d/a;->k:[B

    const/4 v6, 0x7

    aget-byte v1, v1, v6

    or-int/lit16 v6, v1, 0xa4

    sget-object v7, Lcom/datami/smi/d/a;->k:[B

    const/16 v8, 0x9d

    aget-byte v7, v7, v8

    add-int/lit8 v7, v7, -0x1

    invoke-static {v1, v6, v7}, Lcom/datami/smi/d/a;->a(III)Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lcom/datami/smi/d/a;->k:[B

    const/16 v7, 0x54

    aget-byte v6, v6, v7

    or-int/lit16 v7, v6, 0xc8

    const/16 v8, 0x31

    invoke-static {v6, v7, v8}, Lcom/datami/smi/d/a;->a(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/datami/smi/d/a;->k:[B

    const/16 v6, 0x17

    aget-byte v1, v1, v6

    or-int/lit16 v6, v1, 0x84

    const/16 v7, 0x44

    invoke-static {v1, v6, v7}, Lcom/datami/smi/d/a;->a(III)Ljava/lang/String;

    move-result-object v1

    iget-object v6, v0, Lcom/datami/smi/d/a;->f:Ljava/lang/String;

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/datami/smi/d/a;->k:[B

    const/16 v6, 0x17

    aget-byte v1, v1, v6

    const/16 v6, 0x8d

    const/16 v7, 0x44

    invoke-static {v1, v6, v7}, Lcom/datami/smi/d/a;->a(III)Ljava/lang/String;

    move-result-object v1

    iget-object v6, v0, Lcom/datami/smi/d/a;->e:Ljava/lang/String;

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/datami/smi/d/a;->k:[B

    const/16 v6, 0x54

    aget-byte v1, v1, v6

    or-int/lit16 v6, v1, 0xac

    const/16 v7, 0x43

    invoke-static {v1, v6, v7}, Lcom/datami/smi/d/a;->a(III)Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lcom/datami/smi/d/c;->a:Lcom/datami/smi/d/c;

    invoke-static {v6}, Lcom/datami/smi/d/a;->a(Lcom/datami/smi/d/c;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, v0, Lcom/datami/smi/d/a;->g:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    iget-object v8, v0, Lcom/datami/smi/d/a;->g:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    sget-object v11, Lcom/datami/smi/d/a;->k:[B

    const/16 v12, 0x11

    aget-byte v11, v11, v12

    add-int/lit8 v11, v11, -0x1

    or-int/lit16 v12, v11, 0xac

    sget-object v13, Lcom/datami/smi/d/a;->k:[B

    const/16 v14, 0xab

    aget-byte v13, v13, v14

    invoke-static {v11, v12, v13}, Lcom/datami/smi/d/a;->a(III)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v11, Lcom/datami/smi/d/a;->k:[B

    const/16 v12, 0x11

    aget-byte v11, v11, v12

    add-int/lit8 v11, v11, -0x1

    or-int/lit16 v12, v11, 0xa4

    const/16 v13, 0x46

    invoke-static {v11, v12, v13}, Lcom/datami/smi/d/a;->a(III)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v11, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v7, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/datami/smi/d/a;->k:[B

    const/16 v8, 0x43

    aget-byte v1, v1, v8

    or-int/lit16 v8, v1, 0x94

    sget-object v9, Lcom/datami/smi/d/a;->k:[B

    const/16 v10, 0x57

    aget-byte v9, v9, v10

    add-int/lit8 v9, v9, -0x1

    invoke-static {v1, v8, v9}, Lcom/datami/smi/d/a;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-object v1, v0, Lcom/datami/smi/d/a;->h:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/datami/smi/d/a;->k:[B

    const/4 v7, 0x5

    aget-byte v1, v1, v7

    or-int/lit8 v7, v1, 0x53

    and-int/lit16 v8, v7, 0x1ec

    invoke-static {v1, v7, v8}, Lcom/datami/smi/d/a;->a(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/datami/smi/d/a;->h:Ljava/lang/String;

    invoke-virtual {v6, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_2
    sget-object v0, Lcom/datami/smi/d/a;->k:[B

    const/16 v1, 0x17

    aget-byte v0, v0, v1

    const/16 v1, 0x50

    sget-object v7, Lcom/datami/smi/d/a;->k:[B

    const/16 v8, 0x9d

    aget-byte v7, v7, v8

    invoke-static {v0, v1, v7}, Lcom/datami/smi/d/a;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    sget-object v0, Lcom/datami/smi/d/a;->k:[B

    const/16 v1, 0x17

    aget-byte v0, v0, v1

    const/16 v1, 0x50

    sget-object v5, Lcom/datami/smi/d/a;->k:[B

    const/16 v6, 0x9d

    aget-byte v5, v5, v6

    invoke-static {v0, v1, v5}, Lcom/datami/smi/d/a;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    :cond_2
    sget-object v1, Lcom/datami/smi/d/a;->k:[B

    const/16 v7, 0x17

    aget-byte v1, v1, v7

    sget v7, Lcom/datami/smi/d/a;->l:I

    and-int/lit16 v7, v7, 0x3de

    sget-object v8, Lcom/datami/smi/d/a;->k:[B

    const/16 v9, 0x9d

    aget-byte v8, v8, v9

    add-int/lit8 v8, v8, -0x1

    invoke-static {v1, v7, v8}, Lcom/datami/smi/d/a;->a(III)Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, v0, Lcom/datami/smi/d/a;->j:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/datami/smi/d/a;->k:[B

    const/16 v7, 0x11

    aget-byte v0, v0, v7

    add-int/lit8 v0, v0, -0x1

    or-int/lit16 v7, v0, 0xa4

    const/16 v8, 0x47

    invoke-static {v0, v7, v8}, Lcom/datami/smi/d/a;->a(III)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v6, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/datami/smi/d/a;->k:[B

    const/16 v7, 0x11

    aget-byte v0, v0, v7

    add-int/lit8 v0, v0, -0x1

    or-int/lit16 v7, v0, 0xae

    sget-object v8, Lcom/datami/smi/d/a;->k:[B

    const/16 v9, 0x9d

    aget-byte v8, v8, v9

    add-int/lit8 v8, v8, -0x1

    invoke-static {v0, v7, v8}, Lcom/datami/smi/d/a;->a(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    return-object v2
.end method

.method private c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/datami/smi/d/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/datami/smi/d/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method private e()Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/datami/smi/d/a;->g:Ljava/util/HashMap;

    return-object v0
.end method

.method private f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/datami/smi/d/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method private g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/datami/smi/d/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method private h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/datami/smi/d/a;->j:Z

    return v0
.end method
