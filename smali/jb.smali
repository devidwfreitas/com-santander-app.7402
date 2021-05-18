.class public Ljb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Ljb;


# instance fields
.field public a:Ljd;
    .annotation runtime Lnnc;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {}, Lhs;->a()Lhu;

    move-result-object v0

    new-instance v1, Lhw;

    invoke-direct {v1, p1}, Lhw;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-virtual {v0, v1}, Lhu;->a(Lhw;)Lhu;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lhu;->a()Lhv;

    move-result-object v0

    .line 37
    invoke-interface {v0, p0}, Lhv;->a(Ljb;)V

    .line 38
    return-void
.end method

.method public static a(Landroid/content/Context;)Ljb;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Ljb;->b:Ljb;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Ljb;

    invoke-direct {v0, p0}, Ljb;-><init>(Landroid/content/Context;)V

    sput-object v0, Ljb;->b:Ljb;

    .line 49
    :cond_0
    sget-object v0, Ljb;->b:Ljb;

    return-object v0
.end method


# virtual methods
.method public a(Liq;Lij;)V
    .locals 4

    .prologue
    .line 53
    new-instance v0, Liy;

    invoke-direct {v0, p1, p2}, Liy;-><init>(Liq;Lij;)V

    .line 54
    iget-object v1, p0, Ljb;->a:Ljd;

    const/4 v2, 0x1

    new-array v2, v2, [Liy;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Ljd;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 55
    return-void
.end method
