.class public Lkjh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lkjo;

.field private b:Lkhx;

.field private final c:Ljava/lang/String;

.field private d:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lfqa;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/contacorrente/domain/Conta;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lkkd;


# direct methods
.method public constructor <init>(Lkjo;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, "Ocorreu um erro ao carregar as informa\u00e7\u00f5es"

    iput-object v0, p0, Lkjh;->c:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lkjh;->a:Lkjo;

    .line 40
    new-instance v0, Lkkd;

    invoke-direct {v0}, Lkkd;-><init>()V

    iput-object v0, p0, Lkjh;->f:Lkkd;

    .line 41
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->c()Lkhx;

    move-result-object v0

    iput-object v0, p0, Lkjh;->b:Lkhx;

    .line 42
    return-void
.end method

.method static synthetic a(Lkjh;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lkjh;->e:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lkjh;)Lkjo;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lkjh;->a:Lkjo;

    return-object v0
.end method


# virtual methods
.method public a(I)Lfvf;
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lkjh;->f:Lkkd;

    invoke-virtual {v0}, Lkkd;->b()Ljava/util/Vector;

    move-result-object v1

    .line 64
    const/4 v0, 0x0

    .line 66
    if-eqz v1, :cond_0

    .line 67
    invoke-virtual {v1, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfvf;

    .line 70
    :cond_0
    return-object v0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lkjh;->f:Lkkd;

    new-instance v1, Lkji;

    invoke-direct {v1, p0}, Lkji;-><init>(Lkjh;)V

    invoke-virtual {v0, v1}, Lkkd;->a(Lgkw;)V

    .line 59
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 84
    iget-object v0, p0, Lkjh;->f:Lkkd;

    invoke-virtual {v0}, Lkkd;->b()Ljava/util/Vector;

    move-result-object v2

    .line 86
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 87
    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfvf;

    invoke-virtual {v0}, Lfvf;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lkjh;->a:Lkjo;

    invoke-virtual {v0, v1}, Lkjo;->a(I)V

    .line 92
    :cond_0
    return-void

    .line 86
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Lkjh;->b:Lkhx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkjh;->b:Lkhx;

    invoke-virtual {v0}, Lkhx;->b()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lkjh;->b:Lkhx;

    invoke-virtual {v0}, Lkhx;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkhs;

    invoke-virtual {v0}, Lkhs;->a()Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lkjh;->d:Ljava/util/Vector;

    .line 112
    :cond_0
    iget-object v0, p0, Lkjh;->d:Ljava/util/Vector;

    if-nez v0, :cond_2

    .line 113
    iget-object v0, p0, Lkjh;->a:Lkjo;

    const-string v1, "Ocorreu um erro ao carregar as informa\u00e7\u00f5es"

    invoke-virtual {v0, v1}, Lkjo;->a(Ljava/lang/String;)V

    .line 124
    :cond_1
    :goto_0
    return-void

    .line 117
    :cond_2
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lkjh;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 118
    iget-object v0, p0, Lkjh;->d:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfqa;

    invoke-virtual {v0}, Lfqa;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 119
    iget-object v0, p0, Lkjh;->a:Lkjo;

    invoke-virtual {v0, v1}, Lkjo;->b(I)V

    goto :goto_0

    .line 117
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public a(Lkid;)V
    .locals 2

    .prologue
    .line 131
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lkid;->e(Ljava/lang/String;)V

    .line 132
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lkid;->A(Ljava/lang/String;)V

    .line 133
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lkid;->B(Ljava/lang/String;)V

    .line 135
    new-instance v0, Lkke;

    new-instance v1, Lkjj;

    invoke-direct {v1, p0}, Lkjj;-><init>(Lkjh;)V

    invoke-direct {v0, p1, v1}, Lkke;-><init>(Lkid;Lgkv;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 146
    invoke-virtual {v0, v1}, Lkke;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 147
    return-void
.end method

.method public b(I)Lfuu;
    .locals 2

    .prologue
    .line 74
    const/4 v0, 0x0

    .line 76
    iget-object v1, p0, Lkjh;->e:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 77
    iget-object v0, p0, Lkjh;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfuu;

    .line 80
    :cond_0
    return-object v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lkjh;->a:Lkjo;

    iget-object v1, p0, Lkjh;->f:Lkkd;

    invoke-virtual {v1}, Lkkd;->a()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkjo;->b(Ljava/util/Vector;)V

    .line 128
    return-void
.end method

.method public c(I)V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lkjh;->b:Lkhx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkjh;->b:Lkhx;

    invoke-virtual {v0}, Lkhx;->b()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lkjh;->b:Lkhx;

    invoke-virtual {v0}, Lkhx;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkhs;

    invoke-virtual {v0}, Lkhs;->a()Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lkjh;->d:Ljava/util/Vector;

    .line 99
    :cond_0
    iget-object v0, p0, Lkjh;->d:Ljava/util/Vector;

    if-nez v0, :cond_1

    .line 100
    iget-object v0, p0, Lkjh;->a:Lkjo;

    const-string v1, "Ocorreu um erro ao carregar as informa\u00e7\u00f5es"

    invoke-virtual {v0, v1}, Lkjo;->a(Ljava/lang/String;)V

    .line 105
    :goto_0
    return-void

    .line 102
    :cond_1
    iget-object v0, p0, Lkjh;->a:Lkjo;

    iget-object v1, p0, Lkjh;->d:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Lkjo;->a(Ljava/util/Vector;)V

    goto :goto_0
.end method
