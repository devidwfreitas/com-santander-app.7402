.class public Lked;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkeb;


# instance fields
.field private a:Lkec;

.field private b:Lkfy;


# direct methods
.method public constructor <init>(Lkec;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lked;->a:Lkec;

    .line 23
    new-instance v0, Lkfz;

    invoke-direct {v0}, Lkfz;-><init>()V

    iput-object v0, p0, Lked;->b:Lkfy;

    .line 24
    return-void
.end method

.method static synthetic a(Lked;)Lkec;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lked;->a:Lkec;

    return-object v0
.end method


# virtual methods
.method public a(Lkcz;)V
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lked;->b:Lkfy;

    new-instance v1, Lkee;

    invoke-direct {v1, p0}, Lkee;-><init>(Lked;)V

    invoke-interface {v0, v1, p1}, Lkfy;->b(Lgkw;Lgoe;)V

    .line 57
    return-void
.end method
