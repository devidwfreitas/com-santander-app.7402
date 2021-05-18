.class public Lkqa;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lkqx;
    .annotation runtime Leks;
        a = "document"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Leks;
        a = "email"
    .end annotation
.end field

.field private c:Lksa;
    .annotation runtime Leks;
        a = "telephone"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Leks;
        a = "itemCode"
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Leks;
        a = "name"
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation runtime Leks;
        a = "participation"
    .end annotation
.end field

.field private g:Lkod;
    .annotation runtime Leks;
        a = "parentage"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lkqx;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lkqa;->a:Lkqx;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lkqa;->b:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public a(Lkod;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lkqa;->g:Lkod;

    .line 87
    return-void
.end method

.method public a(Lkqx;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lkqa;->a:Lkqx;

    .line 39
    return-void
.end method

.method public a(Lksa;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lkqa;->c:Lksa;

    .line 55
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lkqa;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lkqa;->d:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public c()Lksa;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lkqa;->c:Lksa;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lkqa;->e:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lkqa;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lkqa;->f:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lkqa;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lkqa;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()Lkod;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lkqa;->g:Lkod;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v0

    invoke-virtual {p0}, Lkqa;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
