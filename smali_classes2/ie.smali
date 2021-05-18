.class public Lie;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lie;


# instance fields
.field private a:Lio;


# direct methods
.method public constructor <init>(Lil;Lin;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lic;->a(Lil;Lin;Z)Lio;

    move-result-object v0

    iput-object v0, p0, Lie;->a:Lio;

    .line 29
    return-void
.end method

.method public static a(Lil;Lin;)Lie;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lie;->b:Lie;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lie;

    invoke-direct {v0, p0, p1}, Lie;-><init>(Lil;Lin;)V

    sput-object v0, Lie;->b:Lie;

    .line 41
    :cond_0
    sget-object v0, Lie;->b:Lie;

    return-object v0
.end method


# virtual methods
.method public a(Lir;Lih;)V
    .locals 4

    .prologue
    .line 50
    new-instance v0, Liu;

    invoke-direct {v0, p1, p2}, Liu;-><init>(Lir;Lih;)V

    .line 51
    new-instance v1, Lig;

    iget-object v2, p0, Lie;->a:Lio;

    new-instance v3, Lif;

    invoke-direct {v3}, Lif;-><init>()V

    invoke-direct {v1, v2, v3}, Lig;-><init>(Lio;Lif;)V

    const/4 v2, 0x1

    new-array v2, v2, [Liu;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lig;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 52
    return-void
.end method
