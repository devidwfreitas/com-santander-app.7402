.class public Lcvs;
.super Ljava/lang/Object;

# interfaces
.implements Lcvo;


# static fields
.field private static a:Lcvs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcvs;

    invoke-direct {v0}, Lcvs;-><init>()V

    sput-object v0, Lcvs;->a:Lcvs;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d()Lcvo;
    .locals 1

    sget-object v0, Lcvs;->a:Lcvs;

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public b()J
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public c()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method
