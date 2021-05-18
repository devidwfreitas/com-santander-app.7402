.class public Lkvu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Leks;
        a = "id"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Leks;
        a = "name"
    .end annotation
.end field

.field private c:Z
    .annotation runtime Leks;
        a = "statusCheck"
    .end annotation
.end field

.field private d:Lkvx;
    .annotation runtime Leks;
        a = "statusEnum"
    .end annotation
.end field

.field private e:Z
    .annotation runtime Leks;
        a = "visibleCheck"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lkvu;->e:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lkvu;->a:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public a(Lkvx;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lkvu;->d:Lkvx;

    .line 68
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 35
    iput-boolean p1, p0, Lkvu;->e:Z

    .line 36
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lkvu;->e:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lkvu;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lkvu;->b:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 59
    iput-boolean p1, p0, Lkvu;->c:Z

    .line 60
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lkvu;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lkvu;->c:Z

    return v0
.end method

.method public e()Lkvx;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lkvu;->d:Lkvx;

    return-object v0
.end method
