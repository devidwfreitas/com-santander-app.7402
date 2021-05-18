.class public Lkvo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I
    .annotation runtime Leks;
        a = "step"
    .end annotation
.end field

.field private b:Lkuq;
    .annotation runtime Leks;
        a = "dataTypeEnum"
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
.method public a()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lkvo;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 26
    iput p1, p0, Lkvo;->a:I

    .line 27
    return-void
.end method

.method public a(Lkuq;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lkvo;->b:Lkuq;

    .line 35
    return-void
.end method

.method public b()Lkuq;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lkvo;->b:Lkuq;

    return-object v0
.end method
