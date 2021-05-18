.class public Lhwu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhwo;


# static fields
.field private static final a:Ljava/lang/String; = "CPURepositoryImpl"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(IIZLhus;Lhwp;)V
    .locals 4

    .prologue
    .line 116
    new-instance v0, Lhul;

    invoke-direct {v0, p1, p2, p3, p4}, Lhul;-><init>(IIZLhus;)V

    .line 117
    new-instance v1, Lhxc;

    new-instance v2, Lhwx;

    invoke-direct {v2, p0, p5}, Lhwx;-><init>(Lhwu;Lhwp;)V

    invoke-direct {v1, v2}, Lhxc;-><init>(Lgkv;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lhul;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 131
    invoke-virtual {v1, v2}, Lhxc;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 132
    return-void
.end method

.method static synthetic a(Lhwu;Ljava/lang/String;Lhwr;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lhwu;->b(Ljava/lang/String;Lhwr;)V

    return-void
.end method

.method private b(Ljava/lang/String;Lhwr;)V
    .locals 5

    .prologue
    .line 172
    new-instance v0, Lhxg;

    new-instance v1, Lhxa;

    invoke-direct {v1, p0, p2, p1}, Lhxa;-><init>(Lhwu;Lhwr;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lhxg;-><init>(Lgkv;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lhux;

    const/4 v2, 0x0

    new-instance v3, Lhux;

    const-string v4, "cpu_quadro_aviso_seguro"

    invoke-direct {v3, v4}, Lhux;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 186
    invoke-virtual {v0, v1}, Lhxg;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 187
    return-void
.end method


# virtual methods
.method public a(IILhus;Lhwp;)V
    .locals 6

    .prologue
    .line 95
    const/4 v3, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lhwu;->a(IIZLhus;Lhwp;)V

    .line 100
    return-void
.end method

.method public a(Lhus;Lhwp;)V
    .locals 6

    .prologue
    .line 83
    invoke-virtual {p1}, Lhus;->o()I

    move-result v1

    .line 84
    invoke-virtual {p1}, Lhus;->m()I

    move-result v2

    const/4 v3, 0x1

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    .line 83
    invoke-direct/range {v0 .. v5}, Lhwu;->a(IIZLhus;Lhwp;)V

    .line 88
    return-void
.end method

.method public a(Lhus;Lhws;)V
    .locals 4

    .prologue
    .line 191
    new-instance v0, Lhun;

    invoke-direct {v0, p1}, Lhun;-><init>(Lhus;)V

    .line 192
    new-instance v1, Lhxe;

    new-instance v2, Lhxb;

    invoke-direct {v2, p0, p2}, Lhxb;-><init>(Lhwu;Lhws;)V

    invoke-direct {v1, v2}, Lhxe;-><init>(Lgkv;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lhun;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 213
    invoke-virtual {v1, v2}, Lhxe;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 214
    return-void
.end method

.method public a(Lhwp;)V
    .locals 4

    .prologue
    .line 60
    new-instance v0, Lhum;

    invoke-direct {v0}, Lhum;-><init>()V

    .line 61
    new-instance v1, Lhxd;

    new-instance v2, Lhww;

    invoke-direct {v2, p0, p1}, Lhww;-><init>(Lhwu;Lhwp;)V

    invoke-direct {v1, v2}, Lhxd;-><init>(Lgkv;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lhum;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 78
    invoke-virtual {v1, v2}, Lhxd;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 79
    return-void
.end method

.method public a(Lhwt;)V
    .locals 4

    .prologue
    .line 40
    new-instance v0, Lhup;

    invoke-direct {v0}, Lhup;-><init>()V

    .line 41
    new-instance v1, Lhxf;

    new-instance v2, Lhwv;

    invoke-direct {v2, p0, p1}, Lhwv;-><init>(Lhwu;Lhwt;)V

    invoke-direct {v1, v2}, Lhxf;-><init>(Lgkv;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lhup;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 55
    invoke-virtual {v1, v2}, Lhxf;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 56
    return-void
.end method

.method public a(Ljava/lang/String;Lhwq;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lhuw;
        .end annotation
    .end param

    .prologue
    .line 135
    new-instance v0, Lhxg;

    new-instance v1, Lhwy;

    invoke-direct {v1, p0, p2}, Lhwy;-><init>(Lhwu;Lhwq;)V

    invoke-direct {v0, v1}, Lhxg;-><init>(Lgkv;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lhux;

    const/4 v2, 0x0

    new-instance v3, Lhux;

    invoke-direct {v3, p1}, Lhux;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 149
    invoke-virtual {v0, v1}, Lhxg;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 150
    return-void
.end method

.method public a(Ljava/lang/String;Lhwr;)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lhuw;
        .end annotation
    .end param

    .prologue
    .line 154
    new-instance v0, Lhxg;

    new-instance v1, Lhwz;

    invoke-direct {v1, p0, p2}, Lhwz;-><init>(Lhwu;Lhwr;)V

    invoke-direct {v0, v1}, Lhxg;-><init>(Lgkv;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lhux;

    const/4 v2, 0x0

    new-instance v3, Lhux;

    const-string v4, "cpu_quadro_vantangens_seguro"

    invoke-direct {v3, v4}, Lhux;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 168
    invoke-virtual {v0, v1}, Lhxg;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 169
    return-void
.end method

.method public a(ZLhus;Lhwp;)V
    .locals 6

    .prologue
    .line 104
    invoke-virtual {p2}, Lhus;->o()I

    move-result v1

    .line 105
    invoke-virtual {p2}, Lhus;->m()I

    move-result v2

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 104
    invoke-direct/range {v0 .. v5}, Lhwu;->a(IIZLhus;Lhwp;)V

    .line 109
    return-void
.end method
