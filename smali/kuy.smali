.class public Lkuy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/Long;
    .annotation runtime Leks;
        a = "id"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Leks;
        a = "icon"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Leks;
        a = "value"
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkup;",
            ">;"
        }
    .end annotation

    .annotation runtime Leks;
        a = "legacies"
    .end annotation
.end field

.field private e:I
    .annotation runtime Leks;
        a = "resIcon"
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation runtime Leks;
        a = "description"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lkuy;->f:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Lkuy;->e:I

    .line 48
    return-void
.end method

.method public a(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lkuy;->a:Ljava/lang/Long;

    .line 56
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lkuy;->f:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    iput-object p1, p0, Lkuy;->d:Ljava/util/List;

    .line 90
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lkuy;->e:I

    return v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lkuy;->b:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public c()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lkuy;->a:Ljava/lang/Long;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lkuy;->c:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lkuy;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lkuy;->c:Ljava/lang/String;

    invoke-static {v0}, Lmhj;->F(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lkup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lkuy;->d:Ljava/util/List;

    return-object v0
.end method
