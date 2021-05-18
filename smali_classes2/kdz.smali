.class public Lkdz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkdx;


# instance fields
.field private a:Lkdy;

.field private b:Lkfy;


# direct methods
.method public constructor <init>(Lkdy;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lkdz;->a:Lkdy;

    .line 23
    new-instance v0, Lkfz;

    invoke-direct {v0}, Lkfz;-><init>()V

    iput-object v0, p0, Lkdz;->b:Lkfy;

    .line 24
    return-void
.end method

.method static synthetic a(Lkdz;)Lkdy;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lkdz;->a:Lkdy;

    return-object v0
.end method


# virtual methods
.method public a(Lkdl;)V
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lkdz;->b:Lkfy;

    new-instance v1, Lkea;

    invoke-direct {v1, p0}, Lkea;-><init>(Lkdz;)V

    invoke-interface {v0, v1, p1}, Lkfy;->a(Lgkw;Lgoe;)V

    .line 57
    return-void
.end method
