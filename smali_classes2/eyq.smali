.class final Leyq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lett;

.field private b:Leqo;

.field private c:Leqo;

.field private d:Leqo;

.field private e:Leqo;

.field private f:I

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method constructor <init>(Lett;Leqo;Leqo;Leqo;Leqo;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    if-nez p2, :cond_0

    if-eqz p4, :cond_3

    :cond_0
    if-nez p3, :cond_1

    if-eqz p5, :cond_3

    :cond_1
    if-eqz p2, :cond_2

    if-eqz p3, :cond_3

    :cond_2
    if-eqz p4, :cond_4

    if-nez p5, :cond_4

    .line 47
    :cond_3
    invoke-static {}, Leqh;->a()Leqh;

    move-result-object v0

    throw v0

    .line 49
    :cond_4
    invoke-direct/range {p0 .. p5}, Leyq;->a(Lett;Leqo;Leqo;Leqo;Leqo;)V

    .line 50
    return-void
.end method

.method constructor <init>(Leyq;)V
    .locals 6

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iget-object v1, p1, Leyq;->a:Lett;

    iget-object v2, p1, Leyq;->b:Leqo;

    iget-object v3, p1, Leyq;->c:Leqo;

    iget-object v4, p1, Leyq;->d:Leqo;

    iget-object v5, p1, Leyq;->e:Leqo;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Leyq;->a(Lett;Leqo;Leqo;Leqo;Leqo;)V

    .line 54
    return-void
.end method

.method static a(Leyq;Leyq;)Leyq;
    .locals 6

    .prologue
    .line 70
    if-nez p0, :cond_0

    .line 76
    :goto_0
    return-object p1

    .line 73
    :cond_0
    if-nez p1, :cond_1

    move-object p1, p0

    .line 74
    goto :goto_0

    .line 76
    :cond_1
    new-instance v0, Leyq;

    iget-object v1, p0, Leyq;->a:Lett;

    iget-object v2, p0, Leyq;->b:Leqo;

    iget-object v3, p0, Leyq;->c:Leqo;

    iget-object v4, p1, Leyq;->d:Leqo;

    iget-object v5, p1, Leyq;->e:Leqo;

    invoke-direct/range {v0 .. v5}, Leyq;-><init>(Lett;Leqo;Leqo;Leqo;Leqo;)V

    move-object p1, v0

    goto :goto_0
.end method

.method private a(Lett;Leqo;Leqo;Leqo;Leqo;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Leyq;->a:Lett;

    .line 62
    iput-object p2, p0, Leyq;->b:Leqo;

    .line 63
    iput-object p3, p0, Leyq;->c:Leqo;

    .line 64
    iput-object p4, p0, Leyq;->d:Leqo;

    .line 65
    iput-object p5, p0, Leyq;->e:Leqo;

    .line 66
    invoke-direct {p0}, Leyq;->i()V

    .line 67
    return-void
.end method

.method private i()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 118
    iget-object v0, p0, Leyq;->b:Leqo;

    if-nez v0, :cond_1

    .line 119
    new-instance v0, Leqo;

    iget-object v1, p0, Leyq;->d:Leqo;

    invoke-virtual {v1}, Leqo;->b()F

    move-result v1

    invoke-direct {v0, v2, v1}, Leqo;-><init>(FF)V

    iput-object v0, p0, Leyq;->b:Leqo;

    .line 120
    new-instance v0, Leqo;

    iget-object v1, p0, Leyq;->e:Leqo;

    invoke-virtual {v1}, Leqo;->b()F

    move-result v1

    invoke-direct {v0, v2, v1}, Leqo;-><init>(FF)V

    iput-object v0, p0, Leyq;->c:Leqo;

    .line 126
    :cond_0
    :goto_0
    iget-object v0, p0, Leyq;->b:Leqo;

    invoke-virtual {v0}, Leqo;->a()F

    move-result v0

    iget-object v1, p0, Leyq;->c:Leqo;

    invoke-virtual {v1}, Leqo;->a()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Leyq;->f:I

    .line 127
    iget-object v0, p0, Leyq;->d:Leqo;

    invoke-virtual {v0}, Leqo;->a()F

    move-result v0

    iget-object v1, p0, Leyq;->e:Leqo;

    invoke-virtual {v1}, Leqo;->a()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Leyq;->g:I

    .line 128
    iget-object v0, p0, Leyq;->b:Leqo;

    invoke-virtual {v0}, Leqo;->b()F

    move-result v0

    iget-object v1, p0, Leyq;->d:Leqo;

    invoke-virtual {v1}, Leqo;->b()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Leyq;->h:I

    .line 129
    iget-object v0, p0, Leyq;->c:Leqo;

    invoke-virtual {v0}, Leqo;->b()F

    move-result v0

    iget-object v1, p0, Leyq;->e:Leqo;

    invoke-virtual {v1}, Leqo;->b()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Leyq;->i:I

    .line 130
    return-void

    .line 121
    :cond_1
    iget-object v0, p0, Leyq;->d:Leqo;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Leqo;

    iget-object v1, p0, Leyq;->a:Lett;

    invoke-virtual {v1}, Lett;->f()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    iget-object v2, p0, Leyq;->b:Leqo;

    invoke-virtual {v2}, Leqo;->b()F

    move-result v2

    invoke-direct {v0, v1, v2}, Leqo;-><init>(FF)V

    iput-object v0, p0, Leyq;->d:Leqo;

    .line 123
    new-instance v0, Leqo;

    iget-object v1, p0, Leyq;->a:Lett;

    invoke-virtual {v1}, Lett;->f()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    iget-object v2, p0, Leyq;->c:Leqo;

    invoke-virtual {v2}, Leqo;->b()F

    move-result v2

    invoke-direct {v0, v1, v2}, Leqo;-><init>(FF)V

    iput-object v0, p0, Leyq;->e:Leqo;

    goto :goto_0
.end method


# virtual methods
.method a()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Leyq;->f:I

    return v0
.end method

.method a(IIZ)Leyq;
    .locals 7

    .prologue
    .line 80
    iget-object v3, p0, Leyq;->b:Leqo;

    .line 81
    iget-object v6, p0, Leyq;->c:Leqo;

    .line 82
    iget-object v4, p0, Leyq;->d:Leqo;

    .line 83
    iget-object v5, p0, Leyq;->e:Leqo;

    .line 85
    if-lez p1, :cond_7

    .line 86
    if-eqz p3, :cond_2

    iget-object v0, p0, Leyq;->b:Leqo;

    .line 87
    :goto_0
    invoke-virtual {v0}, Leqo;->b()F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v1, p1

    .line 88
    if-gez v1, :cond_0

    .line 89
    const/4 v1, 0x0

    .line 91
    :cond_0
    new-instance v2, Leqo;

    invoke-virtual {v0}, Leqo;->a()F

    move-result v0

    int-to-float v1, v1

    invoke-direct {v2, v0, v1}, Leqo;-><init>(FF)V

    .line 92
    if-eqz p3, :cond_3

    .line 99
    :goto_1
    if-lez p2, :cond_6

    .line 100
    if-eqz p3, :cond_4

    iget-object v0, p0, Leyq;->c:Leqo;

    .line 101
    :goto_2
    invoke-virtual {v0}, Leqo;->b()F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v1, p2

    .line 102
    iget-object v3, p0, Leyq;->a:Lett;

    invoke-virtual {v3}, Lett;->g()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 103
    iget-object v1, p0, Leyq;->a:Lett;

    invoke-virtual {v1}, Lett;->g()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 105
    :cond_1
    new-instance v3, Leqo;

    invoke-virtual {v0}, Leqo;->a()F

    move-result v0

    int-to-float v1, v1

    invoke-direct {v3, v0, v1}, Leqo;-><init>(FF)V

    .line 106
    if-eqz p3, :cond_5

    .line 113
    :goto_3
    invoke-direct {p0}, Leyq;->i()V

    .line 114
    new-instance v0, Leyq;

    iget-object v1, p0, Leyq;->a:Lett;

    invoke-direct/range {v0 .. v5}, Leyq;-><init>(Lett;Leqo;Leqo;Leqo;Leqo;)V

    return-object v0

    .line 86
    :cond_2
    iget-object v0, p0, Leyq;->d:Leqo;

    goto :goto_0

    :cond_3
    move-object v4, v2

    move-object v2, v3

    .line 95
    goto :goto_1

    .line 100
    :cond_4
    iget-object v0, p0, Leyq;->e:Leqo;

    goto :goto_2

    :cond_5
    move-object v5, v3

    move-object v3, v6

    .line 109
    goto :goto_3

    :cond_6
    move-object v3, v6

    goto :goto_3

    :cond_7
    move-object v2, v3

    goto :goto_1
.end method

.method b()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Leyq;->g:I

    return v0
.end method

.method c()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Leyq;->h:I

    return v0
.end method

.method d()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Leyq;->i:I

    return v0
.end method

.method e()Leqo;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Leyq;->b:Leqo;

    return-object v0
.end method

.method f()Leqo;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Leyq;->d:Leqo;

    return-object v0
.end method

.method g()Leqo;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Leyq;->c:Leqo;

    return-object v0
.end method

.method h()Leqo;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Leyq;->e:Leqo;

    return-object v0
.end method
