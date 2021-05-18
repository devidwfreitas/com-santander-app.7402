.class public Lkqs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Leks;
        a = "gender"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Leks;
        a = "maritalStatus"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Leks;
        a = "numberDependents"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Leks;
        a = "personType"
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Leks;
        a = "valueIncome"
    .end annotation
.end field

.field private f:Lkqx;
    .annotation runtime Leks;
        a = "document"
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
    .line 28
    iget-object v0, p0, Lkqs;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lkqs;->a:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public a(Lkqx;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lkqs;->f:Lkqx;

    .line 73
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lkqs;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lkqs;->b:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lkqs;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lkqs;->c:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lkqs;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lkqs;->d:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lkqs;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lkqs;->e:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public f()Lkqx;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lkqs;->f:Lkqx;

    return-object v0
.end method
