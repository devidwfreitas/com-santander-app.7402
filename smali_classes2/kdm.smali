.class public Lkdm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkdo;


# instance fields
.field private a:Lkdp;

.field private b:Lkfy;


# direct methods
.method public constructor <init>(Lkdp;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lkdm;->a:Lkdp;

    .line 23
    new-instance v0, Lkfz;

    invoke-direct {v0}, Lkfz;-><init>()V

    iput-object v0, p0, Lkdm;->b:Lkfy;

    .line 24
    return-void
.end method

.method static synthetic a(Lkdm;)Lkdp;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lkdm;->a:Lkdp;

    return-object v0
.end method


# virtual methods
.method public a(Lkcx;)V
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lkdm;->b:Lkfy;

    new-instance v1, Lkdn;

    invoke-direct {v1, p0}, Lkdn;-><init>(Lkdm;)V

    invoke-interface {v0, v1, p1}, Lkfy;->d(Lgkw;Lgoe;)V

    .line 48
    return-void
.end method
