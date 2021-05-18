.class public Lmlg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lmkr;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "bank"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "branch"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "account"
    .end annotation
.end field

.field private d:Z
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "authorization"
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "name"
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "documentNumber"
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "accountType"
    .end annotation
.end field

.field private h:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "documentType"
    .end annotation
.end field

.field private i:Z
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "ownerType"
    .end annotation
.end field

.field private j:Z
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "addGrantee"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmkr;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lmlg;->a:Lmkr;

    .line 50
    iput-object p2, p0, Lmlg;->b:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lmlg;->c:Ljava/lang/String;

    .line 52
    iput-boolean p4, p0, Lmlg;->d:Z

    .line 53
    iput-object p5, p0, Lmlg;->e:Ljava/lang/String;

    .line 54
    iput-object p6, p0, Lmlg;->f:Ljava/lang/String;

    .line 55
    iput-object p7, p0, Lmlg;->g:Ljava/lang/String;

    .line 56
    iput-object p8, p0, Lmlg;->h:Ljava/lang/String;

    .line 57
    iput-boolean p9, p0, Lmlg;->j:Z

    .line 58
    return-void
.end method


# virtual methods
.method public a()Lmkr;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lmlg;->a:Lmkr;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lmlg;->b:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public a(Lmkr;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lmlg;->a:Lmkr;

    .line 66
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 89
    iput-boolean p1, p0, Lmlg;->d:Z

    .line 90
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lmlg;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lmlg;->c:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 129
    iput-boolean p1, p0, Lmlg;->i:Z

    .line 130
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lmlg;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lmlg;->e:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 137
    iput-boolean p1, p0, Lmlg;->j:Z

    .line 138
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lmlg;->f:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lmlg;->d:Z

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lmlg;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lmlg;->g:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lmlg;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lmlg;->h:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lmlg;->g:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lmlg;->h:Ljava/lang/String;

    return-object v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lmlg;->i:Z

    return v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lmlg;->j:Z

    return v0
.end method
