.class public Lmiq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmip;


# static fields
.field private static a:Lmiq;


# instance fields
.field private A:Z

.field private b:Lmir;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:[B

.field private i:Lfwu;

.field private j:Lfwv;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Z

.field private q:Landroid/net/Uri;

.field private r:Ljava/lang/String;

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Ljnc;

.field private x:Lil;

.field private y:Lfvu;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Lmiq;->a:Lmiq;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean v1, p0, Lmiq;->c:Z

    .line 29
    iput-boolean v1, p0, Lmiq;->d:Z

    .line 30
    iput-boolean v1, p0, Lmiq;->e:Z

    .line 32
    iput-boolean v1, p0, Lmiq;->g:Z

    .line 40
    const-string v0, "https://mbbocu.santander.com.br/"

    iput-object v0, p0, Lmiq;->m:Ljava/lang/String;

    .line 41
    const-string v0, "https://esbapi.santander.com.br/"

    iput-object v0, p0, Lmiq;->n:Ljava/lang/String;

    .line 42
    const-string v0, "37826a50a428013485b60050569009ca"

    iput-object v0, p0, Lmiq;->o:Ljava/lang/String;

    .line 49
    iput-boolean v1, p0, Lmiq;->s:Z

    .line 51
    iput-boolean v1, p0, Lmiq;->u:Z

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiq;->v:Z

    .line 57
    iput-boolean v1, p0, Lmiq;->A:Z

    return-void
.end method

.method public static C()Lmiq;
    .locals 2

    .prologue
    .line 215
    sget-object v0, Lmiq;->a:Lmiq;

    if-nez v0, :cond_0

    .line 216
    new-instance v0, Lmiq;

    invoke-direct {v0}, Lmiq;-><init>()V

    sput-object v0, Lmiq;->a:Lmiq;

    .line 217
    sget-object v0, Lmiq;->a:Lmiq;

    new-instance v1, Lmir;

    invoke-direct {v1}, Lmir;-><init>()V

    invoke-direct {v0, v1}, Lmiq;->a(Lmir;)V

    .line 220
    :cond_0
    sget-object v0, Lmiq;->a:Lmiq;

    return-object v0
.end method

.method public static a(Lmiq;)V
    .locals 0

    .prologue
    .line 224
    sput-object p0, Lmiq;->a:Lmiq;

    .line 225
    return-void
.end method

.method private a(Lmir;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lmiq;->b:Lmir;

    return-void
.end method


# virtual methods
.method public A()Lil;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lmiq;->x:Lil;

    return-object v0
.end method

.method public B()Z
    .locals 1

    .prologue
    .line 352
    iget-boolean v0, p0, Lmiq;->A:Z

    return v0
.end method

.method public a()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lmiq;->q:Landroid/net/Uri;

    return-object v0
.end method

.method public a(Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lmiq;->q:Landroid/net/Uri;

    .line 61
    return-void
.end method

.method public a(Lfvu;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lmiq;->y:Lfvu;

    .line 192
    return-void
.end method

.method public a(Lfwu;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lmiq;->i:Lfwu;

    .line 122
    return-void
.end method

.method public a(Lfwv;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lmiq;->j:Lfwv;

    .line 162
    return-void
.end method

.method public a(Lil;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lmiq;->x:Lil;

    .line 328
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lmiq;->l:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public a(Ljnc;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lmiq;->w:Ljnc;

    .line 323
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 76
    iput-boolean p1, p0, Lmiq;->c:Z

    .line 77
    return-void
.end method

.method public a([B)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lmiq;->h:[B

    .line 132
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lmiq;->r:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 86
    iput-boolean p1, p0, Lmiq;->d:Z

    .line 87
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lmiq;->c:Z

    return v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lmiq;->m:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 96
    iput-boolean p1, p0, Lmiq;->g:Z

    .line 97
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lmiq;->d:Z

    return v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lmiq;->n:Ljava/lang/String;

    .line 235
    return-void
.end method

.method public d(Z)V
    .locals 0

    .prologue
    .line 106
    iput-boolean p1, p0, Lmiq;->e:Z

    .line 107
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lmiq;->g:Z

    return v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lmiq;->o:Ljava/lang/String;

    .line 244
    return-void
.end method

.method public e(Z)V
    .locals 0

    .prologue
    .line 171
    iput-boolean p1, p0, Lmiq;->u:Z

    .line 172
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lmiq;->e:Z

    return v0
.end method

.method public f()Lmir;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lmiq;->b:Lmir;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lmiq;->k:Ljava/lang/String;

    .line 302
    return-void
.end method

.method public f(Z)V
    .locals 0

    .prologue
    .line 253
    iput-boolean p1, p0, Lmiq;->s:Z

    .line 254
    return-void
.end method

.method public g()Lfwu;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lmiq;->i:Lfwu;

    return-object v0
.end method

.method public g(Z)V
    .locals 0

    .prologue
    .line 201
    iput-boolean p1, p0, Lmiq;->t:Z

    .line 202
    return-void
.end method

.method public h(Z)V
    .locals 0

    .prologue
    .line 211
    iput-boolean p1, p0, Lmiq;->p:Z

    .line 212
    return-void
.end method

.method public h()[B
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lmiq;->h:[B

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lmiq;->l:Ljava/lang/String;

    return-object v0
.end method

.method public i(Z)V
    .locals 0

    .prologue
    .line 286
    iput-boolean p1, p0, Lmiq;->v:Z

    .line 287
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lmiq;->r:Ljava/lang/String;

    return-object v0
.end method

.method public j(Z)V
    .locals 0

    .prologue
    .line 337
    iput-boolean p1, p0, Lmiq;->z:Z

    .line 338
    return-void
.end method

.method public k()Lfwv;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lmiq;->j:Lfwv;

    return-object v0
.end method

.method public k(Z)V
    .locals 0

    .prologue
    .line 311
    iput-boolean p1, p0, Lmiq;->f:Z

    .line 312
    return-void
.end method

.method public l(Z)V
    .locals 0

    .prologue
    .line 347
    iput-boolean p1, p0, Lmiq;->A:Z

    .line 348
    return-void
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lmiq;->u:Z

    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lmiq;->m:Ljava/lang/String;

    return-object v0
.end method

.method public n()Lfvu;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lmiq;->y:Lfvu;

    return-object v0
.end method

.method public o()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 258
    iput-object v0, p0, Lmiq;->i:Lfwu;

    .line 259
    iput-object v0, p0, Lmiq;->h:[B

    .line 260
    iput-object v0, p0, Lmiq;->l:Ljava/lang/String;

    .line 261
    iput-object v0, p0, Lmiq;->r:Ljava/lang/String;

    .line 262
    iput-object v0, p0, Lmiq;->j:Lfwv;

    .line 263
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiq;->v:Z

    .line 264
    iput-boolean v1, p0, Lmiq;->z:Z

    .line 265
    iput-boolean v1, p0, Lmiq;->A:Z

    .line 267
    invoke-virtual {p0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->D()V

    .line 269
    sput-boolean v1, Lism;->b:Z

    .line 271
    invoke-static {}, Lhyb;->i()V

    .line 277
    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lmiq;->n:Ljava/lang/String;

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lmiq;->o:Ljava/lang/String;

    return-object v0
.end method

.method public r()Z
    .locals 1

    .prologue
    .line 248
    iget-boolean v0, p0, Lmiq;->s:Z

    return v0
.end method

.method public s()Z
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lmiq;->t:Z

    return v0
.end method

.method public t()Z
    .locals 1

    .prologue
    .line 206
    iget-boolean v0, p0, Lmiq;->p:Z

    return v0
.end method

.method public u()Z
    .locals 1

    .prologue
    .line 281
    iget-boolean v0, p0, Lmiq;->v:Z

    return v0
.end method

.method public v()Z
    .locals 2

    .prologue
    .line 291
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, ""

    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public w()Z
    .locals 1

    .prologue
    .line 342
    iget-boolean v0, p0, Lmiq;->z:Z

    return v0
.end method

.method public x()Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lmiq;->k:Ljava/lang/String;

    return-object v0
.end method

.method public y()Z
    .locals 1

    .prologue
    .line 306
    iget-boolean v0, p0, Lmiq;->f:Z

    return v0
.end method

.method public z()Ljnc;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 317
    iget-object v0, p0, Lmiq;->w:Ljnc;

    return-object v0
.end method
