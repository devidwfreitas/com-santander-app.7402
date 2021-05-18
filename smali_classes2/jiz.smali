.class public Ljiz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljiy;


# instance fields
.field private a:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Ljiz;->a:Landroid/app/Activity;

    .line 44
    return-void
.end method


# virtual methods
.method public a(Lgkw;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 155
    new-instance v0, Ljjv;

    iget-object v1, p0, Ljiz;->a:Landroid/app/Activity;

    new-instance v2, Ljjc;

    invoke-direct {v2, p0, p1}, Ljjc;-><init>(Ljiz;Lgkw;)V

    invoke-direct {v0, v1, v2}, Ljjv;-><init>(Landroid/app/Activity;Lgkv;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 160
    invoke-virtual {v0, v1}, Ljjv;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 161
    return-void
.end method

.method public a(Lgkw;Ljdj;)V
    .locals 3

    .prologue
    .line 92
    new-instance v0, Ljjl;

    iget-object v1, p0, Ljiz;->a:Landroid/app/Activity;

    new-instance v2, Ljjg;

    invoke-direct {v2, p0, p1}, Ljjg;-><init>(Ljiz;Lgkw;)V

    invoke-direct {v0, v1, v2}, Ljjl;-><init>(Landroid/app/Activity;Lgkv;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljdj;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 98
    invoke-virtual {v0, v1}, Ljjl;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 99
    return-void
.end method

.method public a(Lgkw;Ljdn;)V
    .locals 3

    .prologue
    .line 48
    new-instance v0, Ljjn;

    iget-object v1, p0, Ljiz;->a:Landroid/app/Activity;

    new-instance v2, Ljja;

    invoke-direct {v2, p0, p1}, Ljja;-><init>(Ljiz;Lgkw;)V

    invoke-direct {v0, v1, v2}, Ljjn;-><init>(Landroid/app/Activity;Lgkv;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljdn;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 54
    invoke-virtual {v0, v1}, Ljjn;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 55
    return-void
.end method

.method public a(Lgkw;Ljdp;)V
    .locals 3

    .prologue
    .line 70
    new-instance v0, Ljjo;

    iget-object v1, p0, Ljiz;->a:Landroid/app/Activity;

    new-instance v2, Ljje;

    invoke-direct {v2, p0, p1}, Ljje;-><init>(Ljiz;Lgkw;)V

    invoke-direct {v0, v1, v2}, Ljjo;-><init>(Landroid/app/Activity;Lgkv;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljdp;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 76
    invoke-virtual {v0, v1}, Ljjo;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 77
    return-void
.end method

.method public a(Lgkw;Ljdr;)V
    .locals 3

    .prologue
    .line 81
    new-instance v0, Ljjr;

    iget-object v1, p0, Ljiz;->a:Landroid/app/Activity;

    new-instance v2, Ljjf;

    invoke-direct {v2, p0, p1}, Ljjf;-><init>(Ljiz;Lgkw;)V

    invoke-direct {v0, v1, v2}, Ljjr;-><init>(Landroid/app/Activity;Lgkv;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljdr;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 87
    invoke-virtual {v0, v1}, Ljjr;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 88
    return-void
.end method

.method public a(Lgkw;Ljdt;)V
    .locals 3

    .prologue
    .line 103
    new-instance v0, Ljjs;

    iget-object v1, p0, Ljiz;->a:Landroid/app/Activity;

    new-instance v2, Ljjh;

    invoke-direct {v2, p0, p1}, Ljjh;-><init>(Ljiz;Lgkw;)V

    invoke-direct {v0, v1, v2}, Ljjs;-><init>(Landroid/app/Activity;Lgkv;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljdt;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 109
    invoke-virtual {v0, v1}, Ljjs;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 110
    return-void
.end method

.method public a(Lgkw;Ljek;)V
    .locals 3

    .prologue
    .line 145
    new-instance v0, Ljjt;

    new-instance v1, Ljjb;

    invoke-direct {v1, p0, p1}, Ljjb;-><init>(Ljiz;Lgkw;)V

    iget-object v2, p0, Ljiz;->a:Landroid/app/Activity;

    invoke-direct {v0, v1, v2}, Ljjt;-><init>(Lgkv;Landroid/app/Activity;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljek;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 150
    invoke-virtual {v0, v1}, Ljjt;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 151
    return-void
.end method

.method public a(Lgkw;Lmiv;)V
    .locals 3

    .prologue
    .line 135
    new-instance v0, Ljjq;

    new-instance v1, Ljjk;

    invoke-direct {v1, p0, p1}, Ljjk;-><init>(Ljiz;Lgkw;)V

    iget-object v2, p0, Ljiz;->a:Landroid/app/Activity;

    invoke-direct {v0, v1, v2}, Ljjq;-><init>(Lgkv;Landroid/app/Activity;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lmiv;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 140
    invoke-virtual {v0, v1}, Ljjq;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 141
    return-void
.end method

.method public b(Lgkw;Ljdj;)V
    .locals 3

    .prologue
    .line 114
    new-instance v0, Ljju;

    iget-object v1, p0, Ljiz;->a:Landroid/app/Activity;

    new-instance v2, Ljji;

    invoke-direct {v2, p0, p1}, Ljji;-><init>(Ljiz;Lgkw;)V

    invoke-direct {v0, v1, v2}, Ljju;-><init>(Landroid/app/Activity;Lgkv;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljdj;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 120
    invoke-virtual {v0, v1}, Ljju;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 121
    return-void
.end method

.method public b(Lgkw;Ljdn;)V
    .locals 3

    .prologue
    .line 59
    new-instance v0, Ljjp;

    iget-object v1, p0, Ljiz;->a:Landroid/app/Activity;

    new-instance v2, Ljjd;

    invoke-direct {v2, p0, p1}, Ljjd;-><init>(Ljiz;Lgkw;)V

    invoke-direct {v0, v1, v2}, Ljjp;-><init>(Landroid/app/Activity;Lgkv;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljdn;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 65
    invoke-virtual {v0, v1}, Ljjp;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 66
    return-void
.end method

.method public c(Lgkw;Ljdn;)V
    .locals 3

    .prologue
    .line 125
    new-instance v0, Ljjm;

    iget-object v1, p0, Ljiz;->a:Landroid/app/Activity;

    new-instance v2, Ljjj;

    invoke-direct {v2, p0, p1}, Ljjj;-><init>(Ljiz;Lgkw;)V

    invoke-direct {v0, v1, v2}, Ljjm;-><init>(Landroid/app/Activity;Lgkv;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljdn;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 130
    invoke-virtual {v0, v1}, Ljjm;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 131
    return-void
.end method
