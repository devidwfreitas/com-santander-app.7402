.class public Lfnp;
.super Lfnt;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Lfog;

.field private c:I

.field private d:Lmiq;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lfnt;-><init>()V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfnp;->a:Z

    .line 44
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Lfnp;->d:Lmiq;

    .line 45
    return-void
.end method

.method static synthetic a(Lfnp;I)I
    .locals 0

    .prologue
    .line 37
    iput p1, p0, Lfnp;->c:I

    return p1
.end method

.method static synthetic a(Lfnp;)Lmiq;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lfnp;->d:Lmiq;

    return-object v0
.end method

.method static synthetic a(Lfnp;Lfnx;Lfny;Lfoh;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lfnp;->a(Lfnx;Lfny;Lfoh;)V

    return-void
.end method

.method private a(Lfnx;Lfny;Lfoh;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 190
    invoke-virtual {p0, p2}, Lfnp;->f(Lfny;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 192
    invoke-virtual {p0, p2}, Lfnp;->c(Lfny;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iput-boolean v1, p0, Lfnp;->a:Z

    .line 195
    :cond_0
    invoke-virtual {p0, p2}, Lfnp;->e(Lfny;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 196
    iput-boolean v1, p0, Lfnp;->a:Z

    .line 200
    :cond_1
    :goto_0
    invoke-virtual {p0, p2}, Lfnp;->g(Lfny;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 201
    iput-boolean v2, p0, Lfnp;->a:Z

    .line 203
    :cond_2
    invoke-virtual {p0, p2}, Lfnp;->l(Lfny;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 204
    iput-boolean v1, p0, Lfnp;->a:Z

    .line 215
    :cond_3
    :goto_1
    invoke-virtual {p0, p2}, Lfnp;->j(Lfny;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 216
    iput-boolean v2, p0, Lfnp;->a:Z

    .line 221
    :cond_4
    :goto_2
    iget-boolean v0, p0, Lfnp;->a:Z

    if-eqz v0, :cond_5

    .line 222
    new-instance v0, Lfwr;

    invoke-direct {v0}, Lfwr;-><init>()V

    .line 223
    invoke-virtual {p2}, Lfny;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfwr;->j(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p2}, Lfny;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfwr;->p(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p1}, Lfnx;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lfnp;->a(Lfwr;Ljava/lang/String;)V

    .line 228
    :cond_5
    invoke-interface {p3, p2}, Lfoh;->a(Ljava/lang/Object;)V

    .line 233
    :goto_3
    return-void

    .line 197
    :cond_6
    invoke-virtual {p0, p2}, Lfnp;->d(Lfny;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    iput-boolean v1, p0, Lfnp;->a:Z

    goto :goto_0

    .line 205
    :cond_7
    invoke-virtual {p0, p2}, Lfnp;->k(Lfny;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 206
    iput-boolean v1, p0, Lfnp;->a:Z

    goto :goto_1

    .line 207
    :cond_8
    invoke-virtual {p0, p2}, Lfnp;->h(Lfny;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 208
    iput-boolean v1, p0, Lfnp;->a:Z

    goto :goto_1

    .line 209
    :cond_9
    invoke-virtual {p0, p2}, Lfnp;->b(Lfny;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 210
    iput-boolean v1, p0, Lfnp;->a:Z

    goto :goto_1

    .line 211
    :cond_a
    invoke-virtual {p0, p2}, Lfnp;->a(Lfny;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 212
    iput-boolean v1, p0, Lfnp;->a:Z

    goto :goto_1

    .line 217
    :cond_b
    invoke-virtual {p0, p2}, Lfnp;->i(Lfny;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 218
    iput-boolean v1, p0, Lfnp;->a:Z

    goto :goto_2

    .line 230
    :cond_c
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Lfoh;->a(Ljava/lang/Object;)V

    goto :goto_3
.end method

.method static synthetic a(Lfnp;Z)Z
    .locals 0

    .prologue
    .line 37
    iput-boolean p1, p0, Lfnp;->a:Z

    return p1
.end method

.method static synthetic b(Lfnp;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lfnp;->c:I

    return v0
.end method

.method static synthetic c(Lfnp;)Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lfnp;->a:Z

    return v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 237
    new-instance v5, Landroid/app/Dialog;

    const v0, 0x7f0b0224

    invoke-direct {v5, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 238
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 239
    invoke-virtual {v5, p1}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 240
    const v0, 0x7f04016f

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 241
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 242
    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v1, 0x7f0b021e

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 244
    const v0, 0x7f10071c

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v0, Lfnr;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lfnr;-><init>(Lfnp;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/app/Dialog;)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    :try_start_0
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :goto_0
    return-void

    .line 259
    :catch_0
    move-exception v0

    .line 260
    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Erro showLoading"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Landroid/app/Activity;Lfnx;Lfoh;)V
    .locals 7

    .prologue
    .line 58
    new-instance v6, Lfog;

    new-instance v0, Lfnq;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lfnq;-><init>(Lfnp;Lfnx;Lfoh;Landroid/app/Activity;Landroid/content/Context;)V

    invoke-direct {v6, v0, p2, p3}, Lfog;-><init>(Lfoh;Landroid/app/Activity;Lfnx;)V

    const/4 v0, 0x0

    new-array v0, v0, [Lfnx;

    .line 184
    invoke-virtual {v6, v0}, Lfog;->c([Ljava/lang/Object;)Lgne;

    move-result-object v0

    check-cast v0, Lfog;

    iput-object v0, p0, Lfnp;->b:Lfog;

    .line 185
    return-void
.end method

.method public a(Lfwr;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lfnp;->d:Lmiq;

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0, p2}, Lmir;->h(Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lfnp;->d:Lmiq;

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {p1}, Lfwr;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmir;->g(Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lfnp;->d:Lmiq;

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {p1}, Lfwr;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmir;->f(Ljava/lang/String;)V

    .line 268
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x1

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lfnp;->a:Z

    return v0
.end method
