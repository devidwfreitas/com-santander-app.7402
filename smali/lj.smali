.class public Llj;
.super Labv;
.source "SourceFile"

# interfaces
.implements Labx;


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "bankNumber"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "agencyNumber"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "accountNumber"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "balance"
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "totalBalance"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Labv;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Llj;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Llj;->a:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Llj;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Llj;->b:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Llj;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Llj;->c:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Llj;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Llj;->d:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Llj;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Llj;->e:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Llj;->c:Ljava/lang/String;

    invoke-static {v0}, Llj;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llj;->c:Ljava/lang/String;

    .line 71
    iget-object v0, p0, Llj;->b:Ljava/lang/String;

    invoke-static {v0}, Llj;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llj;->b:Ljava/lang/String;

    .line 72
    iget-object v0, p0, Llj;->a:Ljava/lang/String;

    invoke-static {v0}, Llj;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llj;->a:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public g()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method
