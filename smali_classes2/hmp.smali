.class public Lhmp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhlx;
.implements Lhmo;


# static fields
.field private static final a:I = 0x1

.field private static final b:I = 0x2


# instance fields
.field private c:I

.field private d:I

.field private e:Lhmk;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private f:Lhlv;

.field private g:Lhxl;

.field private h:Z

.field private i:Lhnk;


# direct methods
.method public constructor <init>(Lhmk;)V
    .locals 1
    .param p1    # Lhmk;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lhmp;->e:Lhmk;

    .line 49
    invoke-static {}, Lhly;->a()Lhly;

    move-result-object v0

    iput-object v0, p0, Lhmp;->f:Lhlv;

    .line 50
    invoke-direct {p0}, Lhmp;->k()V

    .line 51
    return-void
.end method

.method static synthetic a(Lhmp;)Lhxl;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lhmp;->g:Lhxl;

    return-object v0
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lhmp;->e:Lhmk;

    if-nez v0, :cond_0

    .line 273
    :goto_0
    return-void

    .line 249
    :cond_0
    iget-object v0, p0, Lhmp;->e:Lhmk;

    iget-object v1, p0, Lhmp;->i:Lhnk;

    invoke-interface {v0, v1}, Lhmk;->a(Lhnk;)V

    .line 250
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 252
    :pswitch_0
    iget-object v0, p0, Lhmp;->e:Lhmk;

    iget-object v1, p0, Lhmp;->g:Lhxl;

    invoke-interface {v0, v1}, Lhmk;->f(Lhxl;)V

    goto :goto_0

    .line 255
    :pswitch_1
    iget-object v0, p0, Lhmp;->e:Lhmk;

    iget-object v1, p0, Lhmp;->g:Lhxl;

    invoke-interface {v0, v1}, Lhmk;->h(Lhxl;)V

    goto :goto_0

    .line 258
    :pswitch_2
    iget-object v0, p0, Lhmp;->e:Lhmk;

    iget-object v1, p0, Lhmp;->g:Lhxl;

    invoke-interface {v0, v1}, Lhmk;->k(Lhxl;)V

    goto :goto_0

    .line 261
    :pswitch_3
    iget-object v0, p0, Lhmp;->e:Lhmk;

    iget-object v1, p0, Lhmp;->g:Lhxl;

    invoke-interface {v0, v1}, Lhmk;->i(Lhxl;)V

    goto :goto_0

    .line 264
    :pswitch_4
    iget-object v0, p0, Lhmp;->e:Lhmk;

    iget-object v1, p0, Lhmp;->g:Lhxl;

    invoke-interface {v0, v1}, Lhmk;->j(Lhxl;)V

    goto :goto_0

    .line 267
    :pswitch_5
    iget-object v0, p0, Lhmp;->e:Lhmk;

    iget-object v1, p0, Lhmp;->g:Lhxl;

    invoke-interface {v0, v1}, Lhmk;->g(Lhxl;)V

    goto :goto_0

    .line 270
    :pswitch_6
    iget-object v0, p0, Lhmp;->e:Lhmk;

    iget-object v1, p0, Lhmp;->g:Lhxl;

    invoke-interface {v0, v1}, Lhmk;->l(Lhxl;)V

    goto :goto_0

    .line 250
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method static synthetic b(Lhmp;)Lhmk;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lhmp;->e:Lhmk;

    return-object v0
.end method

.method private k()V
    .locals 3

    .prologue
    .line 54
    iget-object v0, p0, Lhmp;->e:Lhmk;

    if-nez v0, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    iget-object v0, p0, Lhmp;->e:Lhmk;

    invoke-interface {v0}, Lhmk;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_0

    .line 59
    const-string v1, "EXTRA_VALID_AVERBATION"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lhmp;->h:Z

    .line 60
    const-string v1, "EXTRA_CANCELAVEL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lhxl;

    iput-object v0, p0, Lhmp;->g:Lhxl;

    .line 61
    new-instance v0, Lhnk;

    iget-object v1, p0, Lhmp;->g:Lhxl;

    invoke-direct {v0, v1}, Lhnk;-><init>(Lhxl;)V

    iput-object v0, p0, Lhmp;->i:Lhnk;

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lhmp;->e:Lhmk;

    if-nez v0, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lhmp;->c:I

    .line 70
    iget-object v0, p0, Lhmp;->g:Lhxl;

    invoke-interface {v0}, Lhxl;->a()I

    move-result v0

    iput v0, p0, Lhmp;->d:I

    .line 71
    invoke-virtual {p0}, Lhmp;->d()V

    .line 72
    iget-boolean v0, p0, Lhmp;->h:Z

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lhmp;->i()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lhmp;->e:Lhmk;

    if-nez v0, :cond_0

    .line 167
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lhmp;->e:Lhmk;

    invoke-interface {v0}, Lhmk;->e()V

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 133
    new-instance v1, Lhmq;

    invoke-direct {v1, p0, p1}, Lhmq;-><init>(Lhmp;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    iget-object v1, p0, Lhmp;->e:Lhmk;

    invoke-interface {v1, v0}, Lhmk;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lhmp;->e:Lhmk;

    .line 80
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lhmp;->e:Lhmk;

    if-nez v0, :cond_0

    .line 174
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lhmp;->e:Lhmk;

    invoke-interface {v0}, Lhmk;->e()V

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lhmp;->e:Lhmk;

    if-nez v0, :cond_0

    .line 228
    :goto_0
    return-void

    .line 227
    :cond_0
    iget-object v0, p0, Lhmp;->g:Lhxl;

    invoke-interface {v0, p1}, Lhxl;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lhmp;->g:Lhxl;

    invoke-interface {v0}, Lhxl;->y()Z

    move-result v0

    return v0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lhmp;->e:Lhmk;

    if-nez v0, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    iget v0, p0, Lhmp;->d:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_2

    .line 92
    iget-object v0, p0, Lhmp;->e:Lhmk;

    iget-object v1, p0, Lhmp;->g:Lhxl;

    invoke-interface {v0, v1}, Lhmk;->d(Lhxl;)V

    .line 93
    iget-object v0, p0, Lhmp;->g:Lhxl;

    invoke-interface {v0}, Lhxl;->b()I

    move-result v0

    invoke-direct {p0, v0}, Lhmp;->a(I)V

    .line 94
    invoke-virtual {p0}, Lhmp;->e()V

    goto :goto_0

    .line 95
    :cond_2
    iget v0, p0, Lhmp;->d:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 96
    iget-object v0, p0, Lhmp;->e:Lhmk;

    iget-object v1, p0, Lhmp;->g:Lhxl;

    invoke-interface {v0, v1}, Lhmk;->e(Lhxl;)V

    .line 97
    iget-object v0, p0, Lhmp;->g:Lhxl;

    invoke-interface {v0}, Lhxl;->b()I

    move-result v0

    invoke-direct {p0, v0}, Lhmp;->a(I)V

    goto :goto_0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lhmp;->e:Lhmk;

    if-nez v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 106
    :cond_0
    :try_start_0
    iget-object v0, p0, Lhmp;->e:Lhmk;

    invoke-interface {v0}, Lhmk;->d()V

    .line 107
    iget-object v0, p0, Lhmp;->f:Lhlv;

    invoke-interface {v0, p0}, Lhlv;->a(Lhlx;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    iget-object v1, p0, Lhmp;->e:Lhmk;

    invoke-interface {v1}, Lhmk;->e()V

    .line 110
    const-class v1, Lhmp;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lhmp;->e:Lhmk;

    if-nez v0, :cond_0

    .line 125
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-boolean v0, p0, Lhmp;->h:Z

    if-eqz v0, :cond_1

    .line 120
    const/4 v0, 0x1

    iput v0, p0, Lhmp;->c:I

    .line 124
    :goto_1
    iget-object v0, p0, Lhmp;->e:Lhmk;

    invoke-interface {v0}, Lhmk;->b()V

    goto :goto_0

    .line 122
    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lhmp;->c:I

    goto :goto_1
.end method

.method public g()V
    .locals 3

    .prologue
    .line 178
    iget-object v0, p0, Lhmp;->e:Lhmk;

    if-nez v0, :cond_0

    .line 199
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lhmp;->f:Lhlv;

    iget-object v1, p0, Lhmp;->g:Lhxl;

    new-instance v2, Lhmr;

    invoke-direct {v2, p0}, Lhmr;-><init>(Lhmp;)V

    invoke-interface {v0, v1, v2}, Lhlv;->a(Lhxl;Lhlw;)V

    goto :goto_0
.end method

.method public h()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 232
    iget-object v0, p0, Lhmp;->e:Lhmk;

    if-nez v0, :cond_0

    .line 244
    :goto_0
    return-void

    .line 234
    :cond_0
    iget v0, p0, Lhmp;->c:I

    if-ne v0, v3, :cond_2

    iget v0, p0, Lhmp;->d:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 236
    iget-object v0, p0, Lhmp;->e:Lhmk;

    iget-object v1, p0, Lhmp;->g:Lhxl;

    invoke-interface {v0, v1}, Lhmk;->e(Lhxl;)V

    .line 243
    :cond_1
    :goto_1
    iput v2, p0, Lhmp;->c:I

    goto :goto_0

    .line 237
    :cond_2
    iget v0, p0, Lhmp;->c:I

    if-ne v0, v3, :cond_3

    iget v0, p0, Lhmp;->d:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_3

    .line 239
    iget-object v0, p0, Lhmp;->e:Lhmk;

    iget-object v1, p0, Lhmp;->g:Lhxl;

    invoke-interface {v0, v1}, Lhmk;->d(Lhxl;)V

    goto :goto_1

    .line 240
    :cond_3
    iget v0, p0, Lhmp;->c:I

    if-ne v0, v2, :cond_1

    .line 241
    iget-object v0, p0, Lhmp;->e:Lhmk;

    invoke-interface {v0}, Lhmk;->g()V

    goto :goto_1
.end method

.method public i()V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lhmp;->e:Lhmk;

    if-nez v0, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    iget v0, p0, Lhmp;->d:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 213
    iget-object v0, p0, Lhmp;->e:Lhmk;

    iget-object v1, p0, Lhmp;->g:Lhxl;

    invoke-interface {v0, v1}, Lhmk;->a(Lhxl;)V

    goto :goto_0

    .line 214
    :cond_2
    iget v0, p0, Lhmp;->d:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 215
    iget-object v0, p0, Lhmp;->g:Lhxl;

    invoke-interface {v0}, Lhxl;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lhmp;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 216
    invoke-virtual {p0}, Lhmp;->f()V

    goto :goto_0

    .line 218
    :cond_3
    iget-object v0, p0, Lhmp;->e:Lhmk;

    iget-object v1, p0, Lhmp;->g:Lhxl;

    invoke-interface {v0, v1}, Lhmk;->a(Lhxl;)V

    goto :goto_0
.end method

.method public j()V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lhmp;->e:Lhmk;

    if-nez v0, :cond_0

    .line 206
    :goto_0
    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lhmp;->e:Lhmk;

    iget-object v1, p0, Lhmp;->g:Lhxl;

    invoke-interface {v0, v1}, Lhmk;->a(Lhxl;)V

    goto :goto_0
.end method
