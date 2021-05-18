.class public Livt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Livs;


# instance fields
.field private a:Ljaj;

.field private b:Landroid/app/Activity;

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
.method public constructor <init>(Ljaj;Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Livt;->d:Ljava/util/List;

    .line 42
    iput-object p1, p0, Livt;->a:Ljaj;

    .line 43
    iput-object p2, p0, Livt;->b:Landroid/app/Activity;

    .line 44
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Livt;->c:Lmip;

    .line 45
    return-void
.end method

.method static synthetic a(Livt;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Livt;->d:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Livt;)Lmip;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Livt;->c:Lmip;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 117
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

    .line 120
    :goto_0
    return-object v0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    const-string v1, "DECRYPT_IDENT_CSO"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic b(Livt;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Livt;->c()V

    return-void
.end method

.method static synthetic c(Livt;)Ljaj;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Livt;->a:Ljaj;

    return-object v0
.end method

.method private c()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 75
    new-instance v0, Lnec;

    new-instance v1, Livw;

    invoke-direct {v1, p0}, Livw;-><init>(Livt;)V

    iget-object v2, p0, Livt;->b:Landroid/app/Activity;

    invoke-direct {v0, v1, v2}, Lnec;-><init>(Lgkw;Landroid/app/Activity;)V

    .line 81
    invoke-virtual {v0}, Lnec;->b()V

    .line 83
    invoke-static {}, Lmzr;->k()Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-static {}, Lmzr;->l()Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-static {}, Lmzr;->j()Ljava/lang/String;

    move-result-object v2

    .line 87
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    invoke-static {v0}, Lnaq;->g(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 88
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_0

    .line 89
    iget-object v3, p0, Livt;->a:Ljaj;

    invoke-interface {v3, v0}, Ljaj;->a(Ljava/lang/String;)V

    .line 97
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 98
    iget-object v0, p0, Livt;->a:Ljaj;

    invoke-direct {p0, v1}, Livt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljaj;->b(Ljava/lang/String;)V

    .line 102
    :goto_1
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    .line 103
    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 104
    array-length v1, v0

    const/16 v2, 0xb

    if-ne v1, v2, :cond_3

    .line 105
    iget-object v1, p0, Livt;->a:Ljaj;

    invoke-interface {v1, v0}, Ljaj;->a([Ljava/lang/String;)V

    .line 113
    :goto_2
    return-void

    .line 91
    :cond_0
    iget-object v3, p0, Livt;->a:Ljaj;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljaj;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_1
    iget-object v0, p0, Livt;->a:Ljaj;

    const-string v3, ""

    invoke-interface {v0, v3}, Ljaj;->a(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Livt;->b:Landroid/app/Activity;

    const-string v3, "Alerta"

    const-string v4, "Erro ao obter o c\u00f3digo do cart\u00e3o de seguran\u00e7a. Por favor tente novamente em instantes."

    invoke-static {v0, v3, v4, v5}, Lmxn;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)Landroid/app/Dialog;

    goto :goto_0

    .line 100
    :cond_2
    iget-object v0, p0, Livt;->a:Ljaj;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljaj;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 107
    :cond_3
    iget-object v0, p0, Livt;->a:Ljaj;

    invoke-interface {v0}, Ljaj;->c()V

    goto :goto_2

    .line 111
    :cond_4
    iget-object v0, p0, Livt;->a:Ljaj;

    invoke-interface {v0}, Ljaj;->c()V

    goto :goto_2
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 49
    new-instance v0, Lnec;

    new-instance v1, Livu;

    invoke-direct {v1, p0}, Livu;-><init>(Livt;)V

    iget-object v2, p0, Livt;->b:Landroid/app/Activity;

    invoke-direct {v0, v1, v2}, Lnec;-><init>(Lgkw;Landroid/app/Activity;)V

    .line 70
    invoke-virtual {v0}, Lnec;->a()V

    .line 71
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 126
    const-string v0, "ou"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-static {}, Lmzr;->j()Ljava/lang/String;

    move-result-object v1

    .line 129
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_6

    .line 130
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 131
    array-length v2, v1

    const/16 v3, 0xb

    if-ne v2, v3, :cond_4

    .line 132
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

    .line 133
    iget-object v2, p0, Livt;->d:Ljava/util/List;

    const-string v3, "1"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
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

    .line 136
    iget-object v2, p0, Livt;->d:Ljava/util/List;

    const-string v3, "2"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
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

    .line 139
    iget-object v2, p0, Livt;->d:Ljava/util/List;

    const-string v3, "3"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
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

    .line 142
    iget-object v2, p0, Livt;->d:Ljava/util/List;

    const-string v3, "4"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
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

    .line 145
    iget-object v0, p0, Livt;->d:Ljava/util/List;

    const-string v1, "5"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_4
    :goto_0
    iget-object v0, p0, Livt;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 152
    iget-object v0, p0, Livt;->a:Ljaj;

    invoke-interface {v0}, Ljaj;->e()V

    .line 154
    :cond_5
    return-void

    .line 148
    :cond_6
    iget-object v1, p0, Livt;->d:Ljava/util/List;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public b()V
    .locals 4

    .prologue
    .line 159
    const-string v0, ""

    iput-object v0, p0, Livt;->e:Ljava/lang/String;

    .line 161
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Livt;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Livt;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Livt;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Livt;->e:Ljava/lang/String;

    .line 161
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 165
    :cond_0
    new-instance v0, Lnec;

    new-instance v1, Livx;

    invoke-direct {v1, p0}, Livx;-><init>(Livt;)V

    iget-object v2, p0, Livt;->b:Landroid/app/Activity;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnec;-><init>(Lgkw;Landroid/app/Activity;Z)V

    iget-object v1, p0, Livt;->e:Ljava/lang/String;

    .line 190
    invoke-virtual {v0, v1}, Lnec;->a(Ljava/lang/String;)V

    .line 191
    return-void
.end method
