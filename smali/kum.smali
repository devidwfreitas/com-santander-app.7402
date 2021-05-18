.class public Lkum;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Leks;
        a = "year"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Leks;
        a = "branch"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Leks;
        a = "lossNumber"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Leks;
        a = "sequence"
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Leks;
        a = "bank"
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation runtime Leks;
        a = "agency"
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation runtime Leks;
        a = "accountNumber"
    .end annotation
.end field

.field private h:Ljava/lang/String;
    .annotation runtime Leks;
        a = "documentNumber"
    .end annotation
.end field

.field private i:Ljava/lang/String;
    .annotation runtime Leks;
        a = "dv"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lkum;)Lkum;
    .locals 3

    .prologue
    .line 116
    new-instance v0, Lkum;

    invoke-direct {v0}, Lkum;-><init>()V

    .line 117
    invoke-virtual {p0}, Lkum;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkum;->d(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lkum;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkum;->b(Ljava/lang/String;)V

    .line 119
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v1

    invoke-virtual {p0}, Lkum;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkum;->e(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lkum;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkum;->c(Ljava/lang/String;)V

    .line 121
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v1

    invoke-virtual {p0}, Lkum;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkum;->f(Ljava/lang/String;)V

    .line 122
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v1

    invoke-virtual {p0}, Lkum;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkum;->g(Ljava/lang/String;)V

    .line 123
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v1

    invoke-virtual {p0}, Lkum;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkum;->h(Ljava/lang/String;)V

    .line 124
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v1

    invoke-virtual {p0}, Lkum;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkum;->i(Ljava/lang/String;)V

    .line 126
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lkum;->i:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lkum;->i:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lkum;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lkum;->b:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lkum;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lkum;->d:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lkum;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lkum;->a:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lkum;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lkum;->c:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lkum;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lkum;->e:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lkum;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lkum;->f:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lkum;->g:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lkum;->g:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lkum;->h:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lkum;->h:Ljava/lang/String;

    .line 113
    return-void
.end method
