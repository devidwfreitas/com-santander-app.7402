.class public Lkra;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lkrd;
    .annotation runtime Leks;
        a = "prePorsal"
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
.method public a()Lkrd;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lkra;->a:Lkrd;

    return-object v0
.end method

.method public a(Lkrd;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lkra;->a:Lkrd;

    .line 23
    return-void
.end method
