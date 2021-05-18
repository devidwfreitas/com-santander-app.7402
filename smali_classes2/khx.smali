.class public Lkhx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lfvf;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkhs;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lfos;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lfqa;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lkic;

.field private f:Lkid;

.field private g:Lkhy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lkhy;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lkhx;->g:Lkhy;

    return-object v0
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkhs;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    iput-object p1, p0, Lkhx;->b:Ljava/util/List;

    .line 49
    return-void
.end method

.method public a(Ljava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lfvf;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    iput-object p1, p0, Lkhx;->a:Ljava/util/Vector;

    .line 41
    return-void
.end method

.method public a(Lkhy;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lkhx;->g:Lkhy;

    .line 33
    return-void
.end method

.method public a(Lkic;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lkhx;->e:Lkic;

    .line 73
    return-void
.end method

.method public a(Lkid;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lkhx;->f:Lkid;

    .line 81
    return-void
.end method

.method public b()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lfvf;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lkhx;->a:Ljava/util/Vector;

    return-object v0
.end method

.method public b(Ljava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lfqa;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    iput-object p1, p0, Lkhx;->d:Ljava/util/Vector;

    .line 57
    return-void
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lkhs;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lkhx;->b:Ljava/util/List;

    return-object v0
.end method

.method public c(Ljava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lfos;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    iput-object p1, p0, Lkhx;->c:Ljava/util/Vector;

    .line 65
    return-void
.end method

.method public d()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lfqa;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lkhx;->d:Ljava/util/Vector;

    return-object v0
.end method

.method public e()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lfos;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lkhx;->c:Ljava/util/Vector;

    return-object v0
.end method

.method public f()Lkic;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lkhx;->e:Lkic;

    return-object v0
.end method

.method public g()Lkid;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lkhx;->f:Lkid;

    return-object v0
.end method
