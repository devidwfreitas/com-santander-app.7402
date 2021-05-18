.class public Lkuj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Leks;
        a = "beginningValidityDate"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Leks;
        a = "cancellationDate"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Leks;
        a = "endValidityDate"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Leks;
        a = "hiringDate"
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Leks;
        a = "nextRenovationDate"
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation runtime Leks;
        a = "reasonCancelation"
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation runtime Leks;
        a = "statusDate"
    .end annotation
.end field

.field private h:Lkuc;
    .annotation runtime Leks;
        a = "payment"
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
    .line 56
    iget-object v0, p0, Lkuj;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lkuj;->a:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public a(Lkuc;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lkuj;->h:Lkuc;

    .line 117
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lkuj;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lkuj;->b:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lkuj;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lkuj;->c:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lkuj;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lkuj;->d:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lkuj;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lkuj;->e:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lkuj;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lkuj;->f:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lkuj;->g:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lkuj;->g:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public h()Lkuc;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lkuj;->h:Lkuc;

    return-object v0
.end method
