.class public Liwe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liwd;


# instance fields
.field private a:Ljan;

.field private b:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Ljan;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Liwe;->a:Ljan;

    .line 24
    iput-object p2, p0, Liwe;->b:Landroid/app/Activity;

    .line 25
    return-void
.end method

.method static synthetic a(Liwe;)Ljan;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Liwe;->a:Ljan;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 30
    new-instance v0, Ljbk;

    new-instance v1, Liwf;

    invoke-direct {v1, p0}, Liwf;-><init>(Liwe;)V

    iget-object v2, p0, Liwe;->b:Landroid/app/Activity;

    invoke-direct {v0, v1, v2}, Ljbk;-><init>(Lgkw;Landroid/app/Activity;)V

    .line 52
    invoke-virtual {v0}, Ljbk;->a()V

    .line 53
    return-void
.end method
