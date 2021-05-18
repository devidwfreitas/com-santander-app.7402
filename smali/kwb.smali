.class public Lkwb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Leks;
        a = "id"
    .end annotation
.end field

.field private b:Lkvg;
    .annotation runtime Leks;
        a = "question"
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
    .line 23
    iget-object v0, p0, Lkwb;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lkwb;->a:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public a(Lkvg;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lkwb;->b:Lkvg;

    .line 36
    return-void
.end method

.method public b()Lkvg;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lkwb;->b:Lkvg;

    return-object v0
.end method
