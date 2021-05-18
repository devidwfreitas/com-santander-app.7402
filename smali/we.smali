.class public Lwe;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "productCode"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "subproductCode"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "systemInitial"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "requireAdhesionTerm"
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "description"
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "degreeRisk"
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "degreeRiskDescription"
    .end annotation
.end field

.field private h:Lvy;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "family"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lvy;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lwe;->a:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lwe;->b:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lwe;->c:Ljava/lang/String;

    .line 49
    iput-object p4, p0, Lwe;->d:Ljava/lang/String;

    .line 50
    iput-object p5, p0, Lwe;->e:Ljava/lang/String;

    .line 51
    iput-object p6, p0, Lwe;->f:Ljava/lang/String;

    .line 52
    iput-object p7, p0, Lwe;->g:Ljava/lang/String;

    .line 53
    iput-object p8, p0, Lwe;->h:Lvy;

    .line 54
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lwe;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lwe;->a:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public a(Lvy;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lwe;->h:Lvy;

    .line 118
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lwe;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lwe;->b:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lwe;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lwe;->c:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lwe;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lwe;->d:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lwe;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lwe;->e:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lwe;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lwe;->f:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lwe;->g:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lwe;->g:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public h()Lvy;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lwe;->h:Lvy;

    return-object v0
.end method
