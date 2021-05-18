.class public Lknv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Leks;
        a = "base64File"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Leks;
        a = "base64FileBack"
    .end annotation
.end field

.field private c:Lknw;
    .annotation runtime Leks;
        a = "fileTypeBack"
    .end annotation
.end field

.field private d:Lknw;
    .annotation runtime Leks;
        a = "fileType"
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Leks;
        a = "documentType"
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation runtime Leks;
        a = "documentName"
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation runtime Leks;
        a = "claimNumber"
    .end annotation
.end field

.field private h:Ljava/lang/String;
    .annotation runtime Leks;
        a = "clientName"
    .end annotation
.end field

.field private i:Ljava/lang/String;
    .annotation runtime Leks;
        a = "coverage"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lknv;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lknv;->b:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public a(Lknw;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lknv;->c:Lknw;

    .line 55
    return-void
.end method

.method public b()Lknw;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lknv;->c:Lknw;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lknv;->a:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public b(Lknw;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lknv;->d:Lknw;

    .line 71
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lknv;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lknv;->e:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public d()Lknw;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lknv;->d:Lknw;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lknv;->f:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lknv;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lknv;->g:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lknv;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lknv;->h:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lknv;->g:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lknv;->i:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lknv;->h:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lknv;->i:Ljava/lang/String;

    return-object v0
.end method
