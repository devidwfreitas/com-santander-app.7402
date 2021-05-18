.class public Larc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Ljava/util/Date;

.field private j:Larh;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Larc;->h:Ljava/lang/String;

    .line 15
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Larc;->i:Ljava/util/Date;

    .line 16
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Larc;->a:J

    return-wide v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 99
    iput p1, p0, Larc;->d:I

    .line 100
    return-void
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 51
    iput-wide p1, p0, Larc;->a:J

    .line 52
    return-void
.end method

.method public a(Larh;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Larc;->j:Larh;

    .line 180
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Larc;->b:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public a(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Larc;->i:Ljava/util/Date;

    .line 164
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Larc;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 115
    iput p1, p0, Larc;->e:I

    .line 116
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Larc;->c:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Larc;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 131
    iput p1, p0, Larc;->f:I

    .line 132
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Larc;->h:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Larc;->d:I

    return v0
.end method

.method public d(I)V
    .locals 0

    .prologue
    .line 147
    iput p1, p0, Larc;->g:I

    .line 148
    return-void
.end method

.method public e()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Larc;->e:I

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Larc;->f:I

    return v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Larc;->g:I

    return v0
.end method

.method public h()Ljava/util/Date;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Larc;->i:Ljava/util/Date;

    return-object v0
.end method

.method public i()Larh;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Larc;->j:Larh;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Larc;->h:Ljava/lang/String;

    return-object v0
.end method
