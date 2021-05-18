.class public Lfny;
.super Lfvu;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lfyl;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lfvu;-><init>()V

    .line 16
    const-string v0, "0"

    iput-object v0, p0, Lfny;->a:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lfny;->b:Ljava/lang/String;

    .line 22
    const-string v0, "0"

    iput-object v0, p0, Lfny;->d:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfny;->h:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lfny;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lfyl;)V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lfny;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lfny;->a:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lfny;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lfny;->b:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lfny;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lfny;->c:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lfny;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lfny;->d:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lfny;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lfny;->e:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lfny;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lfny;->f:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lfny;->g:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lfny;->g:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public h()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lfyl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lfny;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lfny;->i:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lfny;->i:Ljava/lang/String;

    return-object v0
.end method
