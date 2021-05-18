.class public Lktg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lkth;
    .annotation runtime Leks;
        a = "altairWarning"
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
.method public a()Lkth;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lktg;->a:Lkth;

    return-object v0
.end method

.method public a(Lkth;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lktg;->a:Lkth;

    .line 25
    return-void
.end method
