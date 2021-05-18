.class public Lkse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lksf;
    .annotation runtime Leks;
        a = "subproduct"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Leks;
        a = "description"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Leks;
        a = "code"
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
.method public a()Lksf;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lkse;->a:Lksf;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lkse;->c:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public a(Lksf;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lkse;->a:Lksf;

    .line 31
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lkse;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lkse;->b:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lkse;->b:Ljava/lang/String;

    return-object v0
.end method
