.class public final Ldqa;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ldpy;
    .locals 10

    const/4 v1, 0x0

    const/4 v3, 0x0

    new-instance v0, Ldpy;

    move v2, v1

    move v4, v1

    move-object v5, v3

    move v6, v1

    move-object v7, v3

    move-object v8, v3

    move-object v9, v3

    invoke-direct/range {v0 .. v9}, Ldpy;-><init>(ZZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;Ldpz;)V

    return-object v0
.end method
