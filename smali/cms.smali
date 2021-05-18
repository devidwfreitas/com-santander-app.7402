.class public Lcms;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Z

.field private d:Lcmt;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcmq;

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/String;

.field private k:J

.field private l:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 890
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 891
    return-void
.end method

.method static synthetic a(Lcms;)Z
    .locals 1

    .prologue
    .line 876
    iget-boolean v0, p0, Lcms;->c:Z

    return v0
.end method

.method static synthetic b(Lcms;)Lcmt;
    .locals 1

    .prologue
    .line 876
    iget-object v0, p0, Lcms;->d:Lcmt;

    return-object v0
.end method

.method static synthetic c(Lcms;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 876
    iget-object v0, p0, Lcms;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcms;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 876
    iget-object v0, p0, Lcms;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcms;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 876
    iget-object v0, p0, Lcms;->i:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic f(Lcms;)Lcmq;
    .locals 1

    .prologue
    .line 876
    iget-object v0, p0, Lcms;->h:Lcmq;

    return-object v0
.end method

.method static synthetic g(Lcms;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 876
    iget-object v0, p0, Lcms;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcms;)J
    .locals 2

    .prologue
    .line 876
    iget-wide v0, p0, Lcms;->k:J

    return-wide v0
.end method

.method static synthetic i(Lcms;)Z
    .locals 1

    .prologue
    .line 876
    iget-boolean v0, p0, Lcms;->l:Z

    return v0
.end method

.method static synthetic j(Lcms;)Z
    .locals 1

    .prologue
    .line 876
    iget-boolean v0, p0, Lcms;->b:Z

    return v0
.end method

.method static synthetic k(Lcms;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 876
    iget-object v0, p0, Lcms;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcms;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 876
    iget-object v0, p0, Lcms;->j:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()Lcms;
    .locals 1

    .prologue
    .line 899
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcms;->c:Z

    .line 900
    return-object p0
.end method

.method public a(J)Lcms;
    .locals 3

    .prologue
    .line 944
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcms;->k:J

    .line 945
    return-object p0
.end method

.method public a(Lcmq;)Lcms;
    .locals 0

    .prologue
    .line 924
    iput-object p1, p0, Lcms;->h:Lcmq;

    .line 925
    return-object p0
.end method

.method public a(Lcmt;)Lcms;
    .locals 0

    .prologue
    .line 904
    iput-object p1, p0, Lcms;->d:Lcmt;

    .line 905
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcms;
    .locals 0

    .prologue
    .line 894
    iput-object p1, p0, Lcms;->a:Ljava/lang/String;

    .line 895
    return-object p0
.end method

.method public a(Ljava/util/Map;)Lcms;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "Lcms;"
        }
    .end annotation

    .prologue
    .line 929
    iput-object p1, p0, Lcms;->i:Ljava/util/Map;

    .line 930
    return-object p0
.end method

.method public a(Z)Lcms;
    .locals 0

    .prologue
    .line 939
    iput-boolean p1, p0, Lcms;->b:Z

    .line 940
    return-object p0
.end method

.method public b()Lcms;
    .locals 1

    .prologue
    .line 949
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcms;->l:Z

    .line 950
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcms;
    .locals 0

    .prologue
    .line 909
    iput-object p1, p0, Lcms;->e:Ljava/lang/String;

    .line 910
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcms;
    .locals 0

    .prologue
    .line 914
    iput-object p1, p0, Lcms;->f:Ljava/lang/String;

    .line 915
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcms;
    .locals 0

    .prologue
    .line 919
    iput-object p1, p0, Lcms;->g:Ljava/lang/String;

    .line 920
    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcms;
    .locals 0

    .prologue
    .line 934
    iput-object p1, p0, Lcms;->j:Ljava/lang/String;

    .line 935
    return-object p0
.end method
