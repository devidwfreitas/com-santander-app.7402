.class public Lkvg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I
    .annotation runtime Leks;
        a = "id"
    .end annotation
.end field

.field private b:Z
    .annotation runtime Leks;
        a = "enabled"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Leks;
        a = "question"
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkul;",
            ">;"
        }
    .end annotation

    .annotation runtime Leks;
        a = "answers"
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
.method public a()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lkvg;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 34
    iput p1, p0, Lkvg;->a:I

    .line 35
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lkvg;->c:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkul;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    iput-object p1, p0, Lkvg;->d:Ljava/util/List;

    .line 59
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 42
    iput-boolean p1, p0, Lkvg;->b:Z

    .line 43
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lkvg;->b:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lkvg;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lkul;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lkvg;->d:Ljava/util/List;

    return-object v0
.end method
