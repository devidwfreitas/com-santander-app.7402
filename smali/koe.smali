.class public Lkoe;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Leks;
        a = "coverageValue"
    .end annotation
.end field

.field private b:Ljava/util/Date;
    .annotation runtime Leks;
        a = "startDate"
    .end annotation
.end field

.field private c:Ljava/util/Date;
    .annotation runtime Leks;
        a = "endDate"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Leks;
        a = "enableCancel"
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Leks;
        a = "proposalNumber"
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
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lkoe;->e:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lkoe;->e:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public a(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lkoe;->b:Ljava/util/Date;

    .line 58
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lkoe;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lkoe;->a:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public b(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lkoe;->c:Ljava/util/Date;

    .line 66
    return-void
.end method

.method public c()Ljava/util/Date;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lkoe;->b:Ljava/util/Date;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lkoe;->d:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public d()Ljava/util/Date;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lkoe;->c:Ljava/util/Date;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lkoe;->d:Ljava/lang/String;

    return-object v0
.end method
