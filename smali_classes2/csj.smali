.class public Lcsj;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcso;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcsk;

    invoke-direct {v0}, Lcsk;-><init>()V

    sput-object v0, Lcsj;->a:Lcso;

    return-void
.end method

.method public static a(Lcpy;Lcqs;)Legv;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lcqg;",
            "T:",
            "Lcqs",
            "<TR;>;>(",
            "Lcpy",
            "<TR;>;TT;)",
            "Legv",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcsm;

    invoke-direct {v0, p1}, Lcsm;-><init>(Lcqs;)V

    invoke-static {p0, v0}, Lcsj;->a(Lcpy;Lcsn;)Legv;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcpy;Lcsn;)Legv;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lcqg;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcpy",
            "<TR;>;",
            "Lcsn",
            "<TR;TT;>;)",
            "Legv",
            "<TT;>;"
        }
    .end annotation

    sget-object v0, Lcsj;->a:Lcso;

    invoke-static {p0, p1, v0}, Lcsj;->a(Lcpy;Lcsn;Lcso;)Legv;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcpy;Lcsn;Lcso;)Legv;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lcqg;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcpy",
            "<TR;>;",
            "Lcsn",
            "<TR;TT;>;",
            "Lcso;",
            ")",
            "Legv",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Legw;

    invoke-direct {v0}, Legw;-><init>()V

    new-instance v1, Lcsl;

    invoke-direct {v1, p0, v0, p1, p2}, Lcsl;-><init>(Lcpy;Legw;Lcsn;Lcso;)V

    invoke-virtual {p0, v1}, Lcpy;->a(Lcpz;)V

    invoke-virtual {v0}, Legw;->a()Legv;

    move-result-object v0

    return-object v0
.end method
