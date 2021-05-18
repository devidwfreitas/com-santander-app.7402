.class public Lhlp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhlm;


# instance fields
.field private a:Lhmy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lhnc;

    invoke-direct {v0}, Lhnc;-><init>()V

    iput-object v0, p0, Lhlp;->a:Lhmy;

    .line 26
    return-void
.end method

.method static synthetic a(Lhlp;)Lhmy;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lhlp;->a:Lhmy;

    return-object v0
.end method

.method static synthetic a(Lhlp;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lhlp;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lhxl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    new-instance v0, Lhlu;

    invoke-direct {v0, p0}, Lhlu;-><init>(Lhlp;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 97
    return-void
.end method

.method private b(Lhxl;Lhln;)V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lhlp;->a:Lhmy;

    new-instance v1, Lhls;

    invoke-direct {v1, p0, p2}, Lhls;-><init>(Lhlp;Lhln;)V

    invoke-interface {v0, p1, v1}, Lhmy;->a(Lhxl;Lhmz;)V

    .line 74
    return-void
.end method

.method private c(Lhxl;Lhln;)V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lhlp;->a:Lhmy;

    new-instance v1, Lhlt;

    invoke-direct {v1, p0, p2}, Lhlt;-><init>(Lhlp;Lhln;)V

    invoke-interface {v0, p1, v1}, Lhmy;->b(Lhxl;Lhmz;)V

    .line 88
    return-void
.end method


# virtual methods
.method public a(Lhlo;)V
    .locals 3

    .prologue
    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    iget-object v1, p0, Lhlp;->a:Lhmy;

    new-instance v2, Lhlq;

    invoke-direct {v2, p0, v0, p1}, Lhlq;-><init>(Lhlp;Ljava/util/List;Lhlo;)V

    invoke-interface {v1, v2}, Lhmy;->a(Lhna;)V

    .line 49
    return-void
.end method

.method public a(Lhxl;Lhln;)V
    .locals 2

    .prologue
    .line 53
    invoke-interface {p1}, Lhxl;->a()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 54
    invoke-direct {p0, p1, p2}, Lhlp;->b(Lhxl;Lhln;)V

    .line 60
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-interface {p1}, Lhxl;->a()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    .line 56
    invoke-direct {p0, p1, p2}, Lhlp;->c(Lhxl;Lhln;)V

    goto :goto_0

    .line 58
    :cond_1
    invoke-interface {p2}, Lhln;->b()V

    goto :goto_0
.end method
