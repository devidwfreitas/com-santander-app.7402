.class public Ljta;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/Integer;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "accountIndex"
    .end annotation
.end field

.field private b:Ljava/lang/Integer;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "creditCardIndex"
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
        a = "schedulingDate"
    .end annotation
.end field

.field private e:Lmzl;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "deviceInfo"
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "aaToken"
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "securityDevicePassword"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Ljta;->a:Ljava/lang/Integer;

    return-object v0
.end method

.method public a(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Ljta;->c:Ljava/lang/Double;

    .line 63
    return-void
.end method

.method public a(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Ljta;->a:Ljava/lang/Integer;

    .line 47
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Ljta;->d:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public a(Lmzl;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Ljta;->e:Lmzl;

    .line 79
    return-void
.end method

.method public b()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Ljta;->b:Ljava/lang/Integer;

    return-object v0
.end method

.method public b(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Ljta;->b:Ljava/lang/Integer;

    .line 55
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Ljta;->f:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public c()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Ljta;->c:Ljava/lang/Double;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Ljta;->g:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Ljta;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lmzl;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Ljta;->e:Lmzl;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Ljta;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Ljta;->g:Ljava/lang/String;

    return-object v0
.end method
