.class public Lyb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lxw;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "term"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lxw;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lyb;->a:Lxw;

    return-object v0
.end method

.method public a(Lxw;)V
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lyb;->a:Lxw;

    .line 18
    return-void
.end method
