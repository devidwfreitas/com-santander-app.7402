.class public Lkrd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lkre;
    .annotation runtime Leks;
        a = "validity"
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
.method public a()Lkre;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lkrd;->a:Lkre;

    return-object v0
.end method

.method public a(Lkre;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lkrd;->a:Lkre;

    .line 23
    return-void
.end method
