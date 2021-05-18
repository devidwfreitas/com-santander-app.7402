.class public Lkqr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Leks;
        a = "email"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Leks;
        a = "gender"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Leks;
        a = "maritalStatus"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Leks;
        a = "numberDependents"
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Leks;
        a = "personType"
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation runtime Leks;
        a = "valueIncome"
    .end annotation
.end field

.field private g:Lkqx;
    .annotation runtime Leks;
        a = "document"
    .end annotation
.end field

.field private h:Lksa;
    .annotation runtime Leks;
        a = "telephone"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lkqr;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lkqr;->a:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public a(Lkqx;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lkqr;->g:Lkqx;

    .line 87
    return-void
.end method

.method public a(Lksa;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lkqr;->h:Lksa;

    .line 95
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lkqr;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lkqr;->b:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lkqr;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lkqr;->c:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lkqr;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lkqr;->d:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lkqr;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lkqr;->e:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lkqr;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lkqr;->f:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public g()Lkqx;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lkqr;->g:Lkqx;

    return-object v0
.end method

.method public h()Lksa;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lkqr;->h:Lksa;

    return-object v0
.end method
