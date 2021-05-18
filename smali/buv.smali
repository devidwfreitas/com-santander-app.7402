.class public Lbuv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:[Ljava/lang/String;

.field private c:F

.field private d:J

.field private e:J

.field private f:Z

.field private g:J

.field private h:I

.field private i:J

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:J

.field private n:I

.field private o:J


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x7530

    const/16 v3, 0x19

    const/4 v2, 0x1

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-boolean v2, p0, Lbuv;->a:Z

    .line 150
    invoke-static {}, Lbut;->p()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbuv;->b:[Ljava/lang/String;

    .line 151
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lbuv;->c:F

    .line 152
    iput-wide v4, p0, Lbuv;->d:J

    .line 153
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lbuv;->e:J

    .line 155
    iput-boolean v2, p0, Lbuv;->f:Z

    .line 156
    iput-wide v4, p0, Lbuv;->g:J

    .line 157
    iput v3, p0, Lbuv;->h:I

    .line 158
    const-wide/16 v0, 0x1770

    iput-wide v0, p0, Lbuv;->i:J

    .line 159
    iput-boolean v2, p0, Lbuv;->j:Z

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbuv;->k:Z

    .line 162
    iput-boolean v2, p0, Lbuv;->l:Z

    .line 163
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lbuv;->m:J

    .line 164
    iput v3, p0, Lbuv;->n:I

    .line 165
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lbuv;->o:J

    return-void
.end method

.method static synthetic a(Lbuv;)Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lbuv;->a:Z

    return v0
.end method

.method static synthetic b(Lbuv;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lbuv;->b:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lbuv;)F
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lbuv;->c:F

    return v0
.end method

.method static synthetic d(Lbuv;)J
    .locals 2

    .prologue
    .line 148
    iget-wide v0, p0, Lbuv;->d:J

    return-wide v0
.end method

.method static synthetic e(Lbuv;)J
    .locals 2

    .prologue
    .line 148
    iget-wide v0, p0, Lbuv;->e:J

    return-wide v0
.end method

.method static synthetic f(Lbuv;)Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lbuv;->f:Z

    return v0
.end method

.method static synthetic g(Lbuv;)J
    .locals 2

    .prologue
    .line 148
    iget-wide v0, p0, Lbuv;->g:J

    return-wide v0
.end method

.method static synthetic h(Lbuv;)I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lbuv;->h:I

    return v0
.end method

.method static synthetic i(Lbuv;)J
    .locals 2

    .prologue
    .line 148
    iget-wide v0, p0, Lbuv;->i:J

    return-wide v0
.end method

.method static synthetic j(Lbuv;)Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lbuv;->j:Z

    return v0
.end method

.method static synthetic k(Lbuv;)Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lbuv;->k:Z

    return v0
.end method

.method static synthetic l(Lbuv;)Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lbuv;->l:Z

    return v0
.end method

.method static synthetic m(Lbuv;)J
    .locals 2

    .prologue
    .line 148
    iget-wide v0, p0, Lbuv;->m:J

    return-wide v0
.end method

.method static synthetic n(Lbuv;)I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lbuv;->n:I

    return v0
.end method

.method static synthetic o(Lbuv;)J
    .locals 2

    .prologue
    .line 148
    iget-wide v0, p0, Lbuv;->o:J

    return-wide v0
.end method


# virtual methods
.method public a()Lbut;
    .locals 2

    .prologue
    .line 168
    new-instance v0, Lbut;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lbut;-><init>(Lbuv;Lbuu;)V

    return-object v0
.end method

.method public a(F)Lbuv;
    .locals 0

    .prologue
    .line 187
    iput p1, p0, Lbuv;->c:F

    .line 188
    return-object p0
.end method

.method public a(I)Lbuv;
    .locals 0

    .prologue
    .line 207
    iput p1, p0, Lbuv;->h:I

    .line 208
    return-object p0
.end method

.method public a(J)Lbuv;
    .locals 1

    .prologue
    .line 177
    iput-wide p1, p0, Lbuv;->e:J

    .line 178
    return-object p0
.end method

.method public a(Z)Lbuv;
    .locals 0

    .prologue
    .line 172
    iput-boolean p1, p0, Lbuv;->a:Z

    .line 173
    return-object p0
.end method

.method public a([Ljava/lang/String;)Lbuv;
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lbuv;->b:[Ljava/lang/String;

    .line 183
    return-object p0
.end method

.method public b(I)Lbuv;
    .locals 0

    .prologue
    .line 237
    iput p1, p0, Lbuv;->n:I

    .line 238
    return-object p0
.end method

.method public b(J)Lbuv;
    .locals 1

    .prologue
    .line 192
    iput-wide p1, p0, Lbuv;->d:J

    .line 193
    return-object p0
.end method

.method public b(Z)Lbuv;
    .locals 0

    .prologue
    .line 197
    iput-boolean p1, p0, Lbuv;->f:Z

    .line 198
    return-object p0
.end method

.method public c(J)Lbuv;
    .locals 1

    .prologue
    .line 202
    iput-wide p1, p0, Lbuv;->g:J

    .line 203
    return-object p0
.end method

.method public c(Z)Lbuv;
    .locals 0

    .prologue
    .line 217
    iput-boolean p1, p0, Lbuv;->j:Z

    .line 218
    return-object p0
.end method

.method public d(J)Lbuv;
    .locals 1

    .prologue
    .line 212
    iput-wide p1, p0, Lbuv;->i:J

    .line 213
    return-object p0
.end method

.method public d(Z)Lbuv;
    .locals 0

    .prologue
    .line 222
    iput-boolean p1, p0, Lbuv;->k:Z

    .line 223
    return-object p0
.end method

.method public e(J)Lbuv;
    .locals 1

    .prologue
    .line 232
    iput-wide p1, p0, Lbuv;->m:J

    .line 233
    return-object p0
.end method

.method public e(Z)Lbuv;
    .locals 0

    .prologue
    .line 227
    iput-boolean p1, p0, Lbuv;->l:Z

    .line 228
    return-object p0
.end method

.method public f(J)Lbuv;
    .locals 1

    .prologue
    .line 242
    iput-wide p1, p0, Lbuv;->o:J

    .line 243
    return-object p0
.end method
