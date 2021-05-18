.class public Lnbg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnbf;


# instance fields
.field private a:Lndw;

.field private b:Landroid/support/v4/app/Fragment;

.field private c:Lmip;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lndw;Landroid/support/v4/app/Fragment;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnbg;->d:Ljava/util/List;

    .line 43
    iput-object p1, p0, Lnbg;->a:Lndw;

    .line 44
    iput-object p2, p0, Lnbg;->b:Landroid/support/v4/app/Fragment;

    .line 45
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Lnbg;->c:Lmip;

    .line 46
    return-void
.end method

.method static synthetic a(Lnbg;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lnbg;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lnbg;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lnbg;->d:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lnbg;)Lmip;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lnbg;->c:Lmip;

    return-object v0
.end method

.method static synthetic a(Lnbg;Z)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lnbg;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    .prologue
    .line 155
    new-instance v0, Lnec;

    new-instance v1, Lnbn;

    invoke-direct {v1, p0, p1}, Lnbn;-><init>(Lnbg;Z)V

    iget-object v2, p0, Lnbg;->b:Landroid/support/v4/app/Fragment;

    .line 196
    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnec;-><init>(Lgkw;Landroid/app/Activity;)V

    invoke-virtual {v0}, Lnec;->b()V

    .line 197
    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 201
    :try_start_0
    new-instance v0, Lnaf;

    invoke-direct {v0}, Lnaf;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lnaf;->c([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 205
    :goto_0
    return-object v0

    .line 202
    :catch_0
    move-exception v0

    .line 203
    const-string v1, "DECRYPT_IDENT_CSO"

    const-string v2, "decriptIdentificacaoCSO"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 205
    const-string v0, ""

    goto :goto_0
.end method

.method static synthetic b(Lnbg;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lnbg;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lnbg;)Lndw;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lnbg;->a:Lndw;

    return-object v0
.end method

.method static synthetic c(Lnbg;)Ljava/util/List;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lnbg;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lnbg;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lnbg;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lnbg;)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lnbg;->b:Landroid/support/v4/app/Fragment;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 50
    new-instance v0, Lnec;

    new-instance v1, Lnbh;

    invoke-direct {v1, p0}, Lnbh;-><init>(Lnbg;)V

    iget-object v2, p0, Lnbg;->b:Landroid/support/v4/app/Fragment;

    .line 110
    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnec;-><init>(Lgkw;Landroid/app/Activity;)V

    invoke-virtual {v0}, Lnec;->a()V

    .line 111
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 210
    const-string v0, "ou"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 211
    invoke-static {}, Lmzr;->j()Ljava/lang/String;

    move-result-object v1

    .line 213
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_5

    .line 214
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 215
    array-length v2, v1

    const/16 v3, 0xb

    if-ne v2, v3, :cond_4

    .line 216
    aget-object v2, v0, v4

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 217
    iget-object v2, p0, Lnbg;->d:Ljava/util/List;

    const-string v3, "1"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    :cond_0
    aget-object v2, v0, v4

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v3, v1, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 220
    iget-object v2, p0, Lnbg;->d:Ljava/util/List;

    const-string v3, "2"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    :cond_1
    aget-object v2, v0, v4

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    aget-object v3, v1, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 223
    iget-object v2, p0, Lnbg;->d:Ljava/util/List;

    const-string v3, "3"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    :cond_2
    aget-object v2, v0, v4

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    aget-object v3, v1, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 226
    iget-object v2, p0, Lnbg;->d:Ljava/util/List;

    const-string v3, "4"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    :cond_3
    aget-object v0, v0, v4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 229
    iget-object v0, p0, Lnbg;->d:Ljava/util/List;

    const-string v1, "5"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    :cond_4
    :goto_0
    return-void

    .line 232
    :cond_5
    iget-object v1, p0, Lnbg;->d:Ljava/util/List;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 116
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnbg;->a(Z)V

    .line 118
    iget-object v0, p0, Lnbg;->a:Lndw;

    invoke-interface {v0}, Lndw;->e()V

    .line 120
    iget-object v0, p0, Lnbg;->a:Lndw;

    new-instance v1, Lnbl;

    invoke-direct {v1, p0}, Lnbl;-><init>(Lnbg;)V

    invoke-interface {v0, v1}, Lndw;->b(Landroid/view/View$OnClickListener;)V

    .line 135
    invoke-static {}, Lmzr;->d()I

    move-result v0

    .line 136
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 137
    iget-object v0, p0, Lnbg;->a:Lndw;

    invoke-interface {v0}, Lndw;->c()V

    .line 141
    :cond_0
    :goto_0
    iget-object v0, p0, Lnbg;->a:Lndw;

    new-instance v1, Lnbm;

    invoke-direct {v1, p0}, Lnbm;-><init>(Lnbg;)V

    invoke-interface {v0, v1}, Lndw;->a(Landroid/view/View$OnClickListener;)V

    .line 151
    return-void

    .line 138
    :cond_1
    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 139
    :cond_2
    iget-object v0, p0, Lnbg;->a:Lndw;

    invoke-interface {v0}, Lndw;->d()V

    goto :goto_0
.end method
