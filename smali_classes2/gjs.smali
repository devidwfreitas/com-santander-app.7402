.class public Lgjs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgjr;


# instance fields
.field private a:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lgjs;->a:Landroid/app/Activity;

    .line 29
    return-void
.end method


# virtual methods
.method public a(Lgkw;Lgoe;)V
    .locals 3

    .prologue
    .line 34
    new-instance v0, Lgjz;

    iget-object v1, p0, Lgjs;->a:Landroid/app/Activity;

    new-instance v2, Lgjt;

    invoke-direct {v2, p0, p1}, Lgjt;-><init>(Lgjs;Lgkw;)V

    invoke-direct {v0, v1, v2}, Lgjz;-><init>(Landroid/app/Activity;Lgkv;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lgic;

    const/4 v2, 0x0

    check-cast p2, Lgic;

    aput-object p2, v1, v2

    .line 39
    invoke-virtual {v0, v1}, Lgjz;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 40
    return-void
.end method

.method public b(Lgkw;Lgoe;)V
    .locals 3

    .prologue
    .line 44
    new-instance v0, Lgjx;

    iget-object v1, p0, Lgjs;->a:Landroid/app/Activity;

    new-instance v2, Lgju;

    invoke-direct {v2, p0, p1}, Lgju;-><init>(Lgjs;Lgkw;)V

    invoke-direct {v0, v1, v2}, Lgjx;-><init>(Landroid/app/Activity;Lgkv;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lghy;

    const/4 v2, 0x0

    check-cast p2, Lghy;

    aput-object p2, v1, v2

    .line 49
    invoke-virtual {v0, v1}, Lgjx;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 50
    return-void
.end method

.method public c(Lgkw;Lgoe;)V
    .locals 3

    .prologue
    .line 54
    new-instance v0, Lgkb;

    iget-object v1, p0, Lgjs;->a:Landroid/app/Activity;

    new-instance v2, Lgjv;

    invoke-direct {v2, p0, p1}, Lgjv;-><init>(Lgjs;Lgkw;)V

    invoke-direct {v0, v1, v2}, Lgkb;-><init>(Landroid/app/Activity;Lgkv;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lgih;

    const/4 v2, 0x0

    check-cast p2, Lgih;

    aput-object p2, v1, v2

    .line 59
    invoke-virtual {v0, v1}, Lgkb;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 60
    return-void
.end method

.method public d(Lgkw;Lgoe;)V
    .locals 0

    .prologue
    .line 65
    return-void
.end method
