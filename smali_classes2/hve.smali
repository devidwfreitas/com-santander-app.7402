.class public Lhve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhuz;


# instance fields
.field private a:Lhwo;

.field private b:Lhvk;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lhwu;

    invoke-direct {v0}, Lhwu;-><init>()V

    iput-object v0, p0, Lhve;->a:Lhwo;

    .line 32
    invoke-static {}, Lhvn;->f()Lhvk;

    move-result-object v0

    iput-object v0, p0, Lhve;->b:Lhvk;

    .line 33
    return-void
.end method

.method static synthetic a(Lhve;Ljava/lang/String;)Landroid/text/Spanned;
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lhve;->a(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Landroid/text/Spanned;
    .locals 1

    .prologue
    .line 145
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lhve;Ljava/lang/String;Lhuy;)Lhfn;
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lhve;->a(Ljava/lang/String;Lhuy;)Lhfn;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Lhuy;)Lhfn;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lhuw;
        .end annotation
    .end param

    .prologue
    .line 114
    new-instance v0, Lhvj;

    invoke-direct {v0, p0, p2}, Lhvj;-><init>(Lhve;Lhuy;)V

    return-object v0
.end method


# virtual methods
.method public a()Lhxn;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lhve;->b:Lhvk;

    invoke-interface {v0}, Lhvk;->c()Lhxn;

    move-result-object v0

    return-object v0
.end method

.method public a(Lhvb;)V
    .locals 3

    .prologue
    .line 63
    iget-object v0, p0, Lhve;->a:Lhwo;

    invoke-virtual {p0}, Lhve;->b()Lhus;

    move-result-object v1

    new-instance v2, Lhvg;

    invoke-direct {v2, p0, p1}, Lhvg;-><init>(Lhve;Lhvb;)V

    invoke-interface {v0, v1, v2}, Lhwo;->a(Lhus;Lhws;)V

    .line 77
    return-void
.end method

.method public a(Lhvd;)V
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Lhve;->a:Lhwo;

    const-string v1, "cpu_quadro_vantangens_seguro"

    new-instance v2, Lhvh;

    invoke-direct {v2, p0, p1}, Lhvh;-><init>(Lhve;Lhvd;)V

    invoke-interface {v0, v1, v2}, Lhwo;->a(Ljava/lang/String;Lhwr;)V

    .line 94
    return-void
.end method

.method public a(Ljava/lang/String;Lhvc;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lhuw;
        .end annotation
    .end param

    .prologue
    .line 98
    iget-object v0, p0, Lhve;->a:Lhwo;

    new-instance v1, Lhvi;

    invoke-direct {v1, p0, p1, p2}, Lhvi;-><init>(Lhve;Ljava/lang/String;Lhvc;)V

    invoke-interface {v0, p1, v1}, Lhwo;->a(Ljava/lang/String;Lhwq;)V

    .line 110
    return-void
.end method

.method public a(ZLhva;)V
    .locals 3

    .prologue
    .line 47
    iget-object v0, p0, Lhve;->a:Lhwo;

    invoke-virtual {p0}, Lhve;->b()Lhus;

    move-result-object v1

    new-instance v2, Lhvf;

    invoke-direct {v2, p0, p2}, Lhvf;-><init>(Lhve;Lhva;)V

    invoke-interface {v0, p1, v1, v2}, Lhwo;->a(ZLhus;Lhwp;)V

    .line 59
    return-void
.end method

.method public b()Lhus;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lhve;->b:Lhvk;

    invoke-interface {v0}, Lhvk;->d()Lhus;

    move-result-object v0

    return-object v0
.end method
