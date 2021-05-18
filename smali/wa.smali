.class public Lwa;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "title"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "description"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "applicationValueDescription"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "otherProducts"
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "callCenterTextLink"
    .end annotation
.end field

.field private f:Lwb;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "shortTermRecommendation"
    .end annotation
.end field

.field private g:Lwb;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "longTermRecommendation"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lwb;

    invoke-direct {v0}, Lwb;-><init>()V

    iput-object v0, p0, Lwa;->g:Lwb;

    .line 41
    new-instance v0, Lwb;

    invoke-direct {v0}, Lwb;-><init>()V

    iput-object v0, p0, Lwa;->f:Lwb;

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lwb;Lwb;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lwa;->a:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lwa;->b:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lwa;->c:Ljava/lang/String;

    .line 48
    iput-object p4, p0, Lwa;->d:Ljava/lang/String;

    .line 49
    iput-object p5, p0, Lwa;->e:Ljava/lang/String;

    .line 50
    iput-object p6, p0, Lwa;->f:Lwb;

    .line 51
    iput-object p7, p0, Lwa;->g:Lwb;

    .line 52
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lwa;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lwa;->a:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public a(Lwb;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lwa;->f:Lwb;

    .line 100
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lwa;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lwa;->b:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public b(Lwb;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lwa;->g:Lwb;

    .line 108
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lwa;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lwa;->c:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lwa;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lwa;->d:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lwa;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lwa;->e:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public f()Lwb;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lwa;->f:Lwb;

    return-object v0
.end method

.method public g()Lwb;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lwa;->g:Lwb;

    return-object v0
.end method
