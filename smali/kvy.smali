.class public Lkvy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I
    .annotation runtime Leks;
        a = "image"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Leks;
        a = "title"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Leks;
        a = "desc"
    .end annotation
.end field

.field private d:J
    .annotation runtime Leks;
        a = "step"
    .end annotation
.end field

.field private e:Lkuq;
    .annotation runtime Leks;
        a = "dataType"
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkux;",
            ">;"
        }
    .end annotation

    .annotation runtime Leks;
        a = "equipmentDataList"
    .end annotation
.end field

.field private g:Lkva;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lkva;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lkvy;->g:Lkva;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 58
    iput p1, p0, Lkvy;->a:I

    .line 59
    return-void
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 90
    iput-wide p1, p0, Lkvy;->d:J

    .line 91
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lkvy;->b:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkux;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    iput-object p1, p0, Lkvy;->f:Ljava/util/List;

    .line 83
    return-void
.end method

.method public a(Lkuq;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lkvy;->e:Lkuq;

    .line 51
    return-void
.end method

.method public a(Lkva;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lkvy;->g:Lkva;

    .line 43
    return-void
.end method

.method public b()Lkuq;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lkvy;->e:Lkuq;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lkvy;->c:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lkvy;->a:I

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lkvy;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lkvy;->c:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lkux;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lkvy;->f:Ljava/util/List;

    return-object v0
.end method

.method public g()J
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, Lkvy;->d:J

    return-wide v0
.end method
