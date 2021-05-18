.class public Lvx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lwe;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "subproduct"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "percentage"
    .end annotation
.end field

.field private c:Ljava/lang/Double;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "value"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "date"
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "maturity"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public constructor <init>(Lwe;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lvx;->a:Lwe;

    .line 35
    iput-object p2, p0, Lvx;->b:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lvx;->c:Ljava/lang/Double;

    .line 37
    iput-object p4, p0, Lvx;->d:Ljava/lang/String;

    .line 38
    iput-object p5, p0, Lvx;->e:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public a()Lwe;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lvx;->a:Lwe;

    return-object v0
.end method

.method public a(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lvx;->c:Ljava/lang/Double;

    .line 63
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lvx;->b:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public a(Lwe;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lvx;->a:Lwe;

    .line 47
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lvx;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lvx;->d:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public c()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lvx;->c:Ljava/lang/Double;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lvx;->e:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lvx;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lvx;->e:Ljava/lang/String;

    return-object v0
.end method
