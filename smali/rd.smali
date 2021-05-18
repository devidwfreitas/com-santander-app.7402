.class public Lrd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "value"
    .end annotation
.end field

.field private b:Z
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "selected"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lrd;->a:Ljava/lang/String;

    .line 18
    iput-boolean p2, p0, Lrd;->b:Z

    .line 19
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lrd;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lrd;->a:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 34
    iput-boolean p1, p0, Lrd;->b:Z

    .line 35
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lrd;->b:Z

    return v0
.end method
