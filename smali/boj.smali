.class public final Lboj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:I

.field private f:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lbqo;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lbok;",
            ">;>;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:Lbod;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;ZZILjava/util/EnumSet;Ljava/util/Map;ZLbod;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "ZZI",
            "Ljava/util/EnumSet",
            "<",
            "Lbqo;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lbok;",
            ">;>;Z",
            "Lbod;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-boolean p1, p0, Lboj;->a:Z

    .line 62
    iput-object p2, p0, Lboj;->b:Ljava/lang/String;

    .line 63
    iput-boolean p3, p0, Lboj;->c:Z

    .line 64
    iput-boolean p4, p0, Lboj;->d:Z

    .line 65
    iput-object p7, p0, Lboj;->g:Ljava/util/Map;

    .line 66
    iput-object p9, p0, Lboj;->i:Lbod;

    .line 67
    iput p5, p0, Lboj;->e:I

    .line 68
    iput-boolean p8, p0, Lboj;->h:Z

    .line 69
    iput-object p6, p0, Lboj;->f:Ljava/util/EnumSet;

    .line 70
    iput-object p10, p0, Lboj;->j:Ljava/lang/String;

    .line 71
    iput-object p11, p0, Lboj;->k:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lbok;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 223
    invoke-static {p1}, Lbqq;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lbqq;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 236
    :goto_0
    return-object v0

    .line 228
    :cond_1
    invoke-static {p0}, Lbol;->a(Ljava/lang/String;)Lboj;

    move-result-object v0

    .line 229
    if-eqz v0, :cond_2

    .line 231
    invoke-virtual {v0}, Lboj;->h()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 232
    if-eqz v0, :cond_2

    .line 233
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbok;

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 236
    goto :goto_0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lboj;->a:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lboj;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lboj;->c:Z

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lboj;->d:Z

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lboj;->e:I

    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lboj;->h:Z

    return v0
.end method

.method public g()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<",
            "Lbqo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lboj;->f:Ljava/util/EnumSet;

    return-object v0
.end method

.method public h()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lbok;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lboj;->g:Ljava/util/Map;

    return-object v0
.end method

.method public i()Lbod;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lboj;->i:Lbod;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lboj;->j:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lboj;->k:Ljava/lang/String;

    return-object v0
.end method
