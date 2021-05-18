.class public Lgag;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lgaf;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lfvu;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgag;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lgaf;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lgag;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public a(Lfvu;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lgag;->i:Lfvu;

    .line 80
    return-void
.end method

.method public a(Lgaf;)V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lgag;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lgag;->b:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lgag;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lgag;->c:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lgag;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lgag;->d:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lgag;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lgag;->e:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lgag;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lgag;->f:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lgag;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lgag;->g:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lgag;->g:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lgag;->h:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lgag;->h:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lgag;->j:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public i()Lfvu;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lgag;->i:Lfvu;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lgag;->k:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lgag;->j:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lgag;->k:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lgag;->f:Ljava/lang/String;

    return-object v0
.end method
