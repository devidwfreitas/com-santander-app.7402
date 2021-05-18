.class public Lkwe;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lkwf;
    .annotation runtime Leks;
        a = "claim"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Lkwf;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lkwe;->a:Lkwf;

    .line 27
    return-void
.end method


# virtual methods
.method public a()Lkwf;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lkwe;->a:Lkwf;

    return-object v0
.end method

.method public a(Lkwf;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lkwe;->a:Lkwf;

    .line 23
    return-void
.end method
